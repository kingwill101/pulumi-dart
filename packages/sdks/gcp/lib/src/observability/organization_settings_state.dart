// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationSettings resources.
class OrganizationSettingsState {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String>? defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String>? location;
  /// The resource name of the settings.
  final pulumi.Input<String>? name;
  /// The organization ID.
  final pulumi.Input<String>? organization;
  /// The service account used by Cloud Observability for this organization.
  final pulumi.Input<String>? serviceAccountId;

  /// Creates a new [OrganizationSettingsState].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  /// [name] The resource name of the settings.
  /// [organization] The organization ID.
  /// [serviceAccountId] The service account used by Cloud Observability for this organization.
  const OrganizationSettingsState({
    this.defaultStorageLocation,
    this.kmsKeyName,
    this.location,
    this.name,
    this.organization,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory OrganizationSettingsState.fromMap(Map<String, dynamic> map) {
    return OrganizationSettingsState(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
