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
    this.name,
    this.project,
    this.selfLink,
    this.zone,
  });

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
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
