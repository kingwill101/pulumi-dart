// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointAttachment resources.
class EndpointAttachmentState {
  /// State of the endpoint attachment connection to the service attachment.
  /// Possible values are: `CONNECTION_STATE_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`.
  final pulumi.Input<String?>? connectionState;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID of the endpoint attachment.
  final pulumi.Input<String?>? endpointAttachmentId;
  /// Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  final pulumi.Input<String?>? host;
  /// The location of the endpoint attachment.
  final pulumi.Input<String?>? location;
  /// Name of the Endpoint Attachment in the following format:
  /// organizations/{organization}/endpointAttachments/{endpointAttachment}.
  final pulumi.Input<String?>? name;
  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String?>? orgId;
  /// The resource URL of the service attachment in the format:
  /// `projects/*/regions/*/serviceAttachments/*`.
  final pulumi.Input<String?>? serviceAttachment;

  /// Creates a new [EndpointAttachmentState].
  /// [connectionState] State of the endpoint attachment connection to the service attachment.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [endpointAttachmentId] ID of the endpoint attachment.
  /// [host] Host that can be used in either HTTP Target Endpoint directly, or as the host in Target Server.
  /// [location] The location of the endpoint attachment.
  /// [name] Name of the Endpoint Attachment in the following format:
  /// [orgId] The Apigee Organization associated with the Apigee instance,
  /// [serviceAttachment] The resource URL of the service attachment in the format:
  const EndpointAttachmentState({
    this.connectionState,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointAttachmentId: (() { final guardedValue = map['endpointAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
