import 'dart:convert';
import 'dart:io';

import 'package:repodoc/src/commands/upstream/audit_service.dart';
import 'package:repodoc/src/commands/upstream/github_releases.dart';
import 'package:repodoc/src/commands/upstream/models.dart';
import 'package:test/test.dart';

void main() {
  test('uses the reviewed version as an exclusive boundary', () async {
    final directory = Directory.systemTemp.createTempSync('upstream-audit-');
    addTearDown(() => directory.deleteSync(recursive: true));
    final ledger = File('${directory.path}/ledger.json')
      ..writeAsStringSync(
        jsonEncode({
          'core': [
            {
              'name': 'pulumi',
              'repository': 'pulumi/pulumi',
              'reviewed_version': '3.1.0',
            },
          ],
          'providers': <String, Object>{},
        }),
      );
    final source = _FakeReleaseSource([
      _release('v3.2.0', DateTime.utc(2026, 3)),
      _release('v3.1.0', DateTime.utc(2026, 2)),
    ]);

    final result = await UpstreamAuditor(
      releases: source,
    ).audit(ledgerPath: ledger.path, since: DateTime.utc(2026), coreOnly: true);

    expect(result.releases, 1);
    expect(result.findings.single.release, 'v3.2.0');
  });
}

UpstreamRelease _release(String tag, DateTime date) => UpstreamRelease(
  tag: tag,
  publishedAt: date,
  url: 'https://example.test/$tag',
  body: '- [sdk] Add Output recovery.',
);

final class _FakeReleaseSource implements ReleaseSource {
  _FakeReleaseSource(this.values);

  final List<UpstreamRelease> values;

  @override
  Future<List<UpstreamRelease>> releases(String repository) async => values;
}
