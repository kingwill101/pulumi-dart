// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicationSlot resources.
class ReplicationSlotState {
  /// Which database to create the replication slot on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// The name of the replication slot.
  final pulumi.Input<String>? name;
  /// Sets the output plugin.
  final pulumi.Input<String>? plugin;

  /// Creates a new [ReplicationSlotState].
  /// [database] Which database to create the replication slot on. Defaults to provider database.
  /// [name] The name of the replication slot.
  /// [plugin] Sets the output plugin.
  ReplicationSlotState({
    this.database,
    this.name,
    this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'plugin': ?plugin,
    };
  }

  factory ReplicationSlotState.fromMap(Map<String, dynamic> map) {
    return ReplicationSlotState(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plugin: (() { final guardedValue = map['plugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

