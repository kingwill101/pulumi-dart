// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_source_params_web_crawler_discover_options.dart';
import 'get_ai_search_instances_result_source_params_web_crawler_parse_options.dart';

class GetAiSearchInstancesResultSourceParamsWebCrawler {
  final pulumi.Input<GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions> discoverOptions;
  final pulumi.Input<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions> parseOptions;
  /// Available values: "sitemap", "discover".
  final pulumi.Input<String> parseType;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawler].
  /// [discoverOptions] Required.
  /// [parseOptions] Required.
  /// [parseType] Available values: "sitemap", "discover".
  const GetAiSearchInstancesResultSourceParamsWebCrawler({
    required this.discoverOptions,
    required this.parseOptions,
    required this.parseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions, Map<String, dynamic>>(discoverOptions, (value) => value.toMap()),
      'parseOptions': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': parseType,
    };
  }

  factory GetAiSearchInstancesResultSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParamsWebCrawler(
      discoverOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParamsWebCrawlerDiscoverOptions.fromMap((map['discoverOptions']! as Map).cast<String, dynamic>())),
      parseOptions: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptions.fromMap((map['parseOptions']! as Map).cast<String, dynamic>())),
      parseType: pulumi.Input.fromValue(map['parseType'] as String),
    );
  }
}
