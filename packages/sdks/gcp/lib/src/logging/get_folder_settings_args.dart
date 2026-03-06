// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_folder_settings_get_folder_settings_args_doc}
/// Arguments for getFolderSettings.
/// {@endtemplate}
/// {@macro pulumi_logging_get_folder_settings_get_folder_settings_args_doc}
class GetFolderSettingsArgs {
  /// The ID of the folder for which to retrieve settings.
  final pulumi.Input<String> folder;

  /// Creates a new [GetFolderSettingsArgs].
  /// [folder] The ID of the folder for which to retrieve settings.
  const GetFolderSettingsArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
    };
  }

  factory GetFolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsArgs(
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}

