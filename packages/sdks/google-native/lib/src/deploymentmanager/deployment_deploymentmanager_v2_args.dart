// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_label_entry_deploymentmanager_v2.dart';
import 'target_configuration_deploymentmanager_v2.dart';

/// {@template pulumi_deploymentmanager_v2_deployment_deploymentmanager_v2_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_v2_deployment_deploymentmanager_v2_args_doc}
class DeploymentDeploymentmanagerV2Args {
  /// Sets the policy to use for creating new resources.
  final pulumi.Input<String>? createPolicy;
  /// An optional user-provided description of the deployment.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? id;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<DeploymentLabelEntryDeploymentmanagerV2>>? labels;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// If set to true, creates a deployment and creates "shell" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the `update()` method or you can use the `cancelPreview()` method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
  final pulumi.Input<bool>? preview;
  final pulumi.Input<String>? project;
  /// [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
  final pulumi.Input<TargetConfigurationDeploymentmanagerV2>? target;

  /// Creates a new [DeploymentDeploymentmanagerV2Args].
  /// [createPolicy] Sets the policy to use for creating new resources.
  /// [description] An optional user-provided description of the deployment.
  /// [id] Optional.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [preview] If set to true, creates a deployment and creates "shell" resources but does not actually instantiate these resources. This allows you to preview what your deployment looks like. After previewing a deployment, you can deploy your resources by making a request with the `update()` method or you can use the `cancelPreview()` method to cancel the preview altogether. Note that the deployment will still exist after you cancel the preview and you must separately delete this deployment if you want to remove it.
  /// [project] Optional.
  /// [target] [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
  DeploymentDeploymentmanagerV2Args({
    this.createPolicy,
    this.description,
    this.id,
    this.labels,
    this.name,
    this.preview,
    this.project,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createPolicy': ?createPolicy,
      'description': ?description,
      'id': ?id,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLabelEntryDeploymentmanagerV2>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<DeploymentLabelEntryDeploymentmanagerV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'preview': ?preview,
      'project': ?project,
      'target': ?pulumi.Input.mapOptionalInputValue<TargetConfigurationDeploymentmanagerV2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DeploymentDeploymentmanagerV2Args.fromMap(Map<String, dynamic> map) {
    return DeploymentDeploymentmanagerV2Args(
      createPolicy: map['createPolicy'] == null ? null : (map['createPolicy']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<DeploymentLabelEntryDeploymentmanagerV2>(map['labels']!, (value) => DeploymentLabelEntryDeploymentmanagerV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      preview: map['preview'] == null ? null : (map['preview']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      target: map['target'] == null ? null : (TargetConfigurationDeploymentmanagerV2.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

