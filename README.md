# Symbolic Link Batch

Batch script that creates symbolic links between folders.

### How to run

Move the .bat file to the folder where you want to make symbolic links.

DIRECTORY_PATH = (Optional) INT = can be either 0 or 1
- 0 makes symbolic links
- 1 creates a text document with `mklink` commands for each folder without making symbolic links
    
`make_symbolic_links <DIRECTORY_PATH> <INT>`

TODO:
- [ ] Add an option to make symbolic links for missing folders only
