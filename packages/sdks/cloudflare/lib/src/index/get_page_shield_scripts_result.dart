// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_page_shield_scripts_version.dart';

/// Result data returned by getPageShieldScripts.
class GetPageShieldScriptsResult {
  final String? addedAt;
  /// The cryptomining score of the JavaScript content.
  final int? cryptominingScore;
  /// The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final int? dataflowScore;
  final bool? domainReportedMalicious;
  /// The timestamp of when the script was last fetched.
  final String? fetchedAt;
  final String? firstPageUrl;
  final String? firstSeenAt;
  /// The computed hash of the analyzed script.
  final String? hash;
  final String? host;
  /// Identifier
  final String? id;
  /// The integrity score of the JavaScript content.
  final int? jsIntegrityScore;
  final String? lastSeenAt;
  /// The magecart score of the JavaScript content.
  final int? magecartScore;
  final List<String>? maliciousDomainCategories;
  final List<String>? maliciousUrlCategories;
  /// The malware score of the JavaScript content.
  final int? malwareScore;
  /// The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  final int? obfuscationScore;
  final List<String>? pageUrls;
  /// Identifier
  final String? scriptId;
  final String? url;
  final bool? urlContainsCdnCgiPath;
  final bool? urlReportedMalicious;
  final List<GetPageShieldScriptsVersion>? versions;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetPageShieldScriptsResult].
  /// [addedAt] Optional.
  /// [cryptominingScore] The cryptomining score of the JavaScript content.
  /// [dataflowScore] The dataflow score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  /// [domainReportedMalicious] Optional.
  /// [fetchedAt] The timestamp of when the script was last fetched.
  /// [firstPageUrl] Optional.
  /// [firstSeenAt] Optional.
  /// [hash] The computed hash of the analyzed script.
  /// [host] Optional.
  /// [id] Identifier
  /// [jsIntegrityScore] The integrity score of the JavaScript content.
  /// [lastSeenAt] Optional.
  /// [magecartScore] The magecart score of the JavaScript content.
  /// [maliciousDomainCategories] Optional.
  /// [maliciousUrlCategories] Optional.
  /// [malwareScore] The malware score of the JavaScript content.
  /// [obfuscationScore] The obfuscation score of the JavaScript content. This field has been deprecated in favour of js*integrity*score.
  /// [pageUrls] Optional.
  /// [scriptId] Identifier
  /// [url] Optional.
  /// [urlContainsCdnCgiPath] Optional.
  /// [urlReportedMalicious] Optional.
  /// [versions] Optional.
  /// [zoneId] Identifier
  const GetPageShieldScriptsResult({
    this.addedAt,
    this.cryptominingScore,
    this.dataflowScore,
    this.domainReportedMalicious,
    this.fetchedAt,
    this.firstPageUrl,
    this.firstSeenAt,
    this.hash,
    this.host,
    this.id,
    this.jsIntegrityScore,
    this.lastSeenAt,
    this.magecartScore,
    this.maliciousDomainCategories,
    this.maliciousUrlCategories,
    this.malwareScore,
    this.obfuscationScore,
    this.pageUrls,
    this.scriptId,
    this.url,
    this.urlContainsCdnCgiPath,
    this.urlReportedMalicious,
    this.versions,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': ?addedAt,
      'cryptominingScore': ?cryptominingScore,
      'dataflowScore': ?dataflowScore,
      'domainReportedMalicious': ?domainReportedMalicious,
      'fetchedAt': ?fetchedAt,
      'firstPageUrl': ?firstPageUrl,
      'firstSeenAt': ?firstSeenAt,
      'hash': ?hash,
      'host': ?host,
      'id': ?id,
      'jsIntegrityScore': ?jsIntegrityScore,
      'lastSeenAt': ?lastSeenAt,
      'magecartScore': ?magecartScore,
      'maliciousDomainCategories': ?maliciousDomainCategories,
      'maliciousUrlCategories': ?maliciousUrlCategories,
      'malwareScore': ?malwareScore,
      'obfuscationScore': ?obfuscationScore,
      'pageUrls': ?pageUrls,
      'scriptId': ?scriptId,
      'url': ?url,
      'urlContainsCdnCgiPath': ?urlContainsCdnCgiPath,
      'urlReportedMalicious': ?urlReportedMalicious,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPageShieldScriptsVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldScriptsResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldScriptsResult(
      addedAt: (() { final guardedValue = map['addedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptominingScore: (() { final guardedValue = map['cryptominingScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dataflowScore: (() { final guardedValue = map['dataflowScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      domainReportedMalicious: (() { final guardedValue = map['domainReportedMalicious']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fetchedAt: (() { final guardedValue = map['fetchedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPageUrl: (() { final guardedValue = map['firstPageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstSeenAt: (() { final guardedValue = map['firstSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jsIntegrityScore: (() { final guardedValue = map['jsIntegrityScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      lastSeenAt: (() { final guardedValue = map['lastSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      magecartScore: (() { final guardedValue = map['magecartScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maliciousDomainCategories: (() { final guardedValue = map['maliciousDomainCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maliciousUrlCategories: (() { final guardedValue = map['maliciousUrlCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      malwareScore: (() { final guardedValue = map['malwareScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      obfuscationScore: (() { final guardedValue = map['obfuscationScore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      pageUrls: (() { final guardedValue = map['pageUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      scriptId: (() { final guardedValue = map['scriptId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlContainsCdnCgiPath: (() { final guardedValue = map['urlContainsCdnCgiPath']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      urlReportedMalicious: (() { final guardedValue = map['urlReportedMalicious']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPageShieldScriptsVersion>(guardedValue, (value) => GetPageShieldScriptsVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
