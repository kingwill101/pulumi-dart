// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingRuntimeDataStatus {
  /// An arbitrary description for the Connection.
  final pulumi.Input<String>? description;
  /// (Output)
  /// State of the Eventing
  final pulumi.Input<String>? state;

  /// Creates a new [ConnectionEventingRuntimeDataStatus].
  /// [description] An arbitrary description for the Connection.
  /// [state] (Output)
  const ConnectionEventingRuntimeDataStatus({
    this.description,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'state': ?state,
    };
  }

  factory ConnectionEventingRuntimeDataStatus.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingRuntimeDataStatus(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

