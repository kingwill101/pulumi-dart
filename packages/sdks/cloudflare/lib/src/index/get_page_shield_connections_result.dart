// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPageShieldConnections.
class GetPageShieldConnectionsResult {
  final String? addedAt;
  /// Identifier
  final String? connectionId;
  final bool? domainReportedMalicious;
  final String? firstPageUrl;
  final String? firstSeenAt;
  final String? host;
  /// Identifier
  final String? id;
  final String? lastSeenAt;
  final List<String>? maliciousDomainCategories;
  final List<String>? maliciousUrlCategories;
  final List<String>? pageUrls;
  final String? url;
  final bool? urlContainsCdnCgiPath;
  final bool? urlReportedMalicious;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetPageShieldConnectionsResult].
  /// [addedAt] Optional.
  /// [connectionId] Identifier
  /// [domainReportedMalicious] Optional.
  /// [firstPageUrl] Optional.
  /// [firstSeenAt] Optional.
  /// [host] Optional.
  /// [id] Identifier
  /// [lastSeenAt] Optional.
  /// [maliciousDomainCategories] Optional.
  /// [maliciousUrlCategories] Optional.
  /// [pageUrls] Optional.
  /// [url] Optional.
  /// [urlContainsCdnCgiPath] Optional.
  /// [urlReportedMalicious] Optional.
  /// [zoneId] Identifier
  const GetPageShieldConnectionsResult({
    this.addedAt,
    this.connectionId,
    this.domainReportedMalicious,
    this.firstPageUrl,
    this.firstSeenAt,
    this.host,
    this.id,
    this.lastSeenAt,
    this.maliciousDomainCategories,
    this.maliciousUrlCategories,
    this.pageUrls,
    this.url,
    this.urlContainsCdnCgiPath,
    this.urlReportedMalicious,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedAt': ?addedAt,
      'connectionId': ?connectionId,
      'domainReportedMalicious': ?domainReportedMalicious,
      'firstPageUrl': ?firstPageUrl,
      'firstSeenAt': ?firstSeenAt,
      'host': ?host,
      'id': ?id,
      'lastSeenAt': ?lastSeenAt,
      'maliciousDomainCategories': ?maliciousDomainCategories,
      'maliciousUrlCategories': ?maliciousUrlCategories,
      'pageUrls': ?pageUrls,
      'url': ?url,
      'urlContainsCdnCgiPath': ?urlContainsCdnCgiPath,
      'urlReportedMalicious': ?urlReportedMalicious,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldConnectionsResult(
      addedAt: (() { final guardedValue = map['addedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainReportedMalicious: (() { final guardedValue = map['domainReportedMalicious']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      firstPageUrl: (() { final guardedValue = map['firstPageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstSeenAt: (() { final guardedValue = map['firstSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSeenAt: (() { final guardedValue = map['lastSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maliciousDomainCategories: (() { final guardedValue = map['maliciousDomainCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maliciousUrlCategories: (() { final guardedValue = map['maliciousUrlCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      pageUrls: (() { final guardedValue = map['pageUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urlContainsCdnCgiPath: (() { final guardedValue = map['urlContainsCdnCgiPath']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      urlReportedMalicious: (() { final guardedValue = map['urlReportedMalicious']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
