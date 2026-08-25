// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_label.dart';
import 'deployment_target.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Set the policy to use for creating new resources. Only used on
  /// create and update. Valid values are `CREATE_OR_ACQUIRE` (default) or
  /// `ACQUIRE`. If set to `ACQUIRE` and resources do not already exist,
  /// the deployment will fail. Note that updating this field does not
  /// actually affect the deployment, just how it is updated.
  /// Default value is `CREATE_OR_ACQUIRE`.
  /// Possible values are: `ACQUIRE`, `CREATE_OR_ACQUIRE`.
  final pulumi.Input<String?>? createPolicy;
  /// Set the policy to use for deleting new resources on update/delete.
  /// Valid values are `DELETE` (default) or `ABANDON`. If `DELETE`,
  /// resource is deleted after removal from Deployment Manager. If
  /// `ABANDON`, the resource is only removed from Deployment Manager
  /// and is not actually deleted. Note that updating this field does not
  /// actually change the deployment, just how it is updated.
  /// Default value is `DELETE`.
  /// Possible values are: `ABANDON`, `DELETE`.
  final pulumi.Input<String?>? deletePolicy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Unique identifier for deployment. Output only.
  final pulumi.Input<String?>? deploymentId;
  /// Optional user-provided description of deployment.
  final pulumi.Input<String?>? description;
  /// Key-value pairs to apply to this labels.
  /// Structure is documented below.
  final pulumi.Input<List<DeploymentLabel>?>? labels;
  /// Output only. URL of the manifest representing the last manifest that
  /// was successfully deployed.
  final pulumi.Input<String?>? manifest;
  /// Unique name for the deployment
  final pulumi.Input<String?>? name;
  /// If set to true, a deployment is created with "shell" resources
  /// that are not actually instantiated. This allows you to preview a
  /// deployment. It can be updated to false to actually deploy
  /// with real resources.
  /// ~&gt;**NOTE:** Deployment Manager does not allow update
  /// of a deployment in preview (unless updating to preview=false). Thus,
  /// the provider will force-recreate deployments if either preview is updated
  /// to true or if other fields are updated while preview is true.
  final pulumi.Input<bool?>? preview;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. Server defined URL for the resource.
  final pulumi.Input<String?>? selfLink;
  /// Parameters that define your deployment, including the deployment
  /// configuration and relevant templates.
  /// Structure is documented below.
  final pulumi.Input<DeploymentTarget?>? target;

  /// Creates a new [DeploymentState].
  /// [createPolicy] Set the policy to use for creating new resources. Only used on
  /// [deletePolicy] Set the policy to use for deleting new resources on update/delete.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deploymentId] Unique identifier for deployment. Output only.
  /// [description] Optional user-provided description of deployment.
  /// [labels] Key-value pairs to apply to this labels.
  /// [manifest] Output only. URL of the manifest representing the last manifest that
  /// [name] Unique name for the deployment
  /// [preview] If set to true, a deployment is created with "shell" resources
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] Output only. Server defined URL for the resource.
  /// [target] Parameters that define your deployment, including the deployment
  const DeploymentState({
    this.createPolicy,
    this.deletePolicy,
    this.deletionPolicy,
    this.deploymentId,
    this.description,
    this.labels,
    this.manifest,
    this.name,
    this.preview,
    this.project,
    this.selfLink,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createPolicy': ?createPolicy,
      'deletePolicy': ?deletePolicy,
      'deletionPolicy': ?deletionPolicy,
      'deploymentId': ?deploymentId,
      'description': ?description,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<DeploymentLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<DeploymentLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifest': ?manifest,
      'name': ?name,
      'preview': ?preview,
      'project': ?project,
      'selfLink': ?selfLink,
      'target': ?pulumi.Input.mapOptionalInputValue<DeploymentTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      createPolicy: (() { final guardedValue = map['createPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletePolicy: (() { final guardedValue = map['deletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentLabel>(guardedValue, (value) => DeploymentLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manifest: (() { final guardedValue = map['manifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preview: (() { final guardedValue = map['preview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
