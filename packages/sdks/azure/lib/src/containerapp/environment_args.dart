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
  /// > **Note:** Only valid if a `workload_profile` is specified. If `infrastructure_subnet_id` is specified, this resource group will be created in the same subscription as `infrastructure_subnet_id`.
  final pulumi.Input<String>? infrastructureResourceGroupName;
  /// The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Subnet must have a `/21` or larger address space.
  final pulumi.Input<String>? infrastructureSubnetId;
  /// Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified.
  final pulumi.Input<bool>? internalLoadBalancerEnabled;
  /// Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to.
  ///
  /// > **Note:** required if `logs_destination` is set to `log-analytics`. Cannot be set if `logs_destination` is set to `azure-monitor`.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// Where the application logs will be saved for this Container Apps Managed Environment. Possible values include `log-analytics` and `azure-monitor`. Omitting this value will result in logs being streamed only.
  final pulumi.Input<String>? logsDestination;
  /// Should mutual transport layer security (mTLS) be enabled? Defaults to `false`.
  ///
  /// > **Note:** This feature is in public preview. Enabling mTLS for your applications may increase response latency and reduce maximum throughput in high-load scenarios.
  final pulumi.Input<bool>? mutualTlsEnabled;
  /// The name of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `workload_profile` blocks as defined below.
  final pulumi.Input<List<EnvironmentWorkloadProfile>>? workloadProfiles;
  /// Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified.
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
  /// [workloadProfiles] One or more `workload_profile` blocks as defined below.
  /// [zoneRedundancyEnabled] Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  EnvironmentArgs({
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
      daprApplicationInsightsConnectionString: map['daprApplicationInsightsConnectionString'] == null ? null : (map['daprApplicationInsightsConnectionString']! as String).input(),
      identity: map['identity'] == null ? null : (EnvironmentIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      infrastructureResourceGroupName: map['infrastructureResourceGroupName'] == null ? null : (map['infrastructureResourceGroupName']! as String).input(),
      infrastructureSubnetId: map['infrastructureSubnetId'] == null ? null : (map['infrastructureSubnetId']! as String).input(),
      internalLoadBalancerEnabled: map['internalLoadBalancerEnabled'] == null ? null : (map['internalLoadBalancerEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      logsDestination: map['logsDestination'] == null ? null : (map['logsDestination']! as String).input(),
      mutualTlsEnabled: map['mutualTlsEnabled'] == null ? null : (map['mutualTlsEnabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workloadProfiles: map['workloadProfiles'] == null ? null : (pulumi.Input.decodeList<EnvironmentWorkloadProfile>(map['workloadProfiles']!, (value) => EnvironmentWorkloadProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : (map['zoneRedundancyEnabled']! as bool).input(),
    );
  }
}

