#!/bin/bash


# 
# Usage:
#    ./gen_brewfile.sh > Brewfile.output


echo "#"
echo "# Install with brew bundle -f Brewfile.output"
echo "#"

echo "# Taps"
echo """# brew tap | awk '{printf("tap \\"%s\\"\\n", \$0)}'"""
brew tap | awk '{printf("tap \"%s\"\n", $0)}'

echo "# Formula"
echo """# brew list --formula -1 | awk '{printf("brew \\"%s\\"\\n", \$0)}'"""
brew list --formula -1 | awk '{printf("brew \"%s\"\n", $0)}'

echo
echo "# Casks"
echo """# brew list --formula -1 | awk '{printf("cask \\"%s\\"\\n",)}'"""
brew list --formula -1 | awk '{printf("cask %s\n", $0)}'

echo
echo "# mas (mac app store cli)"
echo """# mas list | awk '{printf("mas \\"%s\\", id: %s\n", \$(2), \$(1))}'"""
mas list | awk '{printf("mas \"%s\", id: %s\n", $(2), $(1))}'
