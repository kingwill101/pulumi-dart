// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceNatIpConfiguration {
  /// The name of the private link service.
  final pulumi.Input<String> name;
  /// Value that indicates if the IP configuration is the primary configuration or not.
  final pulumi.Input<bool> primary;
  /// The private IP address of the NAT IP configuration.
  final pulumi.Input<String> privateIpAddress;
  /// The version of the IP Protocol.
  final pulumi.Input<String> privateIpAddressVersion;
  /// The ID of the subnet to be used by the service.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetServiceNatIpConfiguration].
  /// [name] The name of the private link service.
  /// [primary] Value that indicates if the IP configuration is the primary configuration or not.
  /// [privateIpAddress] The private IP address of the NAT IP configuration.
  /// [privateIpAddressVersion] The version of the IP Protocol.
  /// [subnetId] The ID of the subnet to be used by the service.
  const GetServiceNatIpConfiguration({
    required this.name,
    required this.primary,
    required this.privateIpAddress,
    required this.privateIpAddressVersion,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressVersion': privateIpAddressVersion,
      'subnetId': subnetId,
    };
  }

  factory GetServiceNatIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceNatIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddressVersion: pulumi.Input.fromValue(map['privateIpAddressVersion'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

