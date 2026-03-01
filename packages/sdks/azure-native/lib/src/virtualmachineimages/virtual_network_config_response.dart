// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Network configuration.
class VirtualNetworkConfigResponse {
  /// Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  final String? containerInstanceSubnetId;
  /// Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  final String? proxyVmSize;
  /// Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  final String? subnetId;

  /// Creates a new [VirtualNetworkConfigResponse].
  /// [containerInstanceSubnetId] Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  /// [proxyVmSize] Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  /// [subnetId] Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  VirtualNetworkConfigResponse({
    this.containerInstanceSubnetId,
    this.proxyVmSize,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerInstanceSubnetId': ?containerInstanceSubnetId,
      'proxyVmSize': ?proxyVmSize,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfigResponse(
      containerInstanceSubnetId: map['containerInstanceSubnetId'] == null ? null : map['containerInstanceSubnetId'] as String,
      proxyVmSize: map['proxyVmSize'] == null ? null : map['proxyVmSize'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

