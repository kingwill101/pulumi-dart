// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_identity.dart';
import 'environment_workload_profile.dart';

/// {@template pulumi_containerapp_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_environment_args_doc}
class EnvironmentArgs {
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? daprApplicationInsightsConnectionString;
  /// An `identity` block as defined below.
  final pulumi.Input<EnvironmentIdentity>? identity;
  /// Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only valid if a `workloadProfile` is specified. If `infrastructureSubnetId` is specified, this resource group will be created in the same subscription as `infrastructureSubnetId`.
  final pulumi.Input<String>? infrastructureResourceGroupName;
  /// The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The minimum required subnet size is /23 for Consumption only environment type and /27 for Workload profiles environment type.
  final pulumi.Input<String>? infrastructureSubnetId;
  /// Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** can only be set to `true` if `infrastructureSubnetId` is specified.
  final pulumi.Input<bool>? internalLoadBalancerEnabled;
  /// Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to.
  ///
  /// &gt; **Note:** required if `logsDestination` is set to `log-analytics`. Cannot be set if `logsDestination` is set to `azure-monitor`.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// Where the application logs will be saved for this Container Apps Managed Environment. Possible values include `log-analytics` and `azure-monitor`. Omitting this value will result in logs being streamed only.
  final pulumi.Input<String>? logsDestination;
  /// Should mutual transport layer security (mTLS) be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This feature is in public preview. Enabling mTLS for your applications may increase response latency and reduce maximum throughput in high-load scenarios.
  final pulumi.Input<bool>? mutualTlsEnabled;
  /// The name of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `workloadProfile` blocks as defined below.
  final pulumi.Input<List<EnvironmentWorkloadProfile>>? workloadProfiles;
  /// Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** can only be set to `true` if `infrastructureSubnetId` is specified.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [EnvironmentArgs].
  /// [daprApplicationInsightsConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [infrastructureResourceGroupName] Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created.
  /// [infrastructureSubnetId] The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created.
  /// [internalLoadBalancerEnabled] Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created.
  /// [logAnalyticsWorkspaceId] The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to.
  /// [logsDestination] Where the application logs will be saved for this Container Apps Managed Environment. Possible values include `log-analytics` and `azure-monitor`. Omitting this value will result in logs being streamed only.
  /// [mutualTlsEnabled] Should mutual transport layer security (mTLS) be enabled? Defaults to `false`.
  /// [name] The name of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  /// [resourceGroupName] The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workloadProfiles] One or more `workloadProfile` blocks as defined below.
  /// [zoneRedundancyEnabled] Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  const EnvironmentArgs({
    this.daprApplicationInsightsConnectionString,
    this.identity,
    this.infrastructureResourceGroupName,
    this.infrastructureSubnetId,
    this.internalLoadBalancerEnabled,
    this.location,
    this.logAnalyticsWorkspaceId,
    this.logsDestination,
    this.mutualTlsEnabled,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
    this.workloadProfiles,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daprApplicationInsightsConnectionString': ?daprApplicationInsightsConnectionString,
      'identity': ?pulumi.Input.mapOptionalInputValue<EnvironmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureResourceGroupName': ?infrastructureResourceGroupName,
      'infrastructureSubnetId': ?infrastructureSubnetId,
      'internalLoadBalancerEnabled': ?internalLoadBalancerEnabled,
      'location': ?location,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'logsDestination': ?logsDestination,
      'mutualTlsEnabled': ?mutualTlsEnabled,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workloadProfiles': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentWorkloadProfile>, List<Map<String, dynamic>>>(workloadProfiles, (value) => pulumi.Input.encodeList<EnvironmentWorkloadProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      daprApplicationInsightsConnectionString: (() { final guardedValue = map['daprApplicationInsightsConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureResourceGroupName: (() { final guardedValue = map['infrastructureResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureSubnetId: (() { final guardedValue = map['infrastructureSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalLoadBalancerEnabled: (() { final guardedValue = map['internalLoadBalancerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logsDestination: (() { final guardedValue = map['logsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mutualTlsEnabled: (() { final guardedValue = map['mutualTlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadProfiles: (() { final guardedValue = map['workloadProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentWorkloadProfile>(guardedValue, (value) => EnvironmentWorkloadProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneRedundancyEnabled: (() { final guardedValue = map['zoneRedundancyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
