;; Display the line and column number in the modeline
(setq line-number-mode t)
(setq column-number-mode t)
(line-number-mode t)
(column-number-mode t)

;; syntax highlight everywhere
(global-font-lock-mode t)

;; Show matching parens (mixed style)
(show-paren-mode t)
(setq show-paren-delay 0.0)

;; 'mixed highlights the whole exp making it unreadable, maybe tweak
;; color display?
(setq show-paren-style 'parenthesis)

;; Highlight selection
 (transient-mark-mode t)
;;(add-to-list 'load-path "/root/oacs")

(setq-default tab-width 4 indent-tabs-mode nil)

;;(require 'oacs)
(add-to-list 'auto-mode-alist '("\\.vuh" . tcl-mode))
(add-to-list 'auto-mode-alist '("\\.adp" . html-mode))
(add-to-list 'auto-mode-alist '("\\.sql" . sql-mode))
(add-to-list 'auto-mode-alist '("\\.info" . xml-mode))

;;command to pretty parse xml from http://www.qcode.co.uk/formating-xml-in-an-emacs-buffer
(defun xml-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (mark) (point) "xmllint --format -" (buffer-name) t)
  )
)
;;xmllint is a unix command line tool used to parse XML files.
;;xml-format passes the selected region of an Emacs buffer as standard input to 
;; xmllint and then replaces that region with the new formatted XML.
;;I can now select a region of XML in an Emacs buffer, execute the 
;; function xml-format ( M-x , xml_format , RET ) Abracadabra each XML element is displayed
