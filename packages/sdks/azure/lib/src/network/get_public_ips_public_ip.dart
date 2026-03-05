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
      domainNameLabel: pulumi.Input.fromValue(map['domainNameLabel'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

