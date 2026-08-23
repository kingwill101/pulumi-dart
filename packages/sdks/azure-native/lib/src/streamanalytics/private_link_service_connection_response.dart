// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_connection_state_response.dart';

/// A grouping of information about the connection to the remote resource.
class PrivateLinkServiceConnectionResponse {
  /// The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<List<String>>? groupIds;
  /// A collection of read-only information about the state of the connection to the private remote resource.
  final pulumi.Input<PrivateLinkConnectionStateResponse>? privateLinkServiceConnectionState;
  /// The resource id of the private link service. Required on PUT (CreateOrUpdate) requests.
  final pulumi.Input<String>? privateLinkServiceId;
  /// A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  final pulumi.Input<String> requestMessage;

  /// Creates a new [PrivateLinkServiceConnectionResponse].
  /// [groupIds] The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to. Required on PUT (CreateOrUpdate) requests.
  /// [privateLinkServiceConnectionState] A collection of read-only information about the state of the connection to the private remote resource.
  /// [privateLinkServiceId] The resource id of the private link service. Required on PUT (CreateOrUpdate) requests.
  /// [requestMessage] A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  const PrivateLinkServiceConnectionResponse({
    this.groupIds,
    this.privateLinkServiceConnectionState,
    this.privateLinkServiceId,
    required this.requestMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'privateLinkServiceId': ?privateLinkServiceId,
      'requestMessage': requestMessage,
    };
  }

  factory PrivateLinkServiceConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionResponse(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceId: (() { final guardedValue = map['privateLinkServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: pulumi.Input.fromValue(map['requestMessage'] as String),
    );
  }
}
