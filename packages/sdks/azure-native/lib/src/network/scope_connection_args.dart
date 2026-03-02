// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_scope_connection_args_doc}
/// The set of arguments for ScopeConnection.
/// {@endtemplate}
/// {@macro pulumi_network_scope_connection_args_doc}
class ScopeConnectionArgs {
  /// A description of the scope connection.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID.
  final pulumi.Input<String>? resourceId;
  /// Name for the cross-tenant connection.
  final pulumi.Input<String>? scopeConnectionName;
  /// Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ScopeConnectionArgs].
  /// [description] A description of the scope connection.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [resourceId] Resource ID.
  /// [scopeConnectionName] Name for the cross-tenant connection.
  /// [tenantId] Tenant ID.
  ScopeConnectionArgs({
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.resourceId,
    this.scopeConnectionName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'scopeConnectionName': ?scopeConnectionName,
      'tenantId': ?tenantId,
    };
  }

  factory ScopeConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ScopeConnectionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      scopeConnectionName: map['scopeConnectionName'] == null ? null : (map['scopeConnectionName'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

