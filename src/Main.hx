package;

import den.BUIEDemo;
import den.menus.BApplicationMenu;
import den.menus.BCircleMenu;
import den.menus.BContextMenu;
import den.menus.BMenu;
import den.menus.BMenuItem;

import openfl.display.Sprite;
import openfl.display.StageAlign;
import openfl.display.StageScaleMode;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.ui.Keyboard;

class Main extends Sprite
{
    private var mainMenu:BMenu;
    private var rightClickMenu:BContextMenu;
    private var rightClickMenu2:BCircleMenu;

    public function new()
    {
        super();

        stage.scaleMode = StageScaleMode.NO_SCALE;
        stage.align = StageAlign.TOP_LEFT;

        initialiazeDemo();
        //initializeMenu();
    }

    private function initialiazeDemo():Void
    {
        var demo:BUIEDemo = new BUIEDemo();
        addChild(demo);
    }

    private function initializeMenu():Void
    {
        // make a main menu
        mainMenu = new BApplicationMenu(false);
        mainMenu.display(this.stage, 200, 100);

        var mainMenuFileItem:BMenuItem = new BMenuItem("File", false);
        mainMenuFileItem.keyEquivalentModifiers = [Keyboard.ALTERNATE];
        mainMenuFileItem.keyEquivalent = "A";

        // add items to mainMenu
        mainMenu.addItem(mainMenuFileItem);
        mainMenu.addItem(new BMenuItem("Edit", false));
        mainMenu.addItem(new BMenuItem("View", false));
        mainMenu.addItem(new BMenuItem("Windos", false));
        mainMenu.addItem(new BMenuItem("Help", false));
        mainMenu.addItem(new BMenuItem("", true));

        var submenu2:BContextMenu = new BContextMenu();
        submenu2.addItem(new BMenuItem("Menu Item 1", false));
        submenu2.addItem(new BMenuItem("Menu Item 2", false));
        submenu2.addItem(new BMenuItem("Menu Item 3", false));
        submenu2.addItem(new BMenuItem("Menu Item 4", false));
        submenu2.addItem(new BMenuItem("", true));
        submenu2.addItem(new BMenuItem("Menu Item 5", false));
        submenu2.addItem(new BMenuItem("Menu Item 6", false));

        var submenu3:BContextMenu = new BContextMenu();
        submenu3.addItem(new BMenuItem("Menu Item 1", false));
        submenu3.addItem(new BMenuItem("Menu Item 2", false));
        submenu3.addItem(new BMenuItem("Menu Item 3", false));
        submenu3.addItem(new BMenuItem("Menu Item 4", false));
        submenu3.addItem(new BMenuItem("", true));
        submenu3.addItem(new BMenuItem("Menu Item 5", false));
        submenu3.addItem(new BMenuItem("Menu Item 6", false));

        var editMenu:BContextMenu = new BContextMenu();
        editMenu.addItem(new BMenuItem("Undo", false, true));
        editMenu.addItem(new BMenuItem("Redo", false, false));
        editMenu.addItem(new BMenuItem("", true));
        editMenu.addItem(new BMenuItem("Cut", false, false));
        editMenu.addItem(new BMenuItem("Copy", false, false));
        editMenu.addItem(new BMenuItem("Paste", false, false));
        editMenu.addItem(new BMenuItem("Paste Special", false, false));
        editMenu.addItem(new BMenuItem("Clear", false, false));
        editMenu.addItem(new BMenuItem("", true, false));
        editMenu.addItem(new BMenuItem("Duplicate", false, false));
        editMenu.addItem(new BMenuItem("Select All", false, false));

        editMenu.getItemByLabel("Undo").keyEquivalentModifiers = [Keyboard.ALTERNATE];
        editMenu.getItemByLabel("Undo").keyEquivalent = "z";
        editMenu.getItemByLabel("Redo").keyEquivalentModifiers = [Keyboard.ALTERNATE, Keyboard.SHIFT, Keyboard.CONTROL];
        editMenu.getItemByLabel("Redo").keyEquivalent = "y";
        editMenu.getItemByLabel("Undo").keyEquivalentModifiers = [Keyboard.ALTERNATE, Keyboard.SHIFT, Keyboard.CONTROL];

        var viewMenu:BContextMenu = new BContextMenu();
        viewMenu.addItem(new BMenuItem("Goto", false, true));
        viewMenu.addItem(new BMenuItem("", true));
        viewMenu.addItem(new BMenuItem("Zoom In", false, true));
        viewMenu.addItem(new BMenuItem("Zoom Out", false, true));
        viewMenu.addItem(new BMenuItem("Magnification", false, true));
        viewMenu.addItem(new BMenuItem("", true, false));
        viewMenu.addItem(new BMenuItem("Rulers", false, false));
        viewMenu.addItem(new BMenuItem("Grid", false, false));

        var magnificationSubmenu:BContextMenu = new BContextMenu();
        magnificationSubmenu.addItem(new BMenuItem("Fit in Window", false, true));
        magnificationSubmenu.addItem(new BMenuItem("Center the Stage", false, true));
        magnificationSubmenu.addItem(new BMenuItem("", true));
        magnificationSubmenu.addItem(new BMenuItem("25%", false, true));
        magnificationSubmenu.addItem(new BMenuItem("50%", false, true));
        magnificationSubmenu.addItem(new BMenuItem("100%", false, true));
        magnificationSubmenu.addItem(new BMenuItem("200%", false, false));
        magnificationSubmenu.addItem(new BMenuItem("400%", false, false));
        magnificationSubmenu.addItem(new BMenuItem("800%", false, false));
        magnificationSubmenu.addItem(new BMenuItem("", true, false));
        magnificationSubmenu.addItem(new BMenuItem("Show All", false, false));

        mainMenuFileItem.submenu = submenu2;
        mainMenu.getItemAt(1).submenu = editMenu;
        mainMenu.getItemAt(2).submenu = viewMenu;
        viewMenu.getItemByLabel("Magnification").submenu = magnificationSubmenu;

        submenu2.getItemAt(5).submenu = submenu3;

        rightClickMenu = new BContextMenu();
        rightClickMenu2 = new BCircleMenu();
        rightClickMenu2.display(this.stage, 700, 400);
        rightClickMenu2.addItem(new BMenuItem("Cuttt", false));
        rightClickMenu2.addItem(new BMenuItem("Copy", false));
        rightClickMenu2.addItem(new BMenuItem("Paste", false));

        var nMI:BMenuItem = new BMenuItem("Menu item test", false);
        nMI.checked = true;
        nMI.enabled = false;
        nMI.keyEquivalentModifiers = [Keyboard.ALTERNATE];
        nMI.keyEquivalent = "A";

        var submenu1:BContextMenu = new BContextMenu();
        submenu1.addItem(new BMenuItem("Menu Item 1", false));
        submenu1.addItem(new BMenuItem("Menu Item 2", false));
        submenu1.addItem(new BMenuItem("Menu Item 3", false));
        submenu1.addItem(new BMenuItem("Menu Item 4", false));
        submenu1.addItem(new BMenuItem("", true));
        submenu1.addItem(new BMenuItem("Menu Item 5", false));
        submenu1.addItem(new BMenuItem("Menu Item 6", false));

        var nMI2:BMenuItem = new BMenuItem("Tooooo long!", false);
        nMI2.checked = true;
        nMI2.enabled = true;
        nMI2.keyEquivalentModifiers = [Keyboard.SHIFT, Keyboard.ALTERNATE];
        nMI2.keyEquivalent = "K";
        nMI2.icon = null;
        nMI2.submenu = submenu1;

        var nMI3:BMenuItem = new BMenuItem("Menu item test 3", false);
        nMI3.checked = false;
        nMI3.enabled = true;
        nMI3.keyEquivalentModifiers = [Keyboard.CONTROL, Keyboard.SHIFT, Keyboard.ALTERNATE];
        nMI3.keyEquivalent = "u";

        rightClickMenu.addItem(new BMenuItem("Cut", false));
        rightClickMenu.addItem(new BMenuItem("Copy", false));
        rightClickMenu.addItem(new BMenuItem("Paste", false));
        rightClickMenu.addItem(new BMenuItem("Delete", false));
        rightClickMenu.addItem(new BMenuItem("", true));
        rightClickMenu.addItem(nMI);
        rightClickMenu.addItemAt(nMI2, 8);
        rightClickMenu.addItemAt(nMI3, 9);
        rightClickMenu.addItem(new BMenuItem("", true));
        rightClickMenu.addItem(new BMenuItem("Last Context Item", false));

        function onBrowse(event:Event):Void
        {
            trace("On File Browse.");
        } // end function

        function showRightClickMenu(event:MouseEvent):Void
        {
            rightClickMenu.display(stage, Std.int(event.stageX), Std.int(event.stageY));
        } // end function

        nMI3.addEventListener(MouseEvent.CLICK, onBrowse);
        stage.addEventListener(MouseEvent.RIGHT_CLICK, showRightClickMenu);
    } // end function
}
