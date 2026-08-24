// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneHold.
class GetZoneHoldResult {
  final bool? hold;
  final String? holdAfter;
  /// Identifier.
  final String? id;
  final String? includeSubdomains;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetZoneHoldResult].
  /// [hold] Optional.
  /// [holdAfter] Optional.
  /// [id] Identifier.
  /// [includeSubdomains] Optional.
  /// [zoneId] Identifier.
  const GetZoneHoldResult({
    this.hold,
    this.holdAfter,
    this.id,
    this.includeSubdomains,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hold': ?hold,
      'holdAfter': ?holdAfter,
      'id': ?id,
      'includeSubdomains': ?includeSubdomains,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneHoldResult.fromMap(Map<String, dynamic> map) {
    return GetZoneHoldResult(
      hold: (() { final guardedValue = map['hold']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      holdAfter: (() { final guardedValue = map['holdAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
