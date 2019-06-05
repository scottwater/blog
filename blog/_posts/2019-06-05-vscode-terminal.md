---
layout: post
title: "👩‍💻 How to Execute a Terminal Command in VSCode"
date: 2019-06-05 14:00:47 -0400
tags: [code, vscode, teminal]
image: assets/images/posts/undraw/typing.png
headline_image: true
---

VSCode has a good story for using the terminal within the IDE. However, there is no built in way to execute a command via a keyboard shortcut.

<!--more-->

Thankfully, I found an extension which easily enables this, [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner).

> Run custom shell command defined in vs code configuration and node module package.json

With this in place, I was able to add keyboard shortcut which will execute Standard's fix commmand.

```json
{
    "key": "ctrl+alt+s",
    "command": "command-runner.run",
    "args" : {"command": "standardrb ${file} --fix"}
}
```