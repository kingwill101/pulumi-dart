// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EnterpriseConfig is the cluster enterprise configuration.
class EnterpriseConfigResponse {
  /// [Output only] cluster_tier specifies the premium tier of the cluster.
  final pulumi.Input<String> clusterTier;

  /// Creates a new [EnterpriseConfigResponse].
  /// [clusterTier] [Output only] cluster_tier specifies the premium tier of the cluster.
  const EnterpriseConfigResponse({
    required this.clusterTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterTier': clusterTier,
    };
  }

  factory EnterpriseConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigResponse(
      clusterTier: pulumi.Input.fromValue(map['clusterTier'] as String),
    );
  }
}

