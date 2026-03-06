// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual Network configuration.
class VirtualNetworkConfig {
  /// Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  final pulumi.Input<String>? containerInstanceSubnetId;
  /// Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  final pulumi.Input<String>? proxyVmSize;
  /// Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  final pulumi.Input<String>? subnetId;

  /// Creates a new [VirtualNetworkConfig].
  /// [containerInstanceSubnetId] Resource id of a pre-existing subnet on which Azure Container Instance will be deployed for Isolated Builds. This field may be specified only if `subnetId` is also specified and must be on the same Virtual Network as the subnet specified in `subnetId`.
  /// [proxyVmSize] Size of the proxy virtual machine used to pass traffic to the build VM and validation VM. This must not be specified if `containerInstanceSubnetId` is specified because no proxy virtual machine is deployed in that case. Omit or specify empty string to use the default (Standard_A1_v2).
  /// [subnetId] Resource id of a pre-existing subnet on which the build VM and validation VM will be deployed
  const VirtualNetworkConfig({
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

  factory VirtualNetworkConfig.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfig(
      containerInstanceSubnetId: (() { final guardedValue = map['containerInstanceSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyVmSize: (() { final guardedValue = map['proxyVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

