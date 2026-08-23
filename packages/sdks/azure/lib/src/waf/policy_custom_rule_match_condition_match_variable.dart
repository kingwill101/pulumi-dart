// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyCustomRuleMatchConditionMatchVariable {
  /// Describes field of the matchVariable collection
  final pulumi.Input<String>? selector;
  /// The name of the Match Variable. Possible values are `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestUri`, `RequestHeaders`, `RequestBody` and `RequestCookies`.
  final pulumi.Input<String> variableName;

  /// Creates a new [PolicyCustomRuleMatchConditionMatchVariable].
  /// [selector] Describes field of the matchVariable collection
  /// [variableName] The name of the Match Variable. Possible values are `RemoteAddr`, `RequestMethod`, `QueryString`, `PostArgs`, `RequestUri`, `RequestHeaders`, `RequestBody` and `RequestCookies`.
  const PolicyCustomRuleMatchConditionMatchVariable({
    this.selector,
    required this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selector': ?selector,
      'variableName': variableName,
    };
  }

  factory PolicyCustomRuleMatchConditionMatchVariable.fromMap(Map<String, dynamic> map) {
    return PolicyCustomRuleMatchConditionMatchVariable(
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableName: pulumi.Input.fromValue(map['variableName'] as String),
    );
  }
}
