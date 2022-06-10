(import django.urls [re_path]
        myapp [views])

(setv urlpatterns
  [(re_path r"^(?P<topic_id>\d+)/$" views.topic_detial :name "topic_detail")
   (re_path r"^$" views.top)])
