// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_profile_organization_profile_args_doc}
/// The set of arguments for OrganizationProfile.
/// {@endtemplate}
/// {@macro pulumi_index_organization_profile_organization_profile_args_doc}
class OrganizationProfileArgs {
  final pulumi.Input<String?>? businessAddress;
  final pulumi.Input<String?>? businessEmail;
  final pulumi.Input<String?>? businessName;
  final pulumi.Input<String?>? businessPhone;
  final pulumi.Input<String?>? externalMetadata;
  final pulumi.Input<String> organizationId;

  /// Creates a new [OrganizationProfileArgs].
  /// [businessAddress] Optional.
  /// [businessEmail] Optional.
  /// [businessName] Optional.
  /// [businessPhone] Optional.
  /// [externalMetadata] Optional.
  /// [organizationId] Required.
  const OrganizationProfileArgs({
    this.businessAddress,
    this.businessEmail,
    this.businessName,
    this.businessPhone,
    this.externalMetadata,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessAddress': ?businessAddress,
      'businessEmail': ?businessEmail,
      'businessName': ?businessName,
      'businessPhone': ?businessPhone,
      'externalMetadata': ?externalMetadata,
      'organizationId': organizationId,
    };
  }

  factory OrganizationProfileArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationProfileArgs(
      businessAddress: (() { final guardedValue = map['businessAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessEmail: (() { final guardedValue = map['businessEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessName: (() { final guardedValue = map['businessName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessPhone: (() { final guardedValue = map['businessPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalMetadata: (() { final guardedValue = map['externalMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
