// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_database_connection_configuration_file_overview_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStaticSiteDatabaseConnection.
class GetStaticSiteDatabaseConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A list of configuration files associated with this database connection.
  final List<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse> configurationFiles;
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  final String? connectionIdentity;
  /// The connection string to use to connect to the database.
  final String? connectionString;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// The region of the database resource.
  final String region;
  /// The resource id of the database.
  final String resourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStaticSiteDatabaseConnectionResult].
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
  const GetStaticSiteDatabaseConnectionResult({
    required this.azureApiVersion,
    required this.configurationFiles,
    this.connectionIdentity,
    this.connectionString,
    required this.id,
    this.kind,
    required this.name,
    required this.region,
    required this.resourceId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configurationFiles': pulumi.Input.encodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse, Map<String, dynamic>>(configurationFiles, (value) => value.toMap()),
      'connectionIdentity': ?connectionIdentity,
      'connectionString': ?connectionString,
      'id': id,
      'kind': ?kind,
      'name': name,
      'region': region,
      'resourceId': resourceId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStaticSiteDatabaseConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteDatabaseConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configurationFiles: pulumi.Input.decodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse>(map['configurationFiles']!, (value) => StaticSiteDatabaseConnectionConfigurationFileOverviewResponse.fromMap((value as Map).cast<String, dynamic>())),
      connectionIdentity: (() { final guardedValue = map['connectionIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      region: map['region'] as String,
      resourceId: map['resourceId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
