// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_scope.dart';

/// {@template pulumi_network_network_manager_network_manager_args_doc}
/// The set of arguments for NetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_network_manager_args_doc}
class NetworkManagerArgs {
  /// A description of the Network Manager.
  final pulumi.Input<String>? description;
  /// Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `scope` block as defined below.
  final pulumi.Input<NetworkManagerScope> scope;
  /// A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  final pulumi.Input<List<String>>? scopeAccesses;
  /// A mapping of tags which should be assigned to the Network Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerArgs].
  /// [description] A description of the Network Manager.
  /// [location] Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  /// [scope] A `scope` block as defined below.
  /// [scopeAccesses] A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  /// [tags] A mapping of tags which should be assigned to the Network Manager.
  NetworkManagerArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<NetworkManagerScope> scope,
    pulumi.Output<List<String>>? scopeAccesses,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asInput<NetworkManagerScope>(scope),
      scopeAccesses = pulumi.Input.asOptionalInput<List<String>>(scopeAccesses),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scope': pulumi.Input.mapInputValue<NetworkManagerScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'scopeAccesses': ?scopeAccesses,
      'tags': ?tags,
    };
  }

  factory NetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: pulumi.Output.create<NetworkManagerScope>(NetworkManagerScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      scopeAccesses: map['scopeAccesses'] == null ? null : pulumi.Output.create<List<String>>((map['scopeAccesses'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

