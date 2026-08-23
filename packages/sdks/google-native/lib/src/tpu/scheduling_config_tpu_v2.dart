// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the scheduling options for this node.
class SchedulingConfigTpuV2 {
  /// Defines whether the node is preemptible.
  final pulumi.Input<bool>? preemptible;
  /// Whether the node is created under a reservation.
  final pulumi.Input<bool>? reserved;

  /// Creates a new [SchedulingConfigTpuV2].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  const SchedulingConfigTpuV2({
    this.preemptible,
    this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': ?preemptible,
      'reserved': ?reserved,
    };
  }

  factory SchedulingConfigTpuV2.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigTpuV2(
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
