// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
/// The set of arguments for EndpointAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_endpoint_attachment_endpoint_attachment_args_doc}
class EndpointAttachmentArgs {
  /// ID of the endpoint attachment.
  final pulumi.Input<String> endpointAttachmentId;
  /// Location of the endpoint attachment.
  final pulumi.Input<String> location;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Format: projects/*/regions/*/serviceAttachments/*
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [EndpointAttachmentArgs].
  /// [endpointAttachmentId] ID of the endpoint attachment.
  /// [location] Location of the endpoint attachment.
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [serviceAttachment] Format: projects/*/regions/*/serviceAttachments/*
  EndpointAttachmentArgs({
    required this.endpointAttachmentId,
    required this.location,
    required this.orgId,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointAttachmentId': endpointAttachmentId,
      'location': location,
      'orgId': orgId,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory EndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentArgs(
      endpointAttachmentId: (map['endpointAttachmentId'] as String).input(),
      location: (map['location'] as String).input(),
      orgId: (map['orgId'] as String).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}

