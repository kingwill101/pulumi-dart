// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAuthenticatorGroupsConfig {
  /// The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.
  final pulumi.Input<String> securityGroup;

  /// Creates a new [GetClusterAuthenticatorGroupsConfig].
  /// [securityGroup] The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com.
  GetClusterAuthenticatorGroupsConfig({required this.securityGroup});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'securityGroup': securityGroup};
  }

  factory GetClusterAuthenticatorGroupsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAuthenticatorGroupsConfig(
      securityGroup: pulumi.Input.fromValue(map['securityGroup'] as String),
    );
  }
}
