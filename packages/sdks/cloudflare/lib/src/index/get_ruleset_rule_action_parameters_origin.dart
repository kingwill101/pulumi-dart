// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersOrigin {
  /// A resolved host to route to.
  final pulumi.Input<String> host;
  /// A destination port to route to.
  final pulumi.Input<int> port;

  /// Creates a new [GetRulesetRuleActionParametersOrigin].
  /// [host] A resolved host to route to.
  /// [port] A destination port to route to.
  const GetRulesetRuleActionParametersOrigin({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
    };
  }

  factory GetRulesetRuleActionParametersOrigin.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersOrigin(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
