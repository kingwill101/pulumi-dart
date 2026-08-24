// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAgentBlockingRulesResultConfiguration {
  /// The configuration target for this rule. You must set the target to `ua` for User Agent Blocking rules.
  final pulumi.Input<String> target;
  /// The exact user agent string to match. This value will be compared to the received `User-Agent` HTTP header value.
  final pulumi.Input<String> value;

  /// Creates a new [GetUserAgentBlockingRulesResultConfiguration].
  /// [target] The configuration target for this rule. You must set the target to `ua` for User Agent Blocking rules.
  /// [value] The exact user agent string to match. This value will be compared to the received `User-Agent` HTTP header value.
  const GetUserAgentBlockingRulesResultConfiguration({
    required this.target,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'value': value,
    };
  }

  factory GetUserAgentBlockingRulesResultConfiguration.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRulesResultConfiguration(
      target: pulumi.Input.fromValue(map['target'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
