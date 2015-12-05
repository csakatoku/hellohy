(import [django.shortcuts [render]]
        [myapp.models [Topic]])

(defn top [req]
  (def topics (-> (Topic.objects.all)
                  (.order_by "-id")))
  (render req "top.html" {"topics" topics}))
