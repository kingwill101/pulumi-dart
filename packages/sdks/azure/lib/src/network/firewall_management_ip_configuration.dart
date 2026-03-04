// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallManagementIpConfiguration {
  /// Specifies the name of the IP Configuration.
  final pulumi.Input<String> name;

  /// The private IP address associated with the Firewall.
  final pulumi.Input<String>? privateIpAddress;

  /// The ID of the Public IP Address associated with the firewall.
  ///
  /// &gt; **Note:** The Public IP must have a `Static` allocation and `Standard` SKU.
  final pulumi.Input<String> publicIpAddressId;

  /// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Management Subnet used for the Firewall must have the name `AzureFirewallManagementSubnet` and the subnet mask must be at least a `/26`.
  final pulumi.Input<String> subnetId;

  /// Creates a new [FirewallManagementIpConfiguration].
  /// [name] Specifies the name of the IP Configuration.
  /// [privateIpAddress] The private IP address associated with the Firewall.
  /// [publicIpAddressId] The ID of the Public IP Address associated with the firewall.
  /// [subnetId] Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
  FirewallManagementIpConfiguration({
    required this.name,
    this.privateIpAddress,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory FirewallManagementIpConfiguration.fromMap(Map<String, dynamic> map) {
    return FirewallManagementIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIpAddressId: pulumi.Input.fromValue(
        map['publicIpAddressId'] as String,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
