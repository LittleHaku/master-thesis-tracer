$pdf_mode = 4;  # Use LuaLaTeX
$bibtex_use = 2;  # Use Biber instead of BibTeX
$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=build %O %S';
$biber = 'biber --input-directory build --output-directory build %O %B';
$out_dir = 'build';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
  my ($base_name, $path) = fileparse($_[0]);
  pushd $path;
  my $return = system "makeglossaries $base_name";
  popd;
  return $return;
}
