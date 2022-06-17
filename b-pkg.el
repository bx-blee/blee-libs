;;; b-pkg.el --- b:pkg supports native and component adotion  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: supports for native and component adotion and grouping
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

(require 'b-func)
(require 'b-log)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defconst
  b:pkg:adoption::types
  `(
    bnpa "bnpa"  ; Blee Native Package Adoption
    b:npa "b:npa"  ; Blee Native Package Adoption	 
    bnpg "bnpg"  ; Blee Native Packages Grouping
    bcpa "bcpa"  ; Blee Component Package Adoption
    bcpa "b:cpa"  ; Blee Component Package Adoption    
    bcpg "bcpg"  ; Blee Component Packages Grouping
    )
  " #+begin_org
  ** Enumeration of Blee pkg adoption types.
#+end_org "
)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:pkg|infoBasedOnFile"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:pkg|infoBasedOnFile>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:pkg|infoBasedOnFile (
;;;#+END:
                              <fileName)
   " #+begin_org
** DocStr: Given =<fileName= return relevant file info as list.
File name is that of a pkg. With .el extenstion and pre : type tag.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
          ($sansExtension (file-name-sans-extension <fileName))
          ($extension (file-name-extension <fileName))
          ($splitted (s-split ":" $sansExtension))
         )
     (cond ((string= $extension "el")
            (setq $result $splitted))
           (t
            (b::error $inHere
                      (s-lex-format
                       "Unknown File Name Extension =${$extension}")))
           )
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:pkg|infoBasedOnFile (file-name-nondirectory buffer-file-name))
#+END_SRC

#+RESULTS:
| b-pkg |

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:pkg|topLineStr"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:pkg|topLineStr>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:pkg|topLineStr (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Actions based on =parameters= and *returnValues*
and side-effects are documented here
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "")
          ($fileName (file-name-nondirectory buffer-file-name))
          ($infoBasedOnFile (b:pkg|infoBasedOnFile $fileName))
          ($fileType)
          ($pkgName)
         )
     (setq $fileType (cl-first $infoBasedOnFile))

     (setq $pkgName (cl-second $infoBasedOnFile))
     (cond ((string= $fileType "bnpa")
            (setq $result
                  (s-lex-format
                   ";;; ${$fileName} --- Blee Native Pkg Adoption (${$pkgName})  -*- lexical-binding: t; -*-\n")))
           ((string= $fileType "bnpg")
            (setq $result
                  (s-lex-format
                   ";;; ${$fileName} --- Blee Native Pkg Grouping (${$pkgName})  -*- lexical-binding: t; -*-\n")))
           ((string= $fileType "bcpa")
            (setq $result
                  (s-lex-format
                   ";;; ${$fileName} --- Blee Component Pkg Adoption (${$pkgName})  -*- lexical-binding: t; -*-\n")))
           ((string= $fileType "bcpg")
            (setq $result
                  (s-lex-format
                   ";;; ${$fileName} --- Blee Component Pkg Grouping (${$pkgName})  -*- lexical-binding: t; -*-\n")))
           (t
            (setq $result
                  (s-lex-format
                   ";;; ${$fileName} --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-\n")))
           )
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:pkg|topLineStr)
#+END_SRC

#+RESULTS:
: ;;; b-pkg.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:insert:pkg/topLineStr"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:insert:pkg/topLineStr>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:insert:pkg/topLineStr (
;;;#+END:
                        )
   " #+begin_org
** DocStr: Command:: insert the package's top-line-string.
#+end_org "
   (interactive)
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
         )
     (insert (b:pkg|topLineStr))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
;;;(b:insert:pkg/topLineStr)
#+END_SRC

#+RESULTS:

" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b-pkg)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
