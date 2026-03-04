// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigAlloydbV1alpha {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final pulumi.Input<String>? primaryClusterName;

  /// Creates a new [SecondaryConfigAlloydbV1alpha].
  /// [primaryClusterName] The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  SecondaryConfigAlloydbV1alpha({this.primaryClusterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primaryClusterName': ?primaryClusterName};
  }

  factory SecondaryConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigAlloydbV1alpha(
      primaryClusterName: (() {
        final guardedValue = map['primaryClusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
