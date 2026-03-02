// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state_response.dart';

/// PrivateLinkServiceConnection resource.
class PrivateLinkServiceConnectionResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<List<String>>? groupIds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// A collection of read-only information about the state of the connection to the remote resource.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// The resource id of private link service.
  final pulumi.Input<String>? privateLinkServiceId;
  /// The provisioning state of the private link service connection resource.
  final pulumi.Input<String> provisioningState;
  /// A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  final pulumi.Input<String>? requestMessage;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateLinkServiceConnectionResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [groupIds] The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateLinkServiceConnectionState] A collection of read-only information about the state of the connection to the remote resource.
  /// [privateLinkServiceId] The resource id of private link service.
  /// [provisioningState] The provisioning state of the private link service connection resource.
  /// [requestMessage] A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  /// [type] The resource type.
  PrivateLinkServiceConnectionResponse({
    required this.etag,
    this.groupIds,
    this.id,
    this.name,
    this.privateLinkServiceConnectionState,
    this.privateLinkServiceId,
    required this.provisioningState,
    this.requestMessage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'groupIds': ?groupIds,
      'id': ?id,
      'name': ?name,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'privateLinkServiceId': ?privateLinkServiceId,
      'provisioningState': provisioningState,
      'requestMessage': ?requestMessage,
      'type': type,
    };
  }

  factory PrivateLinkServiceConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionResponse(
      etag: (map['etag'] as String).input(),
      groupIds: map['groupIds'] == null ? null : ((map['groupIds'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceId: map['privateLinkServiceId'] == null ? null : (map['privateLinkServiceId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

