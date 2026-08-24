// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_source_params_web_crawler_parse_options_content_selector.dart';

class AiSearchInstanceSourceParamsWebCrawlerParseOptions {
  /// List of path-to-selector mappings for extracting specific content from crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The first matching path wins. Only the matched HTML fragment is stored and indexed. Omit the field to disable content selection — empty arrays are rejected.
  final pulumi.Input<List<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>?>? contentSelectors;
  /// Up to 5 custom HTTP headers sent with each crawl request. Names must be RFC-7230 token characters (no spaces, colons, or control characters); values must be HTAB + printable ASCII (no CR/LF).
  final pulumi.Input<Map<String, String>?>? includeHeaders;
  final pulumi.Input<bool?>? includeImages;
  /// List of specific sitemap URLs to use for crawling. Only valid when parseType is 'sitemap'.
  final pulumi.Input<List<String>?>? specificSitemaps;
  final pulumi.Input<bool?>? useBrowserRendering;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawlerParseOptions].
  /// [contentSelectors] List of path-to-selector mappings for extracting specific content from crawled pages. Each entry pairs a URL glob pattern with a CSS selector. The first matching path wins. Only the matched HTML fragment is stored and indexed. Omit the field to disable content selection — empty arrays are rejected.
  /// [includeHeaders] Up to 5 custom HTTP headers sent with each crawl request. Names must be RFC-7230 token characters (no spaces, colons, or control characters); values must be HTAB + printable ASCII (no CR/LF).
  /// [includeImages] Optional.
  /// [specificSitemaps] List of specific sitemap URLs to use for crawling. Only valid when parseType is 'sitemap'.
  /// [useBrowserRendering] Optional.
  const AiSearchInstanceSourceParamsWebCrawlerParseOptions({
    this.contentSelectors,
    this.includeHeaders,
    this.includeImages,
    this.specificSitemaps,
    this.useBrowserRendering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSelectors': ?pulumi.Input.mapOptionalInputValue<List<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>, List<Map<String, dynamic>>>(contentSelectors, (value) => pulumi.Input.encodeList<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeHeaders': ?includeHeaders,
      'includeImages': ?includeImages,
      'specificSitemaps': ?specificSitemaps,
      'useBrowserRendering': ?useBrowserRendering,
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawlerParseOptions(
      contentSelectors: (() { final guardedValue = map['contentSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector>(guardedValue, (value) => AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeHeaders: (() { final guardedValue = map['includeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      includeImages: (() { final guardedValue = map['includeImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      specificSitemaps: (() { final guardedValue = map['specificSitemaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useBrowserRendering: (() { final guardedValue = map['useBrowserRendering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
