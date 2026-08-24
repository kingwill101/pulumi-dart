// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUrlNormalizationSettings.
class GetUrlNormalizationSettingsResult {
  /// The unique ID of the zone.
  final String? id;
  /// The scope of the URL normalization.
  /// Available values: "incoming", "both", "none".
  final String? scope;
  /// The type of URL normalization performed by Cloudflare.
  /// Available values: "cloudflare", "rfc3986".
  final String? type;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetUrlNormalizationSettingsResult].
  /// [id] The unique ID of the zone.
  /// [scope] The scope of the URL normalization.
  /// [type] The type of URL normalization performed by Cloudflare.
  /// [zoneId] The unique ID of the zone.
  const GetUrlNormalizationSettingsResult({
    this.id,
    this.scope,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'scope': ?scope,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetUrlNormalizationSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetUrlNormalizationSettingsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
