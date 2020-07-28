# Symbolic Link Batch

Batch script that creates symbolic links between folders.

### How to run

Move the .bat file to the parent directory holding folders on which you want to make symbolic links for.

DIRECTORY_PATH = path to parent directory holding folders you want to link

(Optional) INT = can be either 0 or 1
- 0 makes symbolic links
- 1 creates a text document with `mklink` commands for each folder without making symbolic links
    
`make_symbolic_links <DIRECTORY_PATH> <INT>`

TODO:
- [ ] Add an option to make symbolic links for missing folders only
