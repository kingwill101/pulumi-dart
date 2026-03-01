// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_properties_with_provisioning_state.dart';

/// {@template pulumi_portal_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_portal_dashboard_args_doc}
class DashboardArgs {
  /// The name of the dashboard.
  final pulumi.Input<String>? dashboardName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DashboardPropertiesWithProvisioningState>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DashboardArgs].
  /// [dashboardName] The name of the dashboard.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DashboardArgs({
    pulumi.Output<String>? dashboardName,
    pulumi.Output<String>? location,
    pulumi.Output<DashboardPropertiesWithProvisioningState>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dashboardName = pulumi.Input.asOptionalInput<String>(dashboardName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<DashboardPropertiesWithProvisioningState>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardName': ?dashboardName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<DashboardPropertiesWithProvisioningState, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      dashboardName: map['dashboardName'] == null ? null : pulumi.Output.create<String>(map['dashboardName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DashboardPropertiesWithProvisioningState>(DashboardPropertiesWithProvisioningState.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

