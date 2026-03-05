// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityConfigSubjectConfigSubject {
  /// The common name of the distinguished name.
  final pulumi.Input<String> commonName;
  /// The country code of the subject.
  final pulumi.Input<String> countryCode;
  /// The locality or city of the subject.
  final pulumi.Input<String> locality;
  /// The organization of the subject.
  final pulumi.Input<String> organization;
  /// The organizational unit of the subject.
  final pulumi.Input<String> organizationalUnit;
  /// The postal code of the subject.
  final pulumi.Input<String> postalCode;
  /// The province, territory, or regional state of the subject.
  final pulumi.Input<String> province;
  /// The street address of the subject.
  final pulumi.Input<String> streetAddress;

  /// Creates a new [GetAuthorityConfigSubjectConfigSubject].
  /// [commonName] The common name of the distinguished name.
  /// [countryCode] The country code of the subject.
  /// [locality] The locality or city of the subject.
  /// [organization] The organization of the subject.
  /// [organizationalUnit] The organizational unit of the subject.
  /// [postalCode] The postal code of the subject.
  /// [province] The province, territory, or regional state of the subject.
  /// [streetAddress] The street address of the subject.
  GetAuthorityConfigSubjectConfigSubject({
    required this.commonName,
    required this.countryCode,
    required this.locality,
    required this.organization,
    required this.organizationalUnit,
    required this.postalCode,
    required this.province,
    required this.streetAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
      'countryCode': countryCode,
      'locality': locality,
      'organization': organization,
      'organizationalUnit': organizationalUnit,
      'postalCode': postalCode,
      'province': province,
      'streetAddress': streetAddress,
    };
  }

  factory GetAuthorityConfigSubjectConfigSubject.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectConfigSubject(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      locality: pulumi.Input.fromValue(map['locality'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      organizationalUnit: pulumi.Input.fromValue(map['organizationalUnit'] as String),
      postalCode: pulumi.Input.fromValue(map['postalCode'] as String),
      province: pulumi.Input.fromValue(map['province'] as String),
      streetAddress: pulumi.Input.fromValue(map['streetAddress'] as String),
    );
  }
}

