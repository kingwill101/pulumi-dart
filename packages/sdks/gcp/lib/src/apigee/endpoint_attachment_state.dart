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
    pulumi.Output<String>? connectionState,
    pulumi.Output<String>? endpointAttachmentId,
    pulumi.Output<String>? host,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? serviceAttachment,
  }) :
      connectionState = pulumi.Input.asOptionalInput<String>(connectionState),
      endpointAttachmentId = pulumi.Input.asOptionalInput<String>(endpointAttachmentId),
      host = pulumi.Input.asOptionalInput<String>(host),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      serviceAttachment = pulumi.Input.asOptionalInput<String>(serviceAttachment);

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
      connectionState: map['connectionState'] == null ? null : pulumi.Output.create<String>(map['connectionState'] as String),
      endpointAttachmentId: map['endpointAttachmentId'] == null ? null : pulumi.Output.create<String>(map['endpointAttachmentId'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      serviceAttachment: map['serviceAttachment'] == null ? null : pulumi.Output.create<String>(map['serviceAttachment'] as String),
    );
  }
}

