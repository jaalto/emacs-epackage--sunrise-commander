(dolist (file
         '("sunrise-commander.el"
	   "sunrise-x-buttons.el"
	   "sunrise-x-checkpoints.el"
	   "sunrise-x-loop.el"
	   "sunrise-x-mirror.el"
	   "sunrise-x-modeline.el"
	   "sunrise-x-old-checkpoints.el"
	   "sunrise-x-popviewer.el"
	   "sunrise-x-tabs.el"
	   "sunrise-x-tree.el"
	   "sunrise-x-w32-addons.el"))
  (if (and (boundp 'verbose)
	   verbose)
      (message "Byte Compile %s" file))
  (if (file-exists-p file)
      (byte-compile-file file)
    (message "** Byte compile error. Not found: %s" file)))
