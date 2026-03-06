// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_manager_cross_tenant_scope.dart';
import 'get_network_manager_scope.dart';

/// Result data returned by getNetworkManager.
class GetNetworkManagerResult {
  /// One or more `cross_tenant_scopes` blocks as defined below.
  final List<GetNetworkManagerCrossTenantScope> crossTenantScopes;
  /// A description of the Network Manager.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Network Manager exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A list of configuration deployment type configured on the Network Manager.
  final List<String> scopeAccesses;
  /// A `scope` block as defined below.
  final List<GetNetworkManagerScope> scopes;
  /// A mapping of tags assigned to the Network Manager.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkManagerResult].
  /// [crossTenantScopes] One or more `cross_tenant_scopes` blocks as defined below.
  /// [description] A description of the Network Manager.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Manager exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [scopeAccesses] A list of configuration deployment type configured on the Network Manager.
  /// [scopes] A `scope` block as defined below.
  /// [tags] A mapping of tags assigned to the Network Manager.
  const GetNetworkManagerResult({
    required this.crossTenantScopes,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.scopeAccesses,
    required this.scopes,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantScopes': pulumi.Input.encodeList<GetNetworkManagerCrossTenantScope, Map<String, dynamic>>(crossTenantScopes, (value) => value.toMap()),
      'description': description,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scopeAccesses': scopeAccesses,
      'scopes': pulumi.Input.encodeList<GetNetworkManagerScope, Map<String, dynamic>>(scopes, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetNetworkManagerResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerResult(
      crossTenantScopes: pulumi.Input.decodeList<GetNetworkManagerCrossTenantScope>(map['crossTenantScopes']!, (value) => GetNetworkManagerCrossTenantScope.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeAccesses: (map['scopeAccesses'] as List).cast<String>(),
      scopes: pulumi.Input.decodeList<GetNetworkManagerScope>(map['scopes']!, (value) => GetNetworkManagerScope.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

