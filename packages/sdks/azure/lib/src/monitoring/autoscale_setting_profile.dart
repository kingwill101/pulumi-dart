// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_profile_capacity.dart';
import 'autoscale_setting_profile_fixed_date.dart';
import 'autoscale_setting_profile_recurrence.dart';
import 'autoscale_setting_profile_rule.dart';

class AutoscaleSettingProfile {
  /// A `capacity` block as defined below.
  final pulumi.Input<AutoscaleSettingProfileCapacity> capacity;
  /// A `fixed_date` block as defined below. This cannot be specified if a `recurrence` block is specified.
  final pulumi.Input<AutoscaleSettingProfileFixedDate>? fixedDate;
  /// Specifies the name of the profile.
  final pulumi.Input<String> name;
  /// A `recurrence` block as defined below. This cannot be specified if a `fixed_date` block is specified.
  final pulumi.Input<AutoscaleSettingProfileRecurrence>? recurrence;
  /// One or more (up to 10) `rule` blocks as defined below.
  final pulumi.Input<List<AutoscaleSettingProfileRule>>? rules;

  /// Creates a new [AutoscaleSettingProfile].
  /// [capacity] A `capacity` block as defined below.
  /// [fixedDate] A `fixed_date` block as defined below. This cannot be specified if a `recurrence` block is specified.
  /// [name] Specifies the name of the profile.
  /// [recurrence] A `recurrence` block as defined below. This cannot be specified if a `fixed_date` block is specified.
  /// [rules] One or more (up to 10) `rule` blocks as defined below.
  AutoscaleSettingProfile({
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
      capacity: (AutoscaleSettingProfileCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      fixedDate: map['fixedDate'] == null ? null : (AutoscaleSettingProfileFixedDate.fromMap((map['fixedDate']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      recurrence: map['recurrence'] == null ? null : (AutoscaleSettingProfileRecurrence.fromMap((map['recurrence']! as Map).cast<String, dynamic>())).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AutoscaleSettingProfileRule>(map['rules']!, (value) => AutoscaleSettingProfileRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

