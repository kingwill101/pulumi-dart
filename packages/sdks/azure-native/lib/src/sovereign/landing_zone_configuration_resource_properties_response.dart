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
  final String authoringStatus;
  /// Parameter used to deploy a Bastion: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing Bastion.
  final String azureBastionCreationOption;
  /// The Bastion subnet address. Specify the address using IPv4 CIDR notation.
  final String? azureBastionSubnetCidrBlock;
  /// The custom naming convention applied to specific resource types for this landing zone configuration, which overrides the default naming convention for those resource types. Example - 'customNamingConvention': [{'resourceType': 'azureFirewalls', 'formula': '{DeploymentPrefix}-afwl-{DeploymentSuffix}'}]
  final List<CustomNamingConventionResponse>? customNamingConvention;
  /// Parameter used to deploy a DDoS protection plan: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing DDoS protection plan.
  final String ddosProtectionCreationOption;
  /// The assigned policies of the 'Decommissioned' management group and indicator to create it or not.
  final DecommissionedManagementGroupPropertiesResponse? decommissionedMgMetadata;
  /// The resource ID of the Bastion when reusing an existing one.
  final String? existingAzureBastionId;
  /// The resource ID of the DDoS protection plan when reusing an existing one.
  final String? existingDdosProtectionId;
  /// The resource ID of the log analytics workspace when reusing an existing one.
  final String? existingLogAnalyticsWorkspaceId;
  /// Parameter used for deploying a Firewall: Select 'No' to skip deployment, 'Standard' to deploy the Standard SKU, or 'Premium' to deploy the Premium SKU.
  final String firewallCreationOption;
  /// The Firewall subnet address used for deploying a firewall. Specify the Firewall subnet using IPv4 CIDR notation.
  final String? firewallSubnetCidrBlock;
  /// The gateway subnet address used for deploying a virtual network. Specify the subnet using IPv4 CIDR notation.
  final String gatewaySubnetCidrBlock;
  /// The Virtual Network address. Specify the address using IPv4 CIDR notation.
  final String hubNetworkCidrBlock;
  /// The child management groups of 'Landing Zones' management group and their assigned policies.
  final List<LandingZoneManagementGroupPropertiesResponse>? landingZonesMgChildren;
  /// The assigned policies of the 'Landing Zones' management group.
  final ManagementGroupPropertiesResponse? landingZonesMgMetadata;
  /// Parameter used to deploy a log analytics workspace: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing log analytics workspace.
  final String logAnalyticsWorkspaceCreationOption;
  /// Parameter to define the retention period for logs, in days. The minimum duration is 30 days and the maximum is 730 days.
  final double logRetentionInDays;
  /// The managed identity to be assigned to this landing zone configuration.
  final ManagedIdentityPropertiesResponse managedIdentity;
  /// The default naming convention applied to all resources for this landing zone configuration. Example - {DeploymentPrefix}-Contoso-{ResourceTypeAbbreviation}{DeploymentSuffix}-{Environment}-testing
  final String? namingConventionFormula;
  /// The assigned policies of the 'Connectivity' management group under 'Platform' management group.
  final ManagementGroupPropertiesResponse? platformConnectivityMgMetadata;
  /// The assigned policies of the 'Identity' management group under 'Platform' management group.
  final ManagementGroupPropertiesResponse? platformIdentityMgMetadata;
  /// The assigned policies of the 'Management' management group under 'Platform' management group.
  final ManagementGroupPropertiesResponse? platformManagementMgMetadata;
  /// The names of the 'Platform' child management groups and their assigned policies, excluding the default ones: 'Connectivity', 'Identity', and 'Management'
  final List<PlatformManagementGroupPropertiesResponse>? platformMgChildren;
  /// The assigned policies of the 'Platform' management group.
  final ManagementGroupPropertiesResponse? platformMgMetadata;
  /// The state that reflects the current stage in the creation, updating, or deletion process of the landing zone configuration.
  final String provisioningState;
  /// The assigned policies of the 'Sandbox' management group and indicator to create it or not.
  final SandboxManagementGroupPropertiesResponse? sandboxMgMetadata;
  /// Tags are key-value pairs that can be assigned to a resource to organize and manage it more effectively. Example: {'name': 'a tag name', 'value': 'a tag value'}
  final List<TagsResponse>? tags;
  /// The assigned policies of the parent management group.
  final ManagementGroupPropertiesResponse? topLevelMgMetadata;

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
      'customNamingConvention': ?customNamingConvention == null ? null : pulumi.Input.encodeList<CustomNamingConventionResponse, Map<String, dynamic>>(customNamingConvention!, (value) => value.toMap()),
      'ddosProtectionCreationOption': ddosProtectionCreationOption,
      'decommissionedMgMetadata': ?decommissionedMgMetadata == null ? null : decommissionedMgMetadata!.toMap(),
      'existingAzureBastionId': ?existingAzureBastionId,
      'existingDdosProtectionId': ?existingDdosProtectionId,
      'existingLogAnalyticsWorkspaceId': ?existingLogAnalyticsWorkspaceId,
      'firewallCreationOption': firewallCreationOption,
      'firewallSubnetCidrBlock': ?firewallSubnetCidrBlock,
      'gatewaySubnetCidrBlock': gatewaySubnetCidrBlock,
      'hubNetworkCidrBlock': hubNetworkCidrBlock,
      'landingZonesMgChildren': ?landingZonesMgChildren == null ? null : pulumi.Input.encodeList<LandingZoneManagementGroupPropertiesResponse, Map<String, dynamic>>(landingZonesMgChildren!, (value) => value.toMap()),
      'landingZonesMgMetadata': ?landingZonesMgMetadata == null ? null : landingZonesMgMetadata!.toMap(),
      'logAnalyticsWorkspaceCreationOption': logAnalyticsWorkspaceCreationOption,
      'logRetentionInDays': logRetentionInDays,
      'managedIdentity': managedIdentity.toMap(),
      'namingConventionFormula': ?namingConventionFormula,
      'platformConnectivityMgMetadata': ?platformConnectivityMgMetadata == null ? null : platformConnectivityMgMetadata!.toMap(),
      'platformIdentityMgMetadata': ?platformIdentityMgMetadata == null ? null : platformIdentityMgMetadata!.toMap(),
      'platformManagementMgMetadata': ?platformManagementMgMetadata == null ? null : platformManagementMgMetadata!.toMap(),
      'platformMgChildren': ?platformMgChildren == null ? null : pulumi.Input.encodeList<PlatformManagementGroupPropertiesResponse, Map<String, dynamic>>(platformMgChildren!, (value) => value.toMap()),
      'platformMgMetadata': ?platformMgMetadata == null ? null : platformMgMetadata!.toMap(),
      'provisioningState': provisioningState,
      'sandboxMgMetadata': ?sandboxMgMetadata == null ? null : sandboxMgMetadata!.toMap(),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagsResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'topLevelMgMetadata': ?topLevelMgMetadata == null ? null : topLevelMgMetadata!.toMap(),
    };
  }

  factory LandingZoneConfigurationResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LandingZoneConfigurationResourcePropertiesResponse(
      authoringStatus: map['authoringStatus'] as String,
      azureBastionCreationOption: map['azureBastionCreationOption'] as String,
      azureBastionSubnetCidrBlock: map['azureBastionSubnetCidrBlock'] == null ? null : map['azureBastionSubnetCidrBlock'] as String,
      customNamingConvention: map['customNamingConvention'] == null ? null : pulumi.Input.decodeList<CustomNamingConventionResponse>(map['customNamingConvention'], (value) => CustomNamingConventionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ddosProtectionCreationOption: map['ddosProtectionCreationOption'] as String,
      decommissionedMgMetadata: map['decommissionedMgMetadata'] == null ? null : DecommissionedManagementGroupPropertiesResponse.fromMap((map['decommissionedMgMetadata'] as Map).cast<String, dynamic>()),
      existingAzureBastionId: map['existingAzureBastionId'] == null ? null : map['existingAzureBastionId'] as String,
      existingDdosProtectionId: map['existingDdosProtectionId'] == null ? null : map['existingDdosProtectionId'] as String,
      existingLogAnalyticsWorkspaceId: map['existingLogAnalyticsWorkspaceId'] == null ? null : map['existingLogAnalyticsWorkspaceId'] as String,
      firewallCreationOption: map['firewallCreationOption'] as String,
      firewallSubnetCidrBlock: map['firewallSubnetCidrBlock'] == null ? null : map['firewallSubnetCidrBlock'] as String,
      gatewaySubnetCidrBlock: map['gatewaySubnetCidrBlock'] as String,
      hubNetworkCidrBlock: map['hubNetworkCidrBlock'] as String,
      landingZonesMgChildren: map['landingZonesMgChildren'] == null ? null : pulumi.Input.decodeList<LandingZoneManagementGroupPropertiesResponse>(map['landingZonesMgChildren'], (value) => LandingZoneManagementGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      landingZonesMgMetadata: map['landingZonesMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['landingZonesMgMetadata'] as Map).cast<String, dynamic>()),
      logAnalyticsWorkspaceCreationOption: map['logAnalyticsWorkspaceCreationOption'] as String,
      logRetentionInDays: map['logRetentionInDays'] as double,
      managedIdentity: ManagedIdentityPropertiesResponse.fromMap((map['managedIdentity'] as Map).cast<String, dynamic>()),
      namingConventionFormula: map['namingConventionFormula'] == null ? null : map['namingConventionFormula'] as String,
      platformConnectivityMgMetadata: map['platformConnectivityMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['platformConnectivityMgMetadata'] as Map).cast<String, dynamic>()),
      platformIdentityMgMetadata: map['platformIdentityMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['platformIdentityMgMetadata'] as Map).cast<String, dynamic>()),
      platformManagementMgMetadata: map['platformManagementMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['platformManagementMgMetadata'] as Map).cast<String, dynamic>()),
      platformMgChildren: map['platformMgChildren'] == null ? null : pulumi.Input.decodeList<PlatformManagementGroupPropertiesResponse>(map['platformMgChildren'], (value) => PlatformManagementGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      platformMgMetadata: map['platformMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['platformMgMetadata'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      sandboxMgMetadata: map['sandboxMgMetadata'] == null ? null : SandboxManagementGroupPropertiesResponse.fromMap((map['sandboxMgMetadata'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagsResponse>(map['tags'], (value) => TagsResponse.fromMap((value as Map).cast<String, dynamic>())),
      topLevelMgMetadata: map['topLevelMgMetadata'] == null ? null : ManagementGroupPropertiesResponse.fromMap((map['topLevelMgMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}

