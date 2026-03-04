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
    this.discoverySiteDataSourceName,
    this.discoverySiteId,
    required this.resourceGroupName,
    required this.siteName,
    required this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteDataSourceName': ?discoverySiteDataSourceName,
      'discoverySiteId': ?discoverySiteId,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'webAppSiteName': webAppSiteName,
    };
  }

  factory WebAppDiscoverySiteDataSourcesControllerArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAppDiscoverySiteDataSourcesControllerArgs(
      discoverySiteDataSourceName: (() {
        final guardedValue = map['discoverySiteDataSourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discoverySiteId: (() {
        final guardedValue = map['discoverySiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      webAppSiteName: pulumi.Input.fromValue(map['webAppSiteName'] as String),
    );
  }
}
