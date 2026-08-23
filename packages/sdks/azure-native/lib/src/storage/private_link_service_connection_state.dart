// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of information about the state of the connection between service consumer and provider.
class PrivateLinkServiceConnectionState {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final pulumi.Input<String>? actionRequired;
  /// The reason for approval/rejection of the connection.
  final pulumi.Input<String>? description;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval/rejection of the connection.
  /// [status] Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  const PrivateLinkServiceConnectionState({
    this.actionRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': ?actionRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionRequired: (() { final guardedValue = map['actionRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
