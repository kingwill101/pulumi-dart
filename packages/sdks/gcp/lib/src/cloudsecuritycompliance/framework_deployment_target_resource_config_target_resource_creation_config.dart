// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_target_resource_config_target_resource_creation_config_folder_creation_config.dart';
import 'framework_deployment_target_resource_config_target_resource_creation_config_project_creation_config.dart';

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig {
  /// FolderCreationConfig contains the config to create a new folder to be used
  /// as the targetResource of a deployment.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig?>? folderCreationConfig;
  /// ProjectCreationConfig contains the config to create a new project to be used
  /// as the targetResource of a deployment.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig?>? projectCreationConfig;

  /// Creates a new [FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig].
  /// [folderCreationConfig] FolderCreationConfig contains the config to create a new folder to be used
  /// [projectCreationConfig] ProjectCreationConfig contains the config to create a new project to be used
  const FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig({
    this.folderCreationConfig,
    this.projectCreationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderCreationConfig': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig, Map<String, dynamic>>(folderCreationConfig, (value) => value.toMap()),
      'projectCreationConfig': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig, Map<String, dynamic>>(projectCreationConfig, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfig(
      folderCreationConfig: (() { final guardedValue = map['folderCreationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigFolderCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectCreationConfig: (() { final guardedValue = map['projectCreationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
