import 'dart:convert';
import 'dart:io';

import 'package:pub_semver/pub_semver.dart';

import 'github_releases.dart';
import 'models.dart';
import 'release_classifier.dart';

typedef SourceProgress =
    Future<void> Function(UpstreamSource source, int index, int total);

final class UpstreamAuditor {
  UpstreamAuditor({ReleaseSource? releases})
    : _releases = releases ?? GhReleaseSource();

  final ReleaseSource _releases;

  Future<UpstreamAuditResult> audit({
    required String ledgerPath,
    required DateTime since,
    String? provider,
    bool coreOnly = false,
    SourceProgress? onSource,
  }) async {
    final ledger =
        jsonDecode(File(ledgerPath).readAsStringSync()) as Map<String, dynamic>;
    final sources = _sources(ledger, provider: provider, coreOnly: coreOnly);
    final findings = <UpstreamFinding>[];
    var releaseCount = 0;

    for (var index = 0; index < sources.length; index++) {
      final source = sources[index];
      await onSource?.call(source, index + 1, sources.length);
      final releases = await _releases.releases(source.repository);
      final selected = releases.where(
        (release) => _include(source, release, since),
      );
      for (final release in selected) {
        releaseCount++;
        findings.addAll(classifyRelease(source, release));
      }
    }

    findings.sort((a, b) {
      final bySource = a.source.compareTo(b.source);
      return bySource != 0 ? bySource : b.release.compareTo(a.release);
    });
    return UpstreamAuditResult(
      sources: sources.length,
      releases: releaseCount,
      findings: findings,
    );
  }

  List<UpstreamSource> _sources(
    Map<String, dynamic> ledger, {
    required String? provider,
    required bool coreOnly,
  }) {
    if (coreOnly && provider != null) {
      throw ArgumentError('--core-only cannot be combined with --provider.');
    }
    final providers = ledger['providers'] as Map<String, dynamic>;
    if (provider != null && !providers.containsKey(provider)) {
      throw ArgumentError.value(provider, 'provider', 'Unknown provider');
    }
    final sources = <UpstreamSource>[
      for (final entry
          in (ledger['core'] as List<dynamic>).cast<Map<String, dynamic>>())
        UpstreamSource(
          name: '${entry['name']}',
          repository: '${entry['repository']}',
          kind: 'core',
          reviewedVersion: '${entry['reviewed_version']}',
        ),
    ];
    if (coreOnly) return sources;
    for (final entry in providers.entries) {
      if (provider != null && provider != entry.key) continue;
      final value = entry.value as Map<String, dynamic>;
      sources.add(
        UpstreamSource(
          name: entry.key,
          repository: '${value['repository']}',
          kind: 'provider',
          reviewedVersion: '${value['reviewed_version']}',
        ),
      );
    }
    return provider == null
        ? sources
        : sources.where((source) => source.kind == 'provider').toList();
  }

  bool _include(
    UpstreamSource source,
    UpstreamRelease release,
    DateTime since,
  ) {
    if (release.publishedAt.isBefore(since)) return false;
    final reviewed = source.reviewedVersion;
    if (reviewed == null) return true;
    final releaseVersion = _version(release.tag);
    final reviewedVersion = _version(reviewed);
    return releaseVersion != null &&
        reviewedVersion != null &&
        releaseVersion > reviewedVersion;
  }

  Version? _version(String value) {
    try {
      return Version.parse(value.replaceFirst(RegExp(r'^v'), ''));
    } on FormatException {
      return null;
    }
  }
}
