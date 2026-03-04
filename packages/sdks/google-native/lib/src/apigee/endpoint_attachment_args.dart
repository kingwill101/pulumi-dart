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
    this.endpointAttachmentId,
    this.location,
    this.name,
    required this.organizationId,
    this.serviceAttachment,
  });

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
      endpointAttachmentId: (() {
        final guardedValue = map['endpointAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      serviceAttachment: (() {
        final guardedValue = map['serviceAttachment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
