class UserCommand : GLib.Object, ICommand { 
    private string _argument;
    private UnsplashApi _api;
    public string argument {get { return _argument; }}

    public UserCommand(string argument, UnsplashApi api) {
       _argument = argument;
       _api = api;
    }

    public GLib.File? execute (string args) {
        return _api.download_image_with_options("user", {args});
    }
}