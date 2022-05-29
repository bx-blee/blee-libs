;;; b-file.el --- b:file facilities  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Additional facilities to manipulate (read, write) files.
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
* Relevant Panels:
** [[file:/bisos/git/auth/bxRepos/blee-binders/blee-core/blee-pkgs/blee-libs/_nodeBase_/fullUsagePanel-en.org]]
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:file:read|nuOfLines"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:file:read|nuOfLines>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:file:read|nuOfLines (
;;;#+END:
                              <filePath <nuOfLines)
   " #+begin_org
** DocStr: Return first =<nuOfLines= lines of =<filePath=.
#+end_org "
   (with-temp-buffer
     (insert-file-contents-literally <filePath)
     (cl-loop repeat <nuOfLines
             unless (eobp)
             collect (prog1 (buffer-substring-no-properties
                             (line-beginning-position)
                             (line-end-position))
                       (forward-line 1)))))

(orgCmntBegin "
** Basic Usage: For example read two-lines of /etc/passwd, then get the first
#+BEGIN_SRC emacs-lisp
(first (b:file:read|nuOfLines \"/etc/passwd\" 2))
#+END_SRC

#+RESULTS:
: root:x:0:0:root:/root:/bin/bash

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:insert-file-contents|forward"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:insert-file-contents|forward>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:insert-file-contents|forward (
;;;#+END:
                                       <fileName)

   " #+begin_org
** DocStr: insert-file-contents and move point forward to after insertion.
#+end_org "
  (let* (
         ($gotVal (insert-file-contents <fileName))
         ($charsInserted (second $gotVal))
         )
    (forward-char $charsInserted)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:insert-file-contents|forward \"/etc/motd\")
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:insert-file-contents|noExtraLine"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:insert-file-contents|noExtraLine>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:insert-file-contents|noExtraLine (
;;;#+END:
                                           <fileName)

   " #+begin_org
** DocStr: insert-file-contents, but not the last cr/lf and move point forward there.
#+end_org "
  (insert
    (with-temp-buffer
      (insert-file-contents <fileName)
      (goto-char (point-max))
      (delete-char -1)
      (buffer-string))
    ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:insert-file-contents|noExtraLine \"/etc/motd\")
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-file)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
