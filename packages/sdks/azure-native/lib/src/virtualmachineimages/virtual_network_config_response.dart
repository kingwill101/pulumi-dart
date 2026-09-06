// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network configuration.
class VirtualNetworkConfigResponse {
  /// Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  final pulumi.Input<String?>? containerInstanceSubnetId;
  /// Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  final pulumi.Input<String?>? proxyVmSize;
  /// Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [VirtualNetworkConfigResponse].
  /// [containerInstanceSubnetId] Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  /// [proxyVmSize] Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  /// [subnetId] Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  VirtualNetworkConfigResponse({
    this.containerInstanceSubnetId,
    pulumi.Input<String?>? proxyVmSize,
    this.subnetId,
  }) : proxyVmSize = proxyVmSize ?? pulumi.Input.fromValue('');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerInstanceSubnetId': ?containerInstanceSubnetId,
      'proxyVmSize': ?proxyVmSize,
      'subnetId': ?subnetId,
    };
  }

  factory VirtualNetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfigResponse(
      containerInstanceSubnetId: (() { final guardedValue = map['containerInstanceSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyVmSize: (() { final guardedValue = map['proxyVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
