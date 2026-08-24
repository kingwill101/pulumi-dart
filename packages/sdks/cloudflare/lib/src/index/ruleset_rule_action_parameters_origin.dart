// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersOrigin {
  /// A resolved host to route to.
  final pulumi.Input<String?>? host;
  /// A destination port to route to.
  final pulumi.Input<int?>? port;

  /// Creates a new [RulesetRuleActionParametersOrigin].
  /// [host] A resolved host to route to.
  /// [port] A destination port to route to.
  const RulesetRuleActionParametersOrigin({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory RulesetRuleActionParametersOrigin.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersOrigin(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
