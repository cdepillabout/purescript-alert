"use strict";

// module Browser.Alert

exports.alert = function(string) {
    return function() {
        alert(string);
        return {};
    }
}
