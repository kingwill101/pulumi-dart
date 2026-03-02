// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterRbacBindingConfig {
  /// Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authenticated.
  final pulumi.Input<bool> enableInsecureBindingSystemAuthenticated;
  /// Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:anonymous or system:unauthenticated.
  final pulumi.Input<bool> enableInsecureBindingSystemUnauthenticated;

  /// Creates a new [GetClusterRbacBindingConfig].
  /// [enableInsecureBindingSystemAuthenticated] Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authenticated.
  /// [enableInsecureBindingSystemUnauthenticated] Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:anonymous or system:unauthenticated.
  GetClusterRbacBindingConfig({
    required this.enableInsecureBindingSystemAuthenticated,
    required this.enableInsecureBindingSystemUnauthenticated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInsecureBindingSystemAuthenticated': enableInsecureBindingSystemAuthenticated,
      'enableInsecureBindingSystemUnauthenticated': enableInsecureBindingSystemUnauthenticated,
    };
  }

  factory GetClusterRbacBindingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterRbacBindingConfig(
      enableInsecureBindingSystemAuthenticated: (map['enableInsecureBindingSystemAuthenticated'] as bool).input(),
      enableInsecureBindingSystemUnauthenticated: (map['enableInsecureBindingSystemUnauthenticated'] as bool).input(),
    );
  }
}

