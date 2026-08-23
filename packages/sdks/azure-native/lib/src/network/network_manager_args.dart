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
  const NetworkManagerArgs({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: (() { final guardedValue = map['networkManagerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerScopeAccesses: (() { final guardedValue = map['networkManagerScopeAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkManagerScopes: pulumi.Input.fromValue(NetworkManagerPropertiesNetworkManagerScopes.fromMap((map['networkManagerScopes']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
