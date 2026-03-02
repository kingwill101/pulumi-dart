// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu_node_spec.dart';

class V2QueuedResourceTpu {
  /// The TPU node(s) being requested.
  /// Structure is documented below.
  final pulumi.Input<List<V2QueuedResourceTpuNodeSpec>>? nodeSpecs;

  /// Creates a new [V2QueuedResourceTpu].
  /// [nodeSpecs] The TPU node(s) being requested.
  V2QueuedResourceTpu({
    this.nodeSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSpecs': ?pulumi.Input.mapOptionalInputValue<List<V2QueuedResourceTpuNodeSpec>, List<Map<String, dynamic>>>(nodeSpecs, (value) => pulumi.Input.encodeList<V2QueuedResourceTpuNodeSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2QueuedResourceTpu.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceTpu(
      nodeSpecs: map['nodeSpecs'] == null ? null : (pulumi.Input.decodeList<V2QueuedResourceTpuNodeSpec>(map['nodeSpecs']!, (value) => V2QueuedResourceTpuNodeSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

