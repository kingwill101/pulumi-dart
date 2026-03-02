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
  ConnectionEventingRuntimeDataStatus({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

