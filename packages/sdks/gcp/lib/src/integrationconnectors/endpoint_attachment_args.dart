// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationconnectors_endpoint_attachment_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_integrationconnectors_endpoint_attachment_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the resource.
  final pulumi.Input<String?>? description;
  /// Enable global access for endpoint attachment.
  final pulumi.Input<bool?>? endpointGlobalAccess;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location in which Endpoint Attachment needs to be created.
  final pulumi.Input<String> location;
  /// Name of Endpoint Attachment needs to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The path of the service attachment.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [EndpointAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the resource.
  /// [endpointGlobalAccess] Enable global access for endpoint attachment.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Location in which Endpoint Attachment needs to be created.
  /// [name] Name of Endpoint Attachment needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAttachment] The path of the service attachment.
  const EndpointAttachmentArgs({
    this.deletionPolicy,
    this.description,
    this.endpointGlobalAccess,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'endpointGlobalAccess': ?endpointGlobalAccess,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointGlobalAccess: (() { final guardedValue = map['endpointGlobalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
