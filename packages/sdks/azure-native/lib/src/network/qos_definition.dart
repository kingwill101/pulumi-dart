// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_ip_range.dart';
import 'qos_port_range.dart';

/// Quality of Service defines the traffic configuration between endpoints. Mandatory to have one marking.
class QosDefinition {
  /// Destination IP ranges.
  final pulumi.Input<List<QosIpRange>?>? destinationIpRanges;
  /// Destination port ranges.
  final pulumi.Input<List<QosPortRange>?>? destinationPortRanges;
  /// List of markings to be used in the configuration.
  final pulumi.Input<List<int>?>? markings;
  /// RNM supported protocol types.
  final pulumi.Input<dynamic>? protocol;
  /// Source IP ranges.
  final pulumi.Input<List<QosIpRange>?>? sourceIpRanges;
  /// Sources port ranges.
  final pulumi.Input<List<QosPortRange>?>? sourcePortRanges;

  /// Creates a new [QosDefinition].
  /// [destinationIpRanges] Destination IP ranges.
  /// [destinationPortRanges] Destination port ranges.
  /// [markings] List of markings to be used in the configuration.
  /// [protocol] RNM supported protocol types.
  /// [sourceIpRanges] Source IP ranges.
  /// [sourcePortRanges] Sources port ranges.
  const QosDefinition({
    this.destinationIpRanges,
    this.destinationPortRanges,
    this.markings,
    this.protocol,
    this.sourceIpRanges,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRange>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRange>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'markings': ?markings,
      'protocol': ?protocol,
      'sourceIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRange>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRange>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory QosDefinition.fromMap(Map<String, dynamic> map) {
    return QosDefinition(
      destinationIpRanges: (() { final guardedValue = map['destinationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosIpRange>(guardedValue, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosPortRange>(guardedValue, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      markings: (() { final guardedValue = map['markings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosIpRange>(guardedValue, (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QosPortRange>(guardedValue, (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
