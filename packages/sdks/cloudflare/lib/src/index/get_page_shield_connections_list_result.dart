// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPageShieldConnectionsListResult {
  final pulumi.Input<String> addedAt;
  final pulumi.Input<bool> domainReportedMalicious;
  final pulumi.Input<String> firstPageUrl;
  final pulumi.Input<String> firstSeenAt;
  final pulumi.Input<String> host;
  /// Identifier
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastSeenAt;
  final pulumi.Input<List<String>> maliciousDomainCategories;
  final pulumi.Input<List<String>> maliciousUrlCategories;
  final pulumi.Input<List<String>> pageUrls;
  final pulumi.Input<String> url;
  final pulumi.Input<bool> urlContainsCdnCgiPath;
  final pulumi.Input<bool> urlReportedMalicious;

  /// Creates a new [GetPageShieldConnectionsListResult].
  /// [addedAt] Required.
  /// [domainReportedMalicious] Required.
  /// [firstPageUrl] Required.
  /// [firstSeenAt] Required.
  /// [host] Required.
  /// [id] Identifier
  /// [lastSeenAt] Required.
  /// [maliciousDomainCategories] Required.
  /// [maliciousUrlCategories] Required.
  /// [pageUrls] Required.
  /// [url] Required.
  /// [urlContainsCdnCgiPath] Required.
  /// [urlReportedMalicious] Required.
  const GetPageShieldConnectionsListResult({
    required this.addedAt,
    required this.domainReportedMalicious,
    required this.firstPageUrl,
    required this.firstSeenAt,
    required this.host,
    required this.id,
    required this.lastSeenAt,
    required this.maliciousDomainCategories,
    required this.maliciousUrlCategories,
    required this.pageUrls,
    required this.url,
    required this.urlContainsCdnCgiPath,
    required this.urlReportedMalicious,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': addedAt,
      'domainReportedMalicious': domainReportedMalicious,
      'firstPageUrl': firstPageUrl,
      'firstSeenAt': firstSeenAt,
      'host': host,
      'id': id,
      'lastSeenAt': lastSeenAt,
      'maliciousDomainCategories': maliciousDomainCategories,
      'maliciousUrlCategories': maliciousUrlCategories,
      'pageUrls': pageUrls,
      'url': url,
      'urlContainsCdnCgiPath': urlContainsCdnCgiPath,
      'urlReportedMalicious': urlReportedMalicious,
    };
  }

  factory GetPageShieldConnectionsListResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldConnectionsListResult(
      addedAt: pulumi.Input.fromValue(map['addedAt'] as String),
      domainReportedMalicious: pulumi.Input.fromValue(map['domainReportedMalicious'] as bool),
      firstPageUrl: pulumi.Input.fromValue(map['firstPageUrl'] as String),
      firstSeenAt: pulumi.Input.fromValue(map['firstSeenAt'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastSeenAt: pulumi.Input.fromValue(map['lastSeenAt'] as String),
      maliciousDomainCategories: pulumi.Input.fromValue((map['maliciousDomainCategories'] as List).cast<String>()),
      maliciousUrlCategories: pulumi.Input.fromValue((map['maliciousUrlCategories'] as List).cast<String>()),
      pageUrls: pulumi.Input.fromValue((map['pageUrls'] as List).cast<String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
      urlContainsCdnCgiPath: pulumi.Input.fromValue(map['urlContainsCdnCgiPath'] as bool),
      urlReportedMalicious: pulumi.Input.fromValue(map['urlReportedMalicious'] as bool),
    );
  }
}
