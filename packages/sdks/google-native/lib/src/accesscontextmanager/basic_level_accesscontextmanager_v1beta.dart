// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_level_combining_function_accesscontextmanager_v1beta.dart';
import 'condition_accesscontextmanager_v1beta.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevelAccesscontextmanagerV1beta {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final pulumi.Input<BasicLevelCombiningFunctionAccesscontextmanagerV1beta>? combiningFunction;
  /// A list of requirements for the `AccessLevel` to be granted.
  final pulumi.Input<List<ConditionAccesscontextmanagerV1beta>> conditions;

  /// Creates a new [BasicLevelAccesscontextmanagerV1beta].
  /// [combiningFunction] How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  /// [conditions] A list of requirements for the `AccessLevel` to be granted.
  BasicLevelAccesscontextmanagerV1beta({
    this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': ?pulumi.Input.mapOptionalInputValue<BasicLevelCombiningFunctionAccesscontextmanagerV1beta, String>(combiningFunction, (value) => value.wireValue),
      'conditions': pulumi.Input.mapInputValue<List<ConditionAccesscontextmanagerV1beta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionAccesscontextmanagerV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BasicLevelAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return BasicLevelAccesscontextmanagerV1beta(
      combiningFunction: (() { final guardedValue = map['combiningFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLevelCombiningFunctionAccesscontextmanagerV1beta.fromValue(guardedValue as String)); })(),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionAccesscontextmanagerV1beta>(map['conditions']!, (value) => ConditionAccesscontextmanagerV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

