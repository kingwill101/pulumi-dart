// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_collector_ilb.dart';
import 'packet_mirroring_filter.dart';
import 'packet_mirroring_mirrored_resources.dart';
import 'packet_mirroring_network.dart';

/// Input properties used for looking up and filtering PacketMirroring resources.
class PacketMirroringState {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have is_mirroring_collector
  /// set to true.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringCollectorIlb>? collectorIlb;
  /// A human-readable description of the rule.
  final pulumi.Input<String>? description;
  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringFilter>? filter;
  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringMirroredResources>? mirroredResources;
  /// The name of the packet mirroring rule
  final pulumi.Input<String>? name;
  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringNetwork>? network;
  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [PacketMirroringState].
  /// [collectorIlb] The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// [description] A human-readable description of the rule.
  /// [filter] A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// [mirroredResources] A means of specifying which resources to mirror.
  /// [name] The name of the packet mirroring rule
  /// [network] Specifies the mirrored VPC network. Only packets in this network
  /// [priority] Since only one rule can be active at a time, priority is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created address should reside.
  PacketMirroringState({
    pulumi.Output<PacketMirroringCollectorIlb>? collectorIlb,
    pulumi.Output<String>? description,
    pulumi.Output<PacketMirroringFilter>? filter,
    pulumi.Output<PacketMirroringMirroredResources>? mirroredResources,
    pulumi.Output<String>? name,
    pulumi.Output<PacketMirroringNetwork>? network,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      collectorIlb = pulumi.Input.asOptionalInput<PacketMirroringCollectorIlb>(collectorIlb),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<PacketMirroringFilter>(filter),
      mirroredResources = pulumi.Input.asOptionalInput<PacketMirroringMirroredResources>(mirroredResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<PacketMirroringNetwork>(network),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': ?pulumi.Input.mapOptionalInputValue<PacketMirroringCollectorIlb, Map<String, dynamic>>(collectorIlb, (value) => value.toMap()),
      'description': ?description,
      'filter': ?pulumi.Input.mapOptionalInputValue<PacketMirroringFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'mirroredResources': ?pulumi.Input.mapOptionalInputValue<PacketMirroringMirroredResources, Map<String, dynamic>>(mirroredResources, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<PacketMirroringNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
    };
  }

  factory PacketMirroringState.fromMap(Map<String, dynamic> map) {
    return PacketMirroringState(
      collectorIlb: map['collectorIlb'] == null ? null : pulumi.Output.create<PacketMirroringCollectorIlb>(PacketMirroringCollectorIlb.fromMap((map['collectorIlb'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<PacketMirroringFilter>(PacketMirroringFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      mirroredResources: map['mirroredResources'] == null ? null : pulumi.Output.create<PacketMirroringMirroredResources>(PacketMirroringMirroredResources.fromMap((map['mirroredResources'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<PacketMirroringNetwork>(PacketMirroringNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

