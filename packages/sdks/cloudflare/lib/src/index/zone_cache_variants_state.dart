// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_cache_variants_value.dart';

/// Input properties used for looking up and filtering ZoneCacheVariants resources.
class ZoneCacheVariantsState {
  /// Whether the setting is editable.
  final pulumi.Input<bool?>? editable;
  /// Last time this setting was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Value of the zone setting.
  final pulumi.Input<ZoneCacheVariantsValue?>? value;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneCacheVariantsState].
  /// [editable] Whether the setting is editable.
  /// [modifiedOn] Last time this setting was modified.
  /// [value] Value of the zone setting.
  /// [zoneId] Identifier.
  const ZoneCacheVariantsState({
    this.editable,
    this.modifiedOn,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'modifiedOn': ?modifiedOn,
      'value': ?pulumi.Input.mapOptionalInputValue<ZoneCacheVariantsValue, Map<String, dynamic>>(value, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory ZoneCacheVariantsState.fromMap(Map<String, dynamic> map) {
    return ZoneCacheVariantsState(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneCacheVariantsValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
