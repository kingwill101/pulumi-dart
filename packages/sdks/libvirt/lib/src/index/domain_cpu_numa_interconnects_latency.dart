// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuNumaInterconnectsLatency {
  /// Sets latency configurations specifically related to cache interconnections in the NUMA setup.
  final pulumi.Input<double>? cache;
  /// Configures the latency attributes for the initiator in NUMA interconnections.
  final pulumi.Input<double> initiator;
  /// Defines the latency settings for the target in interconnects between NUMA cells.
  final pulumi.Input<double> target;
  /// Indicates the type of latency being configured for NUMA interconnections.
  final pulumi.Input<String> type;
  /// Sets the actual latency value for NUMA interconnecting communication, defined by the type.
  final pulumi.Input<double> value;

  /// Creates a new [DomainCpuNumaInterconnectsLatency].
  /// [cache] Sets latency configurations specifically related to cache interconnections in the NUMA setup.
  /// [initiator] Configures the latency attributes for the initiator in NUMA interconnections.
  /// [target] Defines the latency settings for the target in interconnects between NUMA cells.
  /// [type] Indicates the type of latency being configured for NUMA interconnections.
  /// [value] Sets the actual latency value for NUMA interconnecting communication, defined by the type.
  DomainCpuNumaInterconnectsLatency({
    this.cache,
    required this.initiator,
    required this.target,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache,
      'initiator': initiator,
      'target': target,
      'type': type,
      'value': value,
    };
  }

  factory DomainCpuNumaInterconnectsLatency.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaInterconnectsLatency(
      cache: map['cache'] == null ? null : (map['cache'] as double).input(),
      initiator: (map['initiator'] as double).input(),
      target: (map['target'] as double).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as double).input(),
    );
  }
}

