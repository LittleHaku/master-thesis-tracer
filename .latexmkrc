$pdf_mode = 1;
$bibtex_use = 2;  # Use Biber instead of BibTeX
$pdflatex = 'lualatex %O -interaction=nonstopmode -halt-on-error -file-line-error %S';
$bibtex = 'biber %O %B';
$out_dir = 'build';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
  my ($base_name, $path) = fileparse($_[0]);
  pushd $path;
  my $return = system "makeglossaries $base_name";
  popd;
  return $return;
}
