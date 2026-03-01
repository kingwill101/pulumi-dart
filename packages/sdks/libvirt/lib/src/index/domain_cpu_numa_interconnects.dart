// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_interconnects_bandwidth.dart';
import 'domain_cpu_numa_interconnects_latency.dart';

class DomainCpuNumaInterconnects {
  /// Configures the bandwidth characteristics for the interconnects among the NUMA nodes.
  final List<DomainCpuNumaInterconnectsBandwidth>? bandwidths;
  /// Specifies the latency measures associated with the interconnections between NUMA nodes.
  final List<DomainCpuNumaInterconnectsLatency>? latencies;

  /// Creates a new [DomainCpuNumaInterconnects].
  /// [bandwidths] Configures the bandwidth characteristics for the interconnects among the NUMA nodes.
  /// [latencies] Specifies the latency measures associated with the interconnections between NUMA nodes.
  DomainCpuNumaInterconnects({
    this.bandwidths,
    this.latencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidths': ?bandwidths == null ? null : pulumi.Input.encodeList<DomainCpuNumaInterconnectsBandwidth, Map<String, dynamic>>(bandwidths!, (value) => value.toMap()),
      'latencies': ?latencies == null ? null : pulumi.Input.encodeList<DomainCpuNumaInterconnectsLatency, Map<String, dynamic>>(latencies!, (value) => value.toMap()),
    };
  }

  factory DomainCpuNumaInterconnects.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaInterconnects(
      bandwidths: map['bandwidths'] == null ? null : pulumi.Input.decodeList<DomainCpuNumaInterconnectsBandwidth>(map['bandwidths'], (value) => DomainCpuNumaInterconnectsBandwidth.fromMap((value as Map).cast<String, dynamic>())),
      latencies: map['latencies'] == null ? null : pulumi.Input.decodeList<DomainCpuNumaInterconnectsLatency>(map['latencies'], (value) => DomainCpuNumaInterconnectsLatency.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

