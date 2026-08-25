// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_mirroring_endpoint_mirroring_endpoint_args_doc}
/// The set of arguments for MirroringEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_mirroring_endpoint_mirroring_endpoint_args_doc}
class MirroringEndpointArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description of the endpoint.
  /// Used as additional context for the endpoint.
  final pulumi.Input<String?>? description;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  final pulumi.Input<String> location;
  /// The endpoint group that this endpoint belongs to.
  /// Format is:
  /// `projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroringEndpointGroup}`
  final pulumi.Input<String> mirroringEndpointGroup;
  /// The ID to use for the new endpoint, which will become the final
  /// component of the endpoint's resource name.
  final pulumi.Input<String> mirroringEndpointId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [MirroringEndpointArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the endpoint.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the endpoint, e.g. `us-central1-a` or `asia-south1-b`.
  /// [mirroringEndpointGroup] The endpoint group that this endpoint belongs to.
  /// [mirroringEndpointId] The ID to use for the new endpoint, which will become the final
  /// [project] The ID of the project in which the resource belongs.
  const MirroringEndpointArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    required this.mirroringEndpointGroup,
    required this.mirroringEndpointId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'mirroringEndpointGroup': mirroringEndpointGroup,
      'mirroringEndpointId': mirroringEndpointId,
      'project': ?project,
    };
  }

  factory MirroringEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mirroringEndpointGroup: pulumi.Input.fromValue(map['mirroringEndpointGroup'] as String),
      mirroringEndpointId: pulumi.Input.fromValue(map['mirroringEndpointId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
