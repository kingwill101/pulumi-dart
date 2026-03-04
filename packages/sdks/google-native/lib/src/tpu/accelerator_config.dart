// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_type.dart';

/// A TPU accelerator configuration.
class AcceleratorConfig {
  /// Topology of TPU in chips.
  final pulumi.Input<String> topology;

  /// Type of TPU.
  final pulumi.Input<AcceleratorConfigType> type;

  /// Creates a new [AcceleratorConfig].
  /// [topology] Topology of TPU in chips.
  /// [type] Type of TPU.
  AcceleratorConfig({required this.topology, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': topology,
      'type': pulumi.Input.mapInputValue<AcceleratorConfigType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig(
      topology: pulumi.Input.fromValue(map['topology'] as String),
      type: pulumi.Input.fromValue(
        AcceleratorConfigType.fromValue(map['type']! as String),
      ),
    );
  }
}
