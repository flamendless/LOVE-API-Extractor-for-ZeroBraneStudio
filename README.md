# LOVE API EXTRACTOR FOR ZERO BRANE STUDIO

[ZBS](https://github.com/pkulchenko/ZeroBraneStudio) is an outstanding lua ide and debugger for lua projects. One of its features is LOVE support, but as far as I know, there is no autocomplete for the löve api, so using the [love-api-table](https://github.com/love2d-community/love-api) plus a little bit of lua and löve magic, I have made and extracted the api table for use for ZBS.

# USAGE

If you want to generate updated `output.lua` file all you have to do 

* is clone this project, and clone the [love-api-table](https://github.com/love2d-community/love-api) to another location.
* `cd` to this project's location, do `love .`
* drag and drop the `love-api.lua` file from the `love-api-table` to the application.
* The `output.lua` file will be in the `C:\Users\user\AppData\Roaming\LOVE` for Windows. `$XDG_DATA_HOME/love/OUTPUT` or `~/.local/share/love/OUTPUT` for Linux.

# VIDEO Tutorial

video covering and explaining the script and making the simple gui is [here](https://youtu.be/iV0xd0r8Oek)

# GET THE OUTPUT FILE!

You don't have to do such as what I've done in the video, you can just copy the content of [output.lua](https://github.com/flamendless/LOVE-API-Extractor-for-ZeroBraneStudio/blob/master/output.lua) and then paste it in `ZeroBraneStudio/spec/lua.lua`, near the end of the file.
