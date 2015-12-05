(import [django.shortcuts [render]])

(defn top [req]
  (render req "top.html" {}))
