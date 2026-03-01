// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_ip_range.dart';
import 'qos_port_range.dart';

/// Quality of Service defines the traffic configuration between endpoints. Mandatory to have one marking.
class QosDefinition {
  /// Destination IP ranges.
  final List<QosIpRange>? destinationIpRanges;
  /// Destination port ranges.
  final List<QosPortRange>? destinationPortRanges;
  /// List of markings to be used in the configuration.
  final List<int>? markings;
  /// RNM supported protocol types.
  final String? protocol;
  /// Source IP ranges.
  final List<QosIpRange>? sourceIpRanges;
  /// Sources port ranges.
  final List<QosPortRange>? sourcePortRanges;

  /// Creates a new [QosDefinition].
  /// [destinationIpRanges] Destination IP ranges.
  /// [destinationPortRanges] Destination port ranges.
  /// [markings] List of markings to be used in the configuration.
  /// [protocol] RNM supported protocol types.
  /// [sourceIpRanges] Source IP ranges.
  /// [sourcePortRanges] Sources port ranges.
  QosDefinition({
    this.destinationIpRanges,
    this.destinationPortRanges,
    this.markings,
    this.protocol,
    this.sourceIpRanges,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIpRanges': ?destinationIpRanges == null ? null : pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(destinationIpRanges!, (value) => value.toMap()),
      'destinationPortRanges': ?destinationPortRanges == null ? null : pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(destinationPortRanges!, (value) => value.toMap()),
      'markings': ?markings,
      'protocol': ?protocol,
      'sourceIpRanges': ?sourceIpRanges == null ? null : pulumi.Input.encodeList<QosIpRange, Map<String, dynamic>>(sourceIpRanges!, (value) => value.toMap()),
      'sourcePortRanges': ?sourcePortRanges == null ? null : pulumi.Input.encodeList<QosPortRange, Map<String, dynamic>>(sourcePortRanges!, (value) => value.toMap()),
    };
  }

  factory QosDefinition.fromMap(Map<String, dynamic> map) {
    return QosDefinition(
      destinationIpRanges: map['destinationIpRanges'] == null ? null : pulumi.Input.decodeList<QosIpRange>(map['destinationIpRanges'], (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>())),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : pulumi.Input.decodeList<QosPortRange>(map['destinationPortRanges'], (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>())),
      markings: map['markings'] == null ? null : (map['markings'] as List).cast<int>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceIpRanges: map['sourceIpRanges'] == null ? null : pulumi.Input.decodeList<QosIpRange>(map['sourceIpRanges'], (value) => QosIpRange.fromMap((value as Map).cast<String, dynamic>())),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : pulumi.Input.decodeList<QosPortRange>(map['sourcePortRanges'], (value) => QosPortRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

