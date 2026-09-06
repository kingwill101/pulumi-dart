// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_database_connection_configuration_file_overview_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStaticSiteBuildDatabaseConnection.
class GetStaticSiteBuildDatabaseConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A list of configuration files associated with this database connection.
  final List<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse>? configurationFiles;
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  final String? connectionIdentity;
  /// The connection string to use to connect to the database.
  final String? connectionString;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// The region of the database resource.
  final String? region;
  /// The resource id of the database.
  final String? resourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStaticSiteBuildDatabaseConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationFiles] A list of configuration files associated with this database connection.
  /// [connectionIdentity] If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  /// [connectionString] The connection string to use to connect to the database.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [region] The region of the database resource.
  /// [resourceId] The resource id of the database.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStaticSiteBuildDatabaseConnectionResult({
    this.azureApiVersion,
    this.configurationFiles,
    this.connectionIdentity,
    this.connectionString,
    this.id,
    this.kind,
    this.name,
    this.region,
    this.resourceId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'configurationFiles': ?(() { final guardedValue = configurationFiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectionIdentity': ?connectionIdentity,
      'connectionString': ?connectionString,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'region': ?region,
      'resourceId': ?resourceId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetStaticSiteBuildDatabaseConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteBuildDatabaseConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationFiles: (() { final guardedValue = map['configurationFiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse>(guardedValue, (value) => StaticSiteDatabaseConnectionConfigurationFileOverviewResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectionIdentity: (() { final guardedValue = map['connectionIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
