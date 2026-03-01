// ignore_for_file: unused_element, unnecessary_cast


class ClusterVirtualNetworkConfiguration {
  final String dataManagementPublicIpId;
  final String enginePublicIpId;
  final String subnetId;

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
      dataManagementPublicIpId: map['dataManagementPublicIpId'] as String,
      enginePublicIpId: map['enginePublicIpId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

