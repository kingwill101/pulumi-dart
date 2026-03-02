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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

