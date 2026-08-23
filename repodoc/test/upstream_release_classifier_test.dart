import 'package:repodoc/src/commands/upstream/models.dart';
import 'package:repodoc/src/commands/upstream/release_classifier.dart';
import 'package:test/test.dart';

void main() {
  const core = UpstreamSource(
    name: 'pulumi',
    repository: 'pulumi/pulumi',
    kind: 'core',
  );
  final release = UpstreamRelease(
    tag: 'v3.246.0',
    publishedAt: DateTime.utc(2026, 6, 11),
    url: 'https://example.test/v3.246.0',
    body: '''
### Features
- [sdk] Add a read field to customTimeouts.
- [protobuf] Add a language runtime RPC.
- [auto/go] Add an Automation API option.
- [cli] Change an unrelated display flag.
''',
  );

  test('classifies only Dart-relevant release entries', () {
    final findings = classifyRelease(core, release);

    expect(findings.map((finding) => finding.category), [
      'sdk',
      'protocol',
      'automation',
    ]);
    expect(findings.map((finding) => finding.summary), isNot(contains('CLI')));
  });

  test('classifies provider overlays separately', () {
    const provider = UpstreamSource(
      name: 'aws',
      repository: 'pulumi/pulumi-aws',
      kind: 'provider',
      reviewedVersion: '7.20.0',
    );
    final findings = classifyRelease(
      provider,
      UpstreamRelease(
        tag: 'v7.41.0',
        publishedAt: DateTime.utc(2026, 7),
        url: 'https://example.test/v7.41.0',
        body: '* Add back NodeJS only overlays',
      ),
    );

    expect(findings.single.category, 'provider-sdk');
  });
}
