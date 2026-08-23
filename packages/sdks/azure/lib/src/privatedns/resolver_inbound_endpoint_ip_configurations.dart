// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverInboundEndpointIpConfigurations {
  /// Private IP address of the IP configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateIpAddress;
  /// Private IP address allocation method. Possible values are `Dynamic` and `Static`. Defaults to `Dynamic`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// The subnet ID of the IP configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ResolverInboundEndpointIpConfigurations].
  /// [privateIpAddress] Private IP address of the IP configuration. Changing this forces a new resource to be created.
  /// [privateIpAllocationMethod] Private IP address allocation method. Possible values are `Dynamic` and `Static`. Defaults to `Dynamic`. Changing this forces a new resource to be created.
  /// [subnetId] The subnet ID of the IP configuration. Changing this forces a new resource to be created.
  const ResolverInboundEndpointIpConfigurations({
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnetId': subnetId,
    };
  }

  factory ResolverInboundEndpointIpConfigurations.fromMap(Map<String, dynamic> map) {
    return ResolverInboundEndpointIpConfigurations(
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAllocationMethod: (() { final guardedValue = map['privateIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
