// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_tenant_scopes_response.dart';

/// Scope of Network Manager.
class NetworkManagerPropertiesResponseNetworkManagerScopes {
  /// List of cross tenant scopes.
  final List<CrossTenantScopesResponse> crossTenantScopes;
  /// List of management groups.
  final List<String>? managementGroups;
  /// List of subscriptions.
  final List<String>? subscriptions;

  /// Creates a new [NetworkManagerPropertiesResponseNetworkManagerScopes].
  /// [crossTenantScopes] List of cross tenant scopes.
  /// [managementGroups] List of management groups.
  /// [subscriptions] List of subscriptions.
  NetworkManagerPropertiesResponseNetworkManagerScopes({
    required this.crossTenantScopes,
    this.managementGroups,
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantScopes': pulumi.Input.encodeList<CrossTenantScopesResponse, Map<String, dynamic>>(crossTenantScopes, (value) => value.toMap()),
      'managementGroups': ?managementGroups,
      'subscriptions': ?subscriptions,
    };
  }

  factory NetworkManagerPropertiesResponseNetworkManagerScopes.fromMap(Map<String, dynamic> map) {
    return NetworkManagerPropertiesResponseNetworkManagerScopes(
      crossTenantScopes: pulumi.Input.decodeList<CrossTenantScopesResponse>(map['crossTenantScopes'], (value) => CrossTenantScopesResponse.fromMap((value as Map).cast<String, dynamic>())),
      managementGroups: map['managementGroups'] == null ? null : (map['managementGroups'] as List).cast<String>(),
      subscriptions: map['subscriptions'] == null ? null : (map['subscriptions'] as List).cast<String>(),
    );
  }
}

