; hellohy URL Configuration
;
(import [django.conf.urls [url include]]
        [django.contrib [admin]])

(def urlpatterns
  [(url r"^admin/" admin.site.urls)
   (url r"" (include "myapp.urls"))])
