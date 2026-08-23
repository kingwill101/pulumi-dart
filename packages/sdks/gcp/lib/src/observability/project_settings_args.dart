// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_project_settings_project_settings_args_doc}
/// The set of arguments for ProjectSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_project_settings_project_settings_args_doc}
class ProjectSettingsArgs {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String>? defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectSettingsArgs].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectSettingsArgs({
    this.defaultStorageLocation,
    this.kmsKeyName,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'project': ?project,
    };
  }

  factory ProjectSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ProjectSettingsArgs(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
