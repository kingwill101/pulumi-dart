// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu_node_spec_node_network_config.dart';

class V2QueuedResourceTpuNodeSpecNode {
  /// TPU accelerator type for the TPU. If not specified, this defaults to 'v2-8'.
  final pulumi.Input<String>? acceleratorType;
  /// Text description of the TPU.
  final pulumi.Input<String>? description;
  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpuNodeSpecNodeNetworkConfig>? networkConfig;
  /// Runtime version for the TPU.
  final pulumi.Input<String> runtimeVersion;

  /// Creates a new [V2QueuedResourceTpuNodeSpecNode].
  /// [acceleratorType] TPU accelerator type for the TPU. If not specified, this defaults to 'v2-8'.
  /// [description] Text description of the TPU.
  /// [networkConfig] Network configurations for the TPU node.
  /// [runtimeVersion] Runtime version for the TPU.
  const V2QueuedResourceTpuNodeSpecNode({
    this.acceleratorType,
    this.description,
    this.networkConfig,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'description': ?description,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<V2QueuedResourceTpuNodeSpecNodeNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
    };
  }

  factory V2QueuedResourceTpuNodeSpecNode.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceTpuNodeSpecNode(
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2QueuedResourceTpuNodeSpecNodeNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
    );
  }
}

