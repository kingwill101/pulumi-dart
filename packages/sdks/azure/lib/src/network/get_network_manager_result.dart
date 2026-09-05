// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_manager_cross_tenant_scope.dart';
import 'get_network_manager_scope.dart';

/// Result data returned by getNetworkManager.
class GetNetworkManagerResult {
  /// One or more `crossTenantScopes` blocks as defined below.
  final List<GetNetworkManagerCrossTenantScope>? crossTenantScopes;
  /// A description of the Network Manager.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Network Manager exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A list of configuration deployment type configured on the Network Manager.
  final List<String>? scopeAccesses;
  /// A `scope` block as defined below.
  final List<GetNetworkManagerScope>? scopes;
  /// A mapping of tags assigned to the Network Manager.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkManagerResult].
  /// [crossTenantScopes] One or more `crossTenantScopes` blocks as defined below.
  /// [description] A description of the Network Manager.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Manager exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [scopeAccesses] A list of configuration deployment type configured on the Network Manager.
  /// [scopes] A `scope` block as defined below.
  /// [tags] A mapping of tags assigned to the Network Manager.
  const GetNetworkManagerResult({
    this.crossTenantScopes,
    this.description,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.scopeAccesses,
    this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantScopes': ?(() { final guardedValue = crossTenantScopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkManagerCrossTenantScope, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopeAccesses': ?scopeAccesses,
      'scopes': ?(() { final guardedValue = scopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkManagerScope, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetNetworkManagerResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerResult(
      crossTenantScopes: (() { final guardedValue = map['crossTenantScopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkManagerCrossTenantScope>(guardedValue, (value) => GetNetworkManagerCrossTenantScope.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeAccesses: (() { final guardedValue = map['scopeAccesses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkManagerScope>(guardedValue, (value) => GetNetworkManagerScope.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
