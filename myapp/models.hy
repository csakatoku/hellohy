(import [django.db [models]]
        [django.utils.timezone :as timezone])

(defclass Topic [models.Model]
  [title (models.TextField)
   url (models.URLField)
   created_at (models.DateTimeField :default timezone.now)])
