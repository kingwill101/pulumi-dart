// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_sql_discovery_site_data_source_controller_args_doc}
/// The set of arguments for SqlDiscoverySiteDataSourceController.
/// {@endtemplate}
/// {@macro pulumi_offazure_sql_discovery_site_data_source_controller_args_doc}
class SqlDiscoverySiteDataSourceControllerArgs {
  /// SQL Discovery site data source name.
  final pulumi.Input<String>? discoverySiteDataSourceName;
  /// Gets or sets the discovery site Id.
  final pulumi.Input<String>? discoverySiteId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// SQL site name.
  final pulumi.Input<String> sqlSiteName;

  /// Creates a new [SqlDiscoverySiteDataSourceControllerArgs].
  /// [discoverySiteDataSourceName] SQL Discovery site data source name.
  /// [discoverySiteId] Gets or sets the discovery site Id.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [sqlSiteName] SQL site name.
  SqlDiscoverySiteDataSourceControllerArgs({
    this.discoverySiteDataSourceName,
    this.discoverySiteId,
    required this.resourceGroupName,
    required this.siteName,
    required this.sqlSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteDataSourceName': ?discoverySiteDataSourceName,
      'discoverySiteId': ?discoverySiteId,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'sqlSiteName': sqlSiteName,
    };
  }

  factory SqlDiscoverySiteDataSourceControllerArgs.fromMap(Map<String, dynamic> map) {
    return SqlDiscoverySiteDataSourceControllerArgs(
      discoverySiteDataSourceName: map['discoverySiteDataSourceName'] == null ? null : (map['discoverySiteDataSourceName']! as String).input(),
      discoverySiteId: map['discoverySiteId'] == null ? null : (map['discoverySiteId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: (map['siteName'] as String).input(),
      sqlSiteName: (map['sqlSiteName'] as String).input(),
    );
  }
}

