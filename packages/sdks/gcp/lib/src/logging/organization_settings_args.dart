// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_organization_settings_organization_settings_args_doc}
/// The set of arguments for OrganizationSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_organization_settings_organization_settings_args_doc}
class OrganizationSettingsArgs {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final pulumi.Input<bool>? disableDefaultSink;
  /// The resource name for the configured Cloud KMS key.
  final pulumi.Input<String>? kmsKeyName;
  /// The organization for which to retrieve or configure settings.
  final pulumi.Input<String> organization;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final pulumi.Input<String>? storageLocation;

  /// Creates a new [OrganizationSettingsArgs].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [organization] The organization for which to retrieve or configure settings.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  OrganizationSettingsArgs({
    this.disableDefaultSink,
    this.kmsKeyName,
    required this.organization,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultSink': ?disableDefaultSink,
      'kmsKeyName': ?kmsKeyName,
      'organization': organization,
      'storageLocation': ?storageLocation,
    };
  }

  factory OrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSettingsArgs(
      disableDefaultSink: (() { final guardedValue = map['disableDefaultSink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

