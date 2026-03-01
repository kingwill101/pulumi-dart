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
    pulumi.Output<String>? description,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkManagerName,
    pulumi.Output<List<String>>? networkManagerScopeAccesses,
    required pulumi.Output<NetworkManagerPropertiesNetworkManagerScopes> networkManagerScopes,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkManagerName = pulumi.Input.asOptionalInput<String>(networkManagerName),
      networkManagerScopeAccesses = pulumi.Input.asOptionalInput<List<String>>(networkManagerScopeAccesses),
      networkManagerScopes = pulumi.Input.asInput<NetworkManagerPropertiesNetworkManagerScopes>(networkManagerScopes),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkManagerName: map['networkManagerName'] == null ? null : pulumi.Output.create<String>(map['networkManagerName'] as String),
      networkManagerScopeAccesses: map['networkManagerScopeAccesses'] == null ? null : pulumi.Output.create<List<String>>((map['networkManagerScopeAccesses'] as List).cast<String>()),
      networkManagerScopes: pulumi.Output.create<NetworkManagerPropertiesNetworkManagerScopes>(NetworkManagerPropertiesNetworkManagerScopes.fromMap((map['networkManagerScopes'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

