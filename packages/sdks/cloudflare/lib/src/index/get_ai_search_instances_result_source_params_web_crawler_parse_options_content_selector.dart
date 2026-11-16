// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector {
  final pulumi.Input<String> path;
  final pulumi.Input<String> selector;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector].
  /// [path] Required.
  /// [selector] Required.
  const GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector({
    required this.path,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'selector': selector,
    };
  }

  factory GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector(
      path: pulumi.Input.fromValue(map['path'] as String),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
