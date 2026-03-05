// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getMigrationConfig.
class GetMigrationConfigResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// State in which Standard to Premium Migration is, possible values : Unknown, Reverting, Completing, Initiating, Syncing, Active
  final String migrationState;
  /// The name of the resource
  final String name;
  /// Number of entities pending to be replicated.
  final double pendingReplicationOperationsCount;
  /// Name to access Standard Namespace after migration
  final String postMigrationName;
  /// Provisioning state of Migration Configuration
  final String provisioningState;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Existing premium Namespace ARM Id name which has no entities, will be used for migration
  final String targetNamespace;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;

  /// Creates a new [GetMigrationConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [migrationState] State in which Standard to Premium Migration is, possible values : Unknown, Reverting, Completing, Initiating, Syncing, Active
  /// [name] The name of the resource
  /// [pendingReplicationOperationsCount] Number of entities pending to be replicated.
  /// [postMigrationName] Name to access Standard Namespace after migration
  /// [provisioningState] Provisioning state of Migration Configuration
  /// [systemData] The system meta data relating to this resource.
  /// [targetNamespace] Existing premium Namespace ARM Id name which has no entities, will be used for migration
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  GetMigrationConfigResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.migrationState,
    required this.name,
    required this.pendingReplicationOperationsCount,
    required this.postMigrationName,
    required this.provisioningState,
    required this.systemData,
    required this.targetNamespace,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'migrationState': migrationState,
      'name': name,
      'pendingReplicationOperationsCount': pendingReplicationOperationsCount,
      'postMigrationName': postMigrationName,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'targetNamespace': targetNamespace,
      'type': type,
    };
  }

  factory GetMigrationConfigResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationConfigResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      migrationState: map['migrationState'] as String,
      name: map['name'] as String,
      pendingReplicationOperationsCount: map['pendingReplicationOperationsCount'] as double,
      postMigrationName: map['postMigrationName'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetNamespace: map['targetNamespace'] as String,
      type: map['type'] as String,
    );
  }
}

