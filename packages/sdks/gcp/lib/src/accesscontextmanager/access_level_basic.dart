// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_basic_condition.dart';

class AccessLevelBasic {
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
  final pulumi.Input<List<AccessLevelBasicCondition>> conditions;

  /// Creates a new [AccessLevelBasic].
  /// [combiningFunction] How the conditions list should be combined to determine if a request
  /// [conditions] A set of requirements for the AccessLevel to be granted.
  AccessLevelBasic({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': ?combiningFunction,
      'conditions': pulumi.Input.mapInputValue<List<AccessLevelBasicCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AccessLevelBasicCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessLevelBasic.fromMap(Map<String, dynamic> map) {
    return AccessLevelBasic(
      combiningFunction: map['combiningFunction'] == null ? null : (map['combiningFunction']! as String).input(),
      conditions: (pulumi.Input.decodeList<AccessLevelBasicCondition>(map['conditions'], (value) => AccessLevelBasicCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

