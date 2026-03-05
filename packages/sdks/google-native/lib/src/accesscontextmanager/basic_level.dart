// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_level_combining_function.dart';
import 'condition.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevel {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final pulumi.Input<BasicLevelCombiningFunction>? combiningFunction;
  /// A list of requirements for the `AccessLevel` to be granted.
  final pulumi.Input<List<Condition>> conditions;

  /// Creates a new [BasicLevel].
  /// [combiningFunction] How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  /// [conditions] A list of requirements for the `AccessLevel` to be granted.
  BasicLevel({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': ?pulumi.Input.mapOptionalInputValue<BasicLevelCombiningFunction, String>(combiningFunction, (value) => value.wireValue),
      'conditions': pulumi.Input.mapInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BasicLevel.fromMap(Map<String, dynamic> map) {
    return BasicLevel(
      combiningFunction: (() { final guardedValue = map['combiningFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLevelCombiningFunction.fromValue(guardedValue as String)); })(),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(map['conditions']!, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

