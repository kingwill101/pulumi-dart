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

  test('rejects provider with core-only', () async {
    final ledger = _writeLedger();
    addTearDown(() => ledger.parent.deleteSync(recursive: true));

    expect(
      () => UpstreamAuditor(releases: _FakeReleaseSource(const [])).audit(
        ledgerPath: ledger.path,
        since: DateTime.utc(2026),
        coreOnly: true,
        provider: 'aws',
      ),
      throwsArgumentError,
    );
  });

  test('rejects core source names passed as providers', () async {
    final ledger = _writeLedger();
    addTearDown(() => ledger.parent.deleteSync(recursive: true));

    expect(
      () => UpstreamAuditor(releases: _FakeReleaseSource(const [])).audit(
        ledgerPath: ledger.path,
        since: DateTime.utc(2026),
        provider: 'pulumi',
      ),
      throwsArgumentError,
    );
  });

  test('GitHub release source flattens paginated responses', () async {
    late List<String> arguments;
    final source = GhReleaseSource(
      run: (executable, passedArguments) async {
        expect(executable, 'gh');
        arguments = passedArguments;
        return ProcessResult(
          1,
          0,
          jsonEncode([
            [
              {
                'tag_name': 'v2.0.0',
                'published_at': '2026-02-01T00:00:00Z',
                'html_url': 'https://example.test/v2',
                'body': 'second',
              },
            ],
            [
              {
                'tag_name': 'v1.0.0',
                'published_at': '2026-01-01T00:00:00Z',
                'html_url': 'https://example.test/v1',
                'body': 'first',
              },
            ],
          ]),
          '',
        );
      },
    );

    final releases = await source.releases('pulumi/pulumi');

    expect(arguments, containsAllInOrder(['--paginate', '--slurp']));
    expect(releases.map((release) => release.tag), ['v2.0.0', 'v1.0.0']);
  });
}

File _writeLedger() {
  final directory = Directory.systemTemp.createTempSync('upstream-ledger-');
  return File('${directory.path}/ledger.json')..writeAsStringSync(
    jsonEncode({
      'core': [
        {
          'name': 'pulumi',
          'repository': 'pulumi/pulumi',
          'reviewed_version': '3.1.0',
        },
      ],
      'providers': {
        'aws': {'repository': 'pulumi/pulumi-aws', 'reviewed_version': '7.0.0'},
      },
    }),
  );
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
