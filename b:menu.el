;;; b:menu.el --- Blee menu related facilities  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Additional Blee function related facilities.
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


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:menu:panelAndHelp|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:menu:panelAndHelp|define>>  --  -- Reads one sexp from file. Leaves file open.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:menu:panelAndHelp|define (
;;;#+END:
                                      <panelName
                                      <funcName
                                      &key (pkgRepoUrl nil)
                                      )
  " #+begin_org
** DocStr: Creates a menu item for visiting <panelName and <funcName.
This function is used by many menus and its args are evaluated with backquote.
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
        ($menuName (symbol-name (gensym)))
        )
    ;; (ignore <menuName)

    (easy-menu-define
      b:menu:help
      nil
      (s-lex-format "Help Menu Defined In ${$thisFuncName}")
      `(
        "Blee Panels And Help Menu:"
        [,(format "Go To Panel: %s" <panelName)
         (blee:bnsm:panel-goto ,<panelName)
         t
         ]
        "---"
        [,(format "Visit %s" <funcName)
         (find-function (intern ,<funcName))
         t
         ]
        )
      )
    'b:menu:help
    ))


;;
;; [[elisp:(popup-menu (symbol-value (modes:menu:help|define)))][Help Me]]
;; (popup-menu (symbol-value (b:menu:panelAndHelp|define "/bisos/panels/bisos-dev/_nodeBase_"  "b:menu:panelAndHelp|define" )))
;;


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:menu:panelAndHelp|define \"/bisos/panels/bisos-dev/_nodeBase_\"  \"b:menu:panelAndHelp|define\" )))
#+END_SRC

#+RESULTS:
: Missing/bisos/panels/bisos-dev/_nodeBase_/fullUsagePanel-en.org

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:menu)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
