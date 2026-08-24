// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPageShieldScriptsListResult {
  final pulumi.Input<String> addedAt;
  /// The cryptomining score of the JavaScript content.
  final pulumi.Input<int> cryptominingScore;
  /// The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final pulumi.Input<int> dataflowScore;
  final pulumi.Input<bool> domainReportedMalicious;
  /// The timestamp of when the script was last fetched.
  final pulumi.Input<String> fetchedAt;
  final pulumi.Input<String> firstPageUrl;
  final pulumi.Input<String> firstSeenAt;
  /// The computed hash of the analyzed script.
  final pulumi.Input<String> hash;
  final pulumi.Input<String> host;
  /// Identifier
  final pulumi.Input<String> id;
  /// The integrity score of the JavaScript content.
  final pulumi.Input<int> jsIntegrityScore;
  final pulumi.Input<String> lastSeenAt;
  /// The magecart score of the JavaScript content.
  final pulumi.Input<int> magecartScore;
  final pulumi.Input<List<String>> maliciousDomainCategories;
  final pulumi.Input<List<String>> maliciousUrlCategories;
  /// The malware score of the JavaScript content.
  final pulumi.Input<int> malwareScore;
  /// The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final pulumi.Input<int> obfuscationScore;
  final pulumi.Input<List<String>> pageUrls;
  final pulumi.Input<String> url;
  final pulumi.Input<bool> urlContainsCdnCgiPath;
  final pulumi.Input<bool> urlReportedMalicious;

  /// Creates a new [GetPageShieldScriptsListResult].
  /// [addedAt] Required.
  /// [cryptominingScore] The cryptomining score of the JavaScript content.
  /// [dataflowScore] The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  /// [domainReportedMalicious] Required.
  /// [fetchedAt] The timestamp of when the script was last fetched.
  /// [firstPageUrl] Required.
  /// [firstSeenAt] Required.
  /// [hash] The computed hash of the analyzed script.
  /// [host] Required.
  /// [id] Identifier
  /// [jsIntegrityScore] The integrity score of the JavaScript content.
  /// [lastSeenAt] Required.
  /// [magecartScore] The magecart score of the JavaScript content.
  /// [maliciousDomainCategories] Required.
  /// [maliciousUrlCategories] Required.
  /// [malwareScore] The malware score of the JavaScript content.
  /// [obfuscationScore] The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  /// [pageUrls] Required.
  /// [url] Required.
  /// [urlContainsCdnCgiPath] Required.
  /// [urlReportedMalicious] Required.
  const GetPageShieldScriptsListResult({
    required this.addedAt,
    required this.cryptominingScore,
    required this.dataflowScore,
    required this.domainReportedMalicious,
    required this.fetchedAt,
    required this.firstPageUrl,
    required this.firstSeenAt,
    required this.hash,
    required this.host,
    required this.id,
    required this.jsIntegrityScore,
    required this.lastSeenAt,
    required this.magecartScore,
    required this.maliciousDomainCategories,
    required this.maliciousUrlCategories,
    required this.malwareScore,
    required this.obfuscationScore,
    required this.pageUrls,
    required this.url,
    required this.urlContainsCdnCgiPath,
    required this.urlReportedMalicious,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': addedAt,
      'cryptominingScore': cryptominingScore,
      'dataflowScore': dataflowScore,
      'domainReportedMalicious': domainReportedMalicious,
      'fetchedAt': fetchedAt,
      'firstPageUrl': firstPageUrl,
      'firstSeenAt': firstSeenAt,
      'hash': hash,
      'host': host,
      'id': id,
      'jsIntegrityScore': jsIntegrityScore,
      'lastSeenAt': lastSeenAt,
      'magecartScore': magecartScore,
      'maliciousDomainCategories': maliciousDomainCategories,
      'maliciousUrlCategories': maliciousUrlCategories,
      'malwareScore': malwareScore,
      'obfuscationScore': obfuscationScore,
      'pageUrls': pageUrls,
      'url': url,
      'urlContainsCdnCgiPath': urlContainsCdnCgiPath,
      'urlReportedMalicious': urlReportedMalicious,
    };
  }

  factory GetPageShieldScriptsListResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldScriptsListResult(
      addedAt: pulumi.Input.fromValue(map['addedAt'] as String),
      cryptominingScore: pulumi.Input.fromValue((map['cryptominingScore'] as num).toInt()),
      dataflowScore: pulumi.Input.fromValue((map['dataflowScore'] as num).toInt()),
      domainReportedMalicious: pulumi.Input.fromValue(map['domainReportedMalicious'] as bool),
      fetchedAt: pulumi.Input.fromValue(map['fetchedAt'] as String),
      firstPageUrl: pulumi.Input.fromValue(map['firstPageUrl'] as String),
      firstSeenAt: pulumi.Input.fromValue(map['firstSeenAt'] as String),
      hash: pulumi.Input.fromValue(map['hash'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      jsIntegrityScore: pulumi.Input.fromValue((map['jsIntegrityScore'] as num).toInt()),
      lastSeenAt: pulumi.Input.fromValue(map['lastSeenAt'] as String),
      magecartScore: pulumi.Input.fromValue((map['magecartScore'] as num).toInt()),
      maliciousDomainCategories: pulumi.Input.fromValue((map['maliciousDomainCategories'] as List).cast<String>()),
      maliciousUrlCategories: pulumi.Input.fromValue((map['maliciousUrlCategories'] as List).cast<String>()),
      malwareScore: pulumi.Input.fromValue((map['malwareScore'] as num).toInt()),
      obfuscationScore: pulumi.Input.fromValue((map['obfuscationScore'] as num).toInt()),
      pageUrls: pulumi.Input.fromValue((map['pageUrls'] as List).cast<String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
      urlContainsCdnCgiPath: pulumi.Input.fromValue(map['urlContainsCdnCgiPath'] as bool),
      urlReportedMalicious: pulumi.Input.fromValue(map['urlReportedMalicious'] as bool),
    );
  }
}
