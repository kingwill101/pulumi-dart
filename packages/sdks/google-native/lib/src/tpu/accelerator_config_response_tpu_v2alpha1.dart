// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TPU accelerator configuration.
class AcceleratorConfigResponseTpuV2alpha1 {
  /// Topology of TPU in chips.
  final pulumi.Input<String> topology;

  /// Type of TPU.
  final pulumi.Input<String> type;

  /// Creates a new [AcceleratorConfigResponseTpuV2alpha1].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfigResponseTpuV2alpha1({
    required this.topology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topology': topology, 'type': type};
  }

  factory AcceleratorConfigResponseTpuV2alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AcceleratorConfigResponseTpuV2alpha1(
      topology: pulumi.Input.fromValue(map['topology'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
