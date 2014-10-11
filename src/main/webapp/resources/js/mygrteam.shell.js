/*
 * mygrteam.shell.js
 * Shell module for SPA
 */

/* global $, mygrteam */

mygrteam.shell = (function () {

    //---------------- BEGIN MODULE SCOPE VARIABLES --------------

    var configMap = {
            main_html : String()
                + '<div class="mygrteam-shell-head">'
                + '<div class="mygrteam-shell-head-logo"></div>'
                + '<div class="mygrteam-shell-head-acct"></div>'
                + '<div class="mygrteam-shell-head-search"></div>'
                + '</div>'
                + '<div class="mygrteam-shell-main">'
                + '<div class="mygrteam-shell-main-nav"></div>'
                + '<div class="mygrteam-shell-main-content"></div>'
                + '</div>'
                + '<div class="mygrteam-shell-foot"></div>'
                + '<div class="mygrteam-shell-chat"></div>'
                + '<div class="mygrteam-shell-modal"></div>'
        },
        stateMap = { $container : null },
        jqueryMap = {},

        setJqueryMap, initModule;

    //----------------- END MODULE SCOPE VARIABLES ---------------

    //-------------------- BEGIN UTILITY METHODS -----------------
    //--------------------- END UTILITY METHODS ------------------

    //--------------------- BEGIN DOM METHODS --------------------
    // Begin DOM method /setJqueryMap
    setJqueryMap = function () {
        var $container = stateMap.$container;
        jqueryMap = { $container : $container };
    };
    // End DOM method /setJqueryMap
    //--------------------- END DOM METHODS ----------------------

    //------------------- BEGIN EVENT HANDLERS -------------------
    //-------------------- END EVENT HANDLERS --------------------

    //------------------- BEGIN PUBLIC METHODS -------------------
    // Begin PUBLIC method / initModule
    initModule = function ($container) {
        stateMap.$container = $container;
        $container.html(configMap.main_html);
        setJqueryMap();
    };
    // End PUBLIC method / initModule
    return { initModule : initModule };

    //------------------- END PUBLIC METHODS ---------------------

}());