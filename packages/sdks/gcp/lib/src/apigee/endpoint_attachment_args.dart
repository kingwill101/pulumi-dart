// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID of the endpoint attachment.
  final pulumi.Input<String> endpointAttachmentId;
  /// The location of the endpoint attachment.
  final pulumi.Input<String> location;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// The resource URL of the service attachment in the format:
  /// `projects/*/regions/*/serviceAttachments/*`.
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [EndpointAttachmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [endpointAttachmentId] ID of the endpoint attachment.
  /// [location] The location of the endpoint attachment.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [serviceAttachment] The resource URL of the service attachment in the format:
  const EndpointAttachmentArgs({
    this.deletionPolicy,
    required this.endpointAttachmentId,
    required this.location,
    required this.orgId,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'endpointAttachmentId': endpointAttachmentId,
      'location': location,
      'orgId': orgId,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointAttachmentId: pulumi.Input.fromValue(map['endpointAttachmentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}
