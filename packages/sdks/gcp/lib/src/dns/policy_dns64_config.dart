// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_dns64_config_scope.dart';

class PolicyDns64Config {
  /// The scope to which DNS64 config will be applied to.
  final pulumi.Input<PolicyDns64ConfigScope> scope;

  /// Creates a new [PolicyDns64Config].
  /// [scope] The scope to which DNS64 config will be applied to.
  const PolicyDns64Config({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': pulumi.Input.mapInputValue<PolicyDns64ConfigScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory PolicyDns64Config.fromMap(Map<String, dynamic> map) {
    return PolicyDns64Config(
      scope: pulumi.Input.fromValue(PolicyDns64ConfigScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
