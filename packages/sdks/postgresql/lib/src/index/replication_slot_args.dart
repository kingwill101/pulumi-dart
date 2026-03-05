// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_replication_slot_replication_slot_args_doc}
/// The set of arguments for ReplicationSlot.
/// {@endtemplate}
/// {@macro pulumi_index_replication_slot_replication_slot_args_doc}
class ReplicationSlotArgs {
  /// Which database to create the replication slot on. Defaults to provider database.
  final pulumi.Input<String>? database;
  /// The name of the replication slot.
  final pulumi.Input<String>? name;
  /// Sets the output plugin.
  final pulumi.Input<String> plugin;

  /// Creates a new [ReplicationSlotArgs].
  /// [database] Which database to create the replication slot on. Defaults to provider database.
  /// [name] The name of the replication slot.
  /// [plugin] Sets the output plugin.
  ReplicationSlotArgs({
    this.database,
    this.name,
    required this.plugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'plugin': plugin,
    };
  }

  factory ReplicationSlotArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationSlotArgs(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plugin: pulumi.Input.fromValue(map['plugin'] as String),
    );
  }
}

