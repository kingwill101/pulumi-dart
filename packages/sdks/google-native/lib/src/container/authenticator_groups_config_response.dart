// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigResponse {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final pulumi.Input<bool> enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final pulumi.Input<String> securityGroup;

  /// Creates a new [AuthenticatorGroupsConfigResponse].
  /// [enabled] Whether this cluster should return group membership lookups during authentication using a group of security groups.
  /// [securityGroup] The name of the security group-of-groups to be used. Only relevant if enabled = true.
  AuthenticatorGroupsConfigResponse({
    required this.enabled,
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'securityGroup': securityGroup,
    };
  }

  factory AuthenticatorGroupsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticatorGroupsConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      securityGroup: pulumi.Input.fromValue(map['securityGroup'] as String),
    );
  }
}
