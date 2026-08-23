// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_deployment_mirroring_deployment_args_doc}
/// The set of arguments for MirroringDeployment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_deployment_mirroring_deployment_args_doc}
class MirroringDeploymentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description of the deployment.
  /// Used as additional context for the deployment.
  final pulumi.Input<String>? description;
  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> forwardingRule;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;
  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> mirroringDeploymentGroup;
  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final pulumi.Input<String> mirroringDeploymentId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MirroringDeploymentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the deployment.
  /// [forwardingRule] The regional forwarding rule that fronts the mirroring collectors, for
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  /// [mirroringDeploymentGroup] The deployment group that this deployment is a part of, for example:
  /// [mirroringDeploymentId] The ID to use for the new deployment, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  const MirroringDeploymentArgs({
    this.deletionPolicy,
    this.description,
    required this.forwardingRule,
    this.labels,
    required this.location,
    required this.mirroringDeploymentGroup,
    required this.mirroringDeploymentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'forwardingRule': forwardingRule,
      'labels': ?labels,
      'location': location,
      'mirroringDeploymentGroup': mirroringDeploymentGroup,
      'mirroringDeploymentId': mirroringDeploymentId,
      'project': ?project,
    };
  }

  factory MirroringDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mirroringDeploymentGroup: pulumi.Input.fromValue(map['mirroringDeploymentGroup'] as String),
      mirroringDeploymentId: pulumi.Input.fromValue(map['mirroringDeploymentId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
