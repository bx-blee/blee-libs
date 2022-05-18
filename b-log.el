;;; b-log.el --- Blee Logging Library  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Name Spaces== b:log b:error b:warning
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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:log|entry"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:log|entry>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:log|entry (
;;;#+END:
                <inHere)
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($result <inHere)
          ($funcName)
          ($hereFile)
          ($hereLine)          
         )
     (when <inHere
       (setq $funcName (first <inHere))
       (setq $hereFile (second <inHere))
       (setq $hereLine (third <inHere))          
       )
     (message
      (s-lex-format
       "b:log|entry:: ${$funcName} from ${$hereFile}::${$hereLine}"))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b::error nil "Some Error")
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b::error"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b::error>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b::error (
;;;#+END:
                <inHere <errorStr)
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
   (let* (
          ($result nil)
          ($funcName)
          ($hereFile)
          ($hereLine)          
          ($inHereStr "")
          ($fullErrStr "")
         )
     (when <inHere
       (setq $funcName (first <inHere))
       (setq $hereFile (second <inHere))
       (setq $hereLine (third <inHere))          
       (setq $inHereStr
             (s-lex-format
              "${$funcName} -- ${$hereFile}::${$hereLine}")))
     (setq $fullErrStr
           (s-lex-format
            "b:: ${<errorStr} -- ${$inHereStr}"))
     (user-error $fullErrStr)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b::error nil "Some Error")
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-log)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
