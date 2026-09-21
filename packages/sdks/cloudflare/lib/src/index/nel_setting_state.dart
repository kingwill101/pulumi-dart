// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nel_setting_value.dart';

/// Input properties used for looking up and filtering NelSetting resources.
class NelSettingState {
  /// Whether the setting is editable. This is false when the zone's plan does not include NEL or the NEL product feature is not enabled.
  final pulumi.Input<bool?>? editable;
  /// When the setting was last modified. A zero value (0001-01-01T00:00:00Z) indicates the setting has never been explicitly set and is using the default value.
  final pulumi.Input<String?>? modifiedOn;
  /// The NEL configuration value.
  final pulumi.Input<NelSettingValue?>? value;
  /// Identifier of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [NelSettingState].
  /// [editable] Whether the setting is editable. This is false when the zone's plan does not include NEL or the NEL product feature is not enabled.
  /// [modifiedOn] When the setting was last modified. A zero value (0001-01-01T00:00:00Z) indicates the setting has never been explicitly set and is using the default value.
  /// [value] The NEL configuration value.
  /// [zoneId] Identifier of the zone.
  const NelSettingState({
    this.editable,
    this.modifiedOn,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'modifiedOn': ?modifiedOn,
      'value': ?pulumi.Input.mapOptionalInputValue<NelSettingValue, Map<String, dynamic>>(value, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory NelSettingState.fromMap(Map<String, dynamic> map) {
    return NelSettingState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NelSettingValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
