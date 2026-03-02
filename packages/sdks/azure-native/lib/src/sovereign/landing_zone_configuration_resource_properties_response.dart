// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_naming_convention_response.dart';
import 'decommissioned_management_group_properties_response.dart';
import 'landing_zone_management_group_properties_response.dart';
import 'managed_identity_properties_response.dart';
import 'management_group_properties_response.dart';
import 'platform_management_group_properties_response.dart';
import 'sandbox_management_group_properties_response.dart';
import 'tags_response.dart';

/// The properties of landing zone configuration resource type.
class LandingZoneConfigurationResourcePropertiesResponse {
  /// The status that indicates the current phase of the configuration process for a deployment.
  final pulumi.Input<String> authoringStatus;
  /// Parameter used to deploy a Bastion: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing Bastion.
  final pulumi.Input<String> azureBastionCreationOption;
  /// The Bastion subnet address. Specify the address using IPv4 CIDR notation.
  final pulumi.Input<String>? azureBastionSubnetCidrBlock;
  /// The custom naming convention applied to specific resource types for this landing zone configuration, which overrides the default naming convention for those resource types. Example - 'customNamingConvention': [{'resourceType': 'azureFirewalls', 'formula': '{DeploymentPrefix}-afwl-{DeploymentSuffix}'}]
  final pulumi.Input<List<CustomNamingConventionResponse>>? customNamingConvention;
  /// Parameter used to deploy a DDoS protection plan: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing DDoS protection plan.
  final pulumi.Input<String> ddosProtectionCreationOption;
  /// The assigned policies of the 'Decommissioned' management group and indicator to create it or not.
  final pulumi.Input<DecommissionedManagementGroupPropertiesResponse>? decommissionedMgMetadata;
  /// The resource ID of the Bastion when reusing an existing one.
  final pulumi.Input<String>? existingAzureBastionId;
  /// The resource ID of the DDoS protection plan when reusing an existing one.
  final pulumi.Input<String>? existingDdosProtectionId;
  /// The resource ID of the log analytics workspace when reusing an existing one.
  final pulumi.Input<String>? existingLogAnalyticsWorkspaceId;
  /// Parameter used for deploying a Firewall: Select 'No' to skip deployment, 'Standard' to deploy the Standard SKU, or 'Premium' to deploy the Premium SKU.
  final pulumi.Input<String> firewallCreationOption;
  /// The Firewall subnet address used for deploying a firewall. Specify the Firewall subnet using IPv4 CIDR notation.
  final pulumi.Input<String>? firewallSubnetCidrBlock;
  /// The gateway subnet address used for deploying a virtual network. Specify the subnet using IPv4 CIDR notation.
  final pulumi.Input<String> gatewaySubnetCidrBlock;
  /// The Virtual Network address. Specify the address using IPv4 CIDR notation.
  final pulumi.Input<String> hubNetworkCidrBlock;
  /// The child management groups of 'Landing Zones' management group and their assigned policies.
  final pulumi.Input<List<LandingZoneManagementGroupPropertiesResponse>>? landingZonesMgChildren;
  /// The assigned policies of the 'Landing Zones' management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? landingZonesMgMetadata;
  /// Parameter used to deploy a log analytics workspace: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing log analytics workspace.
  final pulumi.Input<String> logAnalyticsWorkspaceCreationOption;
  /// Parameter to define the retention period for logs, in days. The minimum duration is 30 days and the maximum is 730 days.
  final pulumi.Input<double> logRetentionInDays;
  /// The managed identity to be assigned to this landing zone configuration.
  final pulumi.Input<ManagedIdentityPropertiesResponse> managedIdentity;
  /// The default naming convention applied to all resources for this landing zone configuration. Example - {DeploymentPrefix}-Contoso-{ResourceTypeAbbreviation}{DeploymentSuffix}-{Environment}-testing
  final pulumi.Input<String>? namingConventionFormula;
  /// The assigned policies of the 'Connectivity' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? platformConnectivityMgMetadata;
  /// The assigned policies of the 'Identity' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? platformIdentityMgMetadata;
  /// The assigned policies of the 'Management' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? platformManagementMgMetadata;
  /// The names of the 'Platform' child management groups and their assigned policies, excluding the default ones: 'Connectivity', 'Identity', and 'Management'
  final pulumi.Input<List<PlatformManagementGroupPropertiesResponse>>? platformMgChildren;
  /// The assigned policies of the 'Platform' management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? platformMgMetadata;
  /// The state that reflects the current stage in the creation, updating, or deletion process of the landing zone configuration.
  final pulumi.Input<String> provisioningState;
  /// The assigned policies of the 'Sandbox' management group and indicator to create it or not.
  final pulumi.Input<SandboxManagementGroupPropertiesResponse>? sandboxMgMetadata;
  /// Tags are key-value pairs that can be assigned to a resource to organize and manage it more effectively. Example: {'name': 'a tag name', 'value': 'a tag value'}
  final pulumi.Input<List<TagsResponse>>? tags;
  /// The assigned policies of the parent management group.
  final pulumi.Input<ManagementGroupPropertiesResponse>? topLevelMgMetadata;

  /// Creates a new [LandingZoneConfigurationResourcePropertiesResponse].
  /// [authoringStatus] The status that indicates the current phase of the configuration process for a deployment.
  /// [azureBastionCreationOption] Parameter used to deploy a Bastion: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing Bastion.
  /// [azureBastionSubnetCidrBlock] The Bastion subnet address. Specify the address using IPv4 CIDR notation.
  /// [customNamingConvention] The custom naming convention applied to specific resource types for this landing zone configuration, which overrides the default naming convention for those resource types. Example - 'customNamingConvention': [{'resourceType': 'azureFirewalls', 'formula': '{DeploymentPrefix}-afwl-{DeploymentSuffix}'}]
  /// [ddosProtectionCreationOption] Parameter used to deploy a DDoS protection plan: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing DDoS protection plan.
  /// [decommissionedMgMetadata] The assigned policies of the 'Decommissioned' management group and indicator to create it or not.
  /// [existingAzureBastionId] The resource ID of the Bastion when reusing an existing one.
  /// [existingDdosProtectionId] The resource ID of the DDoS protection plan when reusing an existing one.
  /// [existingLogAnalyticsWorkspaceId] The resource ID of the log analytics workspace when reusing an existing one.
  /// [firewallCreationOption] Parameter used for deploying a Firewall: Select 'No' to skip deployment, 'Standard' to deploy the Standard SKU, or 'Premium' to deploy the Premium SKU.
  /// [firewallSubnetCidrBlock] The Firewall subnet address used for deploying a firewall. Specify the Firewall subnet using IPv4 CIDR notation.
  /// [gatewaySubnetCidrBlock] The gateway subnet address used for deploying a virtual network. Specify the subnet using IPv4 CIDR notation.
  /// [hubNetworkCidrBlock] The Virtual Network address. Specify the address using IPv4 CIDR notation.
  /// [landingZonesMgChildren] The child management groups of 'Landing Zones' management group and their assigned policies.
  /// [landingZonesMgMetadata] The assigned policies of the 'Landing Zones' management group.
  /// [logAnalyticsWorkspaceCreationOption] Parameter used to deploy a log analytics workspace: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing log analytics workspace.
  /// [logRetentionInDays] Parameter to define the retention period for logs, in days. The minimum duration is 30 days and the maximum is 730 days.
  /// [managedIdentity] The managed identity to be assigned to this landing zone configuration.
  /// [namingConventionFormula] The default naming convention applied to all resources for this landing zone configuration. Example - {DeploymentPrefix}-Contoso-{ResourceTypeAbbreviation}{DeploymentSuffix}-{Environment}-testing
  /// [platformConnectivityMgMetadata] The assigned policies of the 'Connectivity' management group under 'Platform' management group.
  /// [platformIdentityMgMetadata] The assigned policies of the 'Identity' management group under 'Platform' management group.
  /// [platformManagementMgMetadata] The assigned policies of the 'Management' management group under 'Platform' management group.
  /// [platformMgChildren] The names of the 'Platform' child management groups and their assigned policies, excluding the default ones: 'Connectivity', 'Identity', and 'Management'
  /// [platformMgMetadata] The assigned policies of the 'Platform' management group.
  /// [provisioningState] The state that reflects the current stage in the creation, updating, or deletion process of the landing zone configuration.
  /// [sandboxMgMetadata] The assigned policies of the 'Sandbox' management group and indicator to create it or not.
  /// [tags] Tags are key-value pairs that can be assigned to a resource to organize and manage it more effectively. Example: {'name': 'a tag name', 'value': 'a tag value'}
  /// [topLevelMgMetadata] The assigned policies of the parent management group.
  LandingZoneConfigurationResourcePropertiesResponse({
    required this.authoringStatus,
    required this.azureBastionCreationOption,
    this.azureBastionSubnetCidrBlock,
    this.customNamingConvention,
    required this.ddosProtectionCreationOption,
    this.decommissionedMgMetadata,
    this.existingAzureBastionId,
    this.existingDdosProtectionId,
    this.existingLogAnalyticsWorkspaceId,
    required this.firewallCreationOption,
    this.firewallSubnetCidrBlock,
    required this.gatewaySubnetCidrBlock,
    required this.hubNetworkCidrBlock,
    this.landingZonesMgChildren,
    this.landingZonesMgMetadata,
    required this.logAnalyticsWorkspaceCreationOption,
    required this.logRetentionInDays,
    required this.managedIdentity,
    this.namingConventionFormula,
    this.platformConnectivityMgMetadata,
    this.platformIdentityMgMetadata,
    this.platformManagementMgMetadata,
    this.platformMgChildren,
    this.platformMgMetadata,
    required this.provisioningState,
    this.sandboxMgMetadata,
    this.tags,
    this.topLevelMgMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authoringStatus': authoringStatus,
      'azureBastionCreationOption': azureBastionCreationOption,
      'azureBastionSubnetCidrBlock': ?azureBastionSubnetCidrBlock,
      'customNamingConvention': ?pulumi.Input.mapOptionalInputValue<List<CustomNamingConventionResponse>, List<Map<String, dynamic>>>(customNamingConvention, (value) => pulumi.Input.encodeList<CustomNamingConventionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ddosProtectionCreationOption': ddosProtectionCreationOption,
      'decommissionedMgMetadata': ?pulumi.Input.mapOptionalInputValue<DecommissionedManagementGroupPropertiesResponse, Map<String, dynamic>>(decommissionedMgMetadata, (value) => value.toMap()),
      'existingAzureBastionId': ?existingAzureBastionId,
      'existingDdosProtectionId': ?existingDdosProtectionId,
      'existingLogAnalyticsWorkspaceId': ?existingLogAnalyticsWorkspaceId,
      'firewallCreationOption': firewallCreationOption,
      'firewallSubnetCidrBlock': ?firewallSubnetCidrBlock,
      'gatewaySubnetCidrBlock': gatewaySubnetCidrBlock,
      'hubNetworkCidrBlock': hubNetworkCidrBlock,
      'landingZonesMgChildren': ?pulumi.Input.mapOptionalInputValue<List<LandingZoneManagementGroupPropertiesResponse>, List<Map<String, dynamic>>>(landingZonesMgChildren, (value) => pulumi.Input.encodeList<LandingZoneManagementGroupPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'landingZonesMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(landingZonesMgMetadata, (value) => value.toMap()),
      'logAnalyticsWorkspaceCreationOption': logAnalyticsWorkspaceCreationOption,
      'logRetentionInDays': logRetentionInDays,
      'managedIdentity': pulumi.Input.mapInputValue<ManagedIdentityPropertiesResponse, Map<String, dynamic>>(managedIdentity, (value) => value.toMap()),
      'namingConventionFormula': ?namingConventionFormula,
      'platformConnectivityMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(platformConnectivityMgMetadata, (value) => value.toMap()),
      'platformIdentityMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(platformIdentityMgMetadata, (value) => value.toMap()),
      'platformManagementMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(platformManagementMgMetadata, (value) => value.toMap()),
      'platformMgChildren': ?pulumi.Input.mapOptionalInputValue<List<PlatformManagementGroupPropertiesResponse>, List<Map<String, dynamic>>>(platformMgChildren, (value) => pulumi.Input.encodeList<PlatformManagementGroupPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(platformMgMetadata, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sandboxMgMetadata': ?pulumi.Input.mapOptionalInputValue<SandboxManagementGroupPropertiesResponse, Map<String, dynamic>>(sandboxMgMetadata, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagsResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topLevelMgMetadata': ?pulumi.Input.mapOptionalInputValue<ManagementGroupPropertiesResponse, Map<String, dynamic>>(topLevelMgMetadata, (value) => value.toMap()),
    };
  }

  factory LandingZoneConfigurationResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LandingZoneConfigurationResourcePropertiesResponse(
      authoringStatus: (map['authoringStatus'] as String).input(),
      azureBastionCreationOption: (map['azureBastionCreationOption'] as String).input(),
      azureBastionSubnetCidrBlock: map['azureBastionSubnetCidrBlock'] == null ? null : (map['azureBastionSubnetCidrBlock'] as String).input(),
      customNamingConvention: map['customNamingConvention'] == null ? null : (pulumi.Input.decodeList<CustomNamingConventionResponse>(map['customNamingConvention'], (value) => CustomNamingConventionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ddosProtectionCreationOption: (map['ddosProtectionCreationOption'] as String).input(),
      decommissionedMgMetadata: map['decommissionedMgMetadata'] == null ? null : (DecommissionedManagementGroupPropertiesResponse.fromMap((map['decommissionedMgMetadata'] as Map).cast<String, dynamic>())).input(),
      existingAzureBastionId: map['existingAzureBastionId'] == null ? null : (map['existingAzureBastionId'] as String).input(),
      existingDdosProtectionId: map['existingDdosProtectionId'] == null ? null : (map['existingDdosProtectionId'] as String).input(),
      existingLogAnalyticsWorkspaceId: map['existingLogAnalyticsWorkspaceId'] == null ? null : (map['existingLogAnalyticsWorkspaceId'] as String).input(),
      firewallCreationOption: (map['firewallCreationOption'] as String).input(),
      firewallSubnetCidrBlock: map['firewallSubnetCidrBlock'] == null ? null : (map['firewallSubnetCidrBlock'] as String).input(),
      gatewaySubnetCidrBlock: (map['gatewaySubnetCidrBlock'] as String).input(),
      hubNetworkCidrBlock: (map['hubNetworkCidrBlock'] as String).input(),
      landingZonesMgChildren: map['landingZonesMgChildren'] == null ? null : (pulumi.Input.decodeList<LandingZoneManagementGroupPropertiesResponse>(map['landingZonesMgChildren'], (value) => LandingZoneManagementGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      landingZonesMgMetadata: map['landingZonesMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['landingZonesMgMetadata'] as Map).cast<String, dynamic>())).input(),
      logAnalyticsWorkspaceCreationOption: (map['logAnalyticsWorkspaceCreationOption'] as String).input(),
      logRetentionInDays: (map['logRetentionInDays'] as double).input(),
      managedIdentity: (ManagedIdentityPropertiesResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>())).input(),
      namingConventionFormula: map['namingConventionFormula'] == null ? null : (map['namingConventionFormula'] as String).input(),
      platformConnectivityMgMetadata: map['platformConnectivityMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['platformConnectivityMgMetadata'] as Map).cast<String, dynamic>())).input(),
      platformIdentityMgMetadata: map['platformIdentityMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['platformIdentityMgMetadata'] as Map).cast<String, dynamic>())).input(),
      platformManagementMgMetadata: map['platformManagementMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['platformManagementMgMetadata'] as Map).cast<String, dynamic>())).input(),
      platformMgChildren: map['platformMgChildren'] == null ? null : (pulumi.Input.decodeList<PlatformManagementGroupPropertiesResponse>(map['platformMgChildren'], (value) => PlatformManagementGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      platformMgMetadata: map['platformMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['platformMgMetadata'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sandboxMgMetadata: map['sandboxMgMetadata'] == null ? null : (SandboxManagementGroupPropertiesResponse.fromMap((map['sandboxMgMetadata'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagsResponse>(map['tags'], (value) => TagsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topLevelMgMetadata: map['topLevelMgMetadata'] == null ? null : (ManagementGroupPropertiesResponse.fromMap((map['topLevelMgMetadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

