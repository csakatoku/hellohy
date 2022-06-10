(import django.db [models]
        django.urls [reverse]
        django.utils.timezone :as timezone)

(defclass Topic [models.Model]
  (setv title (models.TextField))
  (setv url (models.URLField))
  (setv created_at (models.DateTimeField :default timezone.now))

  (defn __str__ [self]
    self.title)

  (defn get_absolute_url [self]
    (reverse "topic_detail" :args [self.id])))
