; hellohy URL Configuration
;
(import [django.conf.urls [url]]
        [django.contrib [admin]])

(def urlpatterns
  [(url r"^admin/" admin.site.urls)])
