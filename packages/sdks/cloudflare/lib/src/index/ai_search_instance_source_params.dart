// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_source_params_web_crawler.dart';

class AiSearchInstanceSourceParams {
  /// List of path patterns to exclude. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /admin/** matches /admin/users and /admin/settings/advanced)
  final pulumi.Input<List<String>?>? excludeItems;
  /// List of path patterns to include. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /blog/** matches /blog/post and /blog/2024/post)
  final pulumi.Input<List<String>?>? includeItems;
  final pulumi.Input<String?>? prefix;
  final pulumi.Input<String?>? r2Jurisdiction;
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawler?>? webCrawler;

  /// Creates a new [AiSearchInstanceSourceParams].
  /// [excludeItems] List of path patterns to exclude. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /admin/** matches /admin/users and /admin/settings/advanced)
  /// [includeItems] List of path patterns to include. Uses micromatch glob syntax: * matches within a path segment, ** matches across path segments (e.g., /blog/** matches /blog/post and /blog/2024/post)
  /// [prefix] Optional.
  /// [r2Jurisdiction] Optional.
  /// [webCrawler] Optional.
  const AiSearchInstanceSourceParams({
    this.excludeItems,
    this.includeItems,
    this.prefix,
    this.r2Jurisdiction,
    this.webCrawler,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeItems': ?excludeItems,
      'includeItems': ?includeItems,
      'prefix': ?prefix,
      'r2Jurisdiction': ?r2Jurisdiction,
      'webCrawler': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawler, Map<String, dynamic>>(webCrawler, (value) => value.toMap()),
    };
  }

  factory AiSearchInstanceSourceParams.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParams(
      excludeItems: (() { final guardedValue = map['excludeItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeItems: (() { final guardedValue = map['includeItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      r2Jurisdiction: (() { final guardedValue = map['r2Jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webCrawler: (() { final guardedValue = map['webCrawler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
