// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_variable_response.dart';

/// Define match conditions.
class MatchConditionResponse {
  /// Match value.
  final pulumi.Input<List<String>> matchValues;
  /// List of match variables.
  final pulumi.Input<List<MatchVariableResponse>> matchVariables;
  /// Whether this is negate condition or not.
  final pulumi.Input<bool>? negationConditon;
  /// The operator to be matched.
  final pulumi.Input<String> operator;
  /// List of transforms.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [MatchConditionResponse].
  /// [matchValues] Match value.
  /// [matchVariables] List of match variables.
  /// [negationConditon] Whether this is negate condition or not.
  /// [operator] The operator to be matched.
  /// [transforms] List of transforms.
  const MatchConditionResponse({
    required this.matchValues,
    required this.matchVariables,
    this.negationConditon,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'matchVariables': pulumi.Input.mapInputValue<List<MatchVariableResponse>, List<Map<String, dynamic>>>(matchVariables, (value) => pulumi.Input.encodeList<MatchVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'negationConditon': ?negationConditon,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory MatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return MatchConditionResponse(
      matchValues: pulumi.Input.fromValue((map['matchValues'] as List).cast<String>()),
      matchVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<MatchVariableResponse>(map['matchVariables']!, (value) => MatchVariableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      negationConditon: (() { final guardedValue = map['negationConditon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

