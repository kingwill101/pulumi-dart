// ignore_for_file: unused_element, unnecessary_cast


class LinkServiceNatIpConfiguration {
  /// Specifies the name which should be used for the NAT IP Configuration.
  final String name;
  /// Is this is the Primary IP Configuration?
  final bool primary;
  /// Specifies a Private Static IP Address for this IP Configuration.
  final String? privateIpAddress;
  /// The version of the IP Protocol which should be used. At this time the only supported value is `IPv4`. Defaults to `IPv4`.
  final String? privateIpAddressVersion;
  /// Specifies the ID of the Subnet which should be used for the Private Link Service.
  ///
  /// > **Note:** Verify that the Subnet's `enforce_private_link_service_network_policies` attribute is set to `true`.
  final String subnetId;

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
      name: map['name'] as String,
      primary: map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAddressVersion: map['privateIpAddressVersion'] == null ? null : map['privateIpAddressVersion'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

