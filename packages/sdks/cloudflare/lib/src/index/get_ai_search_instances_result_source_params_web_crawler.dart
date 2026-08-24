// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_source_params_web_crawler_parse_options.dart';
import 'get_ai_search_instances_result_source_params_web_crawler_store_options.dart';

class GetAiSearchInstancesResultSourceParamsWebCrawler {
  final pulumi.Input<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions> parseOptions;
  /// Available values: "sitemap", "feed-rss", "crawl".
  final pulumi.Input<String> parseType;
  final pulumi.Input<GetAiSearchInstancesResultSourceParamsWebCrawlerStoreOptions> storeOptions;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawler].
  /// [parseOptions] Required.
  /// [parseType] Available values: "sitemap", "feed-rss", "crawl".
  /// [storeOptions] Required.
  const GetAiSearchInstancesResultSourceParamsWebCrawler({
    required this.parseOptions,
    required this.parseType,
    required this.storeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parseOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': parseType,
      'storeOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParamsWebCrawlerStoreOptions, Map<String, dynamic>>(storeOptions, (value) => value.toMap()),
    };
  }

  factory GetAiSearchInstancesResultSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParamsWebCrawler(
      parseOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions.fromMap((map['parseOptions']! as Map).cast<String, dynamic>())),
      parseType: pulumi.Input.fromValue(map['parseType'] as String),
      storeOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParamsWebCrawlerStoreOptions.fromMap((map['storeOptions']! as Map).cast<String, dynamic>())),
    );
  }
}
