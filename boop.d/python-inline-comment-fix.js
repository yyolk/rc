/**
  {
    "api":1,
    "name":"Move Python inline comments",
    "description":"Move inline comments to the line above",
    "author":"Yolk",
    "icon":"increase.indent",
    "tags":"comment,python,code"
  }
**/

function main(state) {
    let selectedText = state.text;
    let lines = selectedText.split('\n');
    let updatedLines = [];

    for (let line of lines) {
        let commentIndex = line.indexOf('#');
        if (commentIndex !== -1) {
            // Determine the indentation of the original line
            let indentation = line.slice(0, line.match(/^\s*/)[0].length);
            
            let codePart = line.slice(0, commentIndex).trimEnd();
            let commentPart = line.slice(commentIndex);

            if (codePart) {
                // Add the comment on a new line with correct indentation
                updatedLines.push(`${indentation}${commentPart.trim()}`);
                // Add the code part with the same indentation as before the comment
                updatedLines.push(`${indentation}${codePart.trimStart()}`);
            } else {
                // If no code, just keep the comment line as it is
                updatedLines.push(line);
            }
        } else {
            updatedLines.push(line);
        }
    }
    //return updatedLines.join('\n');
    state.text = updatedLines.join('\n');
}
