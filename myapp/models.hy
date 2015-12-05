(import [django.db [models]]
        [django.core.urlresolvers [reverse]]
        [django.utils.timezone :as timezone])

(defclass Topic [models.Model]
  [title (models.TextField)
   url (models.URLField)
   created_at (models.DateTimeField :default timezone.now)]

  (defn --unicode-- [self]
    self.title)

  (defn get_absolute_url [self]
    (reverse "topic_detail" :args [self.id])))
