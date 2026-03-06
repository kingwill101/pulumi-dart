// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_physical_replication_slot_physical_replication_slot_args_doc}
/// The set of arguments for PhysicalReplicationSlot.
/// {@endtemplate}
/// {@macro pulumi_index_physical_replication_slot_physical_replication_slot_args_doc}
class PhysicalReplicationSlotArgs {
  /// The name of the replication slot.
  final pulumi.Input<String>? name;

  /// Creates a new [PhysicalReplicationSlotArgs].
  /// [name] The name of the replication slot.
  const PhysicalReplicationSlotArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PhysicalReplicationSlotArgs.fromMap(Map<String, dynamic> map) {
    return PhysicalReplicationSlotArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

