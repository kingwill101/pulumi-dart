// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the scheduling options for this node.
class SchedulingConfigResponse {
  /// Defines whether the node is preemptible.
  final pulumi.Input<bool> preemptible;
  /// Whether the node is created under a reservation.
  final pulumi.Input<bool> reserved;

  /// Creates a new [SchedulingConfigResponse].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  const SchedulingConfigResponse({
    required this.preemptible,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': preemptible,
      'reserved': reserved,
    };
  }

  factory SchedulingConfigResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingConfigResponse(
      preemptible: pulumi.Input.fromValue(map['preemptible'] as bool),
      reserved: pulumi.Input.fromValue(map['reserved'] as bool),
    );
  }
}

