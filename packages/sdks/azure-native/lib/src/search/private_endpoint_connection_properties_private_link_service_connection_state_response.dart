// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the current state of an existing Azure Private Link service connection to the private endpoint.
class PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse {
  /// A description of any extra actions that may be required.
  final pulumi.Input<String>? actionsRequired;
  /// The description for the private link service connection state.
  final pulumi.Input<String>? description;
  /// Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] A description of any extra actions that may be required.
  /// [description] The description for the private link service connection state.
  /// [status] Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  const PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
