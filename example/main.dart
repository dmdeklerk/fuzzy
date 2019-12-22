import 'package:fuzzy/fuzzy.dart';

void main() {
  final fuse = Fuzzy(
    [
      'igor da silva borges',
      'igor borges',
      'ivo borges',
      'roger borges',
      'roger silva',
    ],
    options: FuzzyOptions(
      minMatchCharLength: 3,
      findAllMatches: true,
      tokenize: true,
    ),
  );

  print(fuse.search('igor').map((r) {
    final outs = r.output.map((o) => o.value).toList();
    return '${r.score} $outs';
  }).toList());
}
