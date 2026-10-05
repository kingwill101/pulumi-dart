// ignore_for_file: unused_element, unnecessary_cast

import 'packet_mirroring_filter_response_compute_beta.dart';
import 'packet_mirroring_forwarding_rule_info_response_compute_beta.dart';
import 'packet_mirroring_mirrored_resource_info_response_compute_beta.dart';
import 'packet_mirroring_network_info_response_compute_beta.dart';

/// Result data returned by getPacketMirroring.
class GetPacketMirroringComputeBetaResult {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  final PacketMirroringForwardingRuleInfoResponseComputeBeta? collectorIlb;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  final String? enable;
  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  final PacketMirroringFilterResponseComputeBeta? filter;
  /// Type of the resource. Always compute#packetMirroring for packet mirrorings.
  final String? kind;
  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  final PacketMirroringMirroredResourceInfoResponseComputeBeta? mirroredResources;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  final PacketMirroringNetworkInfoResponseComputeBeta? network;
  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  final int? priority;
  /// URI of the region where the packetMirroring resides.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;

  /// Creates a new [GetPacketMirroringComputeBetaResult].
  /// [collectorIlb] The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enable] Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  /// [filter] Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  /// [kind] Type of the resource. Always compute#packetMirroring for packet mirrorings.
  /// [mirroredResources] PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  /// [priority] The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  /// [region] URI of the region where the packetMirroring resides.
  /// [selfLink] Server-defined URL for the resource.
  const GetPacketMirroringComputeBetaResult({
    this.collectorIlb,
    this.creationTimestamp,
    this.description,
    this.enable,
    this.filter,
    this.kind,
    this.mirroredResources,
    this.name,
    this.network,
    this.priority,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': ?collectorIlb?.toMap(),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'enable': ?enable,
      'filter': ?filter?.toMap(),
      'kind': ?kind,
      'mirroredResources': ?mirroredResources?.toMap(),
      'name': ?name,
      'network': ?network?.toMap(),
      'priority': ?priority,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetPacketMirroringComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeBetaResult(
      collectorIlb: (() { final guardedValue = map['collectorIlb']; if (guardedValue == null) return null; return PacketMirroringForwardingRuleInfoResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return PacketMirroringFilterResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mirroredResources: (() { final guardedValue = map['mirroredResources']; if (guardedValue == null) return null; return PacketMirroringMirroredResourceInfoResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return PacketMirroringNetworkInfoResponseComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
