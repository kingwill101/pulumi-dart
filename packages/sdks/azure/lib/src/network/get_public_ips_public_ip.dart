// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicIPsPublicIp {
  /// The Domain Name Label of the Public IP Address
  final pulumi.Input<String> domainNameLabel;
  /// The FQDN of the Public IP Address
  final pulumi.Input<String> fqdn;
  /// The ID of the Public IP Address
  final pulumi.Input<String> id;
  /// The IP address of the Public IP Address
  final pulumi.Input<String> ipAddress;
  /// The Name of the Public IP Address
  final pulumi.Input<String> name;

  /// Creates a new [GetPublicIPsPublicIp].
  /// [domainNameLabel] The Domain Name Label of the Public IP Address
  /// [fqdn] The FQDN of the Public IP Address
  /// [id] The ID of the Public IP Address
  /// [ipAddress] The IP address of the Public IP Address
  /// [name] The Name of the Public IP Address
  GetPublicIPsPublicIp({
    required this.domainNameLabel,
    required this.fqdn,
    required this.id,
    required this.ipAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'fqdn': fqdn,
      'id': id,
      'ipAddress': ipAddress,
      'name': name,
    };
  }

  factory GetPublicIPsPublicIp.fromMap(Map<String, dynamic> map) {
    return GetPublicIPsPublicIp(
      domainNameLabel: (map['domainNameLabel'] as String).input(),
      fqdn: (map['fqdn'] as String).input(),
      id: (map['id'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

