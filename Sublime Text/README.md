# Sublime Text

## Packages

* **A File Icon**
* **Agila Theme**  
  To set a min size for the scrollbar pucks, use the `Agila Origin.sublime-theme` file.  
  Copy it to `~/.config/sublime-text-3/Packages/User/`.
* **Babel**
* **ColorPicker**
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
* **Markdeep**
* **MarkdownPreview**
* **Package Control** – https://packagecontrol.io/
* **Pretty JSON**
* **Theme - Arc**
* **Theme - Flatland**
* **TrailingSpaces**


## Portable

Use the TAR archive from the direct downloads section. Extract it and add a directory called `Data`.

### `$HOME/.local/share/applications/sublime-text-3-portable.desktop`

```
[Desktop Entry]
Version=1.0
Type=Application
Name=Sublime Text 3 (portable)
Comment=Sophisticated text editor for code, markup and prose
Exec=/home/user/.sublime_text_3_portable/st3_p.sh %F
Terminal=false
MimeType=text/plain;
Icon=sublime-text
Categories=TextEditor;Development;Utility;
StartupNotify=true
```

### `$HOME/.sublime_text_3_portable/st3_p.sh`

```sh
#!/bin/bash
cd ~/.sublime_text_3_portable/
FOLDER=$(dirname "$1")
./sublime_text "$FOLDER" "$1"
```
