// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// `BasicLevel` is an `AccessLevel` using a set of recommended features.
class BasicLevelResponse {
  /// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  final pulumi.Input<String> combiningFunction;
  /// A list of requirements for the `AccessLevel` to be granted.
  final pulumi.Input<List<ConditionResponse>> conditions;

  /// Creates a new [BasicLevelResponse].
  /// [combiningFunction] How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
  /// [conditions] A list of requirements for the `AccessLevel` to be granted.
  const BasicLevelResponse({
    required this.combiningFunction,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combiningFunction': combiningFunction,
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BasicLevelResponse.fromMap(Map<String, dynamic> map) {
    return BasicLevelResponse(
      combiningFunction: pulumi.Input.fromValue(map['combiningFunction'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionResponse>(map['conditions']!, (value) => ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

