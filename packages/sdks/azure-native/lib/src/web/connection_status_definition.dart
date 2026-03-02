// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_error.dart';

/// Connection status
class ConnectionStatusDefinition {
  /// Connection error
  final pulumi.Input<ConnectionError>? error;
  /// The gateway status
  final pulumi.Input<String>? status;
  /// Target of the error
  final pulumi.Input<String>? target;

  /// Creates a new [ConnectionStatusDefinition].
  /// [error] Connection error
  /// [status] The gateway status
  /// [target] Target of the error
  ConnectionStatusDefinition({
    this.error,
    this.status,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ConnectionError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'status': ?status,
      'target': ?target,
    };
  }

  factory ConnectionStatusDefinition.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusDefinition(
      error: map['error'] == null ? null : (ConnectionError.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
    );
  }
}

