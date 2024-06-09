;;; b:tlm:menu.el --- Telemetry (logging, errors) Control Menu  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
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
** This File: /bisos/git/bxRepos/blee/blee-libs/b:tlm:menu.el
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

(require 'easymenu)
;;(require 'mtdt-if)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menu:plugin|install" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menu:plugin|install>>  --  -- Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menu:plugin|install (
;;;#+END:
                                   <menuLabel
                                   <menuDelimiter
                                   )
  " #+begin_org
** DocStr: Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.
#+end_org "

  (easy-menu-add-item
   <menuLabel
   nil
   (b:tlm:menu:main|define :active t)
   <menuDelimiter
   )
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm:menu:plugin|install modes:menu:global (s-- 4))
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menuItem:define|messagesBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menuItem:define|messagesBuf>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menuItem:define|messagesBuf (
;;;#+END:
                                                 )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Switch to *Messages* Buffer")
      (progn (switch-to-buffer  "*Messages*") (goto-char (point-max)))
      :help "Switch to *Messages* buffer"
      ])))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm:menuItem:define|messagesBuf)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menuItem:define|warningsBuf" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menuItem:define|warningsBuf>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menuItem:define|warningsBuf (
;;;#+END:
                                                 )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Switch to *Warnings* Buffer")
      (progn (switch-to-buffer  "*Warnings*") (goto-char (point-max)))
      :help "Switch to *Warnings* buffer"
      ])))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm:menuItem:define|warningsBuf)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menuItem:define|warning-minimum-log-level" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menuItem:define|warning-minimum-log-level>>  --  -- Return a menuItem vector. Requires dynamic update.  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menuItem:define|warning-minimum-log-level (
;;;#+END:
                                                 )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Describe warning-minimum-log-level= ${warning-minimum-log-level}")
      (describe-variable 'warning-minimum-log-level)
      :help "Switch to *Messages* buffer"
      ])))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:tlm:menuItem:define|messagesBuf)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menu:define|tests" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menu:define|tests>>  --  -- Return b:tlm:menu:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menu:define|tests (
;;;#+END:
                                 )
  " #+begin_org
** DocStr:
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $menuItem|tlmBasicTest ()
      (nth 0
           `(
             [,(s-lex-format "Run basic telemetry tests")
              (b:tlm/basicTest)
              :help "Run the basic test telemetry example function"
              ])))

    (defun $menuItem|tlmBasicTestSansErrors ()
      (nth 0
           `(
             [,(s-lex-format "Run basic SansError telemetry tests")
              (b:tlm/basicTestSansErrors)
              :help "Run the basic SansError test telemetry example function"
              ])))


    (easy-menu-define
      b:tlm:menu:tests
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Run basic telemetry example functions"))
	:help "Run the basic telemetry example functions"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    (easy-menu-add-item b:tlm:menu:tests nil ($menuItem|tlmBasicTest) (s-- 3))
    (easy-menu-add-item b:tlm:menu:tests nil ($menuItem|tlmBasicTestSansErrors) (s-- 4))

    (easy-menu-add-item
     b:tlm:menu:tests
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:tlm:menu:tests
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:dist:define|logs)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:dist:define|logs)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:tlm:menu:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:tlm:menu:main|define>>  --  -- Return b:mtdt:menu:mailing:main  [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:tlm:menu:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:tlm:menu:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:tlm:menu:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Telemety Controls Menu  ${b:tlm+control}"))
	:help "Telemetry Controls Menu"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	,(s-- 3)
	,(s-- 4)
        ,(s-- 5)
        ,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	,(s-- 10)
	,(s-- 11)
	))

    (easy-menu-add-item b:tlm:menu:main nil
                        (b:tlm:menuItem:define|messagesBuf)
                        (s-- 2))

   (easy-menu-add-item b:tlm:menu:main nil
                        (b:tlm:menuItem:define|warningsBuf)
                        (s-- 3))

   (easy-menu-add-item b:tlm:menu:main nil
                        (b:tlm:menuItem:define|warning-minimum-log-level)
                        (s-- 4))

    ;; (b:var:custom:choices:menu:plugin|install
    ;;  b:tlm:menu:main (s-- 4) 'warning-minimum-log-level)

    (b:var:custom:choices:menu:add|items
     b:tlm:menu:main (s-- 5) 'b:tlm+control)

    (b:var:custom:choices:menu:plugin|install
     b:tlm:menu:main (s-- 6) 'b:recuring+control)

    (easy-menu-add-item b:tlm:menu:main nil
                        (b:tlm:menu:define|tests)
                        (s-- 8))

    (easy-menu-add-item
      b:tlm:menu:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:tlm:menu:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:mailing:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:tlm:menu:main|define)))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:tlm:menu)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
