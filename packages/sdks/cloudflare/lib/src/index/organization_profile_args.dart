// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_profile_organization_profile_args_doc}
/// The set of arguments for OrganizationProfile.
/// {@endtemplate}
/// {@macro pulumi_index_organization_profile_organization_profile_args_doc}
class OrganizationProfileArgs {
  final pulumi.Input<String> businessAddress;
  final pulumi.Input<String> businessEmail;
  final pulumi.Input<String> businessName;
  final pulumi.Input<String> businessPhone;
  final pulumi.Input<String> externalMetadata;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationProfileArgs].
  /// [businessAddress] Required.
  /// [businessEmail] Required.
  /// [businessName] Required.
  /// [businessPhone] Required.
  /// [externalMetadata] Required.
  /// [organizationId] Required.
  const OrganizationProfileArgs({
    required this.businessAddress,
    required this.businessEmail,
    required this.businessName,
    required this.businessPhone,
    required this.externalMetadata,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessAddress': businessAddress,
      'businessEmail': businessEmail,
      'businessName': businessName,
      'businessPhone': businessPhone,
      'externalMetadata': externalMetadata,
      'organizationId': organizationId,
    };
  }

  factory OrganizationProfileArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationProfileArgs(
      businessAddress: pulumi.Input.fromValue(map['businessAddress'] as String),
      businessEmail: pulumi.Input.fromValue(map['businessEmail'] as String),
      businessName: pulumi.Input.fromValue(map['businessName'] as String),
      businessPhone: pulumi.Input.fromValue(map['businessPhone'] as String),
      externalMetadata: pulumi.Input.fromValue(map['externalMetadata'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
