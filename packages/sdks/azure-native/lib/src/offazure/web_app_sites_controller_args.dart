// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_appliance_properties.dart';

/// {@template pulumi_offazure_web_app_sites_controller_args_doc}
/// The set of arguments for WebAppSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_web_app_sites_controller_args_doc}
class WebAppSitesControllerArgs {
  /// Gets or sets the discovery scenario.
  final pulumi.Input<String>? discoveryScenario;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the appliance details used by service to communicate
  ///
  /// to the appliance.
  final pulumi.Input<List<SiteApplianceProperties>>? siteAppliancePropertiesCollection;
  /// Site name
  final pulumi.Input<String> siteName;
  /// Web app site name.
  final pulumi.Input<String>? webAppSiteName;

  /// Creates a new [WebAppSitesControllerArgs].
  /// [discoveryScenario] Gets or sets the discovery scenario.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteAppliancePropertiesCollection] Gets or sets the appliance details used by service to communicate
  /// [siteName] Site name
  /// [webAppSiteName] Web app site name.
  WebAppSitesControllerArgs({
    this.discoveryScenario,
    required this.resourceGroupName,
    this.siteAppliancePropertiesCollection,
    required this.siteName,
    this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryScenario': ?discoveryScenario,
      'resourceGroupName': resourceGroupName,
      'siteAppliancePropertiesCollection': ?pulumi.Input.mapOptionalInputValue<List<SiteApplianceProperties>, List<Map<String, dynamic>>>(siteAppliancePropertiesCollection, (value) => pulumi.Input.encodeList<SiteApplianceProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteName': siteName,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory WebAppSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSitesControllerArgs(
      discoveryScenario: map['discoveryScenario'] == null ? null : (map['discoveryScenario'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteAppliancePropertiesCollection: map['siteAppliancePropertiesCollection'] == null ? null : (pulumi.Input.decodeList<SiteApplianceProperties>(map['siteAppliancePropertiesCollection'], (value) => SiteApplianceProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      siteName: (map['siteName'] as String).input(),
      webAppSiteName: map['webAppSiteName'] == null ? null : (map['webAppSiteName'] as String).input(),
    );
  }
}

