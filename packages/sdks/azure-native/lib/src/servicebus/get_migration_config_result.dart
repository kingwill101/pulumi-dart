// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getMigrationConfig.
class GetMigrationConfigResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// State in which Standard to Premium Migration is, possible values : Unknown, Reverting, Completing, Initiating, Syncing, Active
  final String? migrationState;
  /// The name of the resource
  final String? name;
  /// Number of entities pending to be replicated.
  final double? pendingReplicationOperationsCount;
  /// Name to access Standard Namespace after migration
  final String? postMigrationName;
  /// Provisioning state of Migration ConfigurationProvisioning state of Migration Configuration
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Existing premium Namespace ARM Id name which has no entities, will be used for migration
  final String? targetNamespace;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetMigrationConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [migrationState] State in which Standard to Premium Migration is, possible values : Unknown, Reverting, Completing, Initiating, Syncing, Active
  /// [name] The name of the resource
  /// [pendingReplicationOperationsCount] Number of entities pending to be replicated.
  /// [postMigrationName] Name to access Standard Namespace after migration
  /// [provisioningState] Provisioning state of Migration ConfigurationProvisioning state of Migration Configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetNamespace] Existing premium Namespace ARM Id name which has no entities, will be used for migration
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMigrationConfigResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.migrationState,
    this.name,
    this.pendingReplicationOperationsCount,
    this.postMigrationName,
    this.provisioningState,
    this.systemData,
    this.targetNamespace,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'migrationState': ?migrationState,
      'name': ?name,
      'pendingReplicationOperationsCount': ?pendingReplicationOperationsCount,
      'postMigrationName': ?postMigrationName,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'targetNamespace': ?targetNamespace,
      'type': ?type,
    };
  }

  factory GetMigrationConfigResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationConfigResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationState: (() { final guardedValue = map['migrationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingReplicationOperationsCount: (() { final guardedValue = map['pendingReplicationOperationsCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      postMigrationName: (() { final guardedValue = map['postMigrationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetNamespace: (() { final guardedValue = map['targetNamespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
