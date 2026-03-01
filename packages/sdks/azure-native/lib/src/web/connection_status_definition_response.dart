// ignore_for_file: unused_element, unnecessary_cast

import 'connection_error_response.dart';

/// Connection status
class ConnectionStatusDefinitionResponse {
  /// Connection error
  final ConnectionErrorResponse? error;
  /// The gateway status
  final String? status;
  /// Target of the error
  final String? target;

  /// Creates a new [ConnectionStatusDefinitionResponse].
  /// [error] Connection error
  /// [status] The gateway status
  /// [target] Target of the error
  ConnectionStatusDefinitionResponse({
    this.error,
    this.status,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'status': ?status,
      'target': ?target,
    };
  }

  factory ConnectionStatusDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusDefinitionResponse(
      error: map['error'] == null ? null : ConnectionErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

