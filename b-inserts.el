;;; b-inserts.el --- Blee Inserts Library  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: name space is b:inserts:
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:inserts:dblock|moded"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:inserts:dblock|moded>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:inserts:dblock|moded (
;;;#+END:
                               <dblockNameAndPars)
   " #+begin_org
** DocStr: Based on the mode insert a dblock at point.
*** TODO: make it be based on major mode
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "")
         )
     (insert
      (s-lex-format
       ";;;#+BEGIN: ${<dblockNameAndPars}\n"))
     (insert
      (s-lex-format
       ";;;#+END:\n"))
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:inserts:dblock|moded 'b:elisp:file/copyLeftPlus :outLevel 1')
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-inserts)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
