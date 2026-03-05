// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_memory_tune_monitor.dart';
import 'domain_cpu_tune_memory_tune_node.dart';

class DomainCpuTuneMemoryTune {
  /// Configures monitoring options for memory tuning, allowing observation of memory usage trends and patterns.
  final pulumi.Input<List<DomainCpuTuneMemoryTuneMonitor>>? monitors;
  /// Configures specific nodes for memory tuning, allowing targeted adjustments to the memory configuration.
  final pulumi.Input<List<DomainCpuTuneMemoryTuneNode>>? nodes;
  /// Configures the virtual CPUs associated with memory tuning, indicating which CPUs' memory performance should be adjusted.
  final pulumi.Input<String> vcpus;

  /// Creates a new [DomainCpuTuneMemoryTune].
  /// [monitors] Configures monitoring options for memory tuning, allowing observation of memory usage trends and patterns.
  /// [nodes] Configures specific nodes for memory tuning, allowing targeted adjustments to the memory configuration.
  /// [vcpus] Configures the virtual CPUs associated with memory tuning, indicating which CPUs' memory performance should be adjusted.
  DomainCpuTuneMemoryTune({
    this.monitors,
    this.nodes,
    required this.vcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneMemoryTuneMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<DomainCpuTuneMemoryTuneMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuTuneMemoryTuneNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<DomainCpuTuneMemoryTuneNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcpus': vcpus,
    };
  }

  factory DomainCpuTuneMemoryTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneMemoryTune(
      monitors: (() { final guardedValue = map['monitors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCpuTuneMemoryTuneMonitor>(guardedValue, (value) => DomainCpuTuneMemoryTuneMonitor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCpuTuneMemoryTuneNode>(guardedValue, (value) => DomainCpuTuneMemoryTuneNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vcpus: pulumi.Input.fromValue(map['vcpus'] as String),
    );
  }
}

