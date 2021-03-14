/*------------------------------------------------------------------

[Table of contents]

1. Layout Cog
2. LocalStorage
3. Detect System Mode
4. Mode
5. Color Switcher
-------------------------------------------------------------------*/

// Layout Cog
(function ($) {
  $("#customizerCog").on("click", function () {
    if ($(this).css("margin-right") === "250px") {
      $(".customizer-block-content").animate({
        "margin-right": "-=250",
      });
      $("#customizerCog").animate({
        "margin-right": "-=250",
      });
    } else {
      $(".customizer-block-content").animate({
        "margin-right": "+=250",
      });
      $("#customizerCog").animate({
        "margin-right": "+=250",
      });
    }
  });
})(jQuery);

/***** LocalStorage *****/

// Add default local storage class on Body
document.body.classList.add(localStorage.getItem("pageColor") || "clr-purple");

/***** Mode *****/
var modeBtns = document.querySelectorAll(".wdes-mode button");
var btnsList = [];
for (var btn = 0; btn < modeBtns.length; btn++) {
  btnsList.push(modeBtns[btn]);
  modeBtns[btn].addEventListener(
    "click",
    function () {
      // Change Theme File Name
      document
        .querySelector("link[href*='theme']")
        .setAttribute(
          "href",
          `${whmcsBaseUrl}/templates/${templateName}/css/` + this.value + ".css"
        );
      // Change Order File Name
      if (document.querySelector("link[href*='form-theme']") != null) {
        document
          .querySelector("link[href*='form-theme']")
          .setAttribute(
            "href",
            `${whmcsBaseUrl}/templates/orderforms/digit/css/form-` +
              this.value +
              ".css"
          );
      }

      // Change image Path from Dark to Light
      if (document.querySelector(".logo img") != null) {
        document
          .querySelector(".logo img")
          .setAttribute(
            "src",
            `${whmcsBaseUrl}/templates/${templateName}/img/` +
              this.value +
              "-logo" +
              ".png"
          );
      }
      if (document.querySelector(".domain-bg") != null) {
        document
          .querySelector(".domain-bg")
          .setAttribute(
            "src",
            `${whmcsBaseUrl}/templates/${templateName}/img/` +
              this.value +
              "-domain-bg" +
              ".png"
          );
      }
    },
    false
  );
}

/***** Color Switcher *****/
var el = document.querySelectorAll(".color-switcher li");
var classesList = [];
// Loop on Elements
for (var i = 0; i < el.length; i++) {
  // get classes list
  classesList.push(el[i].getAttribute("data-color"));
  el[i].addEventListener(
    "click",
    function () {
      // remove all old classes
      document.body.classList.remove(...classesList);
      // add current class from LI Data attribute
      document.body.classList.add(this.getAttribute("data-color"));
      // Add Data to localstorage
      localStorage.setItem("pageColor", this.getAttribute("data-color"));
    },
    false
  );
}
