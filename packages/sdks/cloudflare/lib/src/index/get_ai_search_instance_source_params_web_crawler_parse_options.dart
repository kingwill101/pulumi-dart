// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_source_params_web_crawler_parse_options_content_selector.dart';

class GetAiSearchInstanceSourceParamsWebCrawlerParseOptions {
  /// List of path-to-selector mappings for extracting specific content from crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The first matching path wins. Only the matched HTML fragment is stored and indexed. Omit the field to disable content selection — empty arrays are rejected.
  final pulumi.Input<List<GetAiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>> contentSelectors;
  /// Up to 5 custom HTTP headers sent with each crawl request. Names must be RFC-7230 token characters (no spaces, colons, or control characters); values must be HTAB + printable ASCII (no CR/LF).
  final pulumi.Input<Map<String, String>> includeHeaders;
  final pulumi.Input<bool> includeImages;
  /// List of specific sitemap URLs to use for crawling. Only valid when parseType is 'sitemap'.
  final pulumi.Input<List<String>> specificSitemaps;
  final pulumi.Input<bool> useBrowserRendering;

  /// Creates a new [GetAiSearchInstanceSourceParamsWebCrawlerParseOptions].
  /// [contentSelectors] List of path-to-selector mappings for extracting specific content from crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The first matching path wins. Only the matched HTML fragment is stored and indexed. Omit the field to disable content selection — empty arrays are rejected.
  /// [includeHeaders] Up to 5 custom HTTP headers sent with each crawl request. Names must be RFC-7230 token characters (no spaces, colons, or control characters); values must be HTAB + printable ASCII (no CR/LF).
  /// [includeImages] Required.
  /// [specificSitemaps] List of specific sitemap URLs to use for crawling. Only valid when parseType is 'sitemap'.
  /// [useBrowserRendering] Required.
  const GetAiSearchInstanceSourceParamsWebCrawlerParseOptions({
    required this.contentSelectors,
    required this.includeHeaders,
    required this.includeImages,
    required this.specificSitemaps,
    required this.useBrowserRendering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSelectors': pulumi.Input.mapInputValue<List<GetAiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>, List<Map<String, dynamic>>>(contentSelectors, (value) => pulumi.Input.encodeList<GetAiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeHeaders': includeHeaders,
      'includeImages': includeImages,
      'specificSitemaps': specificSitemaps,
      'useBrowserRendering': useBrowserRendering,
    };
  }

  factory GetAiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceSourceParamsWebCrawlerParseOptions(
      contentSelectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>(map['contentSelectors']!, (value) => GetAiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector.fromMap((value as Map).cast<String, dynamic>()))),
      includeHeaders: pulumi.Input.fromValue((map['includeHeaders'] as Map).cast<String, String>()),
      includeImages: pulumi.Input.fromValue(map['includeImages'] as bool),
      specificSitemaps: pulumi.Input.fromValue((map['specificSitemaps'] as List).cast<String>()),
      useBrowserRendering: pulumi.Input.fromValue(map['useBrowserRendering'] as bool),
    );
  }
}
