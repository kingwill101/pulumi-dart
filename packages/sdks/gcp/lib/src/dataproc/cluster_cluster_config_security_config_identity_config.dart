// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigSecurityConfigIdentityConfig {
  /// The end user to service account mappings
  /// in a service account based multi-tenant cluster
  ///
  /// - - -
  final pulumi.Input<Map<String, String>> userServiceAccountMapping;

  /// Creates a new [ClusterClusterConfigSecurityConfigIdentityConfig].
  /// [userServiceAccountMapping] The end user to service account mappings
  ClusterClusterConfigSecurityConfigIdentityConfig({
    required this.userServiceAccountMapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userServiceAccountMapping': userServiceAccountMapping,
    };
  }

  factory ClusterClusterConfigSecurityConfigIdentityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSecurityConfigIdentityConfig(
      userServiceAccountMapping: pulumi.Input.fromValue((map['userServiceAccountMapping'] as Map).cast<String, String>()),
    );
  }
}

