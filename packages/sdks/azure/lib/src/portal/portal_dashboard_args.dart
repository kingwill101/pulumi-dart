// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_portal_dashboard_portal_dashboard_args_doc}
/// The set of arguments for PortalDashboard.
/// {@endtemplate}
/// {@macro pulumi_portal_portal_dashboard_portal_dashboard_args_doc}
class PortalDashboardArgs {
  /// JSON data representing dashboard body. See above for details on how to obtain this from the Portal.
  final pulumi.Input<String> dashboardProperties;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** You can specify a tag with the key `hidden-title` to set a more user-friendly title for this Dashboard.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PortalDashboardArgs].
  /// [dashboardProperties] JSON data representing dashboard body. See above for details on how to obtain this from the Portal.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const PortalDashboardArgs({
    required this.dashboardProperties,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardProperties': dashboardProperties,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PortalDashboardArgs.fromMap(Map<String, dynamic> map) {
    return PortalDashboardArgs(
      dashboardProperties: pulumi.Input.fromValue(map['dashboardProperties'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
