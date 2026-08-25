// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_organization_settings_organization_settings_args_doc}
/// The set of arguments for OrganizationSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_organization_settings_organization_settings_args_doc}
class OrganizationSettingsArgs {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String?>? defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String?>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String> location;
  /// The organization ID.
  final pulumi.Input<String> organization;

  /// Creates a new [OrganizationSettingsArgs].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  /// [organization] The organization ID.
  const OrganizationSettingsArgs({
    this.defaultStorageLocation,
    this.kmsKeyName,
    required this.location,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'organization': organization,
    };
  }

  factory OrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSettingsArgs(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
    );
  }
}
