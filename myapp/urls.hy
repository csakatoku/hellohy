(import [django.conf.urls [url]]
        [myapp [views]])

(def urlpatterns
  [(url r"^(?P<topic_id>\d+)/$" views.topic_detial :name "topic_detail")
   (url r"" views.top)])
