(import django.contrib [admin])

(import .models [Topic])

(defclass TopicAdmin [admin.ModelAdmin])

(admin.site.register Topic TopicAdmin)
