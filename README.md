# kuso-scripts
Windows用のクイックコマンド作成スクリプトです。

> [!Warning]
> 
> デバッグしているディレクトリとは違うディレクトリに配置した環境でデバッグしていないため、あなたのPCで動作するかはわかりません。
> 
> 参考までに、デバッグ時に使用しているディレクトリは `C:\Data\cmd` です。

# Setup
1. 展開/クローンしたフォルダーをWindowsのPATHに追加する
2. `create`コマンドを使用してファイルを作成する

`delcmd`, `edit`, `lscmd`を使用してコマンドを編集することができます。

`js`,`ts`,`sh`テンプレートで作成したスクリプトをリネームする場合は必ず対応したbatスクリプトとその中身も編集してください。

# Command usage
### `create`
```bat
create <Command name: string> <Template: bat, js, ts, sh>
```

コマンドを作成します。Command nameに拡張子は不要です。

### `delcmd`
```bat
delcmd <Command name: string>
```

コマンドを削除します。拡張子は不要です。

### `edit`
```bat
edit <Command name: string>
```

コマンドを編集します。 拡張子は不要です。

### `lscmd`
```bat
lscmd
```

コマンドの一覧を表示します。

# Memo
`create` や `edit` 等のスクリプトのファイル名がほかのアプリケーション/スクリプトと重複する場合は、

必要に応じてリネームすることができます。

現状はどのスクリプトもほかのスクリプトに依存していません。

(将来的にrenamecmdを追加する予定です。)

# Todo
- [ ] renamecmdコマンドを追加
