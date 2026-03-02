// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// PrivateLinkServiceConnection resource.
class PrivateLinkServiceConnection {
  /// The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to.
  final pulumi.Input<List<String>>? groupIds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// A collection of read-only information about the state of the connection to the remote resource.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The resource id of private link service.
  final pulumi.Input<String>? privateLinkServiceId;
  /// A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  final pulumi.Input<String>? requestMessage;

  /// Creates a new [PrivateLinkServiceConnection].
  /// [groupIds] The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateLinkServiceConnectionState] A collection of read-only information about the state of the connection to the remote resource.
  /// [privateLinkServiceId] The resource id of private link service.
  /// [requestMessage] A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
  PrivateLinkServiceConnection({
    this.groupIds,
    this.id,
    this.name,
    this.privateLinkServiceConnectionState,
    this.privateLinkServiceId,
    this.requestMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': ?id,
      'name': ?name,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'privateLinkServiceId': ?privateLinkServiceId,
      'requestMessage': ?requestMessage,
    };
  }

  factory PrivateLinkServiceConnection.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnection(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceId: map['privateLinkServiceId'] == null ? null : (map['privateLinkServiceId'] as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage'] as String).input(),
    );
  }
}

