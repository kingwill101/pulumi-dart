// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_properties_network_manager_scopes.dart';

/// {@template pulumi_network_network_manager_args_doc}
/// The set of arguments for NetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_args_doc}
class NetworkManagerArgs {
  /// A description of the network manager.
  final pulumi.Input<String>? description;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network manager.
  final pulumi.Input<String>? networkManagerName;
  /// Scope Access.
  final pulumi.Input<List<String>>? networkManagerScopeAccesses;
  /// Scope of Network Manager.
  final pulumi.Input<NetworkManagerPropertiesNetworkManagerScopes> networkManagerScopes;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerArgs].
  /// [description] A description of the network manager.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkManagerName] The name of the network manager.
  /// [networkManagerScopeAccesses] Scope Access.
  /// [networkManagerScopes] Scope of Network Manager.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NetworkManagerArgs({
    this.description,
    this.id,
    this.location,
    this.networkManagerName,
    this.networkManagerScopeAccesses,
    required this.networkManagerScopes,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'networkManagerName': ?networkManagerName,
      'networkManagerScopeAccesses': ?networkManagerScopeAccesses,
      'networkManagerScopes': pulumi.Input.mapInputValue<NetworkManagerPropertiesNetworkManagerScopes, Map<String, dynamic>>(networkManagerScopes, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkManagerName: map['networkManagerName'] == null ? null : (map['networkManagerName'] as String).input(),
      networkManagerScopeAccesses: map['networkManagerScopeAccesses'] == null ? null : ((map['networkManagerScopeAccesses'] as List).cast<String>()).input(),
      networkManagerScopes: (NetworkManagerPropertiesNetworkManagerScopes.fromMap((map['networkManagerScopes'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

