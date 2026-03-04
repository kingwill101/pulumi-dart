// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionSubjectDescriptionSubject {
  /// The common name of the distinguished name.
  final pulumi.Input<String>? commonName;

  /// The country code of the subject.
  final pulumi.Input<String>? countryCode;

  /// The locality or city of the subject.
  final pulumi.Input<String>? locality;

  /// The organization of the subject.
  final pulumi.Input<String>? organization;

  /// The organizational unit of the subject.
  final pulumi.Input<String>? organizationalUnit;

  /// The postal code of the subject.
  final pulumi.Input<String>? postalCode;

  /// The province, territory, or regional state of the subject.
  final pulumi.Input<String>? province;

  /// The street address of the subject.
  final pulumi.Input<String>? streetAddress;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubject].
  /// [commonName] The common name of the distinguished name.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  CertificateCertificateDescriptionSubjectDescriptionSubject({
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

  factory CertificateCertificateDescriptionSubjectDescriptionSubject.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateCertificateDescriptionSubjectDescriptionSubject(
      commonName: (() {
        final guardedValue = map['commonName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      countryCode: (() {
        final guardedValue = map['countryCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locality: (() {
        final guardedValue = map['locality'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organization: (() {
        final guardedValue = map['organization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationalUnit: (() {
        final guardedValue = map['organizationalUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postalCode: (() {
        final guardedValue = map['postalCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      province: (() {
        final guardedValue = map['province'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streetAddress: (() {
        final guardedValue = map['streetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
