// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_manager_connectivity_configuration_applies_to_group.dart';
import 'get_network_manager_connectivity_configuration_hub.dart';

/// Result data returned by getNetworkManagerConnectivityConfiguration.
class GetNetworkManagerConnectivityConfigurationResult {
  /// An `applies_to_group` block as defined below.
  final List<GetNetworkManagerConnectivityConfigurationAppliesToGroup> appliesToGroups;
  /// The connectivity topology type.
  final String connectivityTopology;
  /// Whether to current existing Virtual Network Peering in the Connectivity Configuration affected scope.
  final bool deleteExistingPeeringEnabled;
  /// The description of the Connectivity Configuration.
  final String description;
  /// Whether global mesh is supported.
  final bool globalMeshEnabled;
  /// A `hub` block as defined below.
  final List<GetNetworkManagerConnectivityConfigurationHub> hubs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String networkManagerId;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationResult].
  /// [appliesToGroups] An `applies_to_group` block as defined below.
  /// [connectivityTopology] The connectivity topology type.
  /// [deleteExistingPeeringEnabled] Whether to current existing Virtual Network Peering in the Connectivity Configuration affected scope.
  /// [description] The description of the Connectivity Configuration.
  /// [globalMeshEnabled] Whether global mesh is supported.
  /// [hubs] A `hub` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [networkManagerId] Required.
  GetNetworkManagerConnectivityConfigurationResult({
    required this.appliesToGroups,
    required this.connectivityTopology,
    required this.deleteExistingPeeringEnabled,
    required this.description,
    required this.globalMeshEnabled,
    required this.hubs,
    required this.id,
    required this.name,
    required this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.encodeList<GetNetworkManagerConnectivityConfigurationAppliesToGroup, Map<String, dynamic>>(appliesToGroups, (value) => value.toMap()),
      'connectivityTopology': connectivityTopology,
      'deleteExistingPeeringEnabled': deleteExistingPeeringEnabled,
      'description': description,
      'globalMeshEnabled': globalMeshEnabled,
      'hubs': pulumi.Input.encodeList<GetNetworkManagerConnectivityConfigurationHub, Map<String, dynamic>>(hubs, (value) => value.toMap()),
      'id': id,
      'name': name,
      'networkManagerId': networkManagerId,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationResult(
      appliesToGroups: pulumi.Input.decodeList<GetNetworkManagerConnectivityConfigurationAppliesToGroup>(map['appliesToGroups']!, (value) => GetNetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>())),
      connectivityTopology: map['connectivityTopology'] as String,
      deleteExistingPeeringEnabled: map['deleteExistingPeeringEnabled'] as bool,
      description: map['description'] as String,
      globalMeshEnabled: map['globalMeshEnabled'] as bool,
      hubs: pulumi.Input.decodeList<GetNetworkManagerConnectivityConfigurationHub>(map['hubs']!, (value) => GetNetworkManagerConnectivityConfigurationHub.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      networkManagerId: map['networkManagerId'] as String,
    );
  }
}

