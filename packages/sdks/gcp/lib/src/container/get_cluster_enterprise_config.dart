// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterEnterpriseConfig {
  /// Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  final pulumi.Input<String> clusterTier;
  /// Indicates the desired cluster tier. Available options include STANDARD and ENTERPRISE.
  final pulumi.Input<String> desiredTier;

  /// Creates a new [GetClusterEnterpriseConfig].
  /// [clusterTier] Indicates the effective cluster tier. Available options include STANDARD and ENTERPRISE.
  /// [desiredTier] Indicates the desired cluster tier. Available options include STANDARD and ENTERPRISE.
  const GetClusterEnterpriseConfig({
    required this.clusterTier,
    required this.desiredTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTier': clusterTier,
      'desiredTier': desiredTier,
    };
  }

  factory GetClusterEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterEnterpriseConfig(
      clusterTier: pulumi.Input.fromValue(map['clusterTier'] as String),
      desiredTier: pulumi.Input.fromValue(map['desiredTier'] as String),
    );
  }
}
