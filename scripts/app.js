!function(e){"use strict";var o=e.querySelector("#app");o.baseUrl="/",""===window.location.port&&(o.baseUrl="/app-showcase/"),o.displayInstalledToast=function(){Polymer.dom(e).querySelector("platinum-sw-cache").disabled||Polymer.dom(e).querySelector("#caching-complete").show()},o.addEventListener("dom-change",function(){}),window.addEventListener("WebComponentsReady",function(){}),o.scrollPageToTop=function(){o.$.headerPanelMain.scrollToTop(!0)},o.closeDrawer=function(){o.$.paperDrawerPanel.closeDrawer()}}(document);