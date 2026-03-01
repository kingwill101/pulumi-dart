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
    pulumi.Output<String>? discoverySiteDataSourceName,
    pulumi.Output<String>? discoverySiteId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
    required pulumi.Output<String> sqlSiteName,
  }) :
      discoverySiteDataSourceName = pulumi.Input.asOptionalInput<String>(discoverySiteDataSourceName),
      discoverySiteId = pulumi.Input.asOptionalInput<String>(discoverySiteId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      sqlSiteName = pulumi.Input.asInput<String>(sqlSiteName);

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
      discoverySiteDataSourceName: map['discoverySiteDataSourceName'] == null ? null : pulumi.Output.create<String>(map['discoverySiteDataSourceName'] as String),
      discoverySiteId: map['discoverySiteId'] == null ? null : pulumi.Output.create<String>(map['discoverySiteId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
      sqlSiteName: pulumi.Output.create<String>(map['sqlSiteName'] as String),
    );
  }
}

