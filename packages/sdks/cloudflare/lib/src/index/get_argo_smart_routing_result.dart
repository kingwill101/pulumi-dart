// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getArgoSmartRouting.
class GetArgoSmartRoutingResult {
  /// Specifies if the setting is editable.
  final bool? editable;
  /// Specifies the zone associated with the API call.
  final String? id;
  /// Specifies the time when the setting was last modified.
  final String? modifiedOn;
  /// Specifies the enablement value of Argo Smart Routing.
  /// Available values: "on", "off".
  final String? value;
  /// Specifies the zone associated with the API call.
  final String? zoneId;

  /// Creates a new [GetArgoSmartRoutingResult].
  /// [editable] Specifies if the setting is editable.
  /// [id] Specifies the zone associated with the API call.
  /// [modifiedOn] Specifies the time when the setting was last modified.
  /// [value] Specifies the enablement value of Argo Smart Routing.
  /// [zoneId] Specifies the zone associated with the API call.
  const GetArgoSmartRoutingResult({
    this.editable,
    this.id,
    this.modifiedOn,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetArgoSmartRoutingResult.fromMap(Map<String, dynamic> map) {
    return GetArgoSmartRoutingResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
