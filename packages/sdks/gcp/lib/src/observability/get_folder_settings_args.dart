// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_get_folder_settings_get_folder_settings_args_doc}
/// Arguments for getFolderSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_get_folder_settings_get_folder_settings_args_doc}
class GetFolderSettingsArgs {
  /// The folder for which to retrieve settings.
  final pulumi.Input<String> folder;
  /// The location of the settings.
  final pulumi.Input<String> location;

  /// Creates a new [GetFolderSettingsArgs].
  /// [folder] The folder for which to retrieve settings.
  /// [location] The location of the settings.
  const GetFolderSettingsArgs({
    required this.folder,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
      'location': location,
    };
  }

  factory GetFolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsArgs(
      folder: pulumi.Input.fromValue(map['folder'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
