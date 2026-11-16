// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_source_params_web_crawler_parse_options_content_selector.dart';

class GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions {
  final pulumi.Input<List<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector>> contentSelectors;
  final pulumi.Input<Map<String, String>> includeHeaders;
  final pulumi.Input<bool> includeImages;
  final pulumi.Input<List<String>> specificSitemaps;
  final pulumi.Input<bool> useBrowserRendering;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions].
  /// [contentSelectors] Required.
  /// [includeHeaders] Required.
  /// [includeImages] Required.
  /// [specificSitemaps] Required.
  /// [useBrowserRendering] Required.
  const GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions({
    required this.contentSelectors,
    required this.includeHeaders,
    required this.includeImages,
    required this.specificSitemaps,
    required this.useBrowserRendering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSelectors': pulumi.Input.mapInputValue<List<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector>, List<Map<String, dynamic>>>(contentSelectors, (value) => pulumi.Input.encodeList<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeHeaders': includeHeaders,
      'includeImages': includeImages,
      'specificSitemaps': specificSitemaps,
      'useBrowserRendering': useBrowserRendering,
    };
  }

  factory GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions(
      contentSelectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector>(map['contentSelectors']!, (value) => GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector.fromMap((value as Map).cast<String, dynamic>()))),
      includeHeaders: pulumi.Input.fromValue((map['includeHeaders'] as Map).cast<String, String>()),
      includeImages: pulumi.Input.fromValue(map['includeImages'] as bool),
      specificSitemaps: pulumi.Input.fromValue((map['specificSitemaps'] as List).cast<String>()),
      useBrowserRendering: pulumi.Input.fromValue(map['useBrowserRendering'] as bool),
    );
  }
}
