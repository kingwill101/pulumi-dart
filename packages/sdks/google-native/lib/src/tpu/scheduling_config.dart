// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the scheduling options for this node.
class SchedulingConfig {
  /// Defines whether the node is preemptible.
  final pulumi.Input<bool>? preemptible;
  /// Whether the node is created under a reservation.
  final pulumi.Input<bool>? reserved;

  /// Creates a new [SchedulingConfig].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  SchedulingConfig({
    this.preemptible,
    this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': ?preemptible,
      'reserved': ?reserved,
    };
  }

  factory SchedulingConfig.fromMap(Map<String, dynamic> map) {
    return SchedulingConfig(
      preemptible: map['preemptible'] == null ? null : (map['preemptible']! as bool).input(),
      reserved: map['reserved'] == null ? null : (map['reserved']! as bool).input(),
    );
  }
}

