// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PhysicalReplicationSlot resources.
class PhysicalReplicationSlotState {
  /// The name of the replication slot.
  final pulumi.Input<String>? name;

  /// Creates a new [PhysicalReplicationSlotState].
  /// [name] The name of the replication slot.
  PhysicalReplicationSlotState({
    pulumi.Output<String>? name,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PhysicalReplicationSlotState.fromMap(Map<String, dynamic> map) {
    return PhysicalReplicationSlotState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

