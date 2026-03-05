// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_folder_custom_module_folder_custom_module_args_doc}
/// The set of arguments for FolderCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_folder_custom_module_folder_custom_module_args_doc}
class FolderCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<FolderCustomModuleCustomConfig> customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String> displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;

  /// Creates a new [FolderCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [folder] Numerical ID of the parent folder.
  FolderCustomModuleArgs({
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': pulumi.Input.mapInputValue<FolderCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': displayName,
      'enablementState': enablementState,
      'folder': folder,
    };
  }

  factory FolderCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleArgs(
      customConfig: pulumi.Input.fromValue(FolderCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enablementState: pulumi.Input.fromValue(map['enablementState'] as String),
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}

