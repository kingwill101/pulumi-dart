// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigResponseContainerV1beta1 {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final pulumi.Input<bool> enabled;
  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final pulumi.Input<String> securityGroup;

  /// Creates a new [AuthenticatorGroupsConfigResponseContainerV1beta1].
  /// [enabled] Whether this cluster should return group membership lookups during authentication using a group of security groups.
  /// [securityGroup] The name of the security group-of-groups to be used. Only relevant if enabled = true.
  AuthenticatorGroupsConfigResponseContainerV1beta1({
    required this.enabled,
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'securityGroup': securityGroup,
    };
  }

  factory AuthenticatorGroupsConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AuthenticatorGroupsConfigResponseContainerV1beta1(
      enabled: (map['enabled'] as bool).input(),
      securityGroup: (map['securityGroup'] as String).input(),
    );
  }
}

