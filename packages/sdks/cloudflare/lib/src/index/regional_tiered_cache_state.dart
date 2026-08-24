// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionalTieredCache resources.
class RegionalTieredCacheState {
  /// Whether the setting is editable.
  final pulumi.Input<bool?>? editable;
  /// Last time this setting was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Value of the Regional Tiered Cache zone setting.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? value;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [RegionalTieredCacheState].
  /// [editable] Whether the setting is editable.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Value of the Regional Tiered Cache zone setting.
  /// [zoneId] Identifier.
  const RegionalTieredCacheState({
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

  factory RegionalTieredCacheState.fromMap(Map<String, dynamic> map) {
    return RegionalTieredCacheState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
