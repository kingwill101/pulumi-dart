// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreReleaseAccessRequestSpec {
  final pulumi.Input<String>? city;
  final pulumi.Input<String>? companyWebsite;
  final pulumi.Input<String>? countryAndRegion;
  final pulumi.Input<String>? email;
  final pulumi.Input<List<String>>? engagements;
  final pulumi.Input<String>? organizationName;
  final pulumi.Input<String>? stateOrProvince;
  final pulumi.Input<String>? streetAddress;
  final pulumi.Input<String>? zipCode;

  /// Creates a new [PreReleaseAccessRequestSpec].
  /// [city] Optional.
  /// [companyWebsite] Optional.
  /// [countryAndRegion] Optional.
  /// [email] Optional.
  /// [engagements] Optional.
  /// [organizationName] Optional.
  /// [stateOrProvince] Optional.
  /// [streetAddress] Optional.
  /// [zipCode] Optional.
  PreReleaseAccessRequestSpec({
    this.city,
    this.companyWebsite,
    this.countryAndRegion,
    this.email,
    this.engagements,
    this.organizationName,
    this.stateOrProvince,
    this.streetAddress,
    this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'companyWebsite': ?companyWebsite,
      'countryAndRegion': ?countryAndRegion,
      'email': ?email,
      'engagements': ?engagements,
      'organizationName': ?organizationName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress': ?streetAddress,
      'zipCode': ?zipCode,
    };
  }

  factory PreReleaseAccessRequestSpec.fromMap(Map<String, dynamic> map) {
    return PreReleaseAccessRequestSpec(
      city: map['city'] == null ? null : (map['city'] as String).input(),
      companyWebsite: map['companyWebsite'] == null ? null : (map['companyWebsite'] as String).input(),
      countryAndRegion: map['countryAndRegion'] == null ? null : (map['countryAndRegion'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      engagements: map['engagements'] == null ? null : ((map['engagements'] as List).cast<String>()).input(),
      organizationName: map['organizationName'] == null ? null : (map['organizationName'] as String).input(),
      stateOrProvince: map['stateOrProvince'] == null ? null : (map['stateOrProvince'] as String).input(),
      streetAddress: map['streetAddress'] == null ? null : (map['streetAddress'] as String).input(),
      zipCode: map['zipCode'] == null ? null : (map['zipCode'] as String).input(),
    );
  }
}

