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
  const ClusterRbacBindingConfig({
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
      enableInsecureBindingSystemAuthenticated: (() { final guardedValue = map['enableInsecureBindingSystemAuthenticated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInsecureBindingSystemUnauthenticated: (() { final guardedValue = map['enableInsecureBindingSystemUnauthenticated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

