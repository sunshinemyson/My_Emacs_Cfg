;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another 
;; package (Gnus, auth-source, ...).
(load-file "~/Dev_tools/cedet-1.1/common/cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode,
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberant ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languages only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)

;; Enable global support for SemanticDB
(global-semanticdb-minor-mode 1)

;; Enable automatic bookmarking
(global-semantic-mru-bookmark-mode 1)

;;activates CEDET's context menu which bound to right mouse button
(global-cedet-m3-minor-mode 1)

;;activates highlighting of first line for current tag
(global-semantic-highlight-func-mode 1)

;;activates mode when name of current tag will be shown in top line of buffer
;; For example : top line of buffer will show current structure's name
(global-semantic-stickyfunc-mode 1)

;;activates use of separate styles for tags decoration.
;;(global-semantic-decoration-mode 1)

;;highlighting of local names that are the same as name of tag unser cursor
;;
(global-semantic-idle-local-symbol-highlight-mode 1)

;;parsing of source code in the idle time
(global-semantic-idle-scehduler-mode 1)

;;displaying of possible name completions in the idle time. Requires bellow option set to 1
(global-semantic-idle-completions-mode 1)

;;displaying informations about current tag in idle time. !!! requires bellow option set to 1
(global-semantic-idle-summary-mode 1)

;;Debug/Develop CEDET options
;;(global-semantic-show-unmatched-syntax-mode 1)
;;(global-semantic-show-parser-state-mode 1)
;;(global-semantic-highlight-edits-mode 1)

;;enable more advanced functionality for name completion; enable semantic/ia
(require 'semantic/ia)
(defun my-cedet-hook()
  (local-set-key [(control return)]'semantic-ia-complete-symbol)
  (local-set-key "\C-cq"'semantic-ia-comlete-symbol-menu)
;;  (local-set-key "\C-c>" 'semantic-ia-compete-sy
  )
(add-hook 'c-mode-common-hook 'my-cedet-hook)

;;SemanticDB config
;;(global-semanticdb-minor-mode 1)

;;EDE project 
(global-ede-mode t)
(ede-cpp-root-project "yaffs2-read"
		      :name "yaffs2_learn_dev"
		      :file "/home/sven/SourceCode/yaffs2/makefile"
		      :include-path '("/"
				      "/direct/"
				      "/linux-tests/"
				      "/mtdemul/"
				      "/patches/"
				      "/utils/"
				      )
		      )
(ede-cpp-root-project "Demo-Dev-prj"
		      :name "Demo_prj"
		      :file "/home/sven/SourceCode/EDE_project_demo/main.cpp"
		      :include-path '("/")
		      )

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-use-system-font t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
