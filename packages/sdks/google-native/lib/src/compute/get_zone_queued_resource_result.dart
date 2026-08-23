// ignore_for_file: unused_element, unnecessary_cast

import 'bulk_insert_instance_resource_response.dart';
import 'queued_resource_status_response.dart';
import 'queuing_policy_response.dart';

/// Result data returned by getZoneQueuedResource.
class GetZoneQueuedResourceResult {
  /// Specification of VM instances to create.
  final BulkInsertInstanceResourceResponse bulkInsertInstanceResource;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Type of the resource. Always compute#queuedResource for QueuedResources.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// Queuing parameters for the requested capacity.
  final QueuingPolicyResponse queuingPolicy;
  /// [Output only] Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// [Output only] High-level status of the request.
  final String state;
  /// [Output only] Result of queuing and provisioning based on deferred capacity.
  final QueuedResourceStatusResponse status;
  /// URL of the zone where the resource resides. Only applicable for zonal resources. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String zone;

  /// Creates a new [GetZoneQueuedResourceResult].
  /// [bulkInsertInstanceResource] Specification of VM instances to create.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#queuedResource for QueuedResources.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [queuingPolicy] Queuing parameters for the requested capacity.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [state] [Output only] High-level status of the request.
  /// [status] [Output only] Result of queuing and provisioning based on deferred capacity.
  /// [zone] URL of the zone where the resource resides. Only applicable for zonal resources. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  const GetZoneQueuedResourceResult({
    required this.bulkInsertInstanceResource,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.queuingPolicy,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.state,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bulkInsertInstanceResource': bulkInsertInstanceResource.toMap(),
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'name': name,
      'queuingPolicy': queuingPolicy.toMap(),
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'state': state,
      'status': status.toMap(),
      'zone': zone,
    };
  }

  factory GetZoneQueuedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetZoneQueuedResourceResult(
      bulkInsertInstanceResource: BulkInsertInstanceResourceResponse.fromMap((map['bulkInsertInstanceResource']! as Map).cast<String, dynamic>()),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      queuingPolicy: QueuingPolicyResponse.fromMap((map['queuingPolicy']! as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      state: map['state'] as String,
      status: QueuedResourceStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      zone: map['zone'] as String,
    );
  }
}
