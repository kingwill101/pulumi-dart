// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_error_response.dart';

/// Connection status
class ConnectionStatusDefinitionResponse {
  /// Connection error
  final pulumi.Input<ConnectionErrorResponse>? error;
  /// The gateway status
  final pulumi.Input<String>? status;
  /// Target of the error
  final pulumi.Input<String>? target;

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
      'error': ?pulumi.Input.mapOptionalInputValue<ConnectionErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'status': ?status,
      'target': ?target,
    };
  }

  factory ConnectionStatusDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusDefinitionResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

