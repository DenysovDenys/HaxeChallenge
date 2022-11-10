package;

import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_black_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_blackitalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_bold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_bolditalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_italic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_light_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_lightitalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_medium_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_mediumitalic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_thin_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_thinitalic_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:sizei128y4:typey5:IMAGEy9:classNamey37:__ASSET__graphics_add_icon_010001_pngy2:idy34:graphics%2Fadd%20icon%20010001.pnggoR0i131R1R2R3y37:__ASSET__graphics_add_icon_010002_pngR5y34:graphics%2Fadd%20icon%20010002.pnggoR0i126R1R2R3y37:__ASSET__graphics_add_icon_010003_pngR5y34:graphics%2Fadd%20icon%20010003.pnggoR0i753R1R2R3y39:__ASSET__graphics_alarm_icon_010001_pngR5y36:graphics%2Falarm%20icon%20010001.pnggoR0i818R1R2R3y39:__ASSET__graphics_alarm_icon_010002_pngR5y36:graphics%2Falarm%20icon%20010002.pnggoR0i650R1R2R3y39:__ASSET__graphics_alarm_icon_010003_pngR5y36:graphics%2Falarm%20icon%20010003.pnggoR0i219R1R2R3y41:__ASSET__graphics_arrow_icon_01_32x32_pngR5y40:graphics%2Farrow%20icon%2001%2032x32.pnggoR0i111R1R2R3y37:__ASSET__graphics_arrow_icon_10x5_pngR5y34:graphics%2Farrow%20icon%2010x5.pnggoR0i245R1R2R3y53:__ASSET__graphics_arrow_left_stroke_icon_01_24x24_pngR5y56:graphics%2Farrow%20left%20stroke%20icon%2001%2024x24.pnggoR0i240R1R2R3y54:__ASSET__graphics_arrow_right_stroke_icon_01_24x24_pngR5y57:graphics%2Farrow%20right%20stroke%20icon%2001%2024x24.pnggoR0i217R1R2R3y33:__ASSET__graphics_cursor_move_pngR5y28:graphics%2Fcursor%20move.pnggoR0i172R1R2R3y48:__ASSET__graphics_cursor_panel_resize_height_pngR5y47:graphics%2Fcursor%20panel%20resize%20height.pnggoR0i191R1R2R3y47:__ASSET__graphics_cursor_panel_resize_width_pngR5y46:graphics%2Fcursor%20panel%20resize%20width.pnggoR0i164R1R2R3y46:__ASSET__graphics_cursor_resize_corner0001_pngR5y43:graphics%2Fcursor%20resize%20corner0001.pnggoR0i157R1R2R3y46:__ASSET__graphics_cursor_resize_corner0002_pngR5y43:graphics%2Fcursor%20resize%20corner0002.pnggoR0i153R1R2R3y42:__ASSET__graphics_cursor_resize_edge_h_pngR5y41:graphics%2Fcursor%20resize%20edge%20H.pnggoR0i161R1R2R3y42:__ASSET__graphics_cursor_resize_edge_v_pngR5y41:graphics%2Fcursor%20resize%20edge%20V.pnggoR0i145R1R2R3y35:__ASSET__graphics_cursor_target_pngR5y30:graphics%2Fcursor%20target.pnggoR0i731R1R2R3y39:__ASSET__graphics_entity_icon_32x32_pngR5y36:graphics%2Fentity%20icon%2032x32.pnggoR0i251R1R2R3y45:__ASSET__graphics_fast_forward_icon_32x32_pngR5y44:graphics%2Ffast%20forward%20icon%2032x32.pnggoR0i203R1R2R3y46:__ASSET__graphics_folder_closed_icon_32x32_pngR5y45:graphics%2Ffolder%20closed%20icon%2032x32.pnggoR0i278R1R2R3y44:__ASSET__graphics_folder_open_icon_32x32_pngR5y43:graphics%2Ffolder%20open%20icon%2032x32.pnggoR0i864R1R2R3y31:__ASSET__graphics_hand_icon_pngR5y26:graphics%2Fhand%20icon.pnggoR0i603R1R2R3y43:__ASSET__graphics_history_icon_01_32x32_pngR5y42:graphics%2Fhistory%20icon%2001%2032x32.pnggoR0i19918R1R2R3y32:__ASSET__graphics_icon_48x48_pngR5y25:graphics%2Ficon-48x48.pnggoR0i422R1R2R3y41:__ASSET__graphics_image_icon_01_32x32_pngR5y40:graphics%2Fimage%20icon%2001%2032x32.pnggoR0i552R1R2R3y49:__ASSET__graphics_magnifying_glass_icon_32x32_pngR5y48:graphics%2Fmagnifying%20glass%20icon%2032x32.pnggoR0i99R1R2R3y44:__ASSET__graphics_maximize_icon_01_10x10_pngR5y43:graphics%2Fmaximize%20icon%2001%2010x10.pnggoR0i154R1R2R3y46:__ASSET__graphics_menu_arrow_icon_01_10x10_pngR5y47:graphics%2Fmenu%20arrow%20icon%2001%2010x10.pnggoR0i155R1R2R3y40:__ASSET__graphics_menu_icon_01_32x32_pngR5y39:graphics%2Fmenu%20icon%2001%2032x32.pnggoR0i90R1R2R3y44:__ASSET__graphics_minimize_icon_01_10x10_pngR5y43:graphics%2Fminimize%20icon%2001%2010x10.pnggoR0i117R1R2R3y39:__ASSET__graphics_minus_icon_010001_pngR5y36:graphics%2Fminus%20icon%20010001.pnggoR0i116R1R2R3y39:__ASSET__graphics_minus_icon_010002_pngR5y36:graphics%2Fminus%20icon%20010002.pnggoR0i114R1R2R3y39:__ASSET__graphics_minus_icon_010003_pngR5y36:graphics%2Fminus%20icon%20010003.pnggoR0i163R1R2R3y40:__ASSET__graphics_more_icon_01_24x24_pngR5y39:graphics%2Fmore%20icon%2001%2024x24.pnggoR0i716R1R2R3y40:__ASSET__graphics_palette_icon_32x32_pngR5y37:graphics%2Fpalette%20icon%2032x32.pnggoR0i136R1R2R3y38:__ASSET__graphics_pause_icon_32x32_pngR5y35:graphics%2Fpause%20icon%2032x32.pnggoR0i357R1R2R3y39:__ASSET__graphics_pencil_icon_32x32_pngR5y36:graphics%2Fpencil%20icon%2032x32.pnggoR0i1388R1R2R3y43:__ASSET__graphics_physics_icon_01_32x32_pngR5y42:graphics%2Fphysics%20icon%2001%2032x32.pnggoR0i233R1R2R3y37:__ASSET__graphics_play_icon_32x32_pngR5y34:graphics%2Fplay%20icon%2032x32.pnggoR0i249R1R2R3y39:__ASSET__graphics_rewind_icon_32x32_pngR5y36:graphics%2Frewind%20icon%2032x32.pnggoR0i245R1R2R3y34:__ASSET__graphics_select_arrow_pngR5y29:graphics%2Fselect%20arrow.pnggoR0i807R1R2R3y41:__ASSET__graphics_settings_icon_32x32_pngR5y38:graphics%2Fsettings%20icon%2032x32.pnggoR0i274R1R2R3y44:__ASSET__graphics_skip_to_end_icon_32x32_pngR5y45:graphics%2Fskip%20to%20end%20icon%2032x32.pnggoR0i294R1R2R3y46:__ASSET__graphics_skip_to_start_icon_32x32_pngR5y47:graphics%2Fskip%20to%20start%20icon%2032x32.pnggoR0i452R1R2R3y48:__ASSET__graphics_snap_to_grid_icon_01_32x32_pngR5y51:graphics%2Fsnap%20to%20grid%20icon%2001%2032x32.pnggoR0i615R1R2R3y50:__ASSET__graphics_snap_to_object_icon_01_32x32_pngR5y53:graphics%2Fsnap%20to%20object%20icon%2001%2032x32.pnggoR0i125R1R2R3y37:__ASSET__graphics_stop_icon_32x32_pngR5y34:graphics%2Fstop%20icon%2032x32.pnggoR0i2481R1R2R3y31:__ASSET__graphics_tick_icon_pngR5y26:graphics%2Ftick%20icon.pnggoR0i273R1R2R3y43:__ASSET__graphics_trash_can_icon_010001_pngR5y42:graphics%2Ftrash%20can%20icon%20010001.pnggoR0i297R1R2R3y43:__ASSET__graphics_trash_can_icon_010002_pngR5y42:graphics%2Ftrash%20can%20icon%20010002.pnggoR0i273R1R2R3y43:__ASSET__graphics_trash_can_icon_010003_pngR5y42:graphics%2Ftrash%20can%20icon%20010003.pnggoR0i122R1R2R3y42:__ASSET__graphics_window_icon_01_10x10_pngR5y41:graphics%2Fwindow%20icon%2001%2010x10.pnggoR0i176R1R2R3y37:__ASSET__graphics_x_icon_01_10x10_pngR5y36:graphics%2Fx%20icon%2001%2010x10.pnggoR0i634R1R2R3y40:__ASSET__graphics_zoom_in_icon_32x32_pngR5y39:graphics%2Fzoom%20In%20icon%2032x32.pnggoR0i568R1R2R3y41:__ASSET__graphics_zoom_out_icon_32x32_pngR5y40:graphics%2Fzoom%20out%20icon%2032x32.pnggoR0i171480R1y4:FONTR3y31:__ASSET__fonts_roboto_black_ttfR5y24:fonts%2FRoboto-Black.ttfgoR0i177552R1R117R3y37:__ASSET__fonts_roboto_blackitalic_ttfR5y30:fonts%2FRoboto-BlackItalic.ttfgoR0i170760R1R117R3y30:__ASSET__fonts_roboto_bold_ttfR5y23:fonts%2FRoboto-Bold.ttfgoR0i174952R1R117R3y36:__ASSET__fonts_roboto_bolditalic_ttfR5y29:fonts%2FRoboto-BoldItalic.ttfgoR0i173932R1R117R3y32:__ASSET__fonts_roboto_italic_ttfR5y25:fonts%2FRoboto-Italic.ttfgoR0i170420R1R117R3y31:__ASSET__fonts_roboto_light_ttfR5y24:fonts%2FRoboto-Light.ttfgoR0i176616R1R117R3y37:__ASSET__fonts_roboto_lightitalic_ttfR5y30:fonts%2FRoboto-LightItalic.ttfgoR0i172064R1R117R3y32:__ASSET__fonts_roboto_medium_ttfR5y25:fonts%2FRoboto-Medium.ttfgoR0i176864R1R117R3y38:__ASSET__fonts_roboto_mediumitalic_ttfR5y31:fonts%2FRoboto-MediumItalic.ttfgoR0i171676R1R117R3y33:__ASSET__fonts_roboto_regular_ttfR5y26:fonts%2FRoboto-Regular.ttfgoR0i171904R1R117R3y30:__ASSET__fonts_roboto_thin_ttfR5y23:fonts%2FRoboto-Thin.ttfgoR0i176300R1R117R3y36:__ASSET__fonts_roboto_thinitalic_ttfR5y29:fonts%2FRoboto-ThinItalic.ttfgoR0i184R1y4:TEXTR3y32:__ASSET__assets_buiexml_test_xmlR5y27:assets%2FbuieXML%2Ftest.xmlgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_arrow_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_arrow_icon_10x5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_arrow_left_stroke_icon_01_24x24_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_arrow_right_stroke_icon_01_24x24_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_move_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_panel_resize_height_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_panel_resize_width_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_corner0001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_corner0002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_edge_h_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_edge_v_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_cursor_target_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_entity_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_fast_forward_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_folder_closed_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_folder_open_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_hand_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_history_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_icon_48x48_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_image_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_magnifying_glass_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_maximize_icon_01_10x10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_menu_arrow_icon_01_10x10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_menu_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_minimize_icon_01_10x10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_more_icon_01_24x24_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_palette_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_pause_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_pencil_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_physics_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_play_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_rewind_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_select_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_settings_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_skip_to_end_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_skip_to_start_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_snap_to_grid_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_snap_to_object_icon_01_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_stop_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_tick_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_window_icon_01_10x10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_x_icon_01_10x10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_zoom_in_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__graphics_zoom_out_icon_32x32_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_black_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_blackitalic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_bold_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_bolditalic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_italic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_light_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_lightitalic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_mediumitalic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_thin_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_thinitalic_ttf extends flash.text.Font { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_buiexml_test_xml extends flash.utils.ByteArray { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends flash.utils.ByteArray { }


#elseif (desktop || cpp)

@:keep @:image("assets/img/add icon 010001.png") @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010001_png extends lime.graphics.Image {}
@:keep @:image("assets/img/add icon 010002.png") @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010002_png extends lime.graphics.Image {}
@:keep @:image("assets/img/add icon 010003.png") @:noCompletion #if display private #end class __ASSET__graphics_add_icon_010003_png extends lime.graphics.Image {}
@:keep @:image("assets/img/alarm icon 010001.png") @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010001_png extends lime.graphics.Image {}
@:keep @:image("assets/img/alarm icon 010002.png") @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010002_png extends lime.graphics.Image {}
@:keep @:image("assets/img/alarm icon 010003.png") @:noCompletion #if display private #end class __ASSET__graphics_alarm_icon_010003_png extends lime.graphics.Image {}
@:keep @:image("assets/img/arrow icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_arrow_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/arrow icon 10x5.png") @:noCompletion #if display private #end class __ASSET__graphics_arrow_icon_10x5_png extends lime.graphics.Image {}
@:keep @:image("assets/img/arrow left stroke icon 01 24x24.png") @:noCompletion #if display private #end class __ASSET__graphics_arrow_left_stroke_icon_01_24x24_png extends lime.graphics.Image {}
@:keep @:image("assets/img/arrow right stroke icon 01 24x24.png") @:noCompletion #if display private #end class __ASSET__graphics_arrow_right_stroke_icon_01_24x24_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor move.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_move_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor panel resize height.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_panel_resize_height_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor panel resize width.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_panel_resize_width_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor resize corner0001.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_corner0001_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor resize corner0002.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_corner0002_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor resize edge H.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_edge_h_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor resize edge V.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_resize_edge_v_png extends lime.graphics.Image {}
@:keep @:image("assets/img/cursor target.png") @:noCompletion #if display private #end class __ASSET__graphics_cursor_target_png extends lime.graphics.Image {}
@:keep @:image("assets/img/entity icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_entity_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/fast forward icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_fast_forward_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/folder closed icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_folder_closed_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/folder open icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_folder_open_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/hand icon.png") @:noCompletion #if display private #end class __ASSET__graphics_hand_icon_png extends lime.graphics.Image {}
@:keep @:image("assets/img/history icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_history_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/icon-48x48.png") @:noCompletion #if display private #end class __ASSET__graphics_icon_48x48_png extends lime.graphics.Image {}
@:keep @:image("assets/img/image icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_image_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/magnifying glass icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_magnifying_glass_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/maximize icon 01 10x10.png") @:noCompletion #if display private #end class __ASSET__graphics_maximize_icon_01_10x10_png extends lime.graphics.Image {}
@:keep @:image("assets/img/menu arrow icon 01 10x10.png") @:noCompletion #if display private #end class __ASSET__graphics_menu_arrow_icon_01_10x10_png extends lime.graphics.Image {}
@:keep @:image("assets/img/menu icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_menu_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/minimize icon 01 10x10.png") @:noCompletion #if display private #end class __ASSET__graphics_minimize_icon_01_10x10_png extends lime.graphics.Image {}
@:keep @:image("assets/img/minus icon 010001.png") @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010001_png extends lime.graphics.Image {}
@:keep @:image("assets/img/minus icon 010002.png") @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010002_png extends lime.graphics.Image {}
@:keep @:image("assets/img/minus icon 010003.png") @:noCompletion #if display private #end class __ASSET__graphics_minus_icon_010003_png extends lime.graphics.Image {}
@:keep @:image("assets/img/more icon 01 24x24.png") @:noCompletion #if display private #end class __ASSET__graphics_more_icon_01_24x24_png extends lime.graphics.Image {}
@:keep @:image("assets/img/palette icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_palette_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/pause icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_pause_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/pencil icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_pencil_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/physics icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_physics_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/play icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_play_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/rewind icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_rewind_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/select arrow.png") @:noCompletion #if display private #end class __ASSET__graphics_select_arrow_png extends lime.graphics.Image {}
@:keep @:image("assets/img/settings icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_settings_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/skip to end icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_skip_to_end_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/skip to start icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_skip_to_start_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/snap to grid icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_snap_to_grid_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/snap to object icon 01 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_snap_to_object_icon_01_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/stop icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_stop_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/tick icon.png") @:noCompletion #if display private #end class __ASSET__graphics_tick_icon_png extends lime.graphics.Image {}
@:keep @:image("assets/img/trash can icon 010001.png") @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010001_png extends lime.graphics.Image {}
@:keep @:image("assets/img/trash can icon 010002.png") @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010002_png extends lime.graphics.Image {}
@:keep @:image("assets/img/trash can icon 010003.png") @:noCompletion #if display private #end class __ASSET__graphics_trash_can_icon_010003_png extends lime.graphics.Image {}
@:keep @:image("assets/img/window icon 01 10x10.png") @:noCompletion #if display private #end class __ASSET__graphics_window_icon_01_10x10_png extends lime.graphics.Image {}
@:keep @:image("assets/img/x icon 01 10x10.png") @:noCompletion #if display private #end class __ASSET__graphics_x_icon_01_10x10_png extends lime.graphics.Image {}
@:keep @:image("assets/img/zoom In icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_zoom_in_icon_32x32_png extends lime.graphics.Image {}
@:keep @:image("assets/img/zoom out icon 32x32.png") @:noCompletion #if display private #end class __ASSET__graphics_zoom_out_icon_32x32_png extends lime.graphics.Image {}
@:keep @:font("assets/fonts/Roboto-Black.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_black_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-BlackItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_blackitalic_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Bold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_bold_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-BoldItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_bolditalic_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Italic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_italic_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Light.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_light_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-LightItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_lightitalic_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Medium.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-MediumItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_mediumitalic_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Regular.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-Thin.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_thin_ttf extends lime.text.Font {}
@:keep @:font("assets/fonts/Roboto-ThinItalic.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_thinitalic_ttf extends lime.text.Font {}
@:keep @:file("assets/buieXML/test.xml") @:noCompletion #if display private #end class __ASSET__assets_buiexml_test_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__fonts_roboto_black_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_black_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Black.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Black"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_blackitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_blackitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-BlackItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Black Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_bold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_bold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Bold.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Bold"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_bolditalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-BoldItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Bold Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_italic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_italic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Italic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_light_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_light_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Light.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Light"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_lightitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-LightItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Light Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Medium.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Medium"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_mediumitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_mediumitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-MediumItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Medium Italic"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Regular.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_thin_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_thin_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Thin.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Thin"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_thinitalic_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_thinitalic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-ThinItalic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Thin Italic"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_black_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_black_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_black_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_blackitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_blackitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_blackitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_bolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_bolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_italic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_italic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_light_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_light_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_lightitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_lightitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_medium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_medium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_mediumitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_mediumitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_mediumitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_thin_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_thin_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_thin_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_thinitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_thinitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_thinitalic_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_black_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_black_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_black_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_blackitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_blackitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_blackitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_bolditalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_bolditalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_bolditalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_italic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_italic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_italic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_light_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_light_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_light_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_lightitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_lightitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_lightitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_medium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_medium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_mediumitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_mediumitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_mediumitalic_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_thin_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_thin_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_thin_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_thinitalic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_thinitalic_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_thinitalic_ttf ()); super (); }}

#end

#end
#end

#end

#end