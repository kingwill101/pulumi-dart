// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectSettings resources.
class ProjectSettingsState {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String?>? defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String?>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String?>? location;
  /// The resource name of the settings.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The service account used by Cloud Observability for this project.
  final pulumi.Input<String?>? serviceAccountId;

  /// Creates a new [ProjectSettingsState].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  /// [name] The resource name of the settings.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccountId] The service account used by Cloud Observability for this project.
  const ProjectSettingsState({
    this.defaultStorageLocation,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory ProjectSettingsState.fromMap(Map<String, dynamic> map) {
    return ProjectSettingsState(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
