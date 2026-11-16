// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instance_source_params_web_crawler_discover_options.dart';
import 'get_ai_search_instance_source_params_web_crawler_parse_options.dart';

class GetAiSearchInstanceSourceParamsWebCrawler {
  /// Options for parse*type 'discover', where Browser Run discovers URLs through link following and sitemaps. Ignored for 'sitemap'.
  final pulumi.Input<GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions> discoverOptions;
  final pulumi.Input<GetAiSearchInstanceSourceParamsWebCrawlerParseOptions> parseOptions;
  /// How the crawler finds URLs. 'sitemap' reads XML sitemaps; 'discover' follows links recursively and requires the source to belong to a Verified zone on this account.
  /// Available values: "sitemap", "discover".
  final pulumi.Input<String> parseType;

  /// Creates a new [GetAiSearchInstanceSourceParamsWebCrawler].
  /// [discoverOptions] Options for parse*type 'discover', where Browser Run discovers URLs through link following and sitemaps. Ignored for 'sitemap'.
  /// [parseOptions] Required.
  /// [parseType] How the crawler finds URLs. 'sitemap' reads XML sitemaps; 'discover' follows links recursively and requires the source to belong to a Verified zone on this account.
  const GetAiSearchInstanceSourceParamsWebCrawler({
    required this.discoverOptions,
    required this.parseOptions,
    required this.parseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverOptions': pulumi.Input.mapInputValue<GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions, Map<String, dynamic>>(discoverOptions, (value) => value.toMap()),
      'parseOptions': pulumi.Input.mapInputValue<GetAiSearchInstanceSourceParamsWebCrawlerParseOptions, Map<String, dynamic>>(parseOptions, (value) => value.toMap()),
      'parseType': parseType,
    };
  }

  factory GetAiSearchInstanceSourceParamsWebCrawler.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceSourceParamsWebCrawler(
      discoverOptions: pulumi.Input.fromValue(GetAiSearchInstanceSourceParamsWebCrawlerDiscoverOptions.fromMap((map['discoverOptions']! as Map).cast<String, dynamic>())),
      parseOptions: pulumi.Input.fromValue(GetAiSearchInstanceSourceParamsWebCrawlerParseOptions.fromMap((map['parseOptions']! as Map).cast<String, dynamic>())),
      parseType: pulumi.Input.fromValue(map['parseType'] as String),
    );
  }
}
