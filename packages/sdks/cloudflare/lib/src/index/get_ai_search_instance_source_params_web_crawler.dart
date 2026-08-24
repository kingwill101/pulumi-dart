// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_source_params_web_crawler_parse_options.dart';
import 'get_ai_search_instance_source_params_web_crawler_store_options.dart';

class GetAiSearchInstanceSourceParamsWebCrawler {
  final pulumi.Input<GetAiSearchInstanceSourceParamsWebCrawlerParseOptions> parseOptions;
  /// Available values: "sitemap", "discover".
  final pulumi.Input<String> parseType;
  final pulumi.Input<GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions> storeOptions;

  /// Creates a new [GetAiSearchInstanceSourceParamsWebCrawler].
  /// [parseOptions] Required.
  /// [parseType] Available values: "sitemap", "discover".
  /// [storeOptions] Required.
  const GetAiSearchInstanceSourceParamsWebCrawler({
    required this.parseOptions,
    required this.parseType,
    required this.storeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parseOptions': pulumi.Input.mapInputValue<GetAiSearchInstanceSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': parseType,
      'storeOptions': pulumi.Input.mapInputValue<GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions, Map<String, dynamic>>(storeOptions, (value) => value.toMap()),
    };
  }

  factory GetAiSearchInstanceSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceSourceParamsWebCrawler(
      parseOptions: pulumi.Input.fromValue(GetAiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap((map['parseOptions']! as Map).cast<String, dynamic>())),
      parseType: pulumi.Input.fromValue(map['parseType'] as String),
      storeOptions: pulumi.Input.fromValue(GetAiSearchInstanceSourceParamsWebCrawlerStoreOptions.fromMap((map['storeOptions']! as Map).cast<String, dynamic>())),
    );
  }
}
