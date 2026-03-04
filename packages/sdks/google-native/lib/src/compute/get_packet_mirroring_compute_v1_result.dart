// ignore_for_file: unused_element, unnecessary_cast

import 'packet_mirroring_filter_response_compute_v1.dart';
import 'packet_mirroring_forwarding_rule_info_response_compute_v1.dart';
import 'packet_mirroring_mirrored_resource_info_response_compute_v1.dart';
import 'packet_mirroring_network_info_response_compute_v1.dart';

/// Result data returned by getPacketMirroring.
class GetPacketMirroringComputeV1Result {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  final PacketMirroringForwardingRuleInfoResponseComputeV1 collectorIlb;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  final String enable;

  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  final PacketMirroringFilterResponseComputeV1 filter;

  /// Type of the resource. Always compute#packetMirroring for packet mirrorings.
  final String kind;

  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  final PacketMirroringMirroredResourceInfoResponseComputeV1 mirroredResources;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  final PacketMirroringNetworkInfoResponseComputeV1 network;

  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  final int priority;

  /// URI of the region where the packetMirroring resides.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Creates a new [GetPacketMirroringComputeV1Result].
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
  GetPacketMirroringComputeV1Result({
    required this.collectorIlb,
    required this.creationTimestamp,
    required this.description,
    required this.enable,
    required this.filter,
    required this.kind,
    required this.mirroredResources,
    required this.name,
    required this.network,
    required this.priority,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': collectorIlb.toMap(),
      'creationTimestamp': creationTimestamp,
      'description': description,
      'enable': enable,
      'filter': filter.toMap(),
      'kind': kind,
      'mirroredResources': mirroredResources.toMap(),
      'name': name,
      'network': network.toMap(),
      'priority': priority,
      'region': region,
      'selfLink': selfLink,
    };
  }

  factory GetPacketMirroringComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetPacketMirroringComputeV1Result(
      collectorIlb: PacketMirroringForwardingRuleInfoResponseComputeV1.fromMap(
        (map['collectorIlb']! as Map).cast<String, dynamic>(),
      ),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      enable: map['enable'] as String,
      filter: PacketMirroringFilterResponseComputeV1.fromMap(
        (map['filter']! as Map).cast<String, dynamic>(),
      ),
      kind: map['kind'] as String,
      mirroredResources:
          PacketMirroringMirroredResourceInfoResponseComputeV1.fromMap(
            (map['mirroredResources']! as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      network: PacketMirroringNetworkInfoResponseComputeV1.fromMap(
        (map['network']! as Map).cast<String, dynamic>(),
      ),
      priority: map['priority'] as int,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
