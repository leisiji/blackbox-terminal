/* Settings.vala
 *
 * Copyright 2022 Paulo Queiroz
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

public enum Terminal.ScrollbackMode {
  FIXED = 0,
  UNLIMITED = 1,
  DISABLED = 2,
}

public enum Terminal.WorkingDirectoryMode {
  PREVIOUS_SESSION = 0,
  HOME_DIRECTORY = 1,
  CUSTOM = 2,
}

public enum Terminal.ApplicationStyle {
  SYSTEM = 0,
  LIGHT = 1,
  DARK = 2,
}

public class Terminal.Settings : PQMarble.Settings {
  public bool    command_as_login_shell               { get; set; }
  public bool    context_aware_header_bar             { get; set; }
  public bool    easy_copy_paste                      { get; set; }
  public bool    copy_on_select                       { get; set; }
  public bool    fill_tabs                            { get; set; }
  public bool    headerbar_drag_area                  { get; set; }
  public bool    notify_process_completion            { get; set; }
  public bool    pretty                               { get; set; }
  public bool    remember_window_size                 { get; set; }
  public bool    show_headerbar                       { get; set; }
  public bool    show_menu_button                     { get; set; }
  public bool    show_scrollbars                      { get; set; }
  public bool    terminal_bell                        { get; set; }
  public bool    theme_bold_is_bright                 { get; set; }
  public bool    use_custom_command                   { get; set; }
  public bool    use_overlay_scrolling                { get; set; }
  public bool    use_sixel                            { get; set; }
  public bool    was_fullscreened                     { get; set; }
  public bool    was_maximized                        { get; set; }
  public double  terminal_cell_height                 { get; set; }
  public double  terminal_cell_width                  { get; set; }
  public string  custom_shell_command                 { get; set; }
  public string  custom_working_directory             { get; set; }
  public string  font                                 { get; set; }
  public string  theme_dark                           { get; set; }
  public string  theme_light                          { get; set; }
  public uint    cursor_blink_mode                    { get; set; }
  public uint    cursor_shape                         { get; set; }
  public uint    opacity                              { get; set; }
  public uint    scrollback_lines                     { get; set; }
  public uint    scrollback_mode                      { get; set; }
  public uint    style_preference                     { get; set; }
  public uint    window_height                        { get; set; }
  public uint    window_width                         { get; set; }
  public uint    working_directory_mode               { get; set; }
  public Variant terminal_padding                     { get; set; }

  public bool floating_controls                       { get; set; }
  public uint floating_controls_hover_area            { get; set; }
  public uint delay_before_showing_floating_controls  { get; set; }

  private static Settings instance = null;

  private Settings () {
    base ("com.raggesilver.BlackBox");
  }

  public static Settings get_default () {
    if (Settings.instance == null) {
      Settings.instance = new Settings ();
    }
    return Settings.instance;
  }

  public Padding get_padding () {
    return Padding.from_variant (this.schema.get_value ("terminal-padding"));
  }

  public void set_padding (Padding padding) {
    this.terminal_padding = padding.to_variant ();
  }
}

public class Terminal.SearchSettings : PQMarble.Settings {
  public bool    match_case_sensitive     { get; set; }
  public bool    match_whole_words        { get; set; }
  public bool    match_regex              { get; set; }
  public bool    wrap_around              { get; set; }

  private static SearchSettings instance = null;

  private SearchSettings () {
    base ("com.raggesilver.BlackBox.terminal.search");
  }

  public static SearchSettings get_default () {
    if (SearchSettings.instance == null) {
      SearchSettings.instance = new SearchSettings ();
    }
    return SearchSettings.instance;
  }
}
