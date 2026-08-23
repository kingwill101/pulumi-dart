// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_network_endpoint_group_get_region_network_endpoint_group_args_doc}
/// Arguments for getRegionNetworkEndpointGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_network_endpoint_group_get_region_network_endpoint_group_args_doc}
class GetRegionNetworkEndpointGroupArgs {
  /// The Network Endpoint Group name. Provide either this or a `selfLink`.
  final pulumi.Input<String>? name;
  /// The ID of the project to list versions in. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region where the Serverless REGs Reside. Provide either this or a `selfLink`.
  final pulumi.Input<String>? region;
  /// The Network Endpoint Group self_link.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetRegionNetworkEndpointGroupArgs].
  /// [name] The Network Endpoint Group name. Provide either this or a `selfLink`.
  /// [project] The ID of the project to list versions in. If it is not provided, the provider project is used.
  /// [region] A reference to the region where the Serverless REGs Reside. Provide either this or a `selfLink`.
  /// [selfLink] The Network Endpoint Group self_link.
  const GetRegionNetworkEndpointGroupArgs({
    this.name,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetRegionNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
