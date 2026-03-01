// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_endpoint.dart';
import 'wire_group_topology.dart';
import 'wire_group_wire.dart';
import 'wire_group_wire_group_properties.dart';
import 'wire_group_wire_properties.dart';

/// Input properties used for looking up and filtering WireGroup resources.
class WireGroupState {
  /// Indicates whether the wire group is administratively enabled.
  final pulumi.Input<bool>? adminEnabled;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Required cross site network to which wire group belongs.
  final pulumi.Input<String>? crossSiteNetwork;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Endpoints grouped by location, each mapping to interconnect configurations.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupEndpoint>>? endpoints;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Topology details for the wire group configuration.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupTopology>>? topologies;
  /// Properties specific to the wire group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireGroupProperties>? wireGroupProperties;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireProperties>? wireProperties;
  /// The single/redundant wire(s) managed by the wire group.
  /// Structure is documented below.
  final pulumi.Input<List<WireGroupWire>>? wires;

  /// Creates a new [WireGroupState].
  /// [adminEnabled] Indicates whether the wire group is administratively enabled.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [crossSiteNetwork] Required cross site network to which wire group belongs.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  /// [topologies] Topology details for the wire group configuration.
  /// [wireGroupProperties] Properties specific to the wire group.
  /// [wireProperties] Default properties for wires within the group.
  /// [wires] The single/redundant wire(s) managed by the wire group.
  WireGroupState({
    pulumi.Output<bool>? adminEnabled,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? crossSiteNetwork,
    pulumi.Output<String>? description,
    pulumi.Output<List<WireGroupEndpoint>>? endpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<WireGroupTopology>>? topologies,
    pulumi.Output<WireGroupWireGroupProperties>? wireGroupProperties,
    pulumi.Output<WireGroupWireProperties>? wireProperties,
    pulumi.Output<List<WireGroupWire>>? wires,
  }) :
      adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      crossSiteNetwork = pulumi.Input.asOptionalInput<String>(crossSiteNetwork),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<WireGroupEndpoint>>(endpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      topologies = pulumi.Input.asOptionalInput<List<WireGroupTopology>>(topologies),
      wireGroupProperties = pulumi.Input.asOptionalInput<WireGroupWireGroupProperties>(wireGroupProperties),
      wireProperties = pulumi.Input.asOptionalInput<WireGroupWireProperties>(wireProperties),
      wires = pulumi.Input.asOptionalInput<List<WireGroupWire>>(wires);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'creationTimestamp': ?creationTimestamp,
      'crossSiteNetwork': ?crossSiteNetwork,
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<WireGroupEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<WireGroupEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'topologies': ?pulumi.Input.mapOptionalInputValue<List<WireGroupTopology>, List<Map<String, dynamic>>>(topologies, (value) => pulumi.Input.encodeList<WireGroupTopology, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wireGroupProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireGroupProperties, Map<String, dynamic>>(wireGroupProperties, (value) => value.toMap()),
      'wireProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireProperties, Map<String, dynamic>>(wireProperties, (value) => value.toMap()),
      'wires': ?pulumi.Input.mapOptionalInputValue<List<WireGroupWire>, List<Map<String, dynamic>>>(wires, (value) => pulumi.Input.encodeList<WireGroupWire, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WireGroupState.fromMap(Map<String, dynamic> map) {
    return WireGroupState(
      adminEnabled: map['adminEnabled'] == null ? null : pulumi.Output.create<bool>(map['adminEnabled'] as bool),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      crossSiteNetwork: map['crossSiteNetwork'] == null ? null : pulumi.Output.create<String>(map['crossSiteNetwork'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<WireGroupEndpoint>>(pulumi.Input.decodeList<WireGroupEndpoint>(map['endpoints'], (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topologies: map['topologies'] == null ? null : pulumi.Output.create<List<WireGroupTopology>>(pulumi.Input.decodeList<WireGroupTopology>(map['topologies'], (value) => WireGroupTopology.fromMap((value as Map).cast<String, dynamic>()))),
      wireGroupProperties: map['wireGroupProperties'] == null ? null : pulumi.Output.create<WireGroupWireGroupProperties>(WireGroupWireGroupProperties.fromMap((map['wireGroupProperties'] as Map).cast<String, dynamic>())),
      wireProperties: map['wireProperties'] == null ? null : pulumi.Output.create<WireGroupWireProperties>(WireGroupWireProperties.fromMap((map['wireProperties'] as Map).cast<String, dynamic>())),
      wires: map['wires'] == null ? null : pulumi.Output.create<List<WireGroupWire>>(pulumi.Input.decodeList<WireGroupWire>(map['wires'], (value) => WireGroupWire.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

