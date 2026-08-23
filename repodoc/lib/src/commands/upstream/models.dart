final class UpstreamSource {
  const UpstreamSource({
    required this.name,
    required this.repository,
    required this.kind,
    this.reviewedVersion,
  });

  final String name;
  final String repository;
  final String kind;
  final String? reviewedVersion;
}

final class UpstreamRelease {
  const UpstreamRelease({
    required this.tag,
    required this.publishedAt,
    required this.url,
    required this.body,
  });

  final String tag;
  final DateTime publishedAt;
  final String url;
  final String body;
}

final class UpstreamFinding {
  const UpstreamFinding({
    required this.source,
    required this.release,
    required this.category,
    required this.summary,
    required this.url,
  });

  final String source;
  final String release;
  final String category;
  final String summary;
  final String url;

  Map<String, Object> toJson() => {
    'source': source,
    'release': release,
    'category': category,
    'summary': summary,
    'url': url,
  };
}

final class UpstreamAuditResult {
  const UpstreamAuditResult({
    required this.sources,
    required this.releases,
    required this.findings,
  });

  final int sources;
  final int releases;
  final List<UpstreamFinding> findings;

  Map<String, Object> toJson() => {
    'sources': sources,
    'releases': releases,
    'findings': findings.map((finding) => finding.toJson()).toList(),
  };
}
