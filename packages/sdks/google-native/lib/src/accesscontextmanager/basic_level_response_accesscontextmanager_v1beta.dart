// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_accesscontextmanager_v1beta.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevelResponseAccesscontextmanagerV1beta {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final pulumi.Input<String> combiningFunction;
  /// A list of requirements for the `AccessLevel` to be granted.
  final pulumi.Input<List<ConditionResponseAccesscontextmanagerV1beta>> conditions;

  /// Creates a new [BasicLevelResponseAccesscontextmanagerV1beta].
  /// [combiningFunction] How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  /// [conditions] A list of requirements for the `AccessLevel` to be granted.
  const BasicLevelResponseAccesscontextmanagerV1beta({
    required this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': combiningFunction,
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponseAccesscontextmanagerV1beta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponseAccesscontextmanagerV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BasicLevelResponseAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return BasicLevelResponseAccesscontextmanagerV1beta(
      combiningFunction: pulumi.Input.fromValue(map['combiningFunction'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionResponseAccesscontextmanagerV1beta>(map['conditions']!, (value) => ConditionResponseAccesscontextmanagerV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

