; WSGI config for hellohy project.
;
; It exposes the WSGI callable as a module-level variable named ``application``.
;
; For more information on this file, see
; https://docs.djangoproject.com/en/1.9/howto/deployment/wsgi/

(import os)
(import [django.core.wsgi [get_wsgi_application]])

(os.environ.setdefault "DJANGO_SETTINGS_MODULE" "hellohy.settings")

(def application (get_wsgi_application))
