// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_spec.dart';

/// Details of the TPU resource(s) being requested.
class Tpu {
  /// The TPU node(s) being requested.
  final pulumi.Input<List<NodeSpec>>? nodeSpec;

  /// Creates a new [Tpu].
  /// [nodeSpec] The TPU node(s) being requested.
  Tpu({
    this.nodeSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSpec': ?pulumi.Input.mapOptionalInputValue<List<NodeSpec>, List<Map<String, dynamic>>>(nodeSpec, (value) => pulumi.Input.encodeList<NodeSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Tpu.fromMap(Map<String, dynamic> map) {
    return Tpu(
      nodeSpec: (() { final guardedValue = map['nodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeSpec>(guardedValue, (value) => NodeSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

