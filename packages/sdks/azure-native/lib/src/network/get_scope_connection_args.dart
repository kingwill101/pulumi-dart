// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_scope_connection_args_doc}
/// Arguments for getScopeConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_scope_connection_args_doc}
class GetScopeConnectionArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name for the cross-tenant connection.
  final pulumi.Input<String> scopeConnectionName;

  /// Creates a new [GetScopeConnectionArgs].
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [scopeConnectionName] Name for the cross-tenant connection.
  GetScopeConnectionArgs({
    required this.networkManagerName,
    required this.resourceGroupName,
    required this.scopeConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'scopeConnectionName': scopeConnectionName,
    };
  }

  factory GetScopeConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeConnectionArgs(
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeConnectionName: (map['scopeConnectionName'] as String).input(),
    );
  }
}

