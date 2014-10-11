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
                + '<div class="mygrteam-shell-modal"></div>',
            chat_extend_time    : 1000,
            chat_retract_time   : 300,
            chat_extend_height  : 450,
            chat_retract_height : 16
        },
        stateMap = { $container : null },
        jqueryMap = {},

        setJqueryMap,
        toggleChat,
        initModule;

    //----------------- END MODULE SCOPE VARIABLES ---------------

    //-------------------- BEGIN UTILITY METHODS -----------------
    //--------------------- END UTILITY METHODS ------------------

    //--------------------- BEGIN DOM METHODS --------------------
    // Begin DOM method /setJqueryMap
    setJqueryMap = function () {
        var $container = stateMap.$container;
        jqueryMap = {
            $container : $container,
            $chat : $container.find('.mygrteam-shell-chat')
        };
    };
    // End DOM method /setJqueryMap

    // Begin DOM method /toggleChat/
    // Purpose : Extends or retracts chat slider
    // Arguments :
    // * do_extend - if true, extends slider; if false retracts
    // * callback - optional function to execute at end of animation
    // Settings :
    // * chat_extend_time, chat_retract_time
    // * chat_extend_height, chat_retract_height
    // Returns : boolean
    // * true - slider animation activated
    // * false - slider animation not activated
    //
    toggleChat = function (do_extend, callback) {
        var
            px_chat_ht = jqueryMap.$chat.height(),
            is_open = px_chat_ht === configMap.chat_extend_height,
            is_closed = px_chat_ht === configMap.chat_retract_height,
            is_sliding = ! is_open && ! is_closed;
        // avoid race condition
        if (is_sliding){ return false; }
        // Begin extend chat slider
        if (do_extend) {
            jqueryMap.$chat.animate(
                { height : configMap.chat_extend_height },
                configMap.chat_extend_time,
                function () {
                    if (callback){callback(jqueryMap.$chat); }
                }
            );
            return true;
        }
        // End extend chat slider
        // Begin retract chat slider
        jqueryMap.$chat.animate(
            { height : configMap.chat_retract_height },
            configMap.chat_retract_time,
            function () {
                if (callback) {callback(jqueryMap.$chat); }
            }
        );
        return true;
        // End retract chat slider
    };
    // End DOM method /toggleChat/
    //--------------------- END DOM METHODS ----------------------


    //------------------- BEGIN EVENT HANDLERS -------------------
    //-------------------- END EVENT HANDLERS --------------------


    //------------------- BEGIN PUBLIC METHODS -------------------
    // Begin PUBLIC method / initModule
    initModule = function ($container) {
        stateMap.$container = $container;
        $container.html(configMap.main_html);
        setJqueryMap();

        // Test chat toggle
        setTimeout(function () { toggleChat(true); }, 3000);
        setTimeout(function () { toggleChat(false); }, 8000);
    };
    // End PUBLIC method / initModule
    return { initModule : initModule };

    //------------------- END PUBLIC METHODS ---------------------

}());