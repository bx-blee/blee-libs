;;; blee-libs.el --- Blee Common and General Libraries  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Main Pkg File providing b:pkg:plee-libs|version
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
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'b-file)
(require 'b-func)
(require 'b-inserts)
(require 'b-log)
(require 'b-plist)
(require 'b-read)
(require 'b-pkg)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defvar b:pkg:blee-libs:version "0.1"
   " #+begin_org
** =b:pkg:blee-libs:version= version number of the entirety of blee-libs.
#+end_org "
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo ""
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:pkg:blee-libs/version"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:pkg:blee-libs|version>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:pkg:blee-libs/version (
;;;#+END:
                                )
   " #+begin_org
** DocStr: blee-libs package version number.
#+end_org "
   (interactive)
   b:pkg:blee-libs:version)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:pkg:blee-libs/version)
#+END_SRC

#+RESULTS:
: 0.1

" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'blee-libs)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd);;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
