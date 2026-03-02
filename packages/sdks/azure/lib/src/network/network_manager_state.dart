// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_cross_tenant_scope.dart';
import 'network_manager_scope.dart';

/// Input properties used for looking up and filtering NetworkManager resources.
class NetworkManagerState {
  /// One or more `cross_tenant_scopes` blocks as defined below.
  final pulumi.Input<List<NetworkManagerCrossTenantScope>>? crossTenantScopes;
  /// A description of the Network Manager.
  final pulumi.Input<String>? description;
  /// Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `scope` block as defined below.
  final pulumi.Input<NetworkManagerScope>? scope;
  /// A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  final pulumi.Input<List<String>>? scopeAccesses;
  /// A mapping of tags which should be assigned to the Network Manager.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkManagerState].
  /// [crossTenantScopes] One or more `cross_tenant_scopes` blocks as defined below.
  /// [description] A description of the Network Manager.
  /// [location] Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  /// [scope] A `scope` block as defined below.
  /// [scopeAccesses] A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  /// [tags] A mapping of tags which should be assigned to the Network Manager.
  NetworkManagerState({
    this.crossTenantScopes,
    this.description,
    this.location,
    this.name,
    this.resourceGroupName,
    this.scope,
    this.scopeAccesses,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantScopes': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerCrossTenantScope>, List<Map<String, dynamic>>>(crossTenantScopes, (value) => pulumi.Input.encodeList<NetworkManagerCrossTenantScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scope': ?pulumi.Input.mapOptionalInputValue<NetworkManagerScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'scopeAccesses': ?scopeAccesses,
      'tags': ?tags,
    };
  }

  factory NetworkManagerState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerState(
      crossTenantScopes: map['crossTenantScopes'] == null ? null : (pulumi.Input.decodeList<NetworkManagerCrossTenantScope>(map['crossTenantScopes'], (value) => NetworkManagerCrossTenantScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (NetworkManagerScope.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
      scopeAccesses: map['scopeAccesses'] == null ? null : ((map['scopeAccesses'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

