// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_profile_capacity.dart';
import 'autoscale_setting_profile_fixed_date.dart';
import 'autoscale_setting_profile_recurrence.dart';
import 'autoscale_setting_profile_rule.dart';

class AutoscaleSettingProfile {
  /// A `capacity` block as defined below.
  final pulumi.Input<AutoscaleSettingProfileCapacity> capacity;
  /// A `fixedDate` block as defined below. This cannot be specified if a `recurrence` block is specified.
  final pulumi.Input<AutoscaleSettingProfileFixedDate>? fixedDate;
  /// Specifies the name of the profile.
  final pulumi.Input<String> name;
  /// A `recurrence` block as defined below. This cannot be specified if a `fixedDate` block is specified.
  final pulumi.Input<AutoscaleSettingProfileRecurrence>? recurrence;
  /// One or more (up to 10) `rule` blocks as defined below.
  final pulumi.Input<List<AutoscaleSettingProfileRule>>? rules;

  /// Creates a new [AutoscaleSettingProfile].
  /// [capacity] A `capacity` block as defined below.
  /// [fixedDate] A `fixedDate` block as defined below. This cannot be specified if a `recurrence` block is specified.
  /// [name] Specifies the name of the profile.
  /// [recurrence] A `recurrence` block as defined below. This cannot be specified if a `fixedDate` block is specified.
  /// [rules] One or more (up to 10) `rule` blocks as defined below.
  const AutoscaleSettingProfile({
    required this.capacity,
    this.fixedDate,
    required this.name,
    this.recurrence,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': pulumi.Input.mapInputValue<AutoscaleSettingProfileCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'fixedDate': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingProfileFixedDate, Map<String, dynamic>>(fixedDate, (value) => value.toMap()),
      'name': name,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<AutoscaleSettingProfileRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleSettingProfileRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AutoscaleSettingProfileRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoscaleSettingProfile.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfile(
      capacity: pulumi.Input.fromValue(AutoscaleSettingProfileCapacity.fromMap((map['capacity']! as Map).cast<String, dynamic>())),
      fixedDate: (() { final guardedValue = map['fixedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleSettingProfileFixedDate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleSettingProfileRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleSettingProfileRule>(guardedValue, (value) => AutoscaleSettingProfileRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
