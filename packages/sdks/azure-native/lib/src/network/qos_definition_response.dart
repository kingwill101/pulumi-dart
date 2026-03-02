// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_ip_range_response.dart';
import 'qos_port_range_response.dart';

/// Quality of Service defines the traffic configuration between endpoints. Mandatory to have one marking.
class QosDefinitionResponse {
  /// Destination IP ranges.
  final pulumi.Input<List<QosIpRangeResponse>>? destinationIpRanges;
  /// Destination port ranges.
  final pulumi.Input<List<QosPortRangeResponse>>? destinationPortRanges;
  /// List of markings to be used in the configuration.
  final pulumi.Input<List<int>>? markings;
  /// RNM supported protocol types.
  final pulumi.Input<String>? protocol;
  /// Source IP ranges.
  final pulumi.Input<List<QosIpRangeResponse>>? sourceIpRanges;
  /// Sources port ranges.
  final pulumi.Input<List<QosPortRangeResponse>>? sourcePortRanges;

  /// Creates a new [QosDefinitionResponse].
  /// [destinationIpRanges] Destination IP ranges.
  /// [destinationPortRanges] Destination port ranges.
  /// [markings] List of markings to be used in the configuration.
  /// [protocol] RNM supported protocol types.
  /// [sourceIpRanges] Source IP ranges.
  /// [sourcePortRanges] Sources port ranges.
  QosDefinitionResponse({
    this.destinationIpRanges,
    this.destinationPortRanges,
    this.markings,
    this.protocol,
    this.sourceIpRanges,
    this.sourcePortRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRangeResponse>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<QosIpRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRangeResponse>, List<Map<String, dynamic>>>(destinationPortRanges, (value) => pulumi.Input.encodeList<QosPortRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'markings': ?markings,
      'protocol': ?protocol,
      'sourceIpRanges': ?pulumi.Input.mapOptionalInputValue<List<QosIpRangeResponse>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<QosIpRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePortRanges': ?pulumi.Input.mapOptionalInputValue<List<QosPortRangeResponse>, List<Map<String, dynamic>>>(sourcePortRanges, (value) => pulumi.Input.encodeList<QosPortRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory QosDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return QosDefinitionResponse(
      destinationIpRanges: map['destinationIpRanges'] == null ? null : (pulumi.Input.decodeList<QosIpRangeResponse>(map['destinationIpRanges'], (value) => QosIpRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : (pulumi.Input.decodeList<QosPortRangeResponse>(map['destinationPortRanges'], (value) => QosPortRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      markings: map['markings'] == null ? null : ((map['markings'] as List).cast<int>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      sourceIpRanges: map['sourceIpRanges'] == null ? null : (pulumi.Input.decodeList<QosIpRangeResponse>(map['sourceIpRanges'], (value) => QosIpRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : (pulumi.Input.decodeList<QosPortRangeResponse>(map['sourcePortRanges'], (value) => QosPortRangeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

