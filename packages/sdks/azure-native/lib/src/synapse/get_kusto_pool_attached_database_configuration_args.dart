// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_kusto_pool_attached_database_configuration_args_doc}
/// Arguments for getKustoPoolAttachedDatabaseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_kusto_pool_attached_database_configuration_args_doc}
class GetKustoPoolAttachedDatabaseConfigurationArgs {
  /// The name of the attached database configuration.
  final pulumi.Input<String> attachedDatabaseConfigurationName;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetKustoPoolAttachedDatabaseConfigurationArgs].
  /// [attachedDatabaseConfigurationName] The name of the attached database configuration.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetKustoPoolAttachedDatabaseConfigurationArgs({
    required this.attachedDatabaseConfigurationName,
    required this.kustoPoolName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': attachedDatabaseConfigurationName,
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetKustoPoolAttachedDatabaseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolAttachedDatabaseConfigurationArgs(
      attachedDatabaseConfigurationName: pulumi.Input.fromValue(map['attachedDatabaseConfigurationName'] as String),
      kustoPoolName: pulumi.Input.fromValue(map['kustoPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

