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
  GetSqlDiscoverySiteDataSourceControllerArgs({
    required pulumi.Output<String> discoverySiteDataSourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
    required pulumi.Output<String> sqlSiteName,
  }) :
      discoverySiteDataSourceName = pulumi.Input.asInput<String>(discoverySiteDataSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      sqlSiteName = pulumi.Input.asInput<String>(sqlSiteName);

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
      discoverySiteDataSourceName: pulumi.Output.create<String>(map['discoverySiteDataSourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
      sqlSiteName: pulumi.Output.create<String>(map['sqlSiteName'] as String),
    );
  }
}

