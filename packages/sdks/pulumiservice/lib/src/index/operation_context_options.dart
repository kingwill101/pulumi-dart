// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OperationContextOptions {
  /// Whether the stack should be deleted after it is destroyed.
  final pulumi.Input<bool>? deleteAfterDestroy;
  /// The shell to use to run commands during the deployment. Defaults to 'bash'.
  final pulumi.Input<String>? shell;
  /// Skip the default dependency installation step - use this to customize the dependency installation (e.g. if using yarn or poetry)
  final pulumi.Input<bool>? skipInstallDependencies;
  /// Skip intermediate deployments (Consolidate multiple deployments of the same type into one deployment)
  final pulumi.Input<bool>? skipIntermediateDeployments;

  /// Creates a new [OperationContextOptions].
  /// [deleteAfterDestroy] Whether the stack should be deleted after it is destroyed.
  /// [shell] The shell to use to run commands during the deployment. Defaults to 'bash'.
  /// [skipInstallDependencies] Skip the default dependency installation step - use this to customize the dependency installation (e.g. if using yarn or poetry)
  /// [skipIntermediateDeployments] Skip intermediate deployments (Consolidate multiple deployments of the same type into one deployment)
  OperationContextOptions({
    this.deleteAfterDestroy,
    this.shell,
    this.skipInstallDependencies,
    this.skipIntermediateDeployments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAfterDestroy': ?deleteAfterDestroy,
      'shell': ?shell,
      'skipInstallDependencies': ?skipInstallDependencies,
      'skipIntermediateDeployments': ?skipIntermediateDeployments,
    };
  }

  factory OperationContextOptions.fromMap(Map<String, dynamic> map) {
    return OperationContextOptions(
      deleteAfterDestroy: map['deleteAfterDestroy'] == null ? null : (map['deleteAfterDestroy']! as bool).input(),
      shell: map['shell'] == null ? null : (map['shell']! as String).input(),
      skipInstallDependencies: map['skipInstallDependencies'] == null ? null : (map['skipInstallDependencies']! as bool).input(),
      skipIntermediateDeployments: map['skipIntermediateDeployments'] == null ? null : (map['skipIntermediateDeployments']! as bool).input(),
    );
  }
}

