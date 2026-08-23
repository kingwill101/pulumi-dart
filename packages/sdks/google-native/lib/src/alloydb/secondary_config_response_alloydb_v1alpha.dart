// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigResponseAlloydbV1alpha {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final pulumi.Input<String> primaryClusterName;

  /// Creates a new [SecondaryConfigResponseAlloydbV1alpha].
  /// [primaryClusterName] The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  const SecondaryConfigResponseAlloydbV1alpha({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusterName': primaryClusterName,
    };
  }

  factory SecondaryConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigResponseAlloydbV1alpha(
      primaryClusterName: pulumi.Input.fromValue(map['primaryClusterName'] as String),
    );
  }
}
