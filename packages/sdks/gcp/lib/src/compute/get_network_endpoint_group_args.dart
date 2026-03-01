// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_endpoint_group_get_network_endpoint_group_args_doc}
/// Arguments for getNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_endpoint_group_get_network_endpoint_group_args_doc}
class GetNetworkEndpointGroupArgs {
  /// The Network Endpoint Group name.
  /// Provide either this or a `self_link`.
  final pulumi.Input<String>? name;
  /// The ID of the project to list versions in.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Network Endpoint Group self_link.
  final pulumi.Input<String>? selfLink;
  /// The Network Endpoint Group availability zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetNetworkEndpointGroupArgs].
  /// [name] The Network Endpoint Group name.
  /// [project] The ID of the project to list versions in.
  /// [selfLink] The Network Endpoint Group self_link.
  /// [zone] The Network Endpoint Group availability zone.
  GetNetworkEndpointGroupArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? zone,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'zone': ?zone,
    };
  }

  factory GetNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

