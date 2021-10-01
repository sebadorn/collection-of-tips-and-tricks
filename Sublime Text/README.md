# Sublime Text

## Packages

* **A File Icon**
* **Agila Theme**  
  To set a min size for the scrollbar pucks, use the `Agila Origin.sublime-theme` file.  
  Copy it to `~/.config/sublime-text/Packages/User/`.
* **DocBlockr**  
  User settings:
  ```json
  {
      "jsdocs_return_description": false,
      "jsdocs_param_description": false,
      "jsdocs_lower_case_primitives": true
  }
  ```
* **GDScript (Godot Endinge)**
* **Indent XML**
* **JSHint**  
  Requires JSHint to be installed: https://jshint.com/
* **LESS**
* **LSP** – https://lsp.sublimetext.io/language_servers/#typescript-javascript
* **Markdeep**
* **MarkdownPreview**
* **Package Control** – https://packagecontrol.io/
* **Pretty JSON**
* **QColor**
* **TrailingSpaces**


## Portable

Use the TAR archive from the direct downloads section. Extract it and add a directory called `Data`.

### `$HOME/.local/share/applications/sublime-text-4-portable.desktop`

```
[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text 4 (portable)
Comment=Sophisticated text editor for code, markup and prose
Exec=/home/user/.sublime_text_4_portable/st4_p.sh %F
Terminal=false
MimeType=text/plain;
Icon=sublime-text
Categories=TextEditor;Development;Utility;
StartupNotify=true
```

### `$HOME/.sublime_text_4_portable/st4_p.sh`

```sh
#!/bin/bash
cd ~/.sublime_text_3_portable/
FOLDER=$(dirname "$1")
./sublime_text -a "$FOLDER" "$1"
```

### Preferences > Settings

```json
{
    "copy_with_empty_selection": false,
    "hot_exit": "disabled",
    "index_files": false,
    "remember_open_files": false,
    "remember_workspace": false,
}
```
