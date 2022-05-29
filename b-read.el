;;; b-read.el --- read related facilities  -*- lexical-binding: t; -*-

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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:read|fromFile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:read|fromFile>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:read|fromFile (
;;;#+END:
                        <fileName)
   " #+begin_org
** DocStr: Reads one sexp from file. Leaves file open.
https://emacs.stackexchange.com/questions/33586/how-to-read-elisp-file-into-s-expression
#+end_org "
   (with-current-buffer (find-file-noselect <fileName)
     (goto-char (point-min))
     (read (current-buffer))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:read|fromFile "./examples/mini-doom-3.0.0-alpha.el")
#+END_SRC

#+RESULTS:
| adaptive-wrap         | :repoUrl | https://github.com/emacs-straight/adaptive-wrap.git   | :commit | 5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6 |
| add-node-modules-path | :repoUrl | https://github.com/codesuki/add-node-modules-path.git | :commit | 5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6 |
| a.el                  | :repoUrl | https://github.com/plexus/a.el.git                    | :commit | 5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6 |
| alert                 | :repoUrl | https://github.com/jwiegley/alert.git                 | :commit | 5cbdbf0d2015540c59ed8ee0fcf4788effdf75b6 |

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-read)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
