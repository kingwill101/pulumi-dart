// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_workload_node_config_container_runtime.dart';

/// Specifies the workload node configurations.
class BareMetalWorkloadNodeConfig {
  /// Specifies which container runtime will be used.
  final pulumi.Input<BareMetalWorkloadNodeConfigContainerRuntime>? containerRuntime;
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  final pulumi.Input<String>? maxPodsPerNode;

  /// Creates a new [BareMetalWorkloadNodeConfig].
  /// [containerRuntime] Specifies which container runtime will be used.
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  BareMetalWorkloadNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRuntime': ?pulumi.Input.mapOptionalInputValue<BareMetalWorkloadNodeConfigContainerRuntime, String>(containerRuntime, (value) => value.wireValue),
      'maxPodsPerNode': ?maxPodsPerNode,
    };
  }

  factory BareMetalWorkloadNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalWorkloadNodeConfig(
      containerRuntime: (() { final guardedValue = map['containerRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalWorkloadNodeConfigContainerRuntime.fromValue(guardedValue as String)); })(),
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

