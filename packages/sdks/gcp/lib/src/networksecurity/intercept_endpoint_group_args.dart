// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_endpoint_group_intercept_endpoint_group_args_doc}
/// The set of arguments for InterceptEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_endpoint_group_intercept_endpoint_group_args_doc}
class InterceptEndpointGroupArgs {
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String>? description;
  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String> interceptEndpointGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterceptEndpointGroupArgs].
  /// [description] User-provided description of the endpoint group.
  /// [interceptDeploymentGroup] The deployment group that this endpoint group is connected to, for example:
  /// [interceptEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [project] The ID of the project in which the resource belongs.
  InterceptEndpointGroupArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> interceptDeploymentGroup,
    required pulumi.Output<String> interceptEndpointGroupId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      interceptDeploymentGroup = pulumi.Input.asInput<String>(interceptDeploymentGroup),
      interceptEndpointGroupId = pulumi.Input.asInput<String>(interceptEndpointGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'interceptDeploymentGroup': interceptDeploymentGroup,
      'interceptEndpointGroupId': interceptEndpointGroupId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory InterceptEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      interceptDeploymentGroup: pulumi.Output.create<String>(map['interceptDeploymentGroup'] as String),
      interceptEndpointGroupId: pulumi.Output.create<String>(map['interceptEndpointGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

