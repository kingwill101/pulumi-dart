// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FolderSettings resources.
class FolderSettingsState {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String>? defaultStorageLocation;
  /// The folder ID.
  final pulumi.Input<String>? folder;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String>? location;
  /// The resource name of the settings.
  final pulumi.Input<String>? name;
  /// The service account used by Cloud Observability for this folder.
  final pulumi.Input<String>? serviceAccountId;

  /// Creates a new [FolderSettingsState].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [folder] The folder ID.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  /// [name] The resource name of the settings.
  /// [serviceAccountId] The service account used by Cloud Observability for this folder.
  const FolderSettingsState({
    this.defaultStorageLocation,
    this.folder,
    this.kmsKeyName,
    this.location,
    this.name,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'folder': ?folder,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory FolderSettingsState.fromMap(Map<String, dynamic> map) {
    return FolderSettingsState(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
