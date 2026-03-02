// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_folder_settings_folder_settings_args_doc}
/// The set of arguments for FolderSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_folder_settings_folder_settings_args_doc}
class FolderSettingsArgs {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final pulumi.Input<bool>? disableDefaultSink;
  /// The folder for which to retrieve settings.
  final pulumi.Input<String> folder;
  /// The resource name for the configured Cloud KMS key.
  final pulumi.Input<String>? kmsKeyName;
  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final pulumi.Input<String>? storageLocation;

  /// Creates a new [FolderSettingsArgs].
  /// [disableDefaultSink] If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  /// [folder] The folder for which to retrieve settings.
  /// [kmsKeyName] The resource name for the configured Cloud KMS key.
  /// [storageLocation] The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  FolderSettingsArgs({
    this.disableDefaultSink,
    required this.folder,
    this.kmsKeyName,
    this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultSink': ?disableDefaultSink,
      'folder': folder,
      'kmsKeyName': ?kmsKeyName,
      'storageLocation': ?storageLocation,
    };
  }

  factory FolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return FolderSettingsArgs(
      disableDefaultSink: map['disableDefaultSink'] == null ? null : (map['disableDefaultSink']! as bool).input(),
      folder: (map['folder'] as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      storageLocation: map['storageLocation'] == null ? null : (map['storageLocation']! as String).input(),
    );
  }
}

