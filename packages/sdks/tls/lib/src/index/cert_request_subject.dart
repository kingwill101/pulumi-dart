// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertRequestSubject {
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

  /// Creates a new [CertRequestSubject].
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
  const CertRequestSubject({
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

  factory CertRequestSubject.fromMap(Map<String, dynamic> map) {
    return CertRequestSubject(
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      province: (() { final guardedValue = map['province']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddresses: (() { final guardedValue = map['streetAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
