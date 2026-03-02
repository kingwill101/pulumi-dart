// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_variable.dart';

/// Define match conditions.
class MatchCondition {
  /// Match value.
  final pulumi.Input<List<String>> matchValues;
  /// List of match variables.
  final pulumi.Input<List<MatchVariable>> matchVariables;
  /// Whether this is negate condition or not.
  final pulumi.Input<bool>? negationConditon;
  /// The operator to be matched.
  final pulumi.Input<String> operator;
  /// List of transforms.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [MatchCondition].
  /// [matchValues] Match value.
  /// [matchVariables] List of match variables.
  /// [negationConditon] Whether this is negate condition or not.
  /// [operator] The operator to be matched.
  /// [transforms] List of transforms.
  MatchCondition({
    required this.matchValues,
    required this.matchVariables,
    this.negationConditon,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'matchVariables': pulumi.Input.mapInputValue<List<MatchVariable>, List<Map<String, dynamic>>>(matchVariables, (value) => pulumi.Input.encodeList<MatchVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'negationConditon': ?negationConditon,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory MatchCondition.fromMap(Map<String, dynamic> map) {
    return MatchCondition(
      matchValues: ((map['matchValues'] as List).cast<String>()).input(),
      matchVariables: (pulumi.Input.decodeList<MatchVariable>(map['matchVariables'], (value) => MatchVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      negationConditon: map['negationConditon'] == null ? null : (map['negationConditon'] as bool).input(),
      operator: (map['operator'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

