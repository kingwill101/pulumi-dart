// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionStatus {
  /// An arbitrary description for the Connection.
  final pulumi.Input<String>? description;
  /// (Output)
  /// State of the Eventing
  final pulumi.Input<String>? state;
  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  final pulumi.Input<String>? status;

  /// Creates a new [ConnectionStatus].
  /// [description] An arbitrary description for the Connection.
  /// [state] (Output)
  /// [status] (Output)
  ConnectionStatus({
    this.description,
    this.state,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'state': ?state,
      'status': ?status,
    };
  }

  factory ConnectionStatus.fromMap(Map<String, dynamic> map) {
    return ConnectionStatus(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

