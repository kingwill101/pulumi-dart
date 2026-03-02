// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the Application that would use the Operator's Network APIs.
class ApplicationPropertiesResponse {
  /// Description of the application.
  final pulumi.Input<String>? applicationDescription;
  /// The category that describes the application.
  final pulumi.Input<String>? applicationType;
  /// Legal name of the organization owning the application.
  final pulumi.Input<String>? legalName;
  /// Name of the application.
  final pulumi.Input<String>? name;
  /// A description of the organization owning the application.
  final pulumi.Input<String>? organizationDescription;
  /// Email address of the Privacy contact or Data Protection officer of the organization.
  final pulumi.Input<String>? privacyContactEmailAddress;
  /// Unique Tax Number for the user's organization in the country/region the APC Gateway is being purchased.
  final pulumi.Input<String>? taxNumber;

  /// Creates a new [ApplicationPropertiesResponse].
  /// [applicationDescription] Description of the application.
  /// [applicationType] The category that describes the application.
  /// [legalName] Legal name of the organization owning the application.
  /// [name] Name of the application.
  /// [organizationDescription] A description of the organization owning the application.
  /// [privacyContactEmailAddress] Email address of the Privacy contact or Data Protection officer of the organization.
  /// [taxNumber] Unique Tax Number for the user's organization in the country/region the APC Gateway is being purchased.
  ApplicationPropertiesResponse({
    this.applicationDescription,
    this.applicationType,
    this.legalName,
    this.name,
    this.organizationDescription,
    this.privacyContactEmailAddress,
    this.taxNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDescription': ?applicationDescription,
      'applicationType': ?applicationType,
      'legalName': ?legalName,
      'name': ?name,
      'organizationDescription': ?organizationDescription,
      'privacyContactEmailAddress': ?privacyContactEmailAddress,
      'taxNumber': ?taxNumber,
    };
  }

  factory ApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPropertiesResponse(
      applicationDescription: map['applicationDescription'] == null ? null : (map['applicationDescription']! as String).input(),
      applicationType: map['applicationType'] == null ? null : (map['applicationType']! as String).input(),
      legalName: map['legalName'] == null ? null : (map['legalName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organizationDescription: map['organizationDescription'] == null ? null : (map['organizationDescription']! as String).input(),
      privacyContactEmailAddress: map['privacyContactEmailAddress'] == null ? null : (map['privacyContactEmailAddress']! as String).input(),
      taxNumber: map['taxNumber'] == null ? null : (map['taxNumber']! as String).input(),
    );
  }
}

