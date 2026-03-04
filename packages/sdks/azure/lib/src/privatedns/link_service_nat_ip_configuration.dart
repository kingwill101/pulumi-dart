// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkServiceNatIpConfiguration {
  /// Specifies the name which should be used for the NAT IP Configuration.
  final pulumi.Input<String> name;

  /// Is this is the Primary IP Configuration?
  final pulumi.Input<bool> primary;

  /// Specifies a Private Static IP Address for this IP Configuration.
  final pulumi.Input<String>? privateIpAddress;

  /// The version of the IP Protocol which should be used. At this time the only supported value is `IPv4`. Defaults to `IPv4`.
  final pulumi.Input<String>? privateIpAddressVersion;

  /// Specifies the ID of the Subnet which should be used for the Private Link Service.
  ///
  /// &gt; **Note:** Verify that the Subnet's `enforce_private_link_service_network_policies` attribute is set to `true`.
  final pulumi.Input<String> subnetId;

  /// Creates a new [LinkServiceNatIpConfiguration].
  /// [name] Specifies the name which should be used for the NAT IP Configuration.
  /// [primary] Is this is the Primary IP Configuration?
  /// [privateIpAddress] Specifies a Private Static IP Address for this IP Configuration.
  /// [privateIpAddressVersion] The version of the IP Protocol which should be used. At this time the only supported value is `IPv4`. Defaults to `IPv4`.
  /// [subnetId] Specifies the ID of the Subnet which should be used for the Private Link Service.
  LinkServiceNatIpConfiguration({
    required this.name,
    required this.primary,
    this.privateIpAddress,
    this.privateIpAddressVersion,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddressVersion': ?privateIpAddressVersion,
      'subnetId': subnetId,
    };
  }

  factory LinkServiceNatIpConfiguration.fromMap(Map<String, dynamic> map) {
    return LinkServiceNatIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddressVersion: (() {
        final guardedValue = map['privateIpAddressVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
