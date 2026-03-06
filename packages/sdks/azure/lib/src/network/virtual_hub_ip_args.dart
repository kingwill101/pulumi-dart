// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_hub_ip_virtual_hub_ip_args_doc}
/// The set of arguments for VirtualHubIp.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_ip_virtual_hub_ip_args_doc}
class VirtualHubIpArgs {
  /// The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [VirtualHubIpArgs].
  /// [name] The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created.
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`.
  /// [publicIpAddressId] The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created.
  /// [virtualHubId] The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created.
  const VirtualHubIpArgs({
    this.name,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    required this.publicIpAddressId,
    required this.subnetId,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
      'virtualHubId': virtualHubId,
    };
  }

  factory VirtualHubIpArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubIpArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAllocationMethod: (() { final guardedValue = map['privateIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualHubId: pulumi.Input.fromValue(map['virtualHubId'] as String),
    );
  }
}

