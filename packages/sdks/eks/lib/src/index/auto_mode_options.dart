// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_compute_config.dart';

/// Configuration Options for EKS Auto Mode. If EKS Auto Mode is enabled, AWS will manage cluster infrastructure on your behalf.
///
/// For more information, see: https://docs.aws.amazon.com/eks/latest/userguide/automode.html
class AutoModeOptions {
  /// Compute configuration for EKS Auto Mode.
  final pulumi.Input<ClusterComputeConfig>? computeConfig;
  /// Whether to create an IAM role for the EKS Auto Mode node group if none is provided in `computeConfig`.
  final pulumi.Input<bool>? createNodeRole;
  /// Whether to enable EKS Auto Mode. If enabled, EKS will manage node pools, EBS volumes and Load Balancers for you.
  /// When enabled, the vpc-cni and kube-proxy will not be enabled by default because EKS Auto Mode includes pod networking capabilities.
  final pulumi.Input<bool> enabled;

  /// Creates a new [AutoModeOptions].
  /// [computeConfig] Compute configuration for EKS Auto Mode.
  /// [createNodeRole] Whether to create an IAM role for the EKS Auto Mode node group if none is provided in `computeConfig`.
  /// [enabled] Whether to enable EKS Auto Mode. If enabled, EKS will manage node pools, EBS volumes and Load Balancers for you.
  const AutoModeOptions({
    this.computeConfig,
    this.createNodeRole,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterComputeConfig, Map<String, dynamic>>(computeConfig, (value) => value.toMap()),
      'createNodeRole': ?createNodeRole,
      'enabled': enabled,
    };
  }

  factory AutoModeOptions.fromMap(Map<String, dynamic> map) {
    return AutoModeOptions(
      computeConfig: (() { final guardedValue = map['computeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterComputeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createNodeRole: (() { final guardedValue = map['createNodeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
