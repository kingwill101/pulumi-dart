// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BastionHostIpConfiguration {
  /// The name of the IP configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `publicIpAddressId` is required when `sku` is `Basic` or `Standard`. When `sku` is `Premium` and `publicIpAddressId` is omitted, the Bastion Host is deployed in Private-Only mode (`privateOnlyEnabled` will be `true`).
  final pulumi.Input<String>? publicIpAddressId;
  /// Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Subnet used for the Bastion Host must have the name `AzureBastionSubnet` and the subnet mask must be at least a `/26`.
  final pulumi.Input<String> subnetId;

  /// Creates a new [BastionHostIpConfiguration].
  /// [name] The name of the IP configuration. Changing this forces a new resource to be created.
  /// [publicIpAddressId] Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.
  /// [subnetId] Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
  const BastionHostIpConfiguration({
    required this.name,
    this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory BastionHostIpConfiguration.fromMap(Map<String, dynamic> map) {
    return BastionHostIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
