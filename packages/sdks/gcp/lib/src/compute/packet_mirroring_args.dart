// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_collector_ilb.dart';
import 'packet_mirroring_filter.dart';
import 'packet_mirroring_mirrored_resources.dart';
import 'packet_mirroring_network.dart';

/// {@template pulumi_compute_packet_mirroring_packet_mirroring_args_doc}
/// The set of arguments for PacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_packet_mirroring_packet_mirroring_args_doc}
class PacketMirroringArgs {
  /// The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// that will be used as collector for mirrored traffic. The
  /// specified forwarding rule must have is_mirroring_collector
  /// set to true.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringCollectorIlb> collectorIlb;
  /// A human-readable description of the rule.
  final pulumi.Input<String>? description;
  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringFilter>? filter;
  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringMirroredResources> mirroredResources;
  /// The name of the packet mirroring rule
  final pulumi.Input<String>? name;
  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringNetwork> network;
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

  /// Creates a new [PacketMirroringArgs].
  /// [collectorIlb] The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// [description] A human-readable description of the rule.
  /// [filter] A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// [mirroredResources] A means of specifying which resources to mirror.
  /// [name] The name of the packet mirroring rule
  /// [network] Specifies the mirrored VPC network. Only packets in this network
  /// [priority] Since only one rule can be active at a time, priority is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created address should reside.
  const PacketMirroringArgs({
    required this.collectorIlb,
    this.description,
    this.filter,
    required this.mirroredResources,
    this.name,
    required this.network,
    this.priority,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': pulumi.Input.mapInputValue<PacketMirroringCollectorIlb, Map<String, dynamic>>(collectorIlb, (value) => value.toMap()),
      'description': ?description,
      'filter': ?pulumi.Input.mapOptionalInputValue<PacketMirroringFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'mirroredResources': pulumi.Input.mapInputValue<PacketMirroringMirroredResources, Map<String, dynamic>>(mirroredResources, (value) => value.toMap()),
      'name': ?name,
      'network': pulumi.Input.mapInputValue<PacketMirroringNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'priority': ?priority,
      'project': ?project,
      'region': ?region,
    };
  }

  factory PacketMirroringArgs.fromMap(Map<String, dynamic> map) {
    return PacketMirroringArgs(
      collectorIlb: pulumi.Input.fromValue(PacketMirroringCollectorIlb.fromMap((map['collectorIlb']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirroredResources: pulumi.Input.fromValue(PacketMirroringMirroredResources.fromMap((map['mirroredResources']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(PacketMirroringNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

