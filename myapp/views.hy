(require hyrule [->])

(import django.shortcuts [render]
        django.http [Http404]
        myapp.models [Topic])

(defn top [req]
  (setv topics (-> (Topic.objects.all)
                   (.order_by "-id")))
  (render req "top.html" {"topics" topics}))

(defn topic_detial [req topic_id]
  (setv topic (try
              (Topic.objects.get :pk topic_id)
              (except [e Topic.DoesNotExist] (raise Http404))))
  (render req "topics/topic_detail.html" {"topic" topic}))
