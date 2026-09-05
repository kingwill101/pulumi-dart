// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions {
  /// Maximum link-follow depth from the seed URL.
  final pulumi.Input<double> depth;
  /// Follow links that point outside the source domain. Must stay `false` — discover crawls are restricted to the zone you own.
  final pulumi.Input<bool> includeExternalLinks;
  /// Follow links to subdomains of the source host.
  final pulumi.Input<bool> includeSubdomains;
  /// Maximum number of pages to crawl (1-100000).
  final pulumi.Input<double> limit;
  /// Maximum content age in seconds to accept (0–604800).
  final pulumi.Input<double> maxAge;
  /// Where the crawler looks for URLs: 'sitemaps' reads sitemap XML only, 'links' follows page links only, 'all' does both.
  /// Available values: "all", "sitemaps", "links".
  final pulumi.Input<String> source;

  /// Creates a new [GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions].
  /// [depth] Maximum link-follow depth from the seed URL.
  /// [includeExternalLinks] Follow links that point outside the source domain. Must stay `false` — discover crawls are restricted to the zone you own.
  /// [includeSubdomains] Follow links to subdomains of the source host.
  /// [limit] Maximum number of pages to crawl (1-100000).
  /// [maxAge] Maximum content age in seconds to accept (0–604800).
  /// [source] Where the crawler looks for URLs: 'sitemaps' reads sitemap XML only, 'links' follows page links only, 'all' does both.
  const GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions({
    required this.depth,
    required this.includeExternalLinks,
    required this.includeSubdomains,
    required this.limit,
    required this.maxAge,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'depth': depth,
      'includeExternalLinks': includeExternalLinks,
      'includeSubdomains': includeSubdomains,
      'limit': limit,
      'maxAge': maxAge,
      'source': source,
    };
  }

  factory GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions(
      depth: pulumi.Input.fromValue((map['depth'] as num).toDouble()),
      includeExternalLinks: pulumi.Input.fromValue(map['includeExternalLinks'] as bool),
      includeSubdomains: pulumi.Input.fromValue(map['includeSubdomains'] as bool),
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      maxAge: pulumi.Input.fromValue((map['maxAge'] as num).toDouble()),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
