// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wire_group_endpoint.dart';
import 'wire_group_wire_group_properties.dart';
import 'wire_group_wire_properties.dart';

/// {@template pulumi_compute_wire_group_wire_group_args_doc}
/// The set of arguments for WireGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_wire_group_wire_group_args_doc}
class WireGroupArgs {
  /// Indicates whether the wire group is administratively enabled.
  final pulumi.Input<bool>? adminEnabled;
  /// Required cross site network to which wire group belongs.
  final pulumi.Input<String> crossSiteNetwork;
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
  /// Properties specific to the wire group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireGroupProperties>? wireGroupProperties;
  /// Default properties for wires within the group.
  /// Structure is documented below.
  final pulumi.Input<WireGroupWireProperties>? wireProperties;

  /// Creates a new [WireGroupArgs].
  /// [adminEnabled] Indicates whether the wire group is administratively enabled.
  /// [crossSiteNetwork] Required cross site network to which wire group belongs.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [endpoints] Endpoints grouped by location, each mapping to interconnect configurations.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  /// [wireGroupProperties] Properties specific to the wire group.
  /// [wireProperties] Default properties for wires within the group.
  WireGroupArgs({
    pulumi.Output<bool>? adminEnabled,
    required pulumi.Output<String> crossSiteNetwork,
    pulumi.Output<String>? description,
    pulumi.Output<List<WireGroupEndpoint>>? endpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<WireGroupWireGroupProperties>? wireGroupProperties,
    pulumi.Output<WireGroupWireProperties>? wireProperties,
  }) :
      adminEnabled = pulumi.Input.asOptionalInput<bool>(adminEnabled),
      crossSiteNetwork = pulumi.Input.asInput<String>(crossSiteNetwork),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<WireGroupEndpoint>>(endpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      wireGroupProperties = pulumi.Input.asOptionalInput<WireGroupWireGroupProperties>(wireGroupProperties),
      wireProperties = pulumi.Input.asOptionalInput<WireGroupWireProperties>(wireProperties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'crossSiteNetwork': crossSiteNetwork,
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<WireGroupEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<WireGroupEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'wireGroupProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireGroupProperties, Map<String, dynamic>>(wireGroupProperties, (value) => value.toMap()),
      'wireProperties': ?pulumi.Input.mapOptionalInputValue<WireGroupWireProperties, Map<String, dynamic>>(wireProperties, (value) => value.toMap()),
    };
  }

  factory WireGroupArgs.fromMap(Map<String, dynamic> map) {
    return WireGroupArgs(
      adminEnabled: map['adminEnabled'] == null ? null : pulumi.Output.create<bool>(map['adminEnabled'] as bool),
      crossSiteNetwork: pulumi.Output.create<String>(map['crossSiteNetwork'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<WireGroupEndpoint>>(pulumi.Input.decodeList<WireGroupEndpoint>(map['endpoints'], (value) => WireGroupEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      wireGroupProperties: map['wireGroupProperties'] == null ? null : pulumi.Output.create<WireGroupWireGroupProperties>(WireGroupWireGroupProperties.fromMap((map['wireGroupProperties'] as Map).cast<String, dynamic>())),
      wireProperties: map['wireProperties'] == null ? null : pulumi.Output.create<WireGroupWireProperties>(WireGroupWireProperties.fromMap((map['wireProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

