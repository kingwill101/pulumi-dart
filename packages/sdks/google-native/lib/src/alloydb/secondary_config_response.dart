// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigResponse {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final pulumi.Input<String> primaryClusterName;

  /// Creates a new [SecondaryConfigResponse].
  /// [primaryClusterName] The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  SecondaryConfigResponse({required this.primaryClusterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primaryClusterName': primaryClusterName};
  }

  factory SecondaryConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigResponse(
      primaryClusterName: pulumi.Input.fromValue(
        map['primaryClusterName'] as String,
      ),
    );
  }
}
