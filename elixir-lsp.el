;;; lsp-elixir.el --- Elixir tooling integration into Emacs -*- lexical-binding: t; -*-

;;; Commentary:

;; Install through MELPA, then add the following line to your config:
;; `(add-hook 'elixir-mode-hook #'lsp)`

;;; Code:

(require 'lsp-mode)

(defun test-me ()
  "Test-me on START-POS and END-POS."
  (interactive)
  (lsp--cur-workspace-check)
  (message
   (lsp-request "textDocument/codeLens"
                `(:textDocument (:uri
                                 ,(lsp--path-to-uri buffer-file-name))))))

(provide 'elixir-lsp)

;;; elixir-lsp.el ends here
