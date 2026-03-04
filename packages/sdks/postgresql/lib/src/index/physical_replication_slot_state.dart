// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PhysicalReplicationSlot resources.
class PhysicalReplicationSlotState {
  /// The name of the replication slot.
  final pulumi.Input<String>? name;

  /// Creates a new [PhysicalReplicationSlotState].
  /// [name] The name of the replication slot.
  PhysicalReplicationSlotState({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PhysicalReplicationSlotState.fromMap(Map<String, dynamic> map) {
    return PhysicalReplicationSlotState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
