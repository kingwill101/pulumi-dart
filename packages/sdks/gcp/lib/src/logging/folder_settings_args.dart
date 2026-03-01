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
    pulumi.Output<bool>? disableDefaultSink,
    required pulumi.Output<String> folder,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? storageLocation,
  }) :
      disableDefaultSink = pulumi.Input.asOptionalInput<bool>(disableDefaultSink),
      folder = pulumi.Input.asInput<String>(folder),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      storageLocation = pulumi.Input.asOptionalInput<String>(storageLocation);

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
      disableDefaultSink: map['disableDefaultSink'] == null ? null : pulumi.Output.create<bool>(map['disableDefaultSink'] as bool),
      folder: pulumi.Output.create<String>(map['folder'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<String>(map['storageLocation'] as String),
    );
  }
}

