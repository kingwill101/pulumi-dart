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
    this.description,
    required this.interceptDeploymentGroup,
    required this.interceptEndpointGroupId,
    this.labels,
    required this.location,
    this.project,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interceptDeploymentGroup: pulumi.Input.fromValue(
        map['interceptDeploymentGroup'] as String,
      ),
      interceptEndpointGroupId: pulumi.Input.fromValue(
        map['interceptEndpointGroupId'] as String,
      ),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
