// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_web_app_discovery_site_data_sources_controller_args_doc}
/// The set of arguments for WebAppDiscoverySiteDataSourcesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_web_app_discovery_site_data_sources_controller_args_doc}
class WebAppDiscoverySiteDataSourcesControllerArgs {
  /// Data Source ARM name.
  final pulumi.Input<String>? discoverySiteDataSourceName;
  /// Gets or sets the discovery site Id.
  final pulumi.Input<String>? discoverySiteId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// Web app site name.
  final pulumi.Input<String> webAppSiteName;

  /// Creates a new [WebAppDiscoverySiteDataSourcesControllerArgs].
  /// [discoverySiteDataSourceName] Data Source ARM name.
  /// [discoverySiteId] Gets or sets the discovery site Id.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [webAppSiteName] Web app site name.
  WebAppDiscoverySiteDataSourcesControllerArgs({
    pulumi.Output<String>? discoverySiteDataSourceName,
    pulumi.Output<String>? discoverySiteId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
    required pulumi.Output<String> webAppSiteName,
  }) :
      discoverySiteDataSourceName = pulumi.Input.asOptionalInput<String>(discoverySiteDataSourceName),
      discoverySiteId = pulumi.Input.asOptionalInput<String>(discoverySiteId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      webAppSiteName = pulumi.Input.asInput<String>(webAppSiteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteDataSourceName': ?discoverySiteDataSourceName,
      'discoverySiteId': ?discoverySiteId,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'webAppSiteName': webAppSiteName,
    };
  }

  factory WebAppDiscoverySiteDataSourcesControllerArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDiscoverySiteDataSourcesControllerArgs(
      discoverySiteDataSourceName: map['discoverySiteDataSourceName'] == null ? null : pulumi.Output.create<String>(map['discoverySiteDataSourceName'] as String),
      discoverySiteId: map['discoverySiteId'] == null ? null : pulumi.Output.create<String>(map['discoverySiteId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
      webAppSiteName: pulumi.Output.create<String>(map['webAppSiteName'] as String),
    );
  }
}

