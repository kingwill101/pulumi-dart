// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_instance_source_params_web_crawler_discover_options.dart';
import 'ai_search_instance_source_params_web_crawler_parse_options.dart';
import 'ai_search_instance_source_params_web_crawler_store_options.dart';

class AiSearchInstanceSourceParamsWebCrawler {
  /// Options for parse*type 'discover', where Browser Run discovers URLs by link following and sitemaps. Ignored for 'sitemap'.
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions?>? discoverOptions;
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawlerParseOptions?>? parseOptions;
  /// How URLs are discovered. 'sitemap' reads XML sitemaps; 'discover' follows links recursively and requires the source to be a Verified zone on this account.
  /// Available values: "sitemap", "discover".
  final pulumi.Input<String?>? parseType;
  final pulumi.Input<AiSearchInstanceSourceParamsWebCrawlerStoreOptions?>? storeOptions;

  /// Creates a new [AiSearchInstanceSourceParamsWebCrawler].
  /// [discoverOptions] Options for parse*type 'discover', where Browser Run discovers URLs by link following and sitemaps. Ignored for 'sitemap'.
  /// [parseOptions] Optional.
  /// [parseType] How URLs are discovered. 'sitemap' reads XML sitemaps; 'discover' follows links recursively and requires the source to be a Verified zone on this account.
  /// [storeOptions] Optional.
  const AiSearchInstanceSourceParamsWebCrawler({
    this.discoverOptions,
    this.parseOptions,
    this.parseType,
    this.storeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions, Map<String, dynamic>>(discoverOptions, (value) => value.toMap()),
      'parseOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': ?parseType,
      'storeOptions': ?pulumi.Input.mapOptionalInputValue<AiSearchInstanceSourceParamsWebCrawlerStoreOptions, Map<String, dynamic>>(storeOptions, (value) => value.toMap()),
    };
  }

  factory AiSearchInstanceSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceSourceParamsWebCrawler(
      discoverOptions: (() { final guardedValue = map['discoverOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parseOptions: (() { final guardedValue = map['parseOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parseType: (() { final guardedValue = map['parseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeOptions: (() { final guardedValue = map['storeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiSearchInstanceSourceParamsWebCrawlerStoreOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
