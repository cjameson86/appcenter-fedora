// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/***
  BEGIN LICENSE

  Copyright (C) 2012-2013 Mario Guerriero <mario@elementaryos.org>
  This program is free software: you can redistribute it and/or modify it
  under the terms of the GNU Lesser General Public License version 3, as published
  by the Free Software Foundation.

  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranties of
  MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR
  PURPOSE.  See the GNU General Public License for more details.

  You should have received a copy of the GNU General Public License along
  with this program.  If not, see <http://www.gnu.org/licenses/>

  END LICENSE
***/


namespace AppCenter {

    public enum AppCenterWindowState {
        NORMAL = 0,
        MAXIMIZED = 1,
        FULLSCREEN = 2
    }

    public class SavedState : Granite.Services.Settings {

        public int window_width { get; set; }
        public int window_height { get; set; }
        public AppCenterWindowState window_state { get; set; }

        public SavedState () {
            base ("org.pantheon.AppCenter.SavedState");
        }

    }

    public class Settings : Granite.Services.Settings {

        public int screenshot_width { get; set; }
        public int screenshot_height { get; set; }
        public string[] plugins_enabled { get; set;}
        
        public Settings ()  {
            base ("org.pantheon.AppCenter.Settings");
        }

    }

}
