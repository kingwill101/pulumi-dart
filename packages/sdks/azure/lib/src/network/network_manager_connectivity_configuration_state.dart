// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_connectivity_configuration_applies_to_group.dart';
import 'network_manager_connectivity_configuration_hub.dart';

/// Input properties used for looking up and filtering NetworkManagerConnectivityConfiguration resources.
class NetworkManagerConnectivityConfigurationState {
  /// One or more `applies_to_group` blocks as defined below.
  final pulumi.Input<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>? appliesToGroups;
  /// Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`.
  final pulumi.Input<String>? connectivityTopology;
  /// Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`.
  final pulumi.Input<bool>? deleteExistingPeeringEnabled;
  /// A description of the Connectivity Configuration.
  final pulumi.Input<String>? description;
  /// Indicates whether to global mesh is supported. Possible values are `true` and `false`.
  final pulumi.Input<bool>? globalMeshEnabled;
  /// A `hub` block as defined below.
  final pulumi.Input<NetworkManagerConnectivityConfigurationHub>? hub;
  /// Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created.
  final pulumi.Input<String>? networkManagerId;

  /// Creates a new [NetworkManagerConnectivityConfigurationState].
  /// [appliesToGroups] One or more `applies_to_group` blocks as defined below.
  /// [connectivityTopology] Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`.
  /// [deleteExistingPeeringEnabled] Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`.
  /// [description] A description of the Connectivity Configuration.
  /// [globalMeshEnabled] Indicates whether to global mesh is supported. Possible values are `true` and `false`.
  /// [hub] A `hub` block as defined below.
  /// [name] Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created.
  /// [networkManagerId] Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created.
  NetworkManagerConnectivityConfigurationState({
    pulumi.Output<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>? appliesToGroups,
    pulumi.Output<String>? connectivityTopology,
    pulumi.Output<bool>? deleteExistingPeeringEnabled,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? globalMeshEnabled,
    pulumi.Output<NetworkManagerConnectivityConfigurationHub>? hub,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
  }) :
      appliesToGroups = pulumi.Input.asOptionalInput<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>(appliesToGroups),
      connectivityTopology = pulumi.Input.asOptionalInput<String>(connectivityTopology),
      deleteExistingPeeringEnabled = pulumi.Input.asOptionalInput<bool>(deleteExistingPeeringEnabled),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalMeshEnabled = pulumi.Input.asOptionalInput<bool>(globalMeshEnabled),
      hub = pulumi.Input.asOptionalInput<NetworkManagerConnectivityConfigurationHub>(hub),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerConnectivityConfigurationAppliesToGroup>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerConnectivityConfigurationAppliesToGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityTopology': ?connectivityTopology,
      'deleteExistingPeeringEnabled': ?deleteExistingPeeringEnabled,
      'description': ?description,
      'globalMeshEnabled': ?globalMeshEnabled,
      'hub': ?pulumi.Input.mapOptionalInputValue<NetworkManagerConnectivityConfigurationHub, Map<String, dynamic>>(hub, (value) => value.toMap()),
      'name': ?name,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory NetworkManagerConnectivityConfigurationState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerConnectivityConfigurationState(
      appliesToGroups: map['appliesToGroups'] == null ? null : pulumi.Output.create<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>(pulumi.Input.decodeList<NetworkManagerConnectivityConfigurationAppliesToGroup>(map['appliesToGroups'], (value) => NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>()))),
      connectivityTopology: map['connectivityTopology'] == null ? null : pulumi.Output.create<String>(map['connectivityTopology'] as String),
      deleteExistingPeeringEnabled: map['deleteExistingPeeringEnabled'] == null ? null : pulumi.Output.create<bool>(map['deleteExistingPeeringEnabled'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalMeshEnabled: map['globalMeshEnabled'] == null ? null : pulumi.Output.create<bool>(map['globalMeshEnabled'] as bool),
      hub: map['hub'] == null ? null : pulumi.Output.create<NetworkManagerConnectivityConfigurationHub>(NetworkManagerConnectivityConfigurationHub.fromMap((map['hub'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
    );
  }
}

