;;; rezo-emms.el --- emms setup.
;;
;; Copyright © 2011-2017 Rezo.Chiang.
;;
;; Author: Rezo.Chiang <rezo@live.cn>
;; URL: https://github.com/Rezo/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Configure Emacs emms.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(prelude-require-package 'emms)
(require 'emms-setup)
(require 'emms-source-file)
(require 'emms-source-playlist)
(require 'emms-player-mplayer)

;; (append emms-player-mplayer-parameters (list "-novideo"))
;; 2019-09-18 之前的方式失效, -novideo无法添加到参数, 更换了新的方式
'(emms-player-mplayer-parameters (quote ("-slave" "-quiet" "-really-quiet" "-novideo")))
(setq emms-player-list '(emms-player-mplayer))
(setq emms-source-file-default-directory rezo-emms-dir)
(setq emms-playlist-buffer-name "*emms-playlist")
(emms-add-directory-tree rezo-emms-dir)

(provide 'rezo-emms)

;;; rezo-emms.el ends here
