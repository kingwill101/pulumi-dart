// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_endpoint_groups_get_network_endpoint_groups_args_doc}
/// Arguments for getNetworkEndpointGroups.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_endpoint_groups_get_network_endpoint_groups_args_doc}
class GetNetworkEndpointGroupsArgs {
  /// A filter expression that filters Network Endpoint Groups listed in the response.
  final pulumi.Input<String>? filter;
  /// The ID of the project to list Network Endpoint Groups in. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone to list Network Endpoint Groups for. If `zone` is not specified, the provider-level zone must be set and is used
  /// instead.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetNetworkEndpointGroupsArgs].
  /// [filter] A filter expression that filters Network Endpoint Groups listed in the response.
  /// [project] The ID of the project to list Network Endpoint Groups in. If it is not provided, the provider project is used.
  /// [zone] The zone to list Network Endpoint Groups for. If `zone` is not specified, the provider-level zone must be set and is used
  const GetNetworkEndpointGroupsArgs({
    this.filter,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetNetworkEndpointGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
