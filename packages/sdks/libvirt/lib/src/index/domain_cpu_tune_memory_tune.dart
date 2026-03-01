// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_tune_memory_tune_monitor.dart';
import 'domain_cpu_tune_memory_tune_node.dart';

class DomainCpuTuneMemoryTune {
  /// Configures monitoring options for memory tuning, allowing observation of memory usage trends and patterns.
  final List<DomainCpuTuneMemoryTuneMonitor>? monitors;
  /// Configures specific nodes for memory tuning, allowing targeted adjustments to the memory configuration.
  final List<DomainCpuTuneMemoryTuneNode>? nodes;
  /// Configures the virtual CPUs associated with memory tuning, indicating which CPUs' memory performance should be adjusted.
  final String vcpus;

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
      'monitors': ?monitors == null ? null : pulumi.Input.encodeList<DomainCpuTuneMemoryTuneMonitor, Map<String, dynamic>>(monitors!, (value) => value.toMap()),
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<DomainCpuTuneMemoryTuneNode, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'vcpus': vcpus,
    };
  }

  factory DomainCpuTuneMemoryTune.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneMemoryTune(
      monitors: map['monitors'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneMemoryTuneMonitor>(map['monitors'], (value) => DomainCpuTuneMemoryTuneMonitor.fromMap((value as Map).cast<String, dynamic>())),
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<DomainCpuTuneMemoryTuneNode>(map['nodes'], (value) => DomainCpuTuneMemoryTuneNode.fromMap((value as Map).cast<String, dynamic>())),
      vcpus: map['vcpus'] as String,
    );
  }
}

