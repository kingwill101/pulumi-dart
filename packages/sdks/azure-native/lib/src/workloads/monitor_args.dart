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
  const MonitorArgs({
    this.appLocation,
    this.appServicePlanConfiguration,
    this.identity,
    this.location,
    this.logAnalyticsWorkspaceArmId,
    this.managedResourceGroupConfiguration,
    this.monitorName,
    this.monitorSubnet,
    required this.resourceGroupName,
    this.routingPreference,
    this.tags,
    this.zoneRedundancyPreference,
  });

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
      appLocation: (() { final guardedValue = map['appLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appServicePlanConfiguration: (() { final guardedValue = map['appServicePlanConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppServicePlanConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceArmId: (() { final guardedValue = map['logAnalyticsWorkspaceArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorName: (() { final guardedValue = map['monitorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorSubnet: (() { final guardedValue = map['monitorSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routingPreference: (() { final guardedValue = map['routingPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundancyPreference: (() { final guardedValue = map['zoneRedundancyPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

