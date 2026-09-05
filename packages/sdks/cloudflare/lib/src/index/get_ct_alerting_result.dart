// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCtAlerting.
class GetCtAlertingResult {
  /// Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  final List<String>? emails;
  /// Whether CT alerting is enabled for the zone.
  final bool? enabled;
  /// Identifier.
  final String? id;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCtAlertingResult].
  /// [emails] Email addresses that receive CT alert notifications for the zone. A maximum of 100 addresses may be configured. Each address must be a valid RFC 5322 email address and must not contain a comma.
  /// [enabled] Whether CT alerting is enabled for the zone.
  /// [id] Identifier.
  /// [zoneId] Identifier.
  const GetCtAlertingResult({
    this.emails,
    this.enabled,
    this.id,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'enabled': ?enabled,
      'id': ?id,
      'zoneId': ?zoneId,
    };
  }

  factory GetCtAlertingResult.fromMap(Map<String, dynamic> map) {
    return GetCtAlertingResult(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
