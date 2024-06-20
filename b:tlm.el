;;; b:tlm.el --- Blee TLM (Simple Telemetry) Library  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Name Spaces== b:log b:error b:warning
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/git/bxRepos/blee/blee-libs/b:tlm.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

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


;;;#+BEGIN:  b:elisp:defs/defgroup :defName "b:tlm" :defValue "nil"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defgroup   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm>> ~nil~ --  -- Telemetry  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defgroup b:tlm nil
;;;#+END:
" #+begin_org
** DocStr: Telemetry
#+end_org "
  :group 'blee
  :prefix "b:log"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Telemetry Control and ReportType" :extraInfo "logging, errors, warning, debug"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Telemetry Control and ReportType_: |]]  logging, errors, warning, debug  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:tlm+control" :defValue "'b:tlm+control::funcTrace" :comment "/MENU/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm+control>> ~'b:tlm+control::funcTrace~ -- /MENU/ -- Selected and effective reporting level control  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:tlm+control 'b:tlm+control::trace
;;;#+END:
    " #+begin_org
** DocStr: Selected and effective reporting level control
#+end_org "
	:group 'b:tlm
	:type '(choice
	        (const :tag "9" b:tlm+control::always "Always Record")
		(const :tag "8" b:tlm+control::fatalError "Fatal Error")
		(const :tag "7" b:tlm+control::error "Error")
		(const :tag "6" b:tlm+control::warning "Warning")
		(const :tag "5" b:tlm+control::log "Explicit Log Information")
		(const :tag "4" b:tlm+control::funcTrace "Function Entry Trace Information")
		(const :tag "3" b:tlm+control::trace "Tracing and Debug")
		(const :tag "2" b:tlm+control::funcDebug "Function Entry Trace Debug Information")
		(const :tag "1" b:tlm+control::debug "Full Debug Information")
		(const :tag "0" b:tlm+control::ignore "Ignore")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm+control|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm+control|actuate>>  --  -- NOTYET, should convert to integer. Based on <tlmReportType, set things up for TLM reporting.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm+control|actuate (
;;;#+END:
                              <tlmReportType
                              )
  " #+begin_org
** DocStr: NOTYET, should convert to integer. Based on <tlmReportType, set things up for TLM reporting.
#+end_org "
  (let* (
         ($inHere (b:log|entry (b:func$entry)))
	 )
    (b:var:custom:choices|set 'b:tlm+control <tlmReportType)
    b:tlm+control))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm+control|actuate 'b:tlm+control::funcTrace)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Recuring Events Control" :extraInfo "logging, errors, warning, debug"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Telemetry Control and ReportType_: |]]  logging, errors, warning, debug  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defcustom :defName "b:recuring+control"  :defValue "'b:recuring+control::disabled" :comment "/MENU/"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defcustom  [[elisp:(outline-show-subtree+toggle)][||]]  <<b:recuring+control>> ~'b:recuring+control::disabled~ -- /MENU/ -- Control possible recuring event avoidance  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defcustom b:recuring+control 'b:recuring+control::disabled
;;;#+END:
    " #+begin_org
** DocStr: Control possible recuring event avoidance
#+end_org "
	:group 'b:tlm
	:type '(choice
	        (const :tag "enabled" b:recuring+control::enabled "When enabled recuring event will not be avoided")
	        (const :tag "disabled" b:recuring+control::disabled "When disabled recuring event can be avoided")
                ))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:recuring+control|actuate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:recuring+control|actuate>>  --  -- NOTYET, should convert to integer. Based on <tlmReportType, set things up for TLM reporting.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:recuring+control|actuate (
;;;#+END:
                              <control
                              )
  " #+begin_org
** DocStr: NOTYET, should convert to integer. Based on <tlmReportType, set things up for TLM reporting.
#+end_org "
  (let* (
         ($inHere (b:trace|entry (b:func$entry)))
	 )
    (b:var:custom:choices|set 'b:recuring+control <control)
    b:recuring+control))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:recuring+control|actuate 'b:recuring+control::disabled)
#+END_SRC

#+RESULTS:
: b:mtdt:compose+framework::basic

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:recuring+control|enabled?"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:recuring+control|enabled?>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:recuring+control|enabled? (
;;;#+END:
                                    )
   " #+begin_org
** DocStr:
#+end_org "
  (let* (
         ($result t)
	 )
   (when  (eq b:recuring+control 'b:recuring+control::disabled)
     (setq $result nil))
   $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:recuring+control|enabled?)
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Format" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Format_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defalias :aliasName "'b|fmt$" :defName "'s-lex-format"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defalias   [[elisp:(outline-show-subtree+toggle)][||]]  <<'s-lex-format>> ~'b|fmt$~ --  -- Defined Alias  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defalias 'b|fmt$ 's-lex-format)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:msg$fmt$"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:msg$fmt$>>  --  -- Combination of (message (s-lex-format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:msg$fmt$ (
;;;#+END:
                         &rest args
                               )
   " #+begin_org
** DocStr: Combination of (message (s-lex-format))
#+end_org "
   `(message (s-lex-format ,@args)))

;;; (macroexpand '(b:msg$fmt$ "${emacs-version}"))
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp

#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:msg$fmt"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:msg$fmt>>  --  -- Combination of (message (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:msg$fmt (
;;;#+END:
                         &rest args
                               )
   " #+begin_org
** DocStr: Combination of (message (format))
#+end_org "
   `(message (format ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand '(b:msg$fmt (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:ins$fmt$"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:ins$fmt$>>  --  -- Combination of (insert (s-lex-format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:ins$fmt$ (
;;;#+END:
                         &rest args
                               )
   " #+begin_org
** DocStr: Combination of (insert (s-lex-format))
#+end_org "
   `(insert (s-lex-format ,@args)))

;;; (b:ins$fmt$ "${emacs-version}")
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:ins$fmt"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:ins$fmt>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:ins$fmt (
;;;#+END:
                         &rest args
                               )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(insert (format ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand '(b:ins$fmt (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)




;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Func Entry Log and Debug" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Func Entry Log and Debug_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm+control|enabled?"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm+control|enabled?>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm+control|enabled? (
;;;#+END:
                               <tlmReportType
                               )
   " #+begin_org
** DocStr:
#+end_org "
     ;;(message  <tlmReportType)
     ;; (message (b:var:custom:choices|getChoiceLabel 'b:tlm+control <tlmReportType))

   (let* (
          ($reportTypeAsInt)
          ($controlAsInt)
         )
     (setq $reportTypeAsInt (string-to-number (b:var:custom:choices|getChoiceLabel 'b:tlm+control <tlmReportType)))
     (setq $controlAsInt (string-to-number (b:var:custom:choices|getChoiceLabel 'b:tlm+control b:tlm+control)))

     (>=  $reportTypeAsInt $controlAsInt)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:var:custom:choices|getChoiceLabel 'b:tlm+control 'b:tlm+control::funcTrace)
(b:tlm+control|enabled? 'b:tlm+control::funcTrace)
(b:tlm+control|enabled? 'b:tlm+control::trace)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:func:entry|toStr"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:func:entry|toStr>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:func:entry|toStr (
;;;#+END:
                           <inHere
                           )
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($funcName)
          ($hereFile)
          ($hereLine)
          ($result)
         )
     (if-when <inHere
       (setq $funcName (cl-first <inHere))
       (setq $hereFile (cl-second <inHere))
       (setq $hereLine (cl-third <inHere))

       (setq $result (s-lex-format
         " -- ${$funcName} -- ${$hereFile}::${$hereLine}")))
     (else-unless <inHere
       (setq $result ""))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(progn (defun ex1 () (let* ((inHere (b:func$entry))) (b:func:entry|toStr inHere))) (ex1))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm|recuring"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm|recuring>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:recuring|control (
;;;#+END:
                <func
                )
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (when (b:tlm+control|enabled? <func)
     (b|log "ignonre")
     ))


;;;#+BEGIN:  b:elisp:defs/defalias  :defName "'b:trace|entry" :aliasName "'b:log|entry" :comment "OBSOLETED -- June 2024"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defalias   [[elisp:(outline-show-subtree+toggle)][||]]  <<'b:trace|entry>> ~'b:log|entry~ -- OBSOLETED -- June 2024 -- Defined Alias  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defalias 'b:log|entry 'b:trace|entry)
;;;#+END:
(make-obsolete 'b:log|entry 'b:trace|entry "June 2024")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm~entry"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm~entry>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm~entry (
;;;#+END:
                <inHere
                <tlmReportType
                )
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($result <inHere)
          ($hereStr (b:func:entry|toStr <inHere))
         )
     (cond
      ((eq <tlmReportType 'b:tlm+control::funcTrace)
       (when (b:tlm+control|enabled? <tlmReportType)
         (b:tlm|output "Function Entry" <inHere <tlmReportType)))
      ((eq <tlmReportType 'b:tlm+control::funcDebug)
       (when (b:tlm+control|enabled? <tlmReportType)
         (b:tlm|output "Function Entry" <inHere <tlmReportType)))
      ((eq <tlmReportType 'b:tlm+control::ignore)
        '())
       (t
        (error (b|fmt$ "Bad input --- ${<inHere} ${<tlmReportType}")))
     )
     $result))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:trace|entry"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:trace|entry>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:trace|entry (
;;;#+END:
                <inHere
                &optional
                <tlmReportType
                )
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($result <inHere)
         )
     (unless <tlmReportType
       (setq <tlmReportType 'b:tlm+control::funcTrace))
     (b:tlm~entry <inHere <tlmReportType)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
;; (b:log|entry nil)
;;(b:log|entry nil (symbol-name 'SomeError))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:debug|entry"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:debug|entry>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:debug|entry (
;;;#+END:
                <inHere
                &optional
                <tlmReportType
                )
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($result <inHere)
         )
     (unless <tlmReportType
       (setq <tlmReportType 'b:tlm+control::funcDebug))
     (b:tlm~entry <inHere <tlmReportType)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
;; (b:log|entry nil)
;;(b:log|entry nil (symbol-name 'SomeError))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "b|msg" :extraInfo "9 -- Message"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _b|msg_: |]]  9 -- Message  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:tlm|output"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm|output>>  --  -- return =<inHere=, unchanged. Logs =<inHere=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:tlm|output (
;;;#+END:
			<inStr
			<inHere			
			<tlmReportType
			)
   " #+begin_org
** DocStr: return =<inHere=, unchanged. Logs =<inHere=.
#+end_org "
   (let* (
          ($result <inHere)
          ($hereStr (b:func:entry|toStr <inHere))
          )
     (defun msgRawOutput (<prefix)
       (when (b:tlm+control|enabled? <tlmReportType)
         (let ((inhibit-message t))
	   (message (b|fmt$ "${<inStr}${$hereStr}")))))

     (defun msgOut (<prefix <level)
       (when (b:tlm+control|enabled? <tlmReportType)
         (display-warning <prefix (b|fmt$ "${<inStr}${$hereStr}")  <level "*Messages*")))

     (cond
      ((eq <tlmReportType 'b:tlm+control::always)
       (msgRawOutput 'b::msg))
      ((eq <tlmReportType 'b:tlm+control::error)
       (msgOut 'b::error :error))
      ((eq <tlmReportType 'b:tlm+control::warning)
       (msgOut 'b::warning :warning))
      ((eq <tlmReportType 'b:tlm+control::log)
       (msgOut 'b::log :warning))
      ((eq <tlmReportType 'b:tlm+control::funcTrace)
       (msgOut 'b::funcTrace :debug))
      ((eq <tlmReportType 'b:tlm+control::trace)
       (msgOut 'b::trace :debug))
      ((eq <tlmReportType 'b:tlm+control::funcDebug)
       (msgOut 'b::funcDebug :debug))
      ((eq <tlmReportType 'b:tlm+control::debug)
       (msgOut 'b::debug :debug))
      ((eq <tlmReportType 'b:tlm+control::ignore)
        '())
       (t
        (error (b|fmt$ "Bad input: --- ${<tlmReportType} ${$hereStr}")))
     )
     $result))


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|msg"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|msg>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|msg (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::always))
   
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let* ((inHere (b:log|entry (b:func$entry)))) (b|msg (symbol-name 'SomethingHappened) :here inHere))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened -- nil -- /bisos/git/bxRepos/blee/blee-libs/b:tlm.el::256

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(progn (defun ex1 () (let* ((inHere (b:log|entry (b:func$entry)))) (b|msg (symbol-name 'SomethingHappened) :here inHere))) (ex1))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened -- nil -- /bisos/git/bxRepos/blee/blee-libs/b:tlm.el::267

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|error"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|error>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|error (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::error))
   
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|warning"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|warning>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|warning (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::warning))
   
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|log"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|log>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|log (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::log))
   
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|trace"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|trace>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|trace (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::trace))
   
(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|debug"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|debug>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|debug (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::debug))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|ignore"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|ignore>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|ignore (
;;;#+END:
                     <inStr
                     &key
                     (here nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "
   (b:tlm|output <inStr here 'b:tlm+control::ignore))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b::msg SomethingHappened

" orgCmntEnd)



;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "fatal error" :extraInfo ""
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _fatal error_: |]]    [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b|fatal"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b|fatal>>  --  -- Uses inhibit-message for logging as *message* , optionally accepts inHere  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b|fatal (
;;;#+END:
                     <inStr
                     &key
                     (inHere nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "

   (let* (
          ($result nil)
          ($funcName)
          ($hereFile)
          ($hereLine)
          ($inHereStr "")
          ($fullOutStr "")
         )
     (when inHere
       (setq $funcName (cl-first inHere))
       (setq $hereFile (cl-second inHere))
       (setq $hereLine (cl-third inHere))
       (setq $inHereStr
             (s-lex-format
              " -- ${$funcName} -- ${$hereFile}::${$hereLine}")))
     (setq $fullOutStr
           (s-lex-format
            "b:: ${<inStr}${$inHereStr}"))

     (let ((inhibit-message t))
       (message $fullOutStr))
     (setq $result $fullOutStr)
     ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:log|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let* ((inHere (b:log|entry (b:func$entry)))) (b:log|msg (symbol-name 'SomethingHappened) :inHere inHere))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened -- nil -- /bisos/git/auth/bxRepos/blee/blee-libs/b-log.el::183

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(progn (defun ex1 () (let* ((inHere (b:log|entry (b:func$entry)))) (b:log|msg (symbol-name 'SomethingHappened) :inHere inHere))) (ex1))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened -- nil -- /bisos/git/auth/bxRepos/blee/blee-libs/b-log.el::194

" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "b:debug$ Macros" :extraInfo "cl-defmacro epdh/debug-warn (&rest args)"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _b:debug$ Macros_: |]]  cl-defmacro epdh/debug-warn (&rest args)  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
** Taken from:: https://github.com/alphapapa/emacs-package-dev-handbook?tab=readme-ov-file#debugging
** (cl-defmacro epdh/debug-warn (&rest args)
** And its derivative. These define an API. Implementation is not clean and involves duplication.
" orgCmntEnd)

;; To make newer versions of `map' load for the `pcase' pattern.
(require 'map)

;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:base$warn"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:base$warn>>  --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:base$warn (
;;;#+END:
                           &rest args
                                 )
  "Display a debug warning showing the runtime value of ARGS.
The warning automatically includes the name of the containing
function, and it is only displayed if `warning-minimum-log-level'
is `:debug' at expansion time (otherwise the macro expands to nil
and is eliminated by the byte-compiler).  When debugging, the
form also returns nil so, e.g. it may be used in a conditional in
place of nil.

Each of ARGS may be a string, which is displayed as-is, or a
symbol, the value of which is displayed prefixed by its name, or
a Lisp form, which is displayed prefixed by its first symbol.

Before the actual ARGS arguments, you can write keyword
arguments, i.e. alternating keywords and values.  The following
keywords are supported:

  :buffer BUFFER   Name of buffer to pass to `display-warning'.
  :level  LEVEL    Level passed to `display-warning', which see.
                   Default is :debug."
  ;; TODO: Can we use a compiler macro to handle this more elegantly?
  (pcase-let* ((fn-name (when byte-compile-current-buffer
                          (with-current-buffer byte-compile-current-buffer
                            ;; This is a hack, but a nifty one.
                            (save-excursion
                              (beginning-of-defun)
                              (cl-second (read (current-buffer)))))))
               (plist-args (cl-loop while (keywordp (car args))
                                    collect (pop args)
                                    collect (pop args)))
               ((map (:buffer buffer) (:level level)) plist-args)
               (level (or level :debug))
               (string (cl-loop for arg in args
                                concat (pcase arg
                                         ((pred stringp) "%S ")
                                         ((pred symbolp)
                                          (concat (upcase (symbol-name arg)) ":%S "))
                                         ((pred listp)
                                          (concat "(" (upcase (symbol-name (car arg)))
                                                  (pcase (length arg)
                                                    (1 ")")
                                                    (_ "...)"))
                                                  ":%S "))))))

    `(let ((fn-name ,(if fn-name
                         `',fn-name
                       ;; In an interpreted function: use `backtrace-frame' to get the
                       ;; function name (we have to use a little hackery to figure out
                       ;; how far up the frame to look, but this seems to work).
                       `(cl-loop for frame in (backtrace-frames)
                                 for fn = (cl-second frame)
                                 when (not (or (subrp fn)
                                               (special-form-p fn)
                                               (eq 'backtrace-frames fn)))
                                 return (make-symbol (format "%s [interpreted]" fn))))))
       (display-warning fn-name (format ,string ,@args) ,level ,buffer)
       nil)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand '(b:base$warn (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:base$msg"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:base$msg>>  --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:base$msg (
;;;#+END:
                          &rest args
                                )
  "Based on b:debug$warn."
  ;; TODO: Can we use a compiler macro to handle this more elegantly?
  (pcase-let* ((fn-name (when byte-compile-current-buffer
                          (with-current-buffer byte-compile-current-buffer
                            ;; This is a hack, but a nifty one.
                            (save-excursion
                              (beginning-of-defun)
                              (cl-second (read (current-buffer)))))))
               (plist-args (cl-loop while (keywordp (car args))
                                    collect (pop args)
                                    collect (pop args)))
               ((map (:buffer buffer) (:level level)) plist-args)
               (level (or level :debug))
               (string (cl-loop for arg in args
                                concat (pcase arg
                                         ((pred stringp) "%S ")
                                         ((pred symbolp)
                                          (concat (upcase (symbol-name arg)) ":%S "))
                                         ((pred listp)
                                          (concat "(" (upcase (symbol-name (car arg)))
                                                  (pcase (length arg)
                                                    (1 ")")
                                                    (_ "...)"))
                                                  ":%S "))))))
    `(let ((fn-name ,(if fn-name
                         `',fn-name
                       ;; In an interpreted function: use `backtrace-frame' to get the
                       ;; function name (we have to use a little hackery to figure out
                       ;; how far up the frame to look, but this seems to work).
                       `(cl-loop for frame in (backtrace-frames)
                                 for fn = (cl-second frame)
                                 when (not (or (subrp fn)
                                               (special-form-p fn)
                                               (eq 'backtrace-frames fn)))
                                 return (make-symbol (format "%s [interpreted]" fn))))))
       (display-warning fn-name (format ,string ,@args) ,level "*Messages*")
       nil)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand '(b:base$msg (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:debug$warn"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:debug$warn>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:debug$warn (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::debug) (b:base$warn ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:debug$warn (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:debug$msg"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:debug$msg>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:debug$msg (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::debug) (b:base$msg "DB#" ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:debug$msg (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:trace$warn"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:trace$warn>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:trace$warn (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::trace) (b:base$warn "TR#" ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:trace$warn (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:trace$msg"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:trace$msg>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:trace$msg (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::trace) (b:base$msg "TR#" ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:debug$msg (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:trace$fnEntry"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:trace$fnEntry>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:trace$fnEntry (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::trace) (b:base$msg "TR#" "Func Entry:" ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:debug$msg (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:trace$fnResult"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:trace$fnResult>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:trace$fnResult (
;;;#+END:
                           &rest <result
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(if (b:tlm+control|enabled? 'b:tlm+control::trace)
        (progn
          (b:base$msg "TR#" "Func Return:" ,@<result)
          ,@<result)
      ,@<result))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let (($result 2252))(b:trace$fnResult $result))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:trace$fnResult (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:debug$fnEntry"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:debug$fnEntry>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:debug$fnEntry (
;;;#+END:
                           &rest args
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(when (b:tlm+control|enabled? 'b:tlm+control::debug) (b:base$msg "DB#" "Func Entry:" ,@args)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:debug$msg (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defmacro :defName "b:debug$fnResult"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cldefmacro [[elisp:(outline-show-subtree+toggle)][||]]  <<b:debug$fnResult>>  --  -- Combination of (insert (format))  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defmacro b:debug$fnResult (
;;;#+END:
                           &rest <result
                                 )
   " #+begin_org
** DocStr: Combination of (insert (format))
#+end_org "
   `(if (b:tlm+control|enabled? 'b:tlm+control::debug)
        (progn
          (b:base$msg "DB#" "Func Return:" ,@<result)
          ,@<result)
      ,@<result))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let (($result 2252))(b:trace$fnResult $result))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(macroexpand-all '(b:trace$fnResult (symbol-name 'SomeThing)))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Obsoleted" :extraInfo "absorbed from b-log.el"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Obsoleted_: |]]  absorbed from b-log.el  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(make-obsolete 'b::error 'b|error "June 2024")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b::error"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b::error>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b::error (
;;;#+END:
                 <inHere <errorStr)
   " #+begin_org
** DocStr: Issues a user-error
*** Returns: (string) error msg
#+end_org "

   (declare (obsolete "Use b|error instead" "June 2024"))

   (let* (
          ($result nil)
          ($funcName)
          ($hereFile)
          ($hereLine)
          ($inHereStr "")
          ($fullErrStr "")
         )
     (when <inHere
       (setq $funcName (cl-first <inHere))
       (setq $hereFile (cl-second <inHere))
       (setq $hereLine (cl-third <inHere))
       (setq $inHereStr
             (s-lex-format
              "${$funcName} -- ${$hereFile}::${$hereLine}")))
     (setq $fullErrStr
           (s-lex-format
            "b:: ${<errorStr} -- ${$inHereStr}"))
     (user-error $fullErrStr)
     (setq $result $fullErrStr)
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b::error nil (symbol-name 'SomeError))
#+END_SRC

#+RESULTS:
" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let* ((inHere (b:log|entry (b:func$entry)))) (b::error inHere (symbol-name 'SomethingHappened)))
#+END_SRC

#+RESULTS:
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:log|msg"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:log|msg>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:log|msg (
;;;#+END:
                     <inStr
                     &key
                     (inHere nil)
                     )
   " #+begin_org
** DocStr: Uses inhibit-message for logging as *message* , optionally accepts inHere
*** Returns: (string) logged message
#+end_org "

   (let* (
          ($result nil)
          ($funcName)
          ($hereFile)
          ($hereLine)
          ($inHereStr "")
          ($fullOutStr "")
         )
     (when inHere
       (setq $funcName (cl-first inHere))
       (setq $hereFile (cl-second inHere))
       (setq $hereLine (cl-third inHere))
       (setq $inHereStr
             (s-lex-format
              " -- ${$funcName} -- ${$hereFile}::${$hereLine}")))
     (setq $fullOutStr
           (s-lex-format
            "b:: ${<inStr}${$inHereStr}"))

     (let ((inhibit-message t))
       (message $fullOutStr))
     (setq $result $fullOutStr)
     ))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:log|msg (symbol-name 'SomethingHappened))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(let* ((inHere (b:log|entry (b:func$entry)))) (b:log|msg (symbol-name 'SomethingHappened) :inHere inHere))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened -- nil -- /bisos/git/auth/bxRepos/blee/blee-libs/b-log.el::183

" orgCmntEnd)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(progn (defun ex1 () (let* ((inHere (b:log|entry (b:func$entry)))) (b:log|msg (symbol-name 'SomethingHappened) :inHere inHere))) (ex1))
#+END_SRC

#+RESULTS:
: b:: SomethingHappened -- nil -- /bisos/git/auth/bxRepos/blee/blee-libs/b-log.el::194

" orgCmntEnd)





;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "b:tlm Testing" :extraInfo "Interactive"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _b:tlm Testing_: |]]  Interactive  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;; (display-warning 'funcName  "Msg Str" :debug "*Messages*")


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm/basicTest"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm/basicTest>>  --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm/basicTest (
;;;#+END:
                        &optional
                        <arg1
                        )
   " #+begin_org
** DocStr:
#+end_org "


   (interactive)
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "Final Result of Basic Test")
          )

     (b:debug$msg "Entered With" <arg1)

     (if (integerp <arg1)
         (b:tlm/basicTestSansErrors (1+ <arg1))
       (b:tlm/basicTestSansErrors))

   ;;;  fatalError is at level 8

     (b|error (b|fmt$ "This is b|error at level 7 you should always see this. -- ${emacs-version}"))
     (b|error (b|fmt$ "This is b|error :here at level 7 you should always see this. -- ${emacs-version}") :here $inHere)

     (b:trace$fnResult $result)

     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm/basicTest 9999)
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm/basicTestSansErrors"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm/basicTestSansErrors>>  --  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm/basicTestSansErrors (
;;;#+END:
                                  &optional
                                  <arg1
                                  )
   " #+begin_org
** DocStr:
#+end_org "

   (interactive)
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result 222)
          )

      (eval-and-compile
        (setq-local warning-minimum-log-level :debug))

     (b:trace$msg "Entered With" <arg1)

     (b:trace$fnEntry <arg1)
     (b:debug$fnEntry <arg1)

     (b|msg (b|fmt$ "This is b|msg at level 9 you should always see this. -- ${emacs-version}"))
     (b|msg (b|fmt$ "This is b|msg :here at level 9 you should always see this. -- ${emacs-version}") :here $inHere)

     ;;;  fatalError is at level 8 error at level 7

     (b|warning (b|fmt$ "This is b|warn at level 6. -- ${emacs-version}"))
     (b|warning (b|fmt$ "This is b|warn with :here at level 6. -- ${emacs-version}") :here $inHere)

     (b|log (b|fmt$ "This is b|log at level 5. -- ${emacs-version}"))
     (b|log (b|fmt$ "This is b|log with :here at level 5. -- ${emacs-version}") :here $inHere)

     ;;;  This is at level 4

     (b|debug (b|fmt$ "This is b|debug at level 3. -- ${emacs-version}"))
     (b|debug (b|fmt$ "This is b|debug with :here at level 3. -- ${emacs-version}") :here $inHere)

     (b:debug|entry (b:func$entry))  ;;;  This is at level 2


     (b|debug (b|fmt$ "This is b|debug at level 1. -- ${emacs-version}"))
     (b|debug (b|fmt$ "This is b|debug with :here at level 1. -- ${emacs-version}") :here $inHere)


     (b|ignore (b|fmt$ "This is b|ignore  at level 0. -- ${emacs-version}"))
     (b|ignore (b|fmt$ "This is b|ignore with :here at level 0. -- ${emacs-version}") :here $inHere)

     (setq-local warning-minimum-log-level :debug)

     (b:debug$warn (current-buffer) "This is b:debug$warn" (point) emacs-version)

     (b:debug$warn b:tlm+control)
     (b:debug$msg "DEBUG MACRO" b:tlm+control)

     (b:debug$fnResult $result)
     (b:trace$fnResult $result)
     ))

(orgCmntBegin "
** Basic Usage: NOTYET b|trace b|msg not through warning.
#+BEGIN_SRC emacs-lisp
(b:tlm/basicTestSansErrors 9999)
#+END_SRC

#+RESULTS:
: b:: SomethingHappened

" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:tlm)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
