// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_identity.dart';
import 'environment_workload_profile.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// The ID of the Custom Domain Verification for this Container App Environment.
  final pulumi.Input<String>? customDomainVerificationId;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created.
  final pulumi.Input<String>? daprApplicationInsightsConnectionString;
  /// The default, publicly resolvable, name of this Container App Environment.
  final pulumi.Input<String>? defaultDomain;
  /// The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  final pulumi.Input<String>? dockerBridgeCidr;
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
  /// The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  final pulumi.Input<String>? platformReservedCidr;
  /// The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server.
  final pulumi.Input<String>? platformReservedDnsIpAddress;
  /// The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Static IP address of the Environment.
  final pulumi.Input<String>? staticIpAddress;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more `workload_profile` blocks as defined below.
  final pulumi.Input<List<EnvironmentWorkloadProfile>>? workloadProfiles;
  /// Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [EnvironmentState].
  /// [customDomainVerificationId] The ID of the Custom Domain Verification for this Container App Environment.
  /// [daprApplicationInsightsConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry. Changing this forces a new resource to be created.
  /// [defaultDomain] The default, publicly resolvable, name of this Container App Environment.
  /// [dockerBridgeCidr] The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  /// [identity] An `identity` block as defined below.
  /// [infrastructureResourceGroupName] Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. Changing this forces a new resource to be created.
  /// [infrastructureSubnetId] The existing Subnet to use for the Container Apps Control Plane. Changing this forces a new resource to be created.
  /// [internalLoadBalancerEnabled] Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Container App Environment is to exist. Changing this forces a new resource to be created.
  /// [logAnalyticsWorkspaceId] The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to.
  /// [logsDestination] Where the application logs will be saved for this Container Apps Managed Environment. Possible values include `log-analytics` and `azure-monitor`. Omitting this value will result in logs being streamed only.
  /// [mutualTlsEnabled] Should mutual transport layer security (mTLS) be enabled? Defaults to `false`.
  /// [name] The name of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  /// [platformReservedCidr] The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  /// [platformReservedDnsIpAddress] The IP address from the IP range defined by `platform_reserved_cidr` that is reserved for the internal DNS server.
  /// [publicNetworkAccess] The public network access setting for the Container App Environment. Possible values are `Enabled` and `Disabled`.
  /// [resourceGroupName] The name of the resource group in which the Container App Environment is to be created. Changing this forces a new resource to be created.
  /// [staticIpAddress] The Static IP address of the Environment.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workloadProfiles] One or more `workload_profile` blocks as defined below.
  /// [zoneRedundancyEnabled] Should the Container App Environment be created with Zone Redundancy enabled? Defaults to `false`. Changing this forces a new resource to be created.
  EnvironmentState({
    this.customDomainVerificationId,
    this.daprApplicationInsightsConnectionString,
    this.defaultDomain,
    this.dockerBridgeCidr,
    this.identity,
    this.infrastructureResourceGroupName,
    this.infrastructureSubnetId,
    this.internalLoadBalancerEnabled,
    this.location,
    this.logAnalyticsWorkspaceId,
    this.logsDestination,
    this.mutualTlsEnabled,
    this.name,
    this.platformReservedCidr,
    this.platformReservedDnsIpAddress,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.staticIpAddress,
    this.tags,
    this.workloadProfiles,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainVerificationId': ?customDomainVerificationId,
      'daprApplicationInsightsConnectionString': ?daprApplicationInsightsConnectionString,
      'defaultDomain': ?defaultDomain,
      'dockerBridgeCidr': ?dockerBridgeCidr,
      'identity': ?pulumi.Input.mapOptionalInputValue<EnvironmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureResourceGroupName': ?infrastructureResourceGroupName,
      'infrastructureSubnetId': ?infrastructureSubnetId,
      'internalLoadBalancerEnabled': ?internalLoadBalancerEnabled,
      'location': ?location,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'logsDestination': ?logsDestination,
      'mutualTlsEnabled': ?mutualTlsEnabled,
      'name': ?name,
      'platformReservedCidr': ?platformReservedCidr,
      'platformReservedDnsIpAddress': ?platformReservedDnsIpAddress,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'staticIpAddress': ?staticIpAddress,
      'tags': ?tags,
      'workloadProfiles': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentWorkloadProfile>, List<Map<String, dynamic>>>(workloadProfiles, (value) => pulumi.Input.encodeList<EnvironmentWorkloadProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : (map['customDomainVerificationId'] as String).input(),
      daprApplicationInsightsConnectionString: map['daprApplicationInsightsConnectionString'] == null ? null : (map['daprApplicationInsightsConnectionString'] as String).input(),
      defaultDomain: map['defaultDomain'] == null ? null : (map['defaultDomain'] as String).input(),
      dockerBridgeCidr: map['dockerBridgeCidr'] == null ? null : (map['dockerBridgeCidr'] as String).input(),
      identity: map['identity'] == null ? null : (EnvironmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      infrastructureResourceGroupName: map['infrastructureResourceGroupName'] == null ? null : (map['infrastructureResourceGroupName'] as String).input(),
      infrastructureSubnetId: map['infrastructureSubnetId'] == null ? null : (map['infrastructureSubnetId'] as String).input(),
      internalLoadBalancerEnabled: map['internalLoadBalancerEnabled'] == null ? null : (map['internalLoadBalancerEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId'] as String).input(),
      logsDestination: map['logsDestination'] == null ? null : (map['logsDestination'] as String).input(),
      mutualTlsEnabled: map['mutualTlsEnabled'] == null ? null : (map['mutualTlsEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      platformReservedCidr: map['platformReservedCidr'] == null ? null : (map['platformReservedCidr'] as String).input(),
      platformReservedDnsIpAddress: map['platformReservedDnsIpAddress'] == null ? null : (map['platformReservedDnsIpAddress'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      staticIpAddress: map['staticIpAddress'] == null ? null : (map['staticIpAddress'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workloadProfiles: map['workloadProfiles'] == null ? null : (pulumi.Input.decodeList<EnvironmentWorkloadProfile>(map['workloadProfiles'], (value) => EnvironmentWorkloadProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : (map['zoneRedundancyEnabled'] as bool).input(),
    );
  }
}

