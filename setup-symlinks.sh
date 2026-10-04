#!/usr/bin/env sh

# Dotfiles
ln -s "${HOME}/.me/dotfiles/.bashrc" "${HOME}/.bashrc"
ln -s "${HOME}/.me/dotfiles/.zshrc" "${HOME}/.zshrc"
# ln -s "${HOME}/.me/dotfiles/.tmux.conf" "${HOME}/.tmux.conf"

# [Rectangle Pro](https://rectangleapp.com/pro)
ln -sf "${HOME}/.me/app/Rectangle/com.knollsoft.Rectangle.plist" "${HOME}/Library/Preferences/com.knollsoft.Rectangle.plist"

# [HyperKey](https://hyperkey.app/)
ln -sf "${HOME}/.me/app/HyperKey/com.knollsoft.Hyperkey.plist" "${HOME}/Library/Preferences/com.knollsoft.Hyperkey.plist"

# VSCode (https://code.visualstudio.com)
ln -sf "${HOME}/.me/app/VSCode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
ln -sf "${HOME}/.me/app/VSCode/keybindings.json" "${HOME}/Library/Application Support/Code/User/keybindings.json"

# Workflows
ln -s "${HOME}/.me/automator/clean-zip.workflow" "${HOME}/Library/Services/clean-zip.workflow"
ln -s "${HOME}/.me/automator/compress-pdf.workflow" "${HOME}/Library/Services/compress-pdf.workflow"
ln -s "${HOME}/.me/automator/ffmpeg-input-to-mp4.workflow" "${HOME}/Library/Services/ffmpeg-input-to-mp4.workflow"
