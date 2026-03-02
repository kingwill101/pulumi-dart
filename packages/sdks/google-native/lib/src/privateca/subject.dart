// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subject describes parts of a distinguished name that, in turn, describes the subject of the certificate.
class Subject {
  /// The "common name" of the subject.
  final pulumi.Input<String>? commonName;
  /// The country code of the subject.
  final pulumi.Input<String>? countryCode;
  /// The locality or city of the subject.
  final pulumi.Input<String>? locality;
  /// The organization of the subject.
  final pulumi.Input<String>? organization;
  /// The organizational_unit of the subject.
  final pulumi.Input<String>? organizationalUnit;
  /// The postal code of the subject.
  final pulumi.Input<String>? postalCode;
  /// The province, territory, or regional state of the subject.
  final pulumi.Input<String>? province;
  /// The street address of the subject.
  final pulumi.Input<String>? streetAddress;

  /// Creates a new [Subject].
  /// [commonName] The "common name" of the subject.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational_unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  Subject({
    this.commonName,
    this.countryCode,
    this.locality,
    this.organization,
    this.organizationalUnit,
    this.postalCode,
    this.province,
    this.streetAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': ?commonName,
      'countryCode': ?countryCode,
      'locality': ?locality,
      'organization': ?organization,
      'organizationalUnit': ?organizationalUnit,
      'postalCode': ?postalCode,
      'province': ?province,
      'streetAddress': ?streetAddress,
    };
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      commonName: map['commonName'] == null ? null : (map['commonName']! as String).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode']! as String).input(),
      locality: map['locality'] == null ? null : (map['locality']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      organizationalUnit: map['organizationalUnit'] == null ? null : (map['organizationalUnit']! as String).input(),
      postalCode: map['postalCode'] == null ? null : (map['postalCode']! as String).input(),
      province: map['province'] == null ? null : (map['province']! as String).input(),
      streetAddress: map['streetAddress'] == null ? null : (map['streetAddress']! as String).input(),
    );
  }
}

