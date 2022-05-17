;;; b-func.el --- function related facilities  -*- lexical-binding: t; -*-

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

;;;#+BEGIN:  b:elisp:defs/defun :defName "b::call-stack"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b::call-stack>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b::call-stack (
;;;#+END:
                      )
   " #+begin_org
** DocStr: Return the current call stack frames.
Used by the likes of [[b~:func:compileTimeName]]
#+end_org "
  (let ((frames)
        (frame)
        (index 5))
    (while (setq frame (backtrace-frame index))
      (push frame frames)
      (incf index))
    (remove-if-not 'car frames)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b::call-stack)
#+END_SRC

#+RESULTS:
| t | command-execute              | org-ctrl-c-ctrl-c       |                                                                                                                                                                                                                                                                        |     |
| t | call-interactively           | org-ctrl-c-ctrl-c       | nil                                                                                                                                                                                                                                                                    | nil |
| t | funcall-interactively        | org-ctrl-c-ctrl-c       | nil                                                                                                                                                                                                                                                                    |     |
| t | org-ctrl-c-ctrl-c            | nil                     |                                                                                                                                                                                                                                                                        |     |
| t | org-babel-execute-src-block  | nil                     | (emacs-lisp (b::call-stack) ((:colname-names) (:rowname-names) (:result-params replace) (:result-type . value) (:results . replace) (:exports . code) (:lexical . no) (:tangle . no) (:hlines . no) (:noweb . no) (:cache . no) (:session . none))  nil 2889 (ref:%s)) |     |
| t | org-babel-execute:emacs-lisp | (b::call-stack)         | ((:colname-names) (:rowname-names) (:result-params replace) (:result-type . value) (:results . replace) (:exports . code) (:session . none) (:cache . no) (:noweb . no) (:hlines . no) (:tangle . no) (:lexical . no))                                                 |     |
| t | eval                         | (progn (b::call-stack)) | nil                                                                                                                                                                                                                                                                    |     |

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:func:compileTimeName"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defmacro= <<b:func:compileTimeName>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defmacro b:func:compileTimeName (
;;;#+END:
                                  )
   " #+begin_org
** DocStr: Returns the name of calling function at expansion time.
Uses [[b::call-stack]].
#+end_org "
   (symbol-name
    (cadadr
     (third
      (find-if (lambda (frame) (ignore-errors (equal (car (third frame)) 'defalias)))
               (reverse (call-stack)))))))

(orgCmntBegin "
** Basic Usage: Should be used from with in a function.
#+BEGIN_SRC emacs-lisp
(b:func:compileTimeName)
#+END_SRC

#+RESULTS:
: nil

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:log:func|invocation"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:log:func|invocation>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:log:func|invocation (
;;;#+END:
                              <thisFunc)
   " #+begin_org
** DocStr: Log the invocation of =<thisFunc=. Func (line-number-at-pos)
and side-effects are documented here
#+end_org "
   (let* (
          ($fileName (or load-file-name buffer-file-name))
          ($lineNu (line-number-at-pos)) ;;; This is probably not correct.
         )
        (message
         (s-lex-format
          "b:log -- invocation of: ${<thisFunc} from ${$fileName}::${$lineNu}"))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:log:func|invocation "b:log:func|invocation")
#+END_SRC

#+RESULTS:
: b:log -- invocation of: b:log:func|invocation from /bisos/git/auth/bxRepos/blee/blee-libs/b-func.el::140

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defmacro :defName "b:func$entry"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defmacro= <<b:func$entry>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defmacro b:func$entry (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Uses  [[b:func:compileTimeName]] to figure what function we are in and acts on that.
#+end_org "
   `(progn
      (b:log:func|invocation (b:func:compileTimeName))))


(orgCmntBegin "
** Basic Usage: Invocation of thisTestFunction should report its own name.
C-C C-C does not work. But C-x e works right.
#+BEGIN_SRC emacs-lisp
(defun thisTestfunction ()  (b:func$entry))
(thisTestfunction)
#+END_SRC

#+RESULTS:
: blee:ann -- invocation of:  nil from /bisos/git/auth/bxRepos/blee/blee-libs/b-func.el

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-func)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
