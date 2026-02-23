# ============================
# LuaLaTeX 用 latexmk 設定
# ============================

# 出力ディレクトリ
$out_dir = 'out';

# PDF を作る
$pdf_mode = 1;

# エンジン指定
$pdflatex = 'lualatex %O %S';

# biber を使用
$bibtex_use = 2;

# biblatex が生成するファイルも監視
$aux_dir = $out_dir;

# synctex
$pdflatex .= ' -synctex=1';

# エラーで即停止
$halt_on_error = 1;

# nonstop
$interaction = 'nonstopmode';

# ファイル位置を明示
$pdflatex .= ' -file-line-error';

# 余分な再実行を抑制
$max_repeat = 5;

# クリーン対象の拡張子
$clean_ext .= ' synctex.gz run.xml';

# biber の入出力ディレクトリ
$biber = "biber --input-directory=$out_dir --output-directory=$out_dir";

# 変更監視モードで構築後処理
$success_cmd = 'mv -f out/main.pdf out/XX_R7修士論文.pdf';

# ============================
# END
# ============================
