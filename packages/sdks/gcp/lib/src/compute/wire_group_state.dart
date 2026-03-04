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
    this.adminEnabled,
    this.creationTimestamp,
    this.crossSiteNetwork,
    this.description,
    this.endpoints,
    this.name,
    this.project,
    this.topologies,
    this.wireGroupProperties,
    this.wireProperties,
    this.wires,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'creationTimestamp': ?creationTimestamp,
      'crossSiteNetwork': ?crossSiteNetwork,
      'description': ?description,
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<WireGroupEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  WireGroupEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'project': ?project,
      'topologies':
          ?pulumi.Input.mapOptionalInputValue<
            List<WireGroupTopology>,
            List<Map<String, dynamic>>
          >(
            topologies,
            (value) =>
                pulumi.Input.encodeList<
                  WireGroupTopology,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'wireGroupProperties':
          ?pulumi.Input.mapOptionalInputValue<
            WireGroupWireGroupProperties,
            Map<String, dynamic>
          >(wireGroupProperties, (value) => value.toMap()),
      'wireProperties':
          ?pulumi.Input.mapOptionalInputValue<
            WireGroupWireProperties,
            Map<String, dynamic>
          >(wireProperties, (value) => value.toMap()),
      'wires':
          ?pulumi.Input.mapOptionalInputValue<
            List<WireGroupWire>,
            List<Map<String, dynamic>>
          >(
            wires,
            (value) =>
                pulumi.Input.encodeList<WireGroupWire, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory WireGroupState.fromMap(Map<String, dynamic> map) {
    return WireGroupState(
      adminEnabled: (() {
        final guardedValue = map['adminEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      creationTimestamp: (() {
        final guardedValue = map['creationTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossSiteNetwork: (() {
        final guardedValue = map['crossSiteNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WireGroupEndpoint>(
            guardedValue,
            (value) => WireGroupEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topologies: (() {
        final guardedValue = map['topologies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WireGroupTopology>(
            guardedValue,
            (value) => WireGroupTopology.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      wireGroupProperties: (() {
        final guardedValue = map['wireGroupProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WireGroupWireGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      wireProperties: (() {
        final guardedValue = map['wireProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WireGroupWireProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      wires: (() {
        final guardedValue = map['wires'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WireGroupWire>(
            guardedValue,
            (value) =>
                WireGroupWire.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
