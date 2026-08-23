// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuNumaInterconnectsBandwidth {
  /// Specifies the bandwidth allocation for cache-specific interconnects between NUMA nodes.
  final pulumi.Input<double>? cache;
  /// Defines the initiator's bandwidth constraints for interconnecting NUMA cells.
  final pulumi.Input<double> initiator;
  /// Configures the target's bandwidth limitations for interconnecting NUMA nodes.
  final pulumi.Input<double> target;
  /// Indicates the type of bandwidth established for interconnecting communication.
  final pulumi.Input<String> type;
  /// Sets the unit of measurement for the specified bandwidth in the NUMA interconnection.
  final pulumi.Input<String> unit;
  /// Establishes the actual bandwidth value for interconnects between NUMA nodes, defined by the unit.
  final pulumi.Input<double> value;

  /// Creates a new [DomainCpuNumaInterconnectsBandwidth].
  /// [cache] Specifies the bandwidth allocation for cache-specific interconnects between NUMA nodes.
  /// [initiator] Defines the initiator's bandwidth constraints for interconnecting NUMA cells.
  /// [target] Configures the target's bandwidth limitations for interconnecting NUMA nodes.
  /// [type] Indicates the type of bandwidth established for interconnecting communication.
  /// [unit] Sets the unit of measurement for the specified bandwidth in the NUMA interconnection.
  /// [value] Establishes the actual bandwidth value for interconnects between NUMA nodes, defined by the unit.
  const DomainCpuNumaInterconnectsBandwidth({
    this.cache,
    required this.initiator,
    required this.target,
    required this.type,
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache,
      'initiator': initiator,
      'target': target,
      'type': type,
      'unit': unit,
      'value': value,
    };
  }

  factory DomainCpuNumaInterconnectsBandwidth.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaInterconnectsBandwidth(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      initiator: pulumi.Input.fromValue(map['initiator'] as double),
      target: pulumi.Input.fromValue(map['target'] as double),
      type: pulumi.Input.fromValue(map['type'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
