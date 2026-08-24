// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ArgoTieredCaching resources.
class ArgoTieredCachingState {
  /// Whether the setting is editable.
  final pulumi.Input<bool?>? editable;
  /// Last time this setting was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Enables Tiered Caching.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? value;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ArgoTieredCachingState].
  /// [editable] Whether the setting is editable.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Enables Tiered Caching.
  /// [zoneId] Identifier.
  const ArgoTieredCachingState({
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

  factory ArgoTieredCachingState.fromMap(Map<String, dynamic> map) {
    return ArgoTieredCachingState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
