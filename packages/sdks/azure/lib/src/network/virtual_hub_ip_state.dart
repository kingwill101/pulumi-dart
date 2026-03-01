// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualHubIp resources.
class VirtualHubIpState {
  /// The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`.
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpAddressId;
  /// The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VirtualHubIpState].
  /// [name] The name which should be used for this Virtual Hub IP. Changing this forces a new resource to be created.
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP address allocation method. Possible values are `Static` and `Dynamic` is allowed. Defaults to `Dynamic`.
  /// [publicIpAddressId] The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet that the IP will reside. Changing this forces a new resource to be created.
  /// [virtualHubId] The ID of the Virtual Hub within which this IP configuration should be created. Changing this forces a new resource to be created.
  VirtualHubIpState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? privateIpAllocationMethod,
    pulumi.Output<String>? publicIpAddressId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? virtualHubId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      privateIpAllocationMethod = pulumi.Input.asOptionalInput<String>(privateIpAllocationMethod),
      publicIpAddressId = pulumi.Input.asOptionalInput<String>(publicIpAddressId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': ?subnetId,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VirtualHubIpState.fromMap(Map<String, dynamic> map) {
    return VirtualHubIpState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : pulumi.Output.create<String>(map['privateIpAllocationMethod'] as String),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

