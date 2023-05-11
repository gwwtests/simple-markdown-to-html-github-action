# Simple Markdown to HTML GitHub Action

This action converts all `.md` or `.markdown` files in your repository
into .html files. It does not overwrite existing .html files in the
repository. If a directory has a README.md but no index.md, it will
also copy the generated README.html to index.html.

This GitHub Action uses `pandoc` to perform the conversion,
specifically the command:

```
pandoc my_file.md --from=gfm -t html -o my_file.html
```

## Usage

You can use this action by creating a workflow in your repository.

Here is an example workflow:

```
name: Markdown to HTML

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Check out code
      uses: actions/checkout@v2

    - name: Convert Markdown to HTML
      uses: gwwtests/simple-markdown-to-html-github-action@main
``` 

This workflow will run whenever you push to your repository. It will
convert all markdown files into HTML files as described above.

## Contributing

Pull requests are welcome. For major changes, please open an issue
first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

