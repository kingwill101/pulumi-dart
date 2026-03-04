// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'table_level_sharing_properties_response.dart';

/// Result data returned by getKustoPoolAttachedDatabaseConfiguration.
class GetKustoPoolAttachedDatabaseConfigurationResult {
  /// The list of databases from the clusterResourceId which are currently attached to the kusto pool.
  final List<String> attachedDatabaseNames;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  final String databaseName;

  /// The default principals modification kind
  final String defaultPrincipalsModificationKind;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The resource id of the kusto pool where the databases you would like to attach reside.
  final String kustoPoolResourceId;

  /// Resource location.
  final String? location;

  /// The name of the resource
  final String name;

  /// The provisioned state of the resource.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Table level sharing specifications
  final TableLevelSharingPropertiesResponse? tableLevelSharingProperties;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetKustoPoolAttachedDatabaseConfigurationResult].
  /// [attachedDatabaseNames] The list of databases from the clusterResourceId which are currently attached to the kusto pool.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  /// [defaultPrincipalsModificationKind] The default principals modification kind
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kustoPoolResourceId] The resource id of the kusto pool where the databases you would like to attach reside.
  /// [location] Resource location.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tableLevelSharingProperties] Table level sharing specifications
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetKustoPoolAttachedDatabaseConfigurationResult({
    required this.attachedDatabaseNames,
    required this.azureApiVersion,
    required this.databaseName,
    required this.defaultPrincipalsModificationKind,
    required this.id,
    required this.kustoPoolResourceId,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tableLevelSharingProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseNames': attachedDatabaseNames,
      'azureApiVersion': azureApiVersion,
      'databaseName': databaseName,
      'defaultPrincipalsModificationKind': defaultPrincipalsModificationKind,
      'id': id,
      'kustoPoolResourceId': kustoPoolResourceId,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tableLevelSharingProperties': ?tableLevelSharingProperties?.toMap(),
      'type': type,
    };
  }

  factory GetKustoPoolAttachedDatabaseConfigurationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKustoPoolAttachedDatabaseConfigurationResult(
      attachedDatabaseNames: (map['attachedDatabaseNames'] as List)
          .cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      databaseName: map['databaseName'] as String,
      defaultPrincipalsModificationKind:
          map['defaultPrincipalsModificationKind'] as String,
      id: map['id'] as String,
      kustoPoolResourceId: map['kustoPoolResourceId'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tableLevelSharingProperties: (() {
        final guardedValue = map['tableLevelSharingProperties'];
        if (guardedValue == null) return null;
        return TableLevelSharingPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      type: map['type'] as String,
    );
  }
}
