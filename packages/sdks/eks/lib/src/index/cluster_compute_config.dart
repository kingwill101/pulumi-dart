// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the compute capability of your EKS Auto Mode cluster.
class ClusterComputeConfig {
  /// Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  ///
  /// By default, the built-in `system` and `general-purpose` nodepools are enabled.
  final pulumi.Input<List<String>>? nodePools;
  /// The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled.
  final pulumi.Input<String>? nodeRoleArn;

  /// Creates a new [ClusterComputeConfig].
  /// [nodePools] Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  /// [nodeRoleArn] The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled.
  const ClusterComputeConfig({
    this.nodePools,
    this.nodeRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePools': ?nodePools,
      'nodeRoleArn': ?nodeRoleArn,
    };
  }

  factory ClusterComputeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterComputeConfig(
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeRoleArn: (() { final guardedValue = map['nodeRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

