// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorProfileLogScrubbingRule {
  /// The variable to be scrubbed from the logs. Possible values are `QueryStringArgNames`, `RequestIPAddress`, and `RequestUri`.
  ///
  /// &gt; **Note:** The `operator` field is implicitly set to `EqualsAny`, as it is the sole supported value, and is therefore not exposed as a configurable option in the provider schema.
  final pulumi.Input<String> matchVariable;

  /// Creates a new [FrontdoorProfileLogScrubbingRule].
  /// [matchVariable] The variable to be scrubbed from the logs. Possible values are `QueryStringArgNames`, `RequestIPAddress`, and `RequestUri`.
  const FrontdoorProfileLogScrubbingRule({
    required this.matchVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
    };
  }

  factory FrontdoorProfileLogScrubbingRule.fromMap(Map<String, dynamic> map) {
    return FrontdoorProfileLogScrubbingRule(
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
    );
  }
}
