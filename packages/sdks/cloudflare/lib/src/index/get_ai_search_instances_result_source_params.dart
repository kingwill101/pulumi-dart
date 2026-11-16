// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result_source_params_web_crawler.dart';

class GetAiSearchInstancesResultSourceParams {
  final pulumi.Input<List<String>> excludeItems;
  final pulumi.Input<List<String>> includeItems;
  final pulumi.Input<String> prefix;
  final pulumi.Input<String> r2Jurisdiction;
  final pulumi.Input<GetAiSearchInstancesResultSourceParamsWebCrawler> webCrawler;

  /// Creates a new [GetAiSearchInstancesResultSourceParams].
  /// [excludeItems] Required.
  /// [includeItems] Required.
  /// [prefix] Required.
  /// [r2Jurisdiction] Required.
  /// [webCrawler] Required.
  const GetAiSearchInstancesResultSourceParams({
    required this.excludeItems,
    required this.includeItems,
    required this.prefix,
    required this.r2Jurisdiction,
    required this.webCrawler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeItems': excludeItems,
      'includeItems': includeItems,
      'prefix': prefix,
      'r2Jurisdiction': r2Jurisdiction,
      'webCrawler': pulumi.Input.mapInputValue<GetAiSearchInstancesResultSourceParamsWebCrawler, Map<String, dynamic>>(webCrawler, (value) => value.toMap()),
    };
  }

  factory GetAiSearchInstancesResultSourceParams.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParams(
      excludeItems: pulumi.Input.fromValue((map['excludeItems'] as List).cast<String>()),
      includeItems: pulumi.Input.fromValue((map['includeItems'] as List).cast<String>()),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      r2Jurisdiction: pulumi.Input.fromValue(map['r2Jurisdiction'] as String),
      webCrawler: pulumi.Input.fromValue(GetAiSearchInstancesResultSourceParamsWebCrawler.fromMap((map['webCrawler']! as Map).cast<String, dynamic>())),
    );
  }
}
