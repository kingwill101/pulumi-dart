// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_policy.dart';

/// [Deprecated] Authorization configuration provides service-level and method-level access control for a service. control for a service.
class AuthorizationConfig {
  /// List of RbacPolicies.
  final pulumi.Input<List<RbacPolicy>>? policies;

  /// Creates a new [AuthorizationConfig].
  /// [policies] List of RbacPolicies.
  const AuthorizationConfig({
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': ?pulumi.Input.mapOptionalInputValue<List<RbacPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<RbacPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfig(
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RbacPolicy>(guardedValue, (value) => RbacPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

