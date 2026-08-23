import 'dart:convert';
import 'dart:io';

import '../../infrastructure/task_tooling.dart';

final class GeneratedTreeVerification {
  const GeneratedTreeVerification({
    required this.driftPaths,
    required this.eofOnlyPaths,
  });

  final List<String> driftPaths;
  final List<String> eofOnlyPaths;

  bool get isClean => driftPaths.isEmpty;
}

final class GeneratedTreeVerifier {
  GeneratedTreeVerifier({Directory? repositoryRoot})
    : repositoryRoot = repositoryRoot ?? findRepoRoot();

  final Directory repositoryRoot;

  GeneratedTreeVerification verify({String scope = 'packages'}) {
    final changedPaths = <String>{
      ..._gitPaths(['diff', '--name-only', '-z', 'HEAD', '--', scope]),
      ..._gitPaths([
        'ls-files',
        '--others',
        '--exclude-standard',
        '-z',
        '--',
        scope,
      ]),
    }.toList()..sort();

    final driftPaths = <String>[];
    final eofOnlyPaths = <String>[];
    for (final path in changedPaths) {
      final expected = _headContents(path);
      final file = File(joinPath([repositoryRoot.path, path]));
      final actual = file.existsSync() ? file.readAsBytesSync() : null;

      if (_bytesEqual(expected, actual)) {
        continue;
      }
      if (_equalIgnoringEofBlankLines(expected, actual)) {
        eofOnlyPaths.add(path);
      } else {
        driftPaths.add(path);
      }
    }

    return GeneratedTreeVerification(
      driftPaths: driftPaths,
      eofOnlyPaths: eofOnlyPaths,
    );
  }

  List<String> _gitPaths(List<String> arguments) {
    final result = Process.runSync(
      'git',
      ['-C', repositoryRoot.path, ...arguments],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (result.exitCode != 0) {
      throw StateError('git ${arguments.join(' ')} failed: ${result.stderr}');
    }
    return (result.stdout as String)
        .split('\u0000')
        .where((path) => path.isNotEmpty)
        .toList();
  }

  List<int>? _headContents(String path) {
    final result = Process.runSync(
      'git',
      ['-C', repositoryRoot.path, 'show', 'HEAD:$path'],
      stdoutEncoding: null,
      stderrEncoding: null,
    );
    return result.exitCode == 0 ? result.stdout as List<int> : null;
  }
}

bool _equalIgnoringEofBlankLines(List<int>? expected, List<int>? actual) {
  if (expected == null || actual == null) {
    return false;
  }
  try {
    return _withoutEofBlankLines(utf8.decode(expected)) ==
        _withoutEofBlankLines(utf8.decode(actual));
  } on FormatException {
    return false;
  }
}

String _withoutEofBlankLines(String value) {
  return value.replaceFirst(RegExp(r'(?:\r?\n[ \t]*)+$'), '');
}

bool _bytesEqual(List<int>? left, List<int>? right) {
  if (identical(left, right)) {
    return true;
  }
  if (left == null || right == null || left.length != right.length) {
    return false;
  }
  for (var index = 0; index < left.length; index++) {
    if (left[index] != right[index]) {
      return false;
    }
  }
  return true;
}
