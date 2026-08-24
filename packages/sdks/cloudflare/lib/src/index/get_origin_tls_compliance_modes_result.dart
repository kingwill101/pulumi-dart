// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOriginTlsComplianceModes.
class GetOriginTlsComplianceModesResult {
  /// Whether the setting is editable.
  final bool? editable;
  /// Identifier.
  final String? id;
  /// Last time this setting was modified.
  final String? modifiedOn;
  /// List of TLS compliance modes that constrain the key-exchange algorithms Cloudflare may use when establishing the TLS connection to the zone's origin. Currently supported values are `fips` (FIPS-approved curves) and `pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be added; clients should treat unknown values as opaque strings. Multiple modes are combined as the intersection of their permitted algorithm lists; selections whose intersection is empty are rejected. An empty list clears the constraint.
  final List<String>? values;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetOriginTlsComplianceModesResult].
  /// [editable] Whether the setting is editable.
  /// [id] Identifier.
  /// [modifiedOn] Last time this setting was modified.
  /// [values] List of TLS compliance modes that constrain the key-exchange algorithms Cloudflare may use when establishing the TLS connection to the zone's origin. Currently supported values are `fips` (FIPS-approved curves) and `pqh` (post-quantum hybrid). Future modes (e.g. `cnsa2`) may be added; clients should treat unknown values as opaque strings. Multiple modes are combined as the intersection of their permitted algorithm lists; selections whose intersection is empty are rejected. An empty list clears the constraint.
  /// [zoneId] Identifier.
  const GetOriginTlsComplianceModesResult({
    this.editable,
    this.id,
    this.modifiedOn,
    this.values,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'values': ?values,
      'zoneId': ?zoneId,
    };
  }

  factory GetOriginTlsComplianceModesResult.fromMap(Map<String, dynamic> map) {
    return GetOriginTlsComplianceModesResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
