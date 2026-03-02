// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConnectionState information.
class ConnectionState {
  /// Actions required (if any).
  final pulumi.Input<String>? actionsRequired;
  /// Description of the connection state.
  final pulumi.Input<String>? description;
  /// Status of the connection.
  final pulumi.Input<String>? status;

  /// Creates a new [ConnectionState].
  /// [actionsRequired] Actions required (if any).
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionState({
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

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : (map['actionsRequired']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

