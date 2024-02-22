;;; b-org-mode.el --- b:file facilities  -*- lexical-binding: t; -*-

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

(defvar b:org-mode:isFolded? nil
  " #+begin_org
** =b:org-mode:isFolded?= assists with b:org-mode|folded? to determine if a heading is folded
#+end_org "
  )
(make-variable-buffer-local 'b:org-mode:isFolded?)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:org-mode|forSureIsUnFolded?"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      ::  <<b:org-mode|forSureIsUnFolded?>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:org-mode|forSureIsUnFolded? (
;;;#+END:
                      )
   " #+begin_org
** DocStr: Return non-nil if point is on a unfolded headline.
We can determine for sure when the headline is unfolded.
But the opposit can have false positivies.
#+end_org "
  (not
   (and (or (org-at-heading-p)
            (org-at-item-p))
        (invisible-p (point-at-eol)))))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:org-mode|falsePositiveFolded?"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      ::  <<b:org-mode|falsePositiveFolded?>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:org-mode|falsePositiveFolded? (
;;;#+END:
                                        )
   " #+begin_org
** DocStr: Return non-nil if point is on a folded headline or plain list item.
Some unfoldings, still have (invisible-p (point-at-eol) as t and as a result,
unless we add something like b:org-mode:isFolded?, we would always see it as folded.
This is a band-aid solution. We should look for a better solution.
#+end_org "
  (and (or (org-at-heading-p)
           (org-at-item-p))
       (invisible-p (point-at-eol))
       b:org-mode:isFolded?))

(orgCmntBegin "
** Basic Usage: Typically used to toggle an outline-show function
#+BEGIN_SRC emacs-lisp
(b:org-folded?)
#+END_SRC

#+RESULTS:

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "outline-show-subtree+toggle"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      ::  <<outline-show-subtree+toggle>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun outline-show-subtree+toggle (
;;;#+END:
                                    )
  " #+begin_org
** DocStr: outline-show-subtree or org-cycle, if already showing (unfolded).
Since, outline-show-subtree fully unfolds, unlike outline-show-branches,
we don't need to worry about false positives.
#+end_org "
  (interactive)
  (if (b:org-mode|forSureIsUnFolded?)
      (org-cycle)
    (outline-show-subtree)))


(orgCmntBegin "
** Basic Usage:  [[elisp:(outline-show-subtree+toggle)][|=]]
*** This Should Showup as a branch
But not this.
**** And this again.
#+BEGIN_SRC emacs-lisp
(outline-show-subtree+toggle)
#+END_SRC

#+RESULTS:
: 16

" orgCmntEnd)




;;;#+BEGIN:  b:elisp:defs/defun :defName "outline-show-branches+toggle"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      ::  <<outline-show-branches+toggle>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun outline-show-branches+toggle (
;;;#+END:
                                    )
  " #+begin_org
** DocStr: outline-show-branches or org-cycle, if already showing.
As we are using b:org-mode|falsePositiveFolded? , we could end up
no just showing branches the first time. Cycling through it produces
the right results.
#+end_org "
  (interactive)
  (when (b:org-mode|forSureIsUnFolded?)
     (org-cycle)
     ;;(message "FOR-SURE")
     (setq b:org-mode:isFolded? t))
  (if (b:org-mode|falsePositiveFolded?)
      (progn
        (outline-show-branches)
        ;;(message (s-lex-format "SHOW-BRANCHES ${b:org-mode:isFolded?}"))
        (setq b:org-mode:isFolded? nil))
    (progn
      (org-cycle)
      ;;(message (s-lex-format "ORG-CYCLE ${b:org-mode:isFolded?}"))
      (setq b:org-mode:isFolded? t))))


(orgCmntBegin "
** Basic Usage:  [[elisp:(outline-show-branches+toggle)][|=]]
Some text here should mess things up
*** This Should Showup as a branch
But not this.
*** And this again.
#+BEGIN_SRC emacs-lisp
(outline-show-branches+toggle)
#+END_SRC

#+RESULTS:
: 32

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-org-mode)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
