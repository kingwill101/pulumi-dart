// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConnectionState information.
class ConnectionStateResponse {
  /// Actions required (if any).
  final pulumi.Input<String>? actionsRequired;

  /// Description of the connection state.
  final pulumi.Input<String>? description;

  /// Status of the connection.
  final pulumi.Input<String>? status;

  /// Creates a new [ConnectionStateResponse].
  /// [actionsRequired] Actions required (if any).
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionStateResponse({
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

  factory ConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStateResponse(
      actionsRequired: (() {
        final guardedValue = map['actionsRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
