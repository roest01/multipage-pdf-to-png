## PDF to PNG converter

This is a small and simple bash script which convert a single pdf document to a single png file. So whats the secret? This script supports multipage PDF documents and convert them to a **single png file**.

This script is for you if you have multipage or singlepage pdf documents and need to batch convert them to png.
You can run on a full folder with pdf files and convert them all with a single command.

It's written and tested on a mac but should be compatible for linux, too

## Requiements

1. pdfseparate - (`brew install poppler` will also install `pdfseparate`)
2. imagemagick convert - [download](https://www.imagemagick.org/script/download.php#macosx)


#### Why such requiements?
- pdfseparate splits the pdf file
- imagemagick convert it to png combine it back and crop existing whitespace


## How to use?
1. Put that .sh in a folder with some pdf files.
2. Run ``chmod +x pdfToSinglePng.sh ``
3. Run ``./pdfToSinglePng.sh``

.png files will be created beside .pdf files with the same filename
each pdf page goes vertically upon the other with a spacing between each page. Headers repeating every page.


## Demo
no repo without demo:
[readme_demo.pdf](readme_demo.pdf)
converted to
[readme_demo.png](readme_demo.png)

##### if you wanna make a test:
- check out this repo
- delete readme_demo.png
- run script

## Any plans?
It would be really cool if anyone can add parameters to this script.
Maybe you have other ideas, e.g creating an alfred workflow ?
Make the world better!
