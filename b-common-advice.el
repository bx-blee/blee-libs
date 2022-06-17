;;; b-common-advice.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  ~ORG-TOP-CONTROLS-COME-HERE~
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Commentary, Model and Terminology:
* Relevant Panels:
** [[file:/bisos/panels/blee-core/mail/model/_nodeBase_/fullUsagePanel-en.org]]
** [[file:/bisos/panels/blee-core/mail/Gnus/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:advice:common|pureOnly"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:advice:common|pureOnly>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:advice:common|pureOnly (
;;;#+END:
				 <origFunc &rest <params)

   " #+begin_org
** DocStr: Only invoke when *b:doom:enabled?* is note true.
#+end_org "
   (let* (
	  ($paramsAsParams)
        )

     ;; <params is passed as a list of a list.
     ;; $paramsAsParams is a plist usable  list.
     ;;
     ;; (defun paramsAsParams (<params) <params)
     ;; (setq $paramsAsParams (apply 'paramsAsParams <params))

     (if b:doom:enabled?
	 (progn
	   (message "b:advice:common|pureOnly --- skipped"))
       (progn
	 (message "b:advice:common|pureOnly --- in effect")
	 (apply <origFunc <params)))
       ))

     

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:advice:common|pureOnly 'ding ())
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:advice:common|doomOnly"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:advice:common|doomOnly>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:advice:common|doomOnly (
;;;#+END:
				 <origFunc &rest <params)

   " #+begin_org
** DocStr: Only invoke when *b:doom:enabled?* is note true.
#+end_org "
   (let* (
	  ($paramsAsParams)
        )

     ;; <params is passed as a list of a list.
     ;; $paramsAsParams is a plist usable  list.
     ;;
     (defun paramsAsParams (<params) <params)
     (setq $paramsAsParams (apply 'paramsAsParams <params))

     (if b:doom:enabled?
	 (progn
	   (message "b:advice:common|doomOnly --- in-effect")
	   (apply <origFunc <params))
       (progn
	 (message "b:advice:common|doomOnly --- skipped")))
       ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:advice:common|doomOnly 'ding ())
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:advice:common|nullify"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:advice:common|nullify>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:advice:common|nullify (
;;;#+END:
				 <origFunc &rest <params)

   " #+begin_org
** DocStr: *<origFunc* is not invoked.
#+end_org "
   (let* (
	  ($paramsAsParams)
        )

     ;; <params is passed as a list of a list.
     ;; $paramsAsParams is a plist usable  list.
     ;;
     (defun paramsAsParams (<params) <params)
     (setq $paramsAsParams (apply 'paramsAsParams <params))

     (message (s-lex-format "${<origFunc} NULLIFIED --- skipped"))
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:advice:common|nullify 'ding ())
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-common-advice)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:







