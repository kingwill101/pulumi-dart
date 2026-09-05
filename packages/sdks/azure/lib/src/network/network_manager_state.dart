// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_cross_tenant_scope.dart';
import 'network_manager_scope.dart';

/// Input properties used for looking up and filtering NetworkManager resources.
class NetworkManagerState {
  /// One or more `crossTenantScopes` blocks as defined below.
  final pulumi.Input<List<NetworkManagerCrossTenantScope>?>? crossTenantScopes;
  /// A description of the Network Manager.
  final pulumi.Input<String?>? description;
  /// Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `scope` block as defined below.
  final pulumi.Input<NetworkManagerScope?>? scope;
  /// A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  final pulumi.Input<List<String>?>? scopeAccesses;
  /// A mapping of tags which should be assigned to the Network Manager.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NetworkManagerState].
  /// [crossTenantScopes] One or more `crossTenantScopes` blocks as defined below.
  /// [description] A description of the Network Manager.
  /// [location] Specifies the Azure Region where the Network Manager should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Network Manager. Changing this forces a new Network Manager to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Network Manager should exist. Changing this forces a new Network Manager to be created.
  /// [scope] A `scope` block as defined below.
  /// [scopeAccesses] A list of configuration deployment types. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`, which specify whether Connectivity Configuration, Security Admin Configuration or Routing Configuration are allowed for the Network Manager.
  /// [tags] A mapping of tags which should be assigned to the Network Manager.
  const NetworkManagerState({
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
      crossTenantScopes: (() { final guardedValue = map['crossTenantScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerCrossTenantScope>(guardedValue, (value) => NetworkManagerCrossTenantScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkManagerScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopeAccesses: (() { final guardedValue = map['scopeAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
