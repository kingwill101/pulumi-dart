// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBastionHostIpConfiguration {
  /// The name of the Bastion Host.
  final pulumi.Input<String> name;
  /// Reference to a Public IP Address associated to this Bastion Host.
  final pulumi.Input<String> publicIpAddressId;
  /// Reference to the subnet in which this Bastion Host has been created.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetBastionHostIpConfiguration].
  /// [name] The name of the Bastion Host.
  /// [publicIpAddressId] Reference to a Public IP Address associated to this Bastion Host.
  /// [subnetId] Reference to the subnet in which this Bastion Host has been created.
  const GetBastionHostIpConfiguration({
    required this.name,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetBastionHostIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBastionHostIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

