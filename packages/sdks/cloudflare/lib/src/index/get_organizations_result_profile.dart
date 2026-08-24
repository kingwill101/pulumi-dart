// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsResultProfile {
  final pulumi.Input<String> businessAddress;
  final pulumi.Input<String> businessEmail;
  final pulumi.Input<String> businessName;
  final pulumi.Input<String> businessPhone;
  final pulumi.Input<String> externalMetadata;

  /// Creates a new [GetOrganizationsResultProfile].
  /// [businessAddress] Required.
  /// [businessEmail] Required.
  /// [businessName] Required.
  /// [businessPhone] Required.
  /// [externalMetadata] Required.
  const GetOrganizationsResultProfile({
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

  factory GetOrganizationsResultProfile.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsResultProfile(
      businessAddress: pulumi.Input.fromValue(map['businessAddress'] as String),
      businessEmail: pulumi.Input.fromValue(map['businessEmail'] as String),
      businessName: pulumi.Input.fromValue(map['businessName'] as String),
      businessPhone: pulumi.Input.fromValue(map['businessPhone'] as String),
      externalMetadata: pulumi.Input.fromValue(map['externalMetadata'] as String),
    );
  }
}
