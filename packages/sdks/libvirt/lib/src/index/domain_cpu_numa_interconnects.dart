// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_interconnects_bandwidth.dart';
import 'domain_cpu_numa_interconnects_latency.dart';

class DomainCpuNumaInterconnects {
  /// Configures the bandwidth characteristics for the interconnects among the NUMA nodes.
  final pulumi.Input<List<DomainCpuNumaInterconnectsBandwidth>>? bandwidths;

  /// Specifies the latency measures associated with the interconnections between NUMA nodes.
  final pulumi.Input<List<DomainCpuNumaInterconnectsLatency>>? latencies;

  /// Creates a new [DomainCpuNumaInterconnects].
  /// [bandwidths] Configures the bandwidth characteristics for the interconnects among the NUMA nodes.
  /// [latencies] Specifies the latency measures associated with the interconnections between NUMA nodes.
  DomainCpuNumaInterconnects({this.bandwidths, this.latencies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidths':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainCpuNumaInterconnectsBandwidth>,
            List<Map<String, dynamic>>
          >(
            bandwidths,
            (value) =>
                pulumi.Input.encodeList<
                  DomainCpuNumaInterconnectsBandwidth,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'latencies':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainCpuNumaInterconnectsLatency>,
            List<Map<String, dynamic>>
          >(
            latencies,
            (value) =>
                pulumi.Input.encodeList<
                  DomainCpuNumaInterconnectsLatency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainCpuNumaInterconnects.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaInterconnects(
      bandwidths: (() {
        final guardedValue = map['bandwidths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainCpuNumaInterconnectsBandwidth>(
            guardedValue,
            (value) => DomainCpuNumaInterconnectsBandwidth.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      latencies: (() {
        final guardedValue = map['latencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainCpuNumaInterconnectsLatency>(
            guardedValue,
            (value) => DomainCpuNumaInterconnectsLatency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
