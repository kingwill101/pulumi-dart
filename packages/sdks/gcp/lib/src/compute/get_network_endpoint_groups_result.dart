// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_endpoint_groups_network_endpoint_group.dart';

/// Result data returned by getNetworkEndpointGroups.
class GetNetworkEndpointGroupsResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of all retrieved Network Endpoint Groups. For list of the attributes, see
  /// the `gcp.compute.NetworkEndpointGroup` data source.
  final List<GetNetworkEndpointGroupsNetworkEndpointGroup>? networkEndpointGroups;
  final String? project;
  final String? zone;

  /// Creates a new [GetNetworkEndpointGroupsResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkEndpointGroups] A list of all retrieved Network Endpoint Groups. For list of the attributes, see
  /// [project] Optional.
  /// [zone] Optional.
  const GetNetworkEndpointGroupsResult({
    this.filter,
    this.id,
    this.networkEndpointGroups,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'networkEndpointGroups': ?(() { final guardedValue = networkEndpointGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkEndpointGroupsNetworkEndpointGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetNetworkEndpointGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupsResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkEndpointGroups: (() { final guardedValue = map['networkEndpointGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkEndpointGroupsNetworkEndpointGroup>(guardedValue, (value) => GetNetworkEndpointGroupsNetworkEndpointGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
