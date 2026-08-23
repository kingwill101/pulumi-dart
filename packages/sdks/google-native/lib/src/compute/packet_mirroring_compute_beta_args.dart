// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_enable_compute_beta.dart';
import 'packet_mirroring_filter_compute_beta.dart';
import 'packet_mirroring_forwarding_rule_info_compute_beta.dart';
import 'packet_mirroring_mirrored_resource_info_compute_beta.dart';
import 'packet_mirroring_network_info_compute_beta.dart';

/// {@template pulumi_compute_beta_packet_mirroring_compute_beta_args_doc}
/// The set of arguments for PacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_packet_mirroring_compute_beta_args_doc}
class PacketMirroringComputeBetaArgs {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  final pulumi.Input<PacketMirroringForwardingRuleInfoComputeBeta>? collectorIlb;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  final pulumi.Input<PacketMirroringEnableComputeBeta>? enable;
  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  final pulumi.Input<PacketMirroringFilterComputeBeta>? filter;
  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  final pulumi.Input<PacketMirroringMirroredResourceInfoComputeBeta>? mirroredResources;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  final pulumi.Input<PacketMirroringNetworkInfoComputeBeta>? network;
  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [PacketMirroringComputeBetaArgs].
  /// [collectorIlb] The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enable] Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  /// [filter] Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  /// [mirroredResources] PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  /// [priority] The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  const PacketMirroringComputeBetaArgs({
    this.collectorIlb,
    this.description,
    this.enable,
    this.filter,
    this.mirroredResources,
    this.name,
    this.network,
    this.priority,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': ?pulumi.Input.mapOptionalInputValue<PacketMirroringForwardingRuleInfoComputeBeta, Map<String, dynamic>>(collectorIlb, (value) => value.toMap()),
      'description': ?description,
      'enable': ?pulumi.Input.mapOptionalInputValue<PacketMirroringEnableComputeBeta, String>(enable, (value) => value.wireValue),
      'filter': ?pulumi.Input.mapOptionalInputValue<PacketMirroringFilterComputeBeta, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'mirroredResources': ?pulumi.Input.mapOptionalInputValue<PacketMirroringMirroredResourceInfoComputeBeta, Map<String, dynamic>>(mirroredResources, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<PacketMirroringNetworkInfoComputeBeta, Map<String, dynamic>>(network, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory PacketMirroringComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return PacketMirroringComputeBetaArgs(
      collectorIlb: (() { final guardedValue = map['collectorIlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringForwardingRuleInfoComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringEnableComputeBeta.fromValue(guardedValue as String)); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringFilterComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirroredResources: (() { final guardedValue = map['mirroredResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringMirroredResourceInfoComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringNetworkInfoComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
