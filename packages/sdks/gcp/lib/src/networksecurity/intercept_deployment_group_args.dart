// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_deployment_group_intercept_deployment_group_args_doc}
/// The set of arguments for InterceptDeploymentGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_deployment_group_intercept_deployment_group_args_doc}
class InterceptDeploymentGroupArgs {
  /// User-provided description of the deployment group.
  /// Used as additional context for the deployment group.
  final pulumi.Input<String>? description;
  /// The ID to use for the new deployment group, which will become the final
  /// component of the deployment group's resource name.
  final pulumi.Input<String> interceptDeploymentGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  /// [description] User-provided description of the deployment group.
  /// [interceptDeploymentGroupId] The ID to use for the new deployment group, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [network] The network that will be used for all child deployments, for example:
  /// [project] The ID of the project in which the resource belongs.
  InterceptDeploymentGroupArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> interceptDeploymentGroupId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> network,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      interceptDeploymentGroupId = pulumi.Input.asInput<String>(interceptDeploymentGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      interceptDeploymentGroupId: pulumi.Output.create<String>(map['interceptDeploymentGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

