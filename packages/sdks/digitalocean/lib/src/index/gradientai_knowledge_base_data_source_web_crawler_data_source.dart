// ignore_for_file: unused_element, unnecessary_cast


class GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource {
  /// The base URL to crawl
  final String? baseUrl;
  /// Options for specifying how URLs found on pages should be handled.
  /// - UNKNOWN: Default unknown value
  /// - SCOPED: Only include the base URL.
  /// - PATH: Crawl the base URL and linked pages within the URL path.
  /// - DOMAIN: Crawl the base URL and linked pages within the same domain.
  /// - SUBDOMAINS: Crawl the base URL and linked pages for any subdomain.
  final String? crawlingOption;
  /// Whether to embed media content
  final bool? embedMedia;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource].
  /// [baseUrl] The base URL to crawl
  /// [crawlingOption] Options for specifying how URLs found on pages should be handled.
  /// [embedMedia] Whether to embed media content
  GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource({
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

  factory GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource(
      baseUrl: map['baseUrl'] == null ? null : map['baseUrl'] as String,
      crawlingOption: map['crawlingOption'] == null ? null : map['crawlingOption'] as String,
      embedMedia: map['embedMedia'] == null ? null : map['embedMedia'] as bool,
    );
  }
}

