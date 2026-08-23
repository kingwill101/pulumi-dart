// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_deployment_group_intercept_deployment_group_args_doc}
/// The set of arguments for InterceptDeploymentGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_deployment_group_intercept_deployment_group_args_doc}
class InterceptDeploymentGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;
  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String> interceptDeploymentGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterceptDeploymentGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the deployment group.
  /// [interceptDeploymentGroupId] The ID to use for the new deployment group, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [network] The network that will be used for all child deployments, for example:
  /// [project] The ID of the project in which the resource belongs.
  const InterceptDeploymentGroupArgs({
    this.deletionPolicy,
    this.description,
    required this.interceptDeploymentGroupId,
    this.labels,
    required this.location,
    required this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'interceptDeploymentGroupId': interceptDeploymentGroupId,
      'labels': ?labels,
      'location': location,
      'network': network,
      'project': ?project,
    };
  }

  factory InterceptDeploymentGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentGroupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interceptDeploymentGroupId: pulumi.Input.fromValue(map['interceptDeploymentGroupId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
