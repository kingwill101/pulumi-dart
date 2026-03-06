// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLBFrontendIpConfiguration {
  /// The id of the Frontend IP Configuration.
  final pulumi.Input<String> id;
  /// Specifies the name of the Load Balancer.
  final pulumi.Input<String> name;
  /// Private IP Address to assign to the Load Balancer.
  final pulumi.Input<String> privateIpAddress;
  /// The allocation method for the Private IP Address used by this Load Balancer.
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The Private IP Address Version, either `IPv4` or `IPv6`.
  final pulumi.Input<String> privateIpAddressVersion;
  /// The ID of a  Public IP Address which is associated with this Load Balancer.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the Subnet which is associated with the IP Configuration.
  final pulumi.Input<String> subnetId;
  /// A list of Availability Zones which the Load Balancer's IP Addresses should be created in.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetLBFrontendIpConfiguration].
  /// [id] The id of the Frontend IP Configuration.
  /// [name] Specifies the name of the Load Balancer.
  /// [privateIpAddress] Private IP Address to assign to the Load Balancer.
  /// [privateIpAddressAllocation] The allocation method for the Private IP Address used by this Load Balancer.
  /// [privateIpAddressVersion] The Private IP Address Version, either `IPv4` or `IPv6`.
  /// [publicIpAddressId] The ID of a  Public IP Address which is associated with this Load Balancer.
  /// [subnetId] The ID of the Subnet which is associated with the IP Configuration.
  /// [zones] A list of Availability Zones which the Load Balancer's IP Addresses should be created in.
  const GetLBFrontendIpConfiguration({
    required this.id,
    required this.name,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.privateIpAddressVersion,
    required this.publicIpAddressId,
    required this.subnetId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'privateIpAddressVersion': privateIpAddressVersion,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
      'zones': zones,
    };
  }

  factory GetLBFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetLBFrontendIpConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddressAllocation: pulumi.Input.fromValue(map['privateIpAddressAllocation'] as String),
      privateIpAddressVersion: pulumi.Input.fromValue(map['privateIpAddressVersion'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}

