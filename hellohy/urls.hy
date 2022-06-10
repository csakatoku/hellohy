; hellohy URL Configuration
;
(import django.urls [re_path include]
        django.contrib [admin])

(setv urlpatterns
  [(re_path r"^admin/" admin.site.urls)
   (re_path r"" (include "myapp.urls"))])
