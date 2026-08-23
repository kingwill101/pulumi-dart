// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_sql_discovery_site_data_source_controller_args_doc}
/// Arguments for getSqlDiscoverySiteDataSourceController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_sql_discovery_site_data_source_controller_args_doc}
class GetSqlDiscoverySiteDataSourceControllerArgs {
  /// SQL Discovery site data source name.
  final pulumi.Input<String> discoverySiteDataSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// SQL site name.
  final pulumi.Input<String> sqlSiteName;

  /// Creates a new [GetSqlDiscoverySiteDataSourceControllerArgs].
  /// [discoverySiteDataSourceName] SQL Discovery site data source name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [sqlSiteName] SQL site name.
  const GetSqlDiscoverySiteDataSourceControllerArgs({
    required this.discoverySiteDataSourceName,
    required this.resourceGroupName,
    required this.siteName,
    required this.sqlSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteDataSourceName': discoverySiteDataSourceName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'sqlSiteName': sqlSiteName,
    };
  }

  factory GetSqlDiscoverySiteDataSourceControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlDiscoverySiteDataSourceControllerArgs(
      discoverySiteDataSourceName: pulumi.Input.fromValue(map['discoverySiteDataSourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      sqlSiteName: pulumi.Input.fromValue(map['sqlSiteName'] as String),
    );
  }
}
