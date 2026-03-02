// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_azurerm_portal_dashboard_azurerm_portal_dashboard_args_doc}
/// Arguments for azurermPortalDashboard.
/// {@endtemplate}
/// {@macro pulumi_dashboard_azurerm_portal_dashboard_azurerm_portal_dashboard_args_doc}
class AzurermPortalDashboardArgs {
  /// JSON data representing dashboard body.
  final pulumi.Input<String>? dashboardProperties;
  /// Specifies the display name of the shared Azure Portal Dashboard.
  final pulumi.Input<String>? displayName;
  /// Specifies the name of the shared Azure Portal Dashboard.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group the shared Azure Portal Dashboard is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AzurermPortalDashboardArgs].
  /// [dashboardProperties] JSON data representing dashboard body.
  /// [displayName] Specifies the display name of the shared Azure Portal Dashboard.
  /// [name] Specifies the name of the shared Azure Portal Dashboard.
  /// [resourceGroupName] Specifies the name of the resource group the shared Azure Portal Dashboard is located in.
  AzurermPortalDashboardArgs({
    this.dashboardProperties,
    this.displayName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardProperties': ?dashboardProperties,
      'displayName': ?displayName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AzurermPortalDashboardArgs.fromMap(Map<String, dynamic> map) {
    return AzurermPortalDashboardArgs(
      dashboardProperties: map['dashboardProperties'] == null ? null : (map['dashboardProperties']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

