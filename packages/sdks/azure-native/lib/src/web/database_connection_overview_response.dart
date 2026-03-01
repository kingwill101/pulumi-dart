// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_site_database_connection_configuration_file_overview_response.dart';

/// Static Site Database Connection overview.
class DatabaseConnectionOverviewResponse {
  /// A list of configuration files associated with this database connection.
  final List<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse> configurationFiles;
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  final String connectionIdentity;
  /// If present, the name of this database connection resource.
  final String name;
  /// The region of the database resource.
  final String region;
  /// The resource id of the database.
  final String resourceId;

  /// Creates a new [DatabaseConnectionOverviewResponse].
  /// [configurationFiles] A list of configuration files associated with this database connection.
  /// [connectionIdentity] If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  /// [name] If present, the name of this database connection resource.
  /// [region] The region of the database resource.
  /// [resourceId] The resource id of the database.
  DatabaseConnectionOverviewResponse({
    required this.configurationFiles,
    required this.connectionIdentity,
    required this.name,
    required this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationFiles': pulumi.Input.encodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse, Map<String, dynamic>>(configurationFiles, (value) => value.toMap()),
      'connectionIdentity': connectionIdentity,
      'name': name,
      'region': region,
      'resourceId': resourceId,
    };
  }

  factory DatabaseConnectionOverviewResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseConnectionOverviewResponse(
      configurationFiles: pulumi.Input.decodeList<StaticSiteDatabaseConnectionConfigurationFileOverviewResponse>(map['configurationFiles'], (value) => StaticSiteDatabaseConnectionConfigurationFileOverviewResponse.fromMap((value as Map).cast<String, dynamic>())),
      connectionIdentity: map['connectionIdentity'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

