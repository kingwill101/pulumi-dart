// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ArgoSmartRouting resources.
class ArgoSmartRoutingState {
  /// Specifies if the setting is editable.
  final pulumi.Input<bool?>? editable;
  /// Specifies the time when the setting was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Specifies the enablement value of Argo Smart Routing.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? value;
  /// Specifies the zone associated with the API call.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ArgoSmartRoutingState].
  /// [editable] Specifies if the setting is editable.
  /// [modifiedOn] Specifies the time when the setting was last modified.
  /// [value] Specifies the enablement value of Argo Smart Routing.
  /// [zoneId] Specifies the zone associated with the API call.
  const ArgoSmartRoutingState({
    this.editable,
    this.modifiedOn,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'modifiedOn': ?modifiedOn,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory ArgoSmartRoutingState.fromMap(Map<String, dynamic> map) {
    return ArgoSmartRoutingState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
