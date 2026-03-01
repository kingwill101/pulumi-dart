// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_plan_configuration.dart';
import 'managed_resource_group_configuration.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_workloads_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_workloads_monitor_args_doc}
class MonitorArgs {
  /// The SAP monitor resources will be deployed in the SAP monitoring region. The subnet region should be same as the SAP monitoring region.
  final pulumi.Input<String>? appLocation;
  /// App service plan configuration
  final pulumi.Input<AppServicePlanConfiguration>? appServicePlanConfiguration;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The ARM ID of the Log Analytics Workspace that is used for SAP monitoring.
  final pulumi.Input<String>? logAnalyticsWorkspaceArmId;
  /// Managed resource group configuration
  final pulumi.Input<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// Name of the SAP monitor resource.
  final pulumi.Input<String>? monitorName;
  /// The subnet which the SAP monitor will be deployed in
  final pulumi.Input<String>? monitorSubnet;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
  final pulumi.Input<String>? routingPreference;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Sets the preference for zone redundancy on resources created for the SAP monitor. By default resources will be created which do not support zone redundancy.
  final pulumi.Input<String>? zoneRedundancyPreference;

  /// Creates a new [MonitorArgs].
  /// [appLocation] The SAP monitor resources will be deployed in the SAP monitoring region. The subnet region should be same as the SAP monitoring region.
  /// [appServicePlanConfiguration] App service plan configuration
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [logAnalyticsWorkspaceArmId] The ARM ID of the Log Analytics Workspace that is used for SAP monitoring.
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [monitorName] Name of the SAP monitor resource.
  /// [monitorSubnet] The subnet which the SAP monitor will be deployed in
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routingPreference] Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
  /// [tags] Resource tags.
  /// [zoneRedundancyPreference] Sets the preference for zone redundancy on resources created for the SAP monitor. By default resources will be created which do not support zone redundancy.
  MonitorArgs({
    pulumi.Output<String>? appLocation,
    pulumi.Output<AppServicePlanConfiguration>? appServicePlanConfiguration,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logAnalyticsWorkspaceArmId,
    pulumi.Output<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration,
    pulumi.Output<String>? monitorName,
    pulumi.Output<String>? monitorSubnet,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routingPreference,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneRedundancyPreference,
  }) :
      appLocation = pulumi.Input.asOptionalInput<String>(appLocation),
      appServicePlanConfiguration = pulumi.Input.asOptionalInput<AppServicePlanConfiguration>(appServicePlanConfiguration),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      logAnalyticsWorkspaceArmId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceArmId),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedResourceGroupConfiguration>(managedResourceGroupConfiguration),
      monitorName = pulumi.Input.asOptionalInput<String>(monitorName),
      monitorSubnet = pulumi.Input.asOptionalInput<String>(monitorSubnet),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingPreference = pulumi.Input.asOptionalInput<String>(routingPreference),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundancyPreference = pulumi.Input.asOptionalInput<String>(zoneRedundancyPreference);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'appServicePlanConfiguration': ?pulumi.Input.mapOptionalInputValue<AppServicePlanConfiguration, Map<String, dynamic>>(appServicePlanConfiguration, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'logAnalyticsWorkspaceArmId': ?logAnalyticsWorkspaceArmId,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'monitorName': ?monitorName,
      'monitorSubnet': ?monitorSubnet,
      'resourceGroupName': resourceGroupName,
      'routingPreference': ?routingPreference,
      'tags': ?tags,
      'zoneRedundancyPreference': ?zoneRedundancyPreference,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      appLocation: map['appLocation'] == null ? null : pulumi.Output.create<String>(map['appLocation'] as String),
      appServicePlanConfiguration: map['appServicePlanConfiguration'] == null ? null : pulumi.Output.create<AppServicePlanConfiguration>(AppServicePlanConfiguration.fromMap((map['appServicePlanConfiguration'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logAnalyticsWorkspaceArmId: map['logAnalyticsWorkspaceArmId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceArmId'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedResourceGroupConfiguration>(ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      monitorName: map['monitorName'] == null ? null : pulumi.Output.create<String>(map['monitorName'] as String),
      monitorSubnet: map['monitorSubnet'] == null ? null : pulumi.Output.create<String>(map['monitorSubnet'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingPreference: map['routingPreference'] == null ? null : pulumi.Output.create<String>(map['routingPreference'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundancyPreference: map['zoneRedundancyPreference'] == null ? null : pulumi.Output.create<String>(map['zoneRedundancyPreference'] as String),
    );
  }
}

