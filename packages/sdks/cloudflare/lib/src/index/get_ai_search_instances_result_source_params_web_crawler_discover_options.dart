// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions {
  final pulumi.Input<double> depth;
  final pulumi.Input<bool> includeExternalLinks;
  final pulumi.Input<bool> includeSubdomains;
  /// Maximum number of pages to crawl. New values are capped at 100000; instances configured before that cap may report a higher stored value, which the crawler clamps at run time.
  final pulumi.Input<double> limit;
  final pulumi.Input<double> maxAge;
  /// Available values: "all", "sitemaps", "links".
  final pulumi.Input<String> source;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions].
  /// [depth] Required.
  /// [includeExternalLinks] Required.
  /// [includeSubdomains] Required.
  /// [limit] Maximum number of pages to crawl. New values are capped at 100000; instances configured before that cap may report a higher stored value, which the crawler clamps at run time.
  /// [maxAge] Required.
  /// [source] Available values: "all", "sitemaps", "links".
  const GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions({
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

  factory GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions(
      depth: pulumi.Input.fromValue((map['depth'] as num).toDouble()),
      includeExternalLinks: pulumi.Input.fromValue(map['includeExternalLinks'] as bool),
      includeSubdomains: pulumi.Input.fromValue(map['includeSubdomains'] as bool),
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      maxAge: pulumi.Input.fromValue((map['maxAge'] as num).toDouble()),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
