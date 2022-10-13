;;; publish.el --- Publish my org project.

;; Copyright (C) 2022- Yoshihide Chubachi

;; Author: Your Name <yourname@example.com>
;; Maintainer: Someone Else <someone@example.com>
;; Created: 14 Jul 2010
;; Keywords: languages
;; Homepage: http://example.com/foo
;; Version: 0.0.1
;; Package-Requires: (org htmlize)

;; This file is not part of GNU Emacs.

(require 'org)
(message "org-version:%s" org-version)

(require 'htmlize)

(setq org-publish-project-alist
      '(("lecture-twcu-java1"
         :components ("lecture-twcu-java1:orgfiles" "lecture-twcu-java1:others"))

        ("lecture-twcu-java1:orgfiles"
         :publishing-function org-html-publish-to-html
         :base-directory "~/git/lecture-twcu-java1/"
         :publishing-directory "/scpx:chubachi@chubachi.sakura.ne.jp:~/www/chubachi.net/lecture-twcu-java1/"
         :base-extension "org"
         :exclude ".cask/"
         :recursive t)

        ("lecture-twcu-java1:others"
         :publishing-function org-publish-attachment
         :base-directory "~/git/lecture-twcu-java1/"
         :publishing-directory "/scpx:chubachi@chubachi.sakura.ne.jp:~/www/chubachi.net/lecture-twcu-java1/"
         :base-extension "png"
         :recursive t)))

(org-id-update-id-locations '("index.org"))
(org-publish-all)
;;; publish.el ends here
