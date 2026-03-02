// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource {
  /// The base URL to crawl
  final pulumi.Input<String>? baseUrl;
  /// Options for specifying how URLs found on pages should be handled.
  /// - UNKNOWN: Default unknown value
  /// - SCOPED: Only include the base URL.
  /// - PATH: Crawl the base URL and linked pages within the URL path.
  /// - DOMAIN: Crawl the base URL and linked pages within the same domain.
  /// - SUBDOMAINS: Crawl the base URL and linked pages for any subdomain.
  final pulumi.Input<String>? crawlingOption;
  /// Whether to embed media content
  final pulumi.Input<bool>? embedMedia;

  /// Creates a new [GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource].
  /// [baseUrl] The base URL to crawl
  /// [crawlingOption] Options for specifying how URLs found on pages should be handled.
  /// [embedMedia] Whether to embed media content
  GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource({
    this.baseUrl,
    this.crawlingOption,
    this.embedMedia,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': ?baseUrl,
      'crawlingOption': ?crawlingOption,
      'embedMedia': ?embedMedia,
    };
  }

  factory GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource(
      baseUrl: map['baseUrl'] == null ? null : (map['baseUrl']! as String).input(),
      crawlingOption: map['crawlingOption'] == null ? null : (map['crawlingOption']! as String).input(),
      embedMedia: map['embedMedia'] == null ? null : (map['embedMedia']! as bool).input(),
    );
  }
}

