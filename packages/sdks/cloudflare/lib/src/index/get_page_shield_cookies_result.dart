// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPageShieldCookies.
class GetPageShieldCookiesResult {
  /// Identifier
  final String? cookieId;
  final String? domainAttribute;
  final String? expiresAttribute;
  final String? firstSeenAt;
  final String? host;
  final bool? httpOnlyAttribute;
  /// Identifier
  final String? id;
  final String? lastSeenAt;
  final int? maxAgeAttribute;
  final String? name;
  final List<String>? pageUrls;
  final String? pathAttribute;
  /// Available values: "lax", "strict", "none".
  final String? sameSiteAttribute;
  final bool? secureAttribute;
  /// Available values: "firstParty", "unknown".
  final String? type;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetPageShieldCookiesResult].
  /// [cookieId] Identifier
  /// [domainAttribute] Optional.
  /// [expiresAttribute] Optional.
  /// [firstSeenAt] Optional.
  /// [host] Optional.
  /// [httpOnlyAttribute] Optional.
  /// [id] Identifier
  /// [lastSeenAt] Optional.
  /// [maxAgeAttribute] Optional.
  /// [name] Optional.
  /// [pageUrls] Optional.
  /// [pathAttribute] Optional.
  /// [sameSiteAttribute] Available values: "lax", "strict", "none".
  /// [secureAttribute] Optional.
  /// [type] Available values: "firstParty", "unknown".
  /// [zoneId] Identifier
  const GetPageShieldCookiesResult({
    this.cookieId,
    this.domainAttribute,
    this.expiresAttribute,
    this.firstSeenAt,
    this.host,
    this.httpOnlyAttribute,
    this.id,
    this.lastSeenAt,
    this.maxAgeAttribute,
    this.name,
    this.pageUrls,
    this.pathAttribute,
    this.sameSiteAttribute,
    this.secureAttribute,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieId': ?cookieId,
      'domainAttribute': ?domainAttribute,
      'expiresAttribute': ?expiresAttribute,
      'firstSeenAt': ?firstSeenAt,
      'host': ?host,
      'httpOnlyAttribute': ?httpOnlyAttribute,
      'id': ?id,
      'lastSeenAt': ?lastSeenAt,
      'maxAgeAttribute': ?maxAgeAttribute,
      'name': ?name,
      'pageUrls': ?pageUrls,
      'pathAttribute': ?pathAttribute,
      'sameSiteAttribute': ?sameSiteAttribute,
      'secureAttribute': ?secureAttribute,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldCookiesResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldCookiesResult(
      cookieId: (() { final guardedValue = map['cookieId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainAttribute: (() { final guardedValue = map['domainAttribute']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAttribute: (() { final guardedValue = map['expiresAttribute']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstSeenAt: (() { final guardedValue = map['firstSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpOnlyAttribute: (() { final guardedValue = map['httpOnlyAttribute']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSeenAt: (() { final guardedValue = map['lastSeenAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxAgeAttribute: (() { final guardedValue = map['maxAgeAttribute']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageUrls: (() { final guardedValue = map['pageUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      pathAttribute: (() { final guardedValue = map['pathAttribute']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sameSiteAttribute: (() { final guardedValue = map['sameSiteAttribute']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secureAttribute: (() { final guardedValue = map['secureAttribute']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
