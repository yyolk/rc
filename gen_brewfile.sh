#!/bin/bash


# 
# Usage:
#    ./gen_brewfile.sh > Brewfile.output

multigrep() {
  local args=("${@:1}")
  case ${#args[@]} in
    0) ;;
    1) grep -v "${args[0]}" -;;
    *) grep -v "${args[0]}" -| multigrep "${args[@]:1}";;
  esac
}

ignore_patterns() {
  multigrep $@
}

echo "#"
echo "# Install with brew bundle -f Brewfile.output"
echo "#"

echo
echo "# Taps"
echo """# brew tap | awk '{printf("tap \\"%s\\"\\n", \$0)}'"""
brew tap | ignore_patterns bundle | awk '{printf("tap \"%s\"\n", $0)}'

echo
echo "# Formula"
echo """# brew list --formula -1 | awk '{printf("brew \\"%s\\"\\n", \$0)}'"""
brew list --formula -1 | awk '{printf("brew \"%s\"\n", $0)}'

echo
echo "# Casks"
echo """# brew list --cask -1 | awk '{printf("cask \\"%s\\"\\n",)}'"""
brew list --cask -1 | awk '{printf("cask %s\n", $0)}'

echo
echo "# mas (mac app store cli)"
echo """# mas list | awk '{printf("mas \\\"%s\\\", id: %s\\n", \\\"\\\$(2)\\\", \\\$(1))}'"""
mas list | ignore_patterns 1Password | awk '{printf("mas \"%s\", id: %s\n", $(2), $(1))}'
#echo $(mas list | awk '{print $1}') \"$(mas list | egrep -o ' ([1-9 a-zA-Z]+) ' | sed 's/^ *//g' | sed 's/ *$//g')\" |  awk '{printf("mas \"%s\", id: %s\n", $(2), $(1))}'
