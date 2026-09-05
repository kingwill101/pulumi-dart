// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_manager_connectivity_configuration_applies_to_group.dart';
import 'get_network_manager_connectivity_configuration_hub.dart';

/// Result data returned by getNetworkManagerConnectivityConfiguration.
class GetNetworkManagerConnectivityConfigurationResult {
  /// An `appliesToGroup` block as defined below.
  final List<GetNetworkManagerConnectivityConfigurationAppliesToGroup>? appliesToGroups;
  /// Whether connected group address overlap is enabled.
  final bool? connectedGroupAddressOverlapEnabled;
  /// The scale of private endpoints allowed in the connected group.
  final String? connectedGroupPrivateEndpointsScale;
  /// The connectivity topology type.
  final String? connectivityTopology;
  /// Whether to current existing Virtual Network Peering in the Connectivity Configuration affected scope.
  final bool? deleteExistingPeeringEnabled;
  /// The description of the Connectivity Configuration.
  final String? description;
  /// Whether global mesh is supported.
  final bool? globalMeshEnabled;
  /// A `hub` block as defined below.
  final List<GetNetworkManagerConnectivityConfigurationHub>? hubs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? networkManagerId;
  /// Whether peering enforcement is enabled.
  final bool? peeringEnforcementEnabled;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationResult].
  /// [appliesToGroups] An `appliesToGroup` block as defined below.
  /// [connectedGroupAddressOverlapEnabled] Whether connected group address overlap is enabled.
  /// [connectedGroupPrivateEndpointsScale] The scale of private endpoints allowed in the connected group.
  /// [connectivityTopology] The connectivity topology type.
  /// [deleteExistingPeeringEnabled] Whether to current existing Virtual Network Peering in the Connectivity Configuration affected scope.
  /// [description] The description of the Connectivity Configuration.
  /// [globalMeshEnabled] Whether global mesh is supported.
  /// [hubs] A `hub` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [networkManagerId] Optional.
  /// [peeringEnforcementEnabled] Whether peering enforcement is enabled.
  const GetNetworkManagerConnectivityConfigurationResult({
    this.appliesToGroups,
    this.connectedGroupAddressOverlapEnabled,
    this.connectedGroupPrivateEndpointsScale,
    this.connectivityTopology,
    this.deleteExistingPeeringEnabled,
    this.description,
    this.globalMeshEnabled,
    this.hubs,
    this.id,
    this.name,
    this.networkManagerId,
    this.peeringEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?(() { final guardedValue = appliesToGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkManagerConnectivityConfigurationAppliesToGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectedGroupAddressOverlapEnabled': ?connectedGroupAddressOverlapEnabled,
      'connectedGroupPrivateEndpointsScale': ?connectedGroupPrivateEndpointsScale,
      'connectivityTopology': ?connectivityTopology,
      'deleteExistingPeeringEnabled': ?deleteExistingPeeringEnabled,
      'description': ?description,
      'globalMeshEnabled': ?globalMeshEnabled,
      'hubs': ?(() { final guardedValue = hubs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkManagerConnectivityConfigurationHub, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'peeringEnforcementEnabled': ?peeringEnforcementEnabled,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationResult(
      appliesToGroups: (() { final guardedValue = map['appliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkManagerConnectivityConfigurationAppliesToGroup>(guardedValue, (value) => GetNetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectedGroupAddressOverlapEnabled: (() { final guardedValue = map['connectedGroupAddressOverlapEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      connectedGroupPrivateEndpointsScale: (() { final guardedValue = map['connectedGroupPrivateEndpointsScale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityTopology: (() { final guardedValue = map['connectivityTopology']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteExistingPeeringEnabled: (() { final guardedValue = map['deleteExistingPeeringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalMeshEnabled: (() { final guardedValue = map['globalMeshEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hubs: (() { final guardedValue = map['hubs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkManagerConnectivityConfigurationHub>(guardedValue, (value) => GetNetworkManagerConnectivityConfigurationHub.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeringEnforcementEnabled: (() { final guardedValue = map['peeringEnforcementEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
