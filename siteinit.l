;ウィンドウ幅で折り返す
(set-buffer-fold-type-window)

;ミニバッファでTABキーで候補出力
(setq *print-completion-list-hook*
'(lambda (list prefix &optional string)
(popup-string (format nil "Possible completions are ~D
  items:\n~{\n~A~}" (length list) list) (point))))
