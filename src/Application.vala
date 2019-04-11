/*
* Copyright (c) 2019 Carter Hay (http://carterhay.net)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Carter Hay <clccmh@gmail.com>
*/

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.carterhay.rename",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 480;
        main_window.title = "Hello World";
        
        var grid = new Gtk.Grid ();
        grid.row_spacing = 6;
        grid.column_spacing = 6;
        
        var source_dir_button = new Gtk.FileChooserButton ("Select Source Folder", Gtk.FileChooserAction.SELECT_FOLDER);
        var source_dir_label = new Gtk.Label ("Source Folder");
        
        var dest_dir_button = new Gtk.FileChooserButton ("Select Destination Folder", Gtk.FileChooserAction.SELECT_FOLDER);
        var dest_dir_label = new Gtk.Label ("Destination Folder");
        
        grid.attach (source_dir_label, 0, 0, 1, 1);
        grid.attach_next_to (source_dir_button, source_dir_label, Gtk.PositionType.RIGHT, 1, 1);
        grid.attach (dest_dir_label, 3, 0, 1, 1);
        grid.attach_next_to (dest_dir_button, dest_dir_label, Gtk.PositionType.RIGHT, 1, 1);
        main_window.add (grid);
        
        main_window.show_all();
    }
    
    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
