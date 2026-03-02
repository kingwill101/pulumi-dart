// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVirtualNetworkConfiguration {
  final pulumi.Input<String> dataManagementPublicIpId;
  final pulumi.Input<String> enginePublicIpId;
  final pulumi.Input<String> subnetId;

  /// Creates a new [ClusterVirtualNetworkConfiguration].
  /// [dataManagementPublicIpId] Required.
  /// [enginePublicIpId] Required.
  /// [subnetId] Required.
  ClusterVirtualNetworkConfiguration({
    required this.dataManagementPublicIpId,
    required this.enginePublicIpId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagementPublicIpId': dataManagementPublicIpId,
      'enginePublicIpId': enginePublicIpId,
      'subnetId': subnetId,
    };
  }

  factory ClusterVirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualNetworkConfiguration(
      dataManagementPublicIpId: (map['dataManagementPublicIpId'] as String).input(),
      enginePublicIpId: (map['enginePublicIpId'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

