// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig {
  /// Display name of the folder to be created
  final pulumi.Input<String> folderDisplayName;
  /// The parent of the folder to be created. It can be an organizations/{org} or
  /// folders/{folder}
  final pulumi.Input<String> parent;

  /// Creates a new [FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig].
  /// [folderDisplayName] Display name of the folder to be created
  /// [parent] The parent of the folder to be created. It can be an organizations/{org} or
  FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig({
    required this.folderDisplayName,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderDisplayName': folderDisplayName,
      'parent': parent,
    };
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig(
      folderDisplayName: pulumi.Input.fromValue(map['folderDisplayName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

