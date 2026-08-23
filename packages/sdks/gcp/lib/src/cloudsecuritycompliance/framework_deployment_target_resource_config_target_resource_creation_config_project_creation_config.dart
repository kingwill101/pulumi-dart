// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig {
  /// Billing account id to be used for the project.
  final pulumi.Input<String> billingAccountId;
  /// organizations/{org} or folders/{folder}
  final pulumi.Input<String> parent;
  /// Display name of the project to be created.
  final pulumi.Input<String> projectDisplayName;

  /// Creates a new [FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig].
  /// [billingAccountId] Billing account id to be used for the project.
  /// [parent] organizations/{org} or folders/{folder}
  /// [projectDisplayName] Display name of the project to be created.
  const FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig({
    required this.billingAccountId,
    required this.parent,
    required this.projectDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'parent': parent,
      'projectDisplayName': projectDisplayName,
    };
  }

  factory FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentTargetResourceConfigTargetResourceCreationConfigProjectCreationConfig(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      projectDisplayName: pulumi.Input.fromValue(map['projectDisplayName'] as String),
    );
  }
}
