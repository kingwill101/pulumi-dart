import 'dart:convert';
import 'dart:io';

import 'models.dart';

abstract interface class ReleaseSource {
  Future<List<UpstreamRelease>> releases(String repository);
}

typedef ProcessRunner =
    Future<ProcessResult> Function(String executable, List<String> arguments);

final class GhReleaseSource implements ReleaseSource {
  GhReleaseSource({ProcessRunner? run}) : _run = run ?? Process.run;

  final ProcessRunner _run;

  @override
  Future<List<UpstreamRelease>> releases(String repository) async {
    final arguments = [
      'api',
      '--paginate',
      '--slurp',
      'repos/$repository/releases?per_page=100',
    ];
    final result = await _run('gh', arguments);
    if (result.exitCode != 0) {
      throw ProcessException(
        'gh',
        arguments,
        '${result.stderr}'.trim(),
        result.exitCode,
      );
    }
    final pages = jsonDecode('${result.stdout}') as List<dynamic>;
    final releases = pages.expand((page) => page as List<dynamic>);
    return releases.cast<Map<String, dynamic>>().map((release) {
      return UpstreamRelease(
        tag: '${release['tag_name']}',
        publishedAt: DateTime.parse('${release['published_at']}'),
        url: '${release['html_url']}',
        body: '${release['body'] ?? ''}',
      );
    }).toList();
  }
}
