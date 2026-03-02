// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRbacBindingConfig {
  /// Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authenticated.
  ///
  ///
  /// ## Attributes Reference
  ///
  /// In addition to the arguments listed above, the following computed attributes are
  /// exported:
  final pulumi.Input<bool>? enableInsecureBindingSystemAuthenticated;
  /// Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:anonymous or system:unauthenticated.
  final pulumi.Input<bool>? enableInsecureBindingSystemUnauthenticated;

  /// Creates a new [ClusterRbacBindingConfig].
  /// [enableInsecureBindingSystemAuthenticated] Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authenticated.
  /// [enableInsecureBindingSystemUnauthenticated] Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:anonymous or system:unauthenticated.
  ClusterRbacBindingConfig({
    this.enableInsecureBindingSystemAuthenticated,
    this.enableInsecureBindingSystemUnauthenticated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInsecureBindingSystemAuthenticated': ?enableInsecureBindingSystemAuthenticated,
      'enableInsecureBindingSystemUnauthenticated': ?enableInsecureBindingSystemUnauthenticated,
    };
  }

  factory ClusterRbacBindingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterRbacBindingConfig(
      enableInsecureBindingSystemAuthenticated: map['enableInsecureBindingSystemAuthenticated'] == null ? null : (map['enableInsecureBindingSystemAuthenticated'] as bool).input(),
      enableInsecureBindingSystemUnauthenticated: map['enableInsecureBindingSystemUnauthenticated'] == null ? null : (map['enableInsecureBindingSystemUnauthenticated'] as bool).input(),
    );
  }
}

