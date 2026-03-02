// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallIpConfiguration {
  /// Specifies the name of the IP Configuration.
  final pulumi.Input<String> name;
  /// The private IP address associated with the Firewall.
  final pulumi.Input<String>? privateIpAddress;
  /// The ID of the Public IP Address associated with the firewall.
  ///
  /// > **Note:** A public ip address is required unless a `management_ip_configuration` block is specified.
  ///
  /// > **Note:** When multiple `ip_configuration` blocks with `public_ip_address_id` are configured, `pulumi up` will raise an error when one or some of these `ip_configuration` blocks are removed. because the `public_ip_address_id` is still used by the `firewall` resource until the `firewall` resource is updated. and the destruction of `azure.network.PublicIp` happens before the update of firewall by default. to destroy of `azure.network.PublicIp` will cause the error. The workaround is to set `create_before_destroy=true` to the `azure.network.PublicIp` resource `lifecycle` block. See more detail: destroying.md#create-before-destroy
  ///
  /// > **Note:** The Public IP must have a `Static` allocation and `Standard` SKU.
  final pulumi.Input<String>? publicIpAddressId;
  /// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Subnet used for the Firewall must have the name `AzureFirewallSubnet` and the subnet mask must be at least a `/26`.
  ///
  /// > **Note:** At least one and only one `ip_configuration` block may contain a `subnet_id`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [FirewallIpConfiguration].
  /// [name] Specifies the name of the IP Configuration.
  /// [privateIpAddress] The private IP address associated with the Firewall.
  /// [publicIpAddressId] The ID of the Public IP Address associated with the firewall.
  /// [subnetId] Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
  FirewallIpConfiguration({
    required this.name,
    this.privateIpAddress,
    this.publicIpAddressId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': ?subnetId,
    };
  }

  factory FirewallIpConfiguration.fromMap(Map<String, dynamic> map) {
    return FirewallIpConfiguration(
      name: (map['name'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

