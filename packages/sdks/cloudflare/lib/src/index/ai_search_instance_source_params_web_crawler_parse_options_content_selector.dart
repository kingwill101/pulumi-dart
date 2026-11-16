// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector {
  /// Glob pattern to match against the page URL path. Uses standard glob syntax: * matches within a segment, ** crosses directories.
  final pulumi.Input<String> path;
  /// CSS selector to extract content from pages matching the path pattern. Disallowed characters: ;, `, $, {, }, . Must target a single element; if multiple elements match, the crawler ignores the selector and uses the full page.
  final pulumi.Input<String> selector;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector].
  /// [path] Glob pattern to match against the page URL path. Uses standard glob syntax: * matches within a segment, ** crosses directories.
  /// [selector] CSS selector to extract content from pages matching the path pattern. Disallowed characters: ;, `, $, {, }, . Must target a single element; if multiple elements match, the crawler ignores the selector and uses the full page.
  const AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector({
    required this.path,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'selector': selector,
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawlerParseOptionsContentSelector(
      path: pulumi.Input.fromValue(map['path'] as String),
      selector: pulumi.Input.fromValue(map['selector'] as String),
    );
  }
}
