// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_connectivity_configuration_applies_to_group.dart';
import 'network_manager_connectivity_configuration_hub.dart';

/// Input properties used for looking up and filtering NetworkManagerConnectivityConfiguration resources.
class NetworkManagerConnectivityConfigurationState {
  /// One or more `appliesToGroup` blocks as defined below.
  final pulumi.Input<List<NetworkManagerConnectivityConfigurationAppliesToGroup>?>? appliesToGroups;
  /// Whether connected group address overlap is enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Changing `connectedGroupAddressOverlapEnabled` from `true` to `false` forces a new Network Manager Connectivity Configuration to be created because the Azure API does not support this modification.
  final pulumi.Input<bool?>? connectedGroupAddressOverlapEnabled;
  /// Specifies the scale of private endpoints allowed in the connected group. Possible values are `Standard` and `HighScale`. Defaults to `Standard`.
  final pulumi.Input<String?>? connectedGroupPrivateEndpointsScale;
  /// Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`.
  final pulumi.Input<String?>? connectivityTopology;
  /// Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`.
  final pulumi.Input<bool?>? deleteExistingPeeringEnabled;
  /// A description of the Connectivity Configuration.
  final pulumi.Input<String?>? description;
  /// Indicates whether to global mesh is supported. Possible values are `true` and `false`.
  final pulumi.Input<bool?>? globalMeshEnabled;
  /// A `hub` block as defined below.
  final pulumi.Input<NetworkManagerConnectivityConfigurationHub?>? hub;
  /// Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created.
  final pulumi.Input<String?>? networkManagerId;
  /// Whether peering enforcement is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? peeringEnforcementEnabled;

  /// Creates a new [NetworkManagerConnectivityConfigurationState].
  /// [appliesToGroups] One or more `appliesToGroup` blocks as defined below.
  /// [connectedGroupAddressOverlapEnabled] Whether connected group address overlap is enabled. Defaults to `true`.
  /// [connectedGroupPrivateEndpointsScale] Specifies the scale of private endpoints allowed in the connected group. Possible values are `Standard` and `HighScale`. Defaults to `Standard`.
  /// [connectivityTopology] Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`.
  /// [deleteExistingPeeringEnabled] Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`.
  /// [description] A description of the Connectivity Configuration.
  /// [globalMeshEnabled] Indicates whether to global mesh is supported. Possible values are `true` and `false`.
  /// [hub] A `hub` block as defined below.
  /// [name] Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created.
  /// [peeringEnforcementEnabled] Whether peering enforcement is enabled. Defaults to `false`.
  const NetworkManagerConnectivityConfigurationState({
    this.appliesToGroups,
    this.connectedGroupAddressOverlapEnabled,
    this.connectedGroupPrivateEndpointsScale,
    this.connectivityTopology,
    this.deleteExistingPeeringEnabled,
    this.description,
    this.globalMeshEnabled,
    this.hub,
    this.name,
    this.networkManagerId,
    this.peeringEnforcementEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerConnectivityConfigurationAppliesToGroup>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerConnectivityConfigurationAppliesToGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectedGroupAddressOverlapEnabled': ?connectedGroupAddressOverlapEnabled,
      'connectedGroupPrivateEndpointsScale': ?connectedGroupPrivateEndpointsScale,
      'connectivityTopology': ?connectivityTopology,
      'deleteExistingPeeringEnabled': ?deleteExistingPeeringEnabled,
      'description': ?description,
      'globalMeshEnabled': ?globalMeshEnabled,
      'hub': ?pulumi.Input.mapOptionalInputValue<NetworkManagerConnectivityConfigurationHub, Map<String, dynamic>>(hub, (value) => value.toMap()),
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'peeringEnforcementEnabled': ?peeringEnforcementEnabled,
    };
  }

  factory NetworkManagerConnectivityConfigurationState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerConnectivityConfigurationState(
      appliesToGroups: (() { final guardedValue = map['appliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerConnectivityConfigurationAppliesToGroup>(guardedValue, (value) => NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectedGroupAddressOverlapEnabled: (() { final guardedValue = map['connectedGroupAddressOverlapEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectedGroupPrivateEndpointsScale: (() { final guardedValue = map['connectedGroupPrivateEndpointsScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectivityTopology: (() { final guardedValue = map['connectivityTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteExistingPeeringEnabled: (() { final guardedValue = map['deleteExistingPeeringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalMeshEnabled: (() { final guardedValue = map['globalMeshEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hub: (() { final guardedValue = map['hub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkManagerConnectivityConfigurationHub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringEnforcementEnabled: (() { final guardedValue = map['peeringEnforcementEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
