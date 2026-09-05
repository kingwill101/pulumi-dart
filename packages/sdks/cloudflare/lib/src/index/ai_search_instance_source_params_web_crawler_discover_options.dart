// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions {
  /// Maximum link-follow depth from the seed URL.
  final pulumi.Input<double?>? depth;
  /// Follow links that point outside the source domain. Must stay `false` — discover crawls are restricted to the zone you own.
  final pulumi.Input<bool?>? includeExternalLinks;
  /// Follow links to subdomains of the source host.
  final pulumi.Input<bool?>? includeSubdomains;
  /// Maximum number of pages to crawl (1-100000).
  final pulumi.Input<double?>? limit;
  /// Maximum content age in seconds to accept (0–604800).
  final pulumi.Input<double?>? maxAge;
  /// Where the crawler looks for URLs: 'sitemaps' reads sitemap XML only, 'links' follows page links only, 'all' does both.
  /// Available values: "all", "sitemaps", "links".
  final pulumi.Input<String?>? source;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions].
  /// [depth] Maximum link-follow depth from the seed URL.
  /// [includeExternalLinks] Follow links that point outside the source domain. Must stay `false` — discover crawls are restricted to the zone you own.
  /// [includeSubdomains] Follow links to subdomains of the source host.
  /// [limit] Maximum number of pages to crawl (1-100000).
  /// [maxAge] Maximum content age in seconds to accept (0–604800).
  /// [source] Where the crawler looks for URLs: 'sitemaps' reads sitemap XML only, 'links' follows page links only, 'all' does both.
  const AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions({
    this.depth,
    this.includeExternalLinks,
    this.includeSubdomains,
    this.limit,
    this.maxAge,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'depth': ?depth,
      'includeExternalLinks': ?includeExternalLinks,
      'includeSubdomains': ?includeSubdomains,
      'limit': ?limit,
      'maxAge': ?maxAge,
      'source': ?source,
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions(
      depth: (() { final guardedValue = map['depth']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      includeExternalLinks: (() { final guardedValue = map['includeExternalLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
