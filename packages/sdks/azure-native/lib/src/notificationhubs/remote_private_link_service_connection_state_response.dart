// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the Private Link Service connection.
class RemotePrivateLinkServiceConnectionStateResponse {
  /// Human-friendly description of required actions.
  final pulumi.Input<String> actionsRequired;
  /// Human-friendly description.
  final pulumi.Input<String> description;
  /// State of Private Link Connection.
  final pulumi.Input<String>? status;

  /// Creates a new [RemotePrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Human-friendly description of required actions.
  /// [description] Human-friendly description.
  /// [status] State of Private Link Connection.
  RemotePrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    required this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': ?status,
    };
  }

  factory RemotePrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateLinkServiceConnectionStateResponse(
      actionsRequired: (map['actionsRequired'] as String).input(),
      description: (map['description'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

