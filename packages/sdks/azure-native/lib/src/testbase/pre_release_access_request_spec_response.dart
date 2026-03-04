// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreReleaseAccessRequestSpecResponse {
  final pulumi.Input<String>? city;
  final pulumi.Input<String>? companyWebsite;
  final pulumi.Input<String>? countryAndRegion;
  final pulumi.Input<String>? email;
  final pulumi.Input<List<String>>? engagements;
  final pulumi.Input<String>? organizationName;
  final pulumi.Input<String>? stateOrProvince;
  final pulumi.Input<String>? streetAddress;
  final pulumi.Input<String>? zipCode;

  /// Creates a new [PreReleaseAccessRequestSpecResponse].
  /// [city] Optional.
  /// [companyWebsite] Optional.
  /// [countryAndRegion] Optional.
  /// [email] Optional.
  /// [engagements] Optional.
  /// [organizationName] Optional.
  /// [stateOrProvince] Optional.
  /// [streetAddress] Optional.
  /// [zipCode] Optional.
  PreReleaseAccessRequestSpecResponse({
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

  factory PreReleaseAccessRequestSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreReleaseAccessRequestSpecResponse(
      city: (() {
        final guardedValue = map['city'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      companyWebsite: (() {
        final guardedValue = map['companyWebsite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      countryAndRegion: (() {
        final guardedValue = map['countryAndRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engagements: (() {
        final guardedValue = map['engagements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      organizationName: (() {
        final guardedValue = map['organizationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateOrProvince: (() {
        final guardedValue = map['stateOrProvince'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streetAddress: (() {
        final guardedValue = map['streetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zipCode: (() {
        final guardedValue = map['zipCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
