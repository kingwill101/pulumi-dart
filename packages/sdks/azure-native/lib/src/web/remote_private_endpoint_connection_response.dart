// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';

/// A remote private endpoint connection
class RemotePrivateEndpointConnectionResponse {
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Private IPAddresses mapped to the remote private endpoint
  final pulumi.Input<List<String>?>? ipAddresses;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// PrivateEndpoint of a remote private endpoint connection
  final pulumi.Input<ArmIdWrapperResponse?>? privateEndpoint;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionStateResponse?>? privateLinkServiceConnectionState;
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RemotePrivateEndpointConnectionResponse].
  /// [id] Resource Id.
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [privateEndpoint] PrivateEndpoint of a remote private endpoint connection
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [provisioningState] Required.
  /// [type] Resource type.
  const RemotePrivateEndpointConnectionResponse({
    required this.id,
    this.ipAddresses,
    this.kind,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipAddresses': ?ipAddresses,
      'kind': ?kind,
      'name': name,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<ArmIdWrapperResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory RemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmIdWrapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
