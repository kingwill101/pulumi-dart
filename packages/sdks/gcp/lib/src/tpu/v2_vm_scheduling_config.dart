// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2VmSchedulingConfig {
  /// Defines whether the node is preemptible.
  final pulumi.Input<bool?>? preemptible;
  /// Whether the node is created under a reservation.
  final pulumi.Input<bool?>? reserved;
  /// Optional. Defines whether the node is Spot VM.
  final pulumi.Input<bool?>? spot;

  /// Creates a new [V2VmSchedulingConfig].
  /// [preemptible] Defines whether the node is preemptible.
  /// [reserved] Whether the node is created under a reservation.
  /// [spot] Optional. Defines whether the node is Spot VM.
  const V2VmSchedulingConfig({
    this.preemptible,
    this.reserved,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preemptible': ?preemptible,
      'reserved': ?reserved,
      'spot': ?spot,
    };
  }

  factory V2VmSchedulingConfig.fromMap(Map<String, dynamic> map) {
    return V2VmSchedulingConfig(
      preemptible: (() { final guardedValue = map['preemptible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
