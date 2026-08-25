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
  /// specified forwarding rule must have isMirroringCollector
  /// set to true.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringCollectorIlb?>? collectorIlb;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description of the rule.
  final pulumi.Input<String?>? description;
  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring
  /// policy will not be enforced on the network. The default is TRUE.
  /// Possible values are: `TRUE`, `FALSE`.
  final pulumi.Input<String?>? enable;
  /// A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringFilter?>? filter;
  /// A means of specifying which resources to mirror.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringMirroredResources?>? mirroredResources;
  /// The name of the packet mirroring rule
  final pulumi.Input<String?>? name;
  /// Specifies the mirrored VPC network. Only packets in this network
  /// will be mirrored. All mirrored VMs should have a NIC in the given
  /// network. All mirrored subnetworks should belong to the given network.
  /// Structure is documented below.
  final pulumi.Input<PacketMirroringNetwork?>? network;
  /// Since only one rule can be active at a time, priority is
  /// used to break ties in the case of two rules that apply to
  /// the same instances.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [PacketMirroringState].
  /// [collectorIlb] The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the rule.
  /// [enable] Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring
  /// [filter] A filter for mirrored traffic.  If unset, all traffic is mirrored.
  /// [mirroredResources] A means of specifying which resources to mirror.
  /// [name] The name of the packet mirroring rule
  /// [network] Specifies the mirrored VPC network. Only packets in this network
  /// [priority] Since only one rule can be active at a time, priority is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created address should reside.
  const PacketMirroringState({
    this.collectorIlb,
    this.deletionPolicy,
    this.description,
    this.enable,
    this.filter,
    this.mirroredResources,
    this.name,
    this.network,
    this.priority,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectorIlb': ?pulumi.Input.mapOptionalInputValue<PacketMirroringCollectorIlb, Map<String, dynamic>>(collectorIlb, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enable': ?enable,
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
      collectorIlb: (() { final guardedValue = map['collectorIlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringCollectorIlb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirroredResources: (() { final guardedValue = map['mirroredResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringMirroredResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PacketMirroringNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
