// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_source_params_web_crawler_parse_options.dart';
import 'ai_search_instance_source_params_web_crawler_store_options.dart';

class AiSearchInstanceSourceParamsWebCrawler {
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawlerParseOptions?>? parseOptions;
  /// Available values: "sitemap", "feed-rss", "crawl".
  final pulumi.Input<String?>? parseType;
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawlerStoreOptions?>? storeOptions;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawler].
  /// [parseOptions] Optional.
  /// [parseType] Available values: "sitemap", "feed-rss", "crawl".
  /// [storeOptions] Optional.
  const AiSearchInstanceSourceParamsWebCrawler({
    this.parseOptions,
    this.parseType,
    this.storeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parseOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': ?parseType,
      'storeOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawlerStoreOptions, Map<String, dynamic>>(storeOptions, (value) => value.toMap()),
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawler(
      parseOptions: (() { final guardedValue = map['parseOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parseType: (() { final guardedValue = map['parseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeOptions: (() { final guardedValue = map['storeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawlerStoreOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
