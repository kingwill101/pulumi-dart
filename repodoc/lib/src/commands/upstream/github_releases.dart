import 'dart:convert';
import 'dart:io';

import 'models.dart';

abstract interface class ReleaseSource {
  Future<List<UpstreamRelease>> releases(String repository);
}

final class GhReleaseSource implements ReleaseSource {
  @override
  Future<List<UpstreamRelease>> releases(String repository) async {
    final result = await Process.run('gh', [
      'api',
      'repos/$repository/releases?per_page=100',
    ]);
    if (result.exitCode != 0) {
      throw ProcessException(
        'gh',
        ['api', 'repos/$repository/releases?per_page=100'],
        '${result.stderr}'.trim(),
        result.exitCode,
      );
    }
    final decoded = jsonDecode('${result.stdout}') as List<dynamic>;
    return decoded.cast<Map<String, dynamic>>().map((release) {
      return UpstreamRelease(
        tag: '${release['tag_name']}',
        publishedAt: DateTime.parse('${release['published_at']}'),
        url: '${release['html_url']}',
        body: '${release['body'] ?? ''}',
      );
    }).toList();
  }
}
