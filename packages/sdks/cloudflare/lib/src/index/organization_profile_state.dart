// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationProfile resources.
class OrganizationProfileState {
  final pulumi.Input<String?>? businessAddress;
  final pulumi.Input<String?>? businessEmail;
  final pulumi.Input<String?>? businessName;
  final pulumi.Input<String?>? businessPhone;
  final pulumi.Input<String?>? externalMetadata;
  final pulumi.Input<String?>? organizationId;

  /// Creates a new [OrganizationProfileState].
  /// [businessAddress] Optional.
  /// [businessEmail] Optional.
  /// [businessName] Optional.
  /// [businessPhone] Optional.
  /// [externalMetadata] Optional.
  /// [organizationId] Optional.
  const OrganizationProfileState({
    this.businessAddress,
    this.businessEmail,
    this.businessName,
    this.businessPhone,
    this.externalMetadata,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessAddress': ?businessAddress,
      'businessEmail': ?businessEmail,
      'businessName': ?businessName,
      'businessPhone': ?businessPhone,
      'externalMetadata': ?externalMetadata,
      'organizationId': ?organizationId,
    };
  }

  factory OrganizationProfileState.fromMap(Map<String, dynamic> map) {
    return OrganizationProfileState(
      businessAddress: (() { final guardedValue = map['businessAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessEmail: (() { final guardedValue = map['businessEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessName: (() { final guardedValue = map['businessName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessPhone: (() { final guardedValue = map['businessPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalMetadata: (() { final guardedValue = map['externalMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
