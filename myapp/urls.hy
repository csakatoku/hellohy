(import [django.conf.urls [url]]
        [myapp [views]])

(def urlpatterns
  [(url r"" views.top)])
