// ignore_for_file: unused_element, unnecessary_cast

import 'policy_dns64_config_scope.dart';

class PolicyDns64Config {
  /// The scope to which DNS64 config will be applied to.
  final PolicyDns64ConfigScope scope;

  /// Creates a new [PolicyDns64Config].
  /// [scope] The scope to which DNS64 config will be applied to.
  PolicyDns64Config({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope.toMap(),
    };
  }

  factory PolicyDns64Config.fromMap(Map<String, dynamic> map) {
    return PolicyDns64Config(
      scope: PolicyDns64ConfigScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}

