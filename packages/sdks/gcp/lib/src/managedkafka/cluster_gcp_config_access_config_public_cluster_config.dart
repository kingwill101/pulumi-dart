// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterGcpConfigAccessConfigPublicClusterConfig {
  /// A list of IPv4 addresses or CIDR ranges that are allowed to connect to the cluster. To protect your cluster, allow access from only trusted external IP ranges. Don't expose your cluster to untrusted ranges.
  final pulumi.Input<List<String>> allowedSourceIpRanges;

  /// Creates a new [ClusterGcpConfigAccessConfigPublicClusterConfig].
  /// [allowedSourceIpRanges] A list of IPv4 addresses or CIDR ranges that are allowed to connect to the cluster. To protect your cluster, allow access from only trusted external IP ranges. Don't expose your cluster to untrusted ranges.
  const ClusterGcpConfigAccessConfigPublicClusterConfig({
    required this.allowedSourceIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSourceIpRanges': allowedSourceIpRanges,
    };
  }

  factory ClusterGcpConfigAccessConfigPublicClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGcpConfigAccessConfigPublicClusterConfig(
      allowedSourceIpRanges: pulumi.Input.fromValue((map['allowedSourceIpRanges'] as List).cast<String>()),
    );
  }
}
