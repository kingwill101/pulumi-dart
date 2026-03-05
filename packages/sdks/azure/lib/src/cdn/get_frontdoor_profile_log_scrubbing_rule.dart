// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorProfileLogScrubbingRule {
  /// The variable that is scrubbed from the logs.
  final pulumi.Input<String> matchVariable;

  /// Creates a new [GetFrontdoorProfileLogScrubbingRule].
  /// [matchVariable] The variable that is scrubbed from the logs.
  GetFrontdoorProfileLogScrubbingRule({
    required this.matchVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
    };
  }

  factory GetFrontdoorProfileLogScrubbingRule.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileLogScrubbingRule(
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
    );
  }
}

