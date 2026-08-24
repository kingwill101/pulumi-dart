// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationProfile {
  final pulumi.Input<String> businessAddress;
  final pulumi.Input<String> businessEmail;
  final pulumi.Input<String> businessName;
  final pulumi.Input<String> businessPhone;
  final pulumi.Input<String> externalMetadata;

  /// Creates a new [OrganizationProfile].
  /// [businessAddress] Required.
  /// [businessEmail] Required.
  /// [businessName] Required.
  /// [businessPhone] Required.
  /// [externalMetadata] Required.
  const OrganizationProfile({
    required this.businessAddress,
    required this.businessEmail,
    required this.businessName,
    required this.businessPhone,
    required this.externalMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessAddress': businessAddress,
      'businessEmail': businessEmail,
      'businessName': businessName,
      'businessPhone': businessPhone,
      'externalMetadata': externalMetadata,
    };
  }

  factory OrganizationProfile.fromMap(Map<String, dynamic> map) {
    return OrganizationProfile(
      businessAddress: pulumi.Input.fromValue(map['businessAddress'] as String),
      businessEmail: pulumi.Input.fromValue(map['businessEmail'] as String),
      businessName: pulumi.Input.fromValue(map['businessName'] as String),
      businessPhone: pulumi.Input.fromValue(map['businessPhone'] as String),
      externalMetadata: pulumi.Input.fromValue(map['externalMetadata'] as String),
    );
  }
}
