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
      discoveryScenario: (() { final guardedValue = map['discoveryScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteAppliancePropertiesCollection: (() { final guardedValue = map['siteAppliancePropertiesCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SiteApplianceProperties>(guardedValue, (value) => SiteApplianceProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
      webAppSiteName: (() { final guardedValue = map['webAppSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

