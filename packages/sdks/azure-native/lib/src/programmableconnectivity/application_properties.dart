// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the Application that would use the Operator's Network APIs.
class ApplicationProperties {
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

  /// Creates a new [ApplicationProperties].
  /// [applicationDescription] Description of the application.
  /// [applicationType] The category that describes the application.
  /// [legalName] Legal name of the organization owning the application.
  /// [name] Name of the application.
  /// [organizationDescription] A description of the organization owning the application.
  /// [privacyContactEmailAddress] Email address of the Privacy contact or Data Protection officer of the organization.
  /// [taxNumber] Unique Tax Number for the user's organization in the country/region the APC Gateway is being purchased.
  ApplicationProperties({
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

  factory ApplicationProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationProperties(
      applicationDescription: (() { final guardedValue = map['applicationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legalName: (() { final guardedValue = map['legalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationDescription: (() { final guardedValue = map['organizationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privacyContactEmailAddress: (() { final guardedValue = map['privacyContactEmailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxNumber: (() { final guardedValue = map['taxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

