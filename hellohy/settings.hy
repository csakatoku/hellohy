(import os)

(import environ)

(setv env (environ.Env :DEBUG [bool False]))

; Build paths inside the project like this: os.path.join(BASE_DIR, ...)
(setv BASE_DIR
  (os.path.dirname (os.path.dirname (os.path.abspath __file__))))

; Take environment variables from .env file
(environ.Env.read_env (os.path.join BASE_DIR ".env"))

; SECURITY WARNING: keep the secret key used in production secret!
(setv SECRET_KEY (env "SECRET_KEY"))

; SECURITY WARNING: don't run with debug turned on in production!
(setv DEBUG (env "DEBUG"))

(setv ALLOWED_HOSTS [])

; Application definition

(setv INSTALLED_APPS
  ["myapp"
   "hellohy"
   "django.contrib.admin"
   "django.contrib.auth"
   "django.contrib.contenttypes"
   "django.contrib.sessions"
   "django.contrib.messages"
   "django.contrib.staticfiles"])

(setv MIDDLEWARE
  ["django.middleware.security.SecurityMiddleware"
   "django.contrib.sessions.middleware.SessionMiddleware"
   "django.middleware.common.CommonMiddleware"
   "django.middleware.csrf.CsrfViewMiddleware"
   "django.contrib.auth.middleware.AuthenticationMiddleware"
   "django.contrib.messages.middleware.MessageMiddleware"
   "django.middleware.clickjacking.XFrameOptionsMiddleware"])

(setv ROOT_URLCONF "hellohy.urls")

(setv TEMPLATES
  [{"BACKEND" "django.template.backends.django.DjangoTemplates"
    "DIRS" []
    "APP_DIRS" True
    "OPTIONS" {"context_processors" ["django.template.context_processors.debug"
                                     "django.template.context_processors.request"
                                     "django.contrib.auth.context_processors.auth"
                                     "django.contrib.messages.context_processors.messages"]
               }}])

(setv WSGI_APPLICATION "hellohy.wsgi.application")

; Database
; https://docs.djangoproject.com/en/1.9/ref/settings/#databases

(setv DATABASES
  {"default" (env.db)})

; Password validation
; https://docs.djangoproject.com/en/1.9/ref/settings/#auth-password-validators

(setv AUTH_PASSWORD_VALIDATORS
  [{"NAME" "django.contrib.auth.password_validation.UserAttributeSimilarityValidator"}
   {"NAME" "django.contrib.auth.password_validation.MinimumLengthValidator"}
   {"NAME" "django.contrib.auth.password_validation.CommonPasswordValidator"}
   {"NAME" "django.contrib.auth.password_validation.NumericPasswordValidator"}
   ])

; Internationalization
; https://docs.djangoproject.com/en/1.9/topics/i18n/

(setv LANGUAGE_CODE "en-us")

(setv TIME_ZONE "UTC")

(setv USE_I18N True)

(setv USE_L10N True)

(setv USE_TZ True)


; Static files (CSS, JavaScript, Images)
; https://docs.djangoproject.com/en/1.9/howto/static-files/

(setv STATIC_URL "/static/")

; Default primary key field type
; https://docs.djangoproject.com/en/4.0/ref/settings/#default-auto-field

(setv DEFAULT_AUTO_FIELD "django.db.models.BigAutoField")
