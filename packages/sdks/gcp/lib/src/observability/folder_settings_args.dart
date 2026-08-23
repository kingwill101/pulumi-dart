// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_folder_settings_folder_settings_args_doc}
/// The set of arguments for FolderSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_folder_settings_folder_settings_args_doc}
class FolderSettingsArgs {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  final pulumi.Input<String>? defaultStorageLocation;
  /// The folder ID.
  final pulumi.Input<String> folder;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  final pulumi.Input<String>? kmsKeyName;
  /// The location of the settings.
  final pulumi.Input<String> location;

  /// Creates a new [FolderSettingsArgs].
  /// [defaultStorageLocation] The default storage location for new resources, e.g. buckets. Only valid for global location.
  /// [folder] The folder ID.
  /// [kmsKeyName] The default Cloud KMS key to use for new resources. Only valid for regional locations.
  /// [location] The location of the settings.
  const FolderSettingsArgs({
    this.defaultStorageLocation,
    required this.folder,
    this.kmsKeyName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultStorageLocation': ?defaultStorageLocation,
      'folder': folder,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
    };
  }

  factory FolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return FolderSettingsArgs(
      defaultStorageLocation: (() { final guardedValue = map['defaultStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
