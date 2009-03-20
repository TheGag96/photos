
void main(string[] args) {
    // init GTK
    Gtk.init(ref args);
    
    // set up GLib environment
    GLib.Environment.set_application_name(AppWindow.TITLE);

    // initialize app-wide stuff
    AppWindow.init(args);
    DatabaseTable.init();
    ThumbnailCache.init();

    // create main application window
    AppWindow appWindow = new AppWindow();
    
    // throw it all on the display
    appWindow.show_all();

    // event loop
    Gtk.main();
}

