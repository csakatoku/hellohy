(import [django.test [TestCase]]
        [myapp.models [Topic]])

(defclass TopicTestCase [TestCase]
  (defn test_unicode [self]
    (let [obj (Topic :title "test")]
      (self.assertEqual (unicode obj) "test")))

  (defn test_get_absolute_url [self]
    (let [obj (Topic :pk 1)]
      (self.assertEqual (obj.get_absolute_url) "/1/"))))

(defclass TopicDetailViewCase [TestCase]
  [fixtures ["myapp_topics.yaml"]]

  (defn test_200 [self]
    (let [res (self.client.get "/1/")]
      (self.assertEqual res.status_code 200)))

  (defn test_404 [self]
    (let [res (self.client.get "/0/")]
      (self.assertEqual res.status_code 404))))
