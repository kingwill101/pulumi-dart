// ignore_for_file: unused_element, unnecessary_cast


class SelfSignedCertSubject {
  /// Distinguished name: `CN`
  final String? commonName;
  /// Distinguished name: `C`
  final String? country;
  /// ASN.1 Object Identifier (OID): `1.2.840.113549.1.9.1`
  final String? emailAddress;
  /// Distinguished name: `L`
  final String? locality;
  /// Distinguished name: `O`
  final String? organization;
  /// Distinguished name: `OU`
  final String? organizationalUnit;
  /// Distinguished name: `PC`
  final String? postalCode;
  /// Distinguished name: `ST`
  final String? province;
  /// Distinguished name: `SERIALNUMBER`
  final String? serialNumber;
  /// Distinguished name: `STREET`
  final List<String>? streetAddresses;

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
      commonName: map['commonName'] == null ? null : map['commonName'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      emailAddress: map['emailAddress'] == null ? null : map['emailAddress'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      organization: map['organization'] == null ? null : map['organization'] as String,
      organizationalUnit: map['organizationalUnit'] == null ? null : map['organizationalUnit'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      province: map['province'] == null ? null : map['province'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      streetAddresses: map['streetAddresses'] == null ? null : (map['streetAddresses'] as List).cast<String>(),
    );
  }
}

