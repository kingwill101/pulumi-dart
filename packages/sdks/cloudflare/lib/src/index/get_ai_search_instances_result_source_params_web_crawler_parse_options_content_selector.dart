// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector {
  /// Glob pattern to match against the page URL path. Uses standard glob syntax: * matches within a segment, ** crosses directories.
  final pulumi.Input<String> path;
  /// CSS selector to extract content from pages matching the path pattern. Must not contain disallowed characters (;, `, $, {, }, ). Must target a single element; if multiple elements match, the selector is ignored and the full page is used.
  final pulumi.Input<String> selector;

  /// Creates a new [GetAiSearchInstancesResultSourceParamsWebCrawlerParseOptionsContentSelector].
  /// [path] Glob pattern to match against the page URL path. Uses standard glob syntax: * matches within a segment, ** crosses directories.
  /// [selector] CSS selector to extract content from pages matching the path pattern. Must not contain disallowed characters (;, `, $, {, }, ). Must target a single element; if multiple elements match, the selector is ignored and the full page is used.
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
