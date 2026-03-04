// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterGcpConfigAccessConfigNetworkConfig {
  /// Name of the VPC subnet from which the cluster is accessible. Both broker and bootstrap server IP addresses and DNS entries are automatically created in the subnet. There can only be one subnet per network, and the subnet must be located in the same region as the cluster. The project may differ. The name of the subnet must be in the format `projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET`.
  final pulumi.Input<String> subnet;

  /// Creates a new [ClusterGcpConfigAccessConfigNetworkConfig].
  /// [subnet] Name of the VPC subnet from which the cluster is accessible. Both broker and bootstrap server IP addresses and DNS entries are automatically created in the subnet. There can only be one subnet per network, and the subnet must be located in the same region as the cluster. The project may differ. The name of the subnet must be in the format `projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET`.
  ClusterGcpConfigAccessConfigNetworkConfig({required this.subnet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnet': subnet};
  }

  factory ClusterGcpConfigAccessConfigNetworkConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterGcpConfigAccessConfigNetworkConfig(
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
    );
  }
}
