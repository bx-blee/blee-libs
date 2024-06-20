;;; b-plist.el --- Additional plist Facilities  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Additional plist facilities.
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  [[elisp:(org-cycle)][|/Controls/| ]] :: [[elisp:(org-show-subtree)][|=]]  [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(delete-other-windows)][(1)]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
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
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Basic Facilities" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Basic Facilities_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:remprop-all"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:remprop-all>>  --  -- Walk through =<symbol='s property list and remove them all. Returns nil.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:remprop-all (
;;;#+END:
                      <symbol)
   " #+begin_org
** DocStr: Walk through =<symbol='s property list and remove them all. Returns nil.
and side-effects are documented here
#+end_org "
   (let*  (
           ($plist (symbol-plist <symbol))
           )
     (dolist ($each $plist)
       (cl-remprop <symbol $each)
       (pop $plist) ;;; ignoring the value
       )))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:remprop-all 'b:mrm:resource:manifest)
#+END_SRC

#+RESULTS:

" orgCmntEnd)


(defun emacsconf-replace-plist-in-string (attrs string)
  "Replace ${keyword} from ATTRS in STRING."
  (let ((a attrs) name val)
    (while a
      (setq name (pop a) val (pop a))
      (when (stringp val)
        (setq string
              (replace-regexp-in-string (regexp-quote (concat "${" (substring (symbol-name name) 1) "}"))
                                        (or val "")
                                        string t t))))
    string))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:plist|replaceInString"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:plist|replaceInString>>  --  -- Walk through =<symbol='s property list and remove them all. Returns nil.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:plist|replaceInString (
;;;#+END:
                                <attrs
                                <string
                                )
   " #+begin_org
** DocStr: Replace ${keyword} from <attrs in <string.
Taken from Sachua's (defun emacsconf-replace-plist-in-string (attrs string) in June of 2024
#+end_org "
  (let*
      (
       ($a <attrs)
       $name
       $val
       )
    (while $a
      (setq $name (pop $a))
      (setq $val (pop $a))
      (when (stringp $val)
        (setq <string
              (replace-regexp-in-string (regexp-quote (concat "${" (substring (symbol-name $name) 1) "}"))
                                        (or $val "")
                                        <string t t))))
    <string))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:remprop-all 'b:mrm:resource:manifest)
#+END_SRC

#+RESULTS:

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "$b:test:plist|replaceInString"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<$b:test:plist|replaceInString>>  --  -- Test/Example of using [[b:plist|replaceInString]].  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun $b:test:plist|replaceInString (
;;;#+END:
                                      )
   " #+begin_org
** DocStr: Test/Example of using [[b:plist|replaceInString]].
#+end_org "
   (b:plist|replaceInString
    (list
     :version emacs-version
     :date (time-stamp-string)
     :someConstant "My First Name"
     )
    "
This is the template string that
will be replaced based on plist.

Here is field ${version} and then we have someConstant which is ${someConstant}
followed by a ${date}.

Try it!
"
    ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
($b:test:plist|replaceInString)
#+END_SRC

#+RESULTS:

" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-plist)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
