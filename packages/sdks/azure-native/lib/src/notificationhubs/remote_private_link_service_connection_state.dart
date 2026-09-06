// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the Private Link Service connection.
class RemotePrivateLinkServiceConnectionState {
  /// State of Private Link Connection.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [RemotePrivateLinkServiceConnectionState].
  /// [status] State of Private Link Connection.
  const RemotePrivateLinkServiceConnectionState({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory RemotePrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return RemotePrivateLinkServiceConnectionState(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
