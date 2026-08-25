// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_intercept_endpoint_group_intercept_endpoint_group_args_doc}
/// The set of arguments for InterceptEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_intercept_endpoint_group_intercept_endpoint_group_args_doc}
class InterceptEndpointGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description of the endpoint group.
  /// Used as additional context for the endpoint group.
  final pulumi.Input<String?>? description;
  /// The deployment group that this endpoint group is connected to, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String> interceptDeploymentGroup;
  /// The ID to use for the endpoint group, which will become the final component
  /// of the endpoint group's resource name.
  final pulumi.Input<String> interceptEndpointGroupId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The cloud location of the endpoint group, currently restricted to `global`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [InterceptEndpointGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the endpoint group.
  /// [interceptDeploymentGroup] The deployment group that this endpoint group is connected to, for example:
  /// [interceptEndpointGroupId] The ID to use for the endpoint group, which will become the final component
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint group, currently restricted to `global`.
  /// [project] The ID of the project in which the resource belongs.
  const InterceptEndpointGroupArgs({
    this.deletionPolicy,
    this.description,
    required this.interceptDeploymentGroup,
    required this.interceptEndpointGroupId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interceptDeploymentGroup: pulumi.Input.fromValue(map['interceptDeploymentGroup'] as String),
      interceptEndpointGroupId: pulumi.Input.fromValue(map['interceptEndpointGroupId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
