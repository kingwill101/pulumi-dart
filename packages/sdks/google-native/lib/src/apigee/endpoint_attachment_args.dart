// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
  /// ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.
  final pulumi.Input<String>? endpointAttachmentId;
  /// Location of the endpoint attachment.
  final pulumi.Input<String>? location;
  /// Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Format: projects/*/regions/*/serviceAttachments/*
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [EndpointAttachmentArgs].
  /// [endpointAttachmentId] ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.
  /// [location] Location of the endpoint attachment.
  /// [name] Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`
  /// [organizationId] Required.
  /// [serviceAttachment] Format: projects/*/regions/*/serviceAttachments/*
  EndpointAttachmentArgs({
    pulumi.Output<String>? endpointAttachmentId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    pulumi.Output<String>? serviceAttachment,
  }) :
      endpointAttachmentId = pulumi.Input.asOptionalInput<String>(endpointAttachmentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      serviceAttachment = pulumi.Input.asOptionalInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointAttachmentId': ?endpointAttachmentId,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      endpointAttachmentId: map['endpointAttachmentId'] == null ? null : pulumi.Output.create<String>(map['endpointAttachmentId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      serviceAttachment: map['serviceAttachment'] == null ? null : pulumi.Output.create<String>(map['serviceAttachment'] as String),
    );
  }
}

