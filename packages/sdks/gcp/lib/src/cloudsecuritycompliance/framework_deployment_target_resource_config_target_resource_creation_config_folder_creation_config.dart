// ignore_for_file: unused_element, unnecessary_cast


class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig {
  /// Display name of the folder to be created
  final String folderDisplayName;
  /// The parent of the folder to be created. It can be an organizations/{org} or
  /// folders/{folder}
  final String parent;

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
      folderDisplayName: map['folderDisplayName'] as String,
      parent: map['parent'] as String,
    );
  }
}

