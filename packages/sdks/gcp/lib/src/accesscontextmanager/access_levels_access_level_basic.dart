// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level_basic_condition.dart';

class AccessLevelsAccessLevelBasic {
  /// How the conditions list should be combined to determine if a request
  /// is granted this AccessLevel. If AND is used, each Condition in
  /// conditions must be satisfied for the AccessLevel to be applied. If
  /// OR is used, at least one Condition in conditions must be satisfied
  /// for the AccessLevel to be applied.
  /// Default value is `AND`.
  /// Possible values are: `AND`, `OR`.
  final pulumi.Input<String>? combiningFunction;
  /// A set of requirements for the AccessLevel to be granted.
  /// Structure is documented below.
  final pulumi.Input<List<AccessLevelsAccessLevelBasicCondition>> conditions;

  /// Creates a new [AccessLevelsAccessLevelBasic].
  /// [combiningFunction] How the conditions list should be combined to determine if a request
  /// [conditions] A set of requirements for the AccessLevel to be granted.
  AccessLevelsAccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': ?combiningFunction,
      'conditions': pulumi.Input.mapInputValue<List<AccessLevelsAccessLevelBasicCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AccessLevelsAccessLevelBasicCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessLevelsAccessLevelBasic.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelBasic(
      combiningFunction: map['combiningFunction'] == null ? null : (map['combiningFunction'] as String).input(),
      conditions: (pulumi.Input.decodeList<AccessLevelsAccessLevelBasicCondition>(map['conditions'], (value) => AccessLevelsAccessLevelBasicCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

