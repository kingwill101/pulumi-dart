// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConnectionStatus indicates the state of the connection.
class ConnectionStatusResponse {
  /// Description.
  final pulumi.Input<String> description;

  /// State.
  final pulumi.Input<String> state;

  /// Status provides detailed information for the state.
  final pulumi.Input<String> status;

  /// Creates a new [ConnectionStatusResponse].
  /// [description] Description.
  /// [state] State.
  /// [status] Status provides detailed information for the state.
  ConnectionStatusResponse({
    required this.description,
    required this.state,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'state': state,
      'status': status,
    };
  }

  factory ConnectionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
