// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAttachment resources.
class EndpointAttachmentState {
  /// State of the endpoint attachment connection to the service attachment.
  final pulumi.Input<String>? connectionState;
  /// ID of the endpoint attachment.
  final pulumi.Input<String>? endpointAttachmentId;
  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  final pulumi.Input<String>? host;
  /// Location of the endpoint attachment.
  final pulumi.Input<String>? location;
  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// Format: projects/*/regions/*/serviceAttachments/*
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [EndpointAttachmentState].
  /// [connectionState] State of the endpoint attachment connection to the service attachment.
  /// [endpointAttachmentId] ID of the endpoint attachment.
  /// [host] Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  /// [location] Location of the endpoint attachment.
  /// [name] Name of the Endpoint Attachment in the following format:
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [serviceAttachment] Format: projects/*/regions/*/serviceAttachments/*
  EndpointAttachmentState({
    this.connectionState,
    this.endpointAttachmentId,
    this.host,
    this.location,
    this.name,
    this.orgId,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?connectionState,
      'endpointAttachmentId': ?endpointAttachmentId,
      'host': ?host,
      'location': ?location,
      'name': ?name,
      'orgId': ?orgId,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory EndpointAttachmentState.fromMap(Map<String, dynamic> map) {
    return EndpointAttachmentState(
      connectionState: map['connectionState'] == null ? null : (map['connectionState']! as String).input(),
      endpointAttachmentId: map['endpointAttachmentId'] == null ? null : (map['endpointAttachmentId']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      serviceAttachment: map['serviceAttachment'] == null ? null : (map['serviceAttachment']! as String).input(),
    );
  }
}

