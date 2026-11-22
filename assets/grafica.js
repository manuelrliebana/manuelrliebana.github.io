// Gráfica antes/después del radioenlace: cambia entre canal 1 y canal 6.
// Sin JavaScript se ve el canal 6 y la tabla completa justo debajo.
document.querySelectorAll(".grafica").forEach(function (g) {
  var max = parseFloat(g.dataset.max);
  var botones = g.querySelectorAll("[data-ver]");
  function pintar(canal) {
    g.dataset.canal = canal;
    g.querySelectorAll(".barra").forEach(function (b) {
      var v = parseFloat(b.dataset["c" + canal]);
      b.querySelector(".relleno").style.setProperty("--v", (v / max * 100) + "%");
      b.querySelector(".valor").textContent = v.toLocaleString(document.documentElement.lang) + " Mbps";
    });
    botones.forEach(function (bt) {
      bt.setAttribute("aria-pressed", bt.dataset.ver === canal ? "true" : "false");
    });
  }
  botones.forEach(function (bt) {
    bt.addEventListener("click", function () { pintar(bt.dataset.ver); });
  });
  g.querySelector(".grafica-controles").hidden = false;
  pintar("1");
});
