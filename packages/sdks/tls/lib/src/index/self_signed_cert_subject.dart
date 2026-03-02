// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SelfSignedCertSubject {
  /// Distinguished name: `CN`
  final pulumi.Input<String>? commonName;
  /// Distinguished name: `C`
  final pulumi.Input<String>? country;
  /// ASN.1 Object Identifier (OID): `1.2.840.113549.1.9.1`
  final pulumi.Input<String>? emailAddress;
  /// Distinguished name: `L`
  final pulumi.Input<String>? locality;
  /// Distinguished name: `O`
  final pulumi.Input<String>? organization;
  /// Distinguished name: `OU`
  final pulumi.Input<String>? organizationalUnit;
  /// Distinguished name: `PC`
  final pulumi.Input<String>? postalCode;
  /// Distinguished name: `ST`
  final pulumi.Input<String>? province;
  /// Distinguished name: `SERIALNUMBER`
  final pulumi.Input<String>? serialNumber;
  /// Distinguished name: `STREET`
  final pulumi.Input<List<String>>? streetAddresses;

  /// Creates a new [SelfSignedCertSubject].
  /// [commonName] Distinguished name: `CN`
  /// [country] Distinguished name: `C`
  /// [emailAddress] ASN.1 Object Identifier (OID): `1.2.840.113549.1.9.1`
  /// [locality] Distinguished name: `L`
  /// [organization] Distinguished name: `O`
  /// [organizationalUnit] Distinguished name: `OU`
  /// [postalCode] Distinguished name: `PC`
  /// [province] Distinguished name: `ST`
  /// [serialNumber] Distinguished name: `SERIALNUMBER`
  /// [streetAddresses] Distinguished name: `STREET`
  SelfSignedCertSubject({
    this.commonName,
    this.country,
    this.emailAddress,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.serialNumber,
    this.streetAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'country': ?country,
      'emailAddress': ?emailAddress,
      'locality': ?locality,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'postalCode': ?postalCode,
      'province': ?province,
      'serialNumber': ?serialNumber,
      'streetAddresses': ?streetAddresses,
    };
  }

  factory SelfSignedCertSubject.fromMap(Map<String, dynamic> map) {
    return SelfSignedCertSubject(
      commonName: map['commonName'] == null ? null : (map['commonName'] as String).input(),
      country: map['country'] == null ? null : (map['country'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      locality: map['locality'] == null ? null : (map['locality'] as String).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      organizationalUnit: map['organizationalUnit'] == null ? null : (map['organizationalUnit'] as String).input(),
      postalCode: map['postalCode'] == null ? null : (map['postalCode'] as String).input(),
      province: map['province'] == null ? null : (map['province'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      streetAddresses: map['streetAddresses'] == null ? null : ((map['streetAddresses'] as List).cast<String>()).input(),
    );
  }
}

