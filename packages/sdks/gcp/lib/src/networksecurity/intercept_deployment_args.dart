// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_deployment_intercept_deployment_args_doc}
/// The set of arguments for InterceptDeployment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_deployment_intercept_deployment_args_doc}
class InterceptDeploymentArgs {
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
  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> forwardingRule;
  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;
  /// The ID to use for the new deployment, which will become the final
  /// component of the deployment's resource name.
  final pulumi.Input<String> interceptDeploymentId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterceptDeploymentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the deployment.
  /// [forwardingRule] The regional forwarding rule that fronts the interceptors, for example:
  /// [interceptDeploymentGroup] The deployment group that this deployment is a part of, for example:
  /// [interceptDeploymentId] The ID to use for the new deployment, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment, e.g. `us-central1-a` or `asia-south1-b`.
  /// [project] The ID of the project in which the resource belongs.
  const InterceptDeploymentArgs({
    this.deletionPolicy,
    this.description,
    required this.forwardingRule,
    required this.interceptDeploymentGroup,
    required this.interceptDeploymentId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'forwardingRule': forwardingRule,
      'interceptDeploymentGroup': interceptDeploymentGroup,
      'interceptDeploymentId': interceptDeploymentId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory InterceptDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      interceptDeploymentGroup: pulumi.Input.fromValue(map['interceptDeploymentGroup'] as String),
      interceptDeploymentId: pulumi.Input.fromValue(map['interceptDeploymentId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
