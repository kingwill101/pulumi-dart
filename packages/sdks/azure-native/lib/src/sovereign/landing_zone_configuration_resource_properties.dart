// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_naming_convention.dart';
import 'decommissioned_management_group_properties.dart';
import 'landing_zone_management_group_properties.dart';
import 'managed_identity_properties.dart';
import 'management_group_properties.dart';
import 'platform_management_group_properties.dart';
import 'sandbox_management_group_properties.dart';
import 'tags.dart';

/// The properties of landing zone configuration resource type.
class LandingZoneConfigurationResourceProperties {
  /// Parameter used to deploy a Bastion: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing Bastion.
  final pulumi.Input<String> azureBastionCreationOption;

  /// The Bastion subnet address. Specify the address using IPv4 CIDR notation.
  final pulumi.Input<String>? azureBastionSubnetCidrBlock;

  /// The custom naming convention applied to specific resource types for this landing zone configuration, which overrides the default naming convention for those resource types. Example - 'customNamingConvention': [{'resourceType': 'azureFirewalls', 'formula': '{DeploymentPrefix}-afwl-{DeploymentSuffix}'}]
  final pulumi.Input<List<CustomNamingConvention>>? customNamingConvention;

  /// Parameter used to deploy a DDoS protection plan: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing DDoS protection plan.
  final pulumi.Input<String> ddosProtectionCreationOption;

  /// The assigned policies of the 'Decommissioned' management group and indicator to create it or not.
  final pulumi.Input<DecommissionedManagementGroupProperties>?
  decommissionedMgMetadata;

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
  final pulumi.Input<List<LandingZoneManagementGroupProperties>>?
  landingZonesMgChildren;

  /// The assigned policies of the 'Landing Zones' management group.
  final pulumi.Input<ManagementGroupProperties>? landingZonesMgMetadata;

  /// Parameter used to deploy a log analytics workspace: Select 'Yes' to enable deployment, 'No' to skip it, or 'Existing' to reuse an existing log analytics workspace.
  final pulumi.Input<String> logAnalyticsWorkspaceCreationOption;

  /// Parameter to define the retention period for logs, in days. The minimum duration is 30 days and the maximum is 730 days.
  final pulumi.Input<double> logRetentionInDays;

  /// The managed identity to be assigned to this landing zone configuration.
  final pulumi.Input<ManagedIdentityProperties> managedIdentity;

  /// The default naming convention applied to all resources for this landing zone configuration. Example - {DeploymentPrefix}-Contoso-{ResourceTypeAbbreviation}{DeploymentSuffix}-{Environment}-testing
  final pulumi.Input<String>? namingConventionFormula;

  /// The assigned policies of the 'Connectivity' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupProperties>? platformConnectivityMgMetadata;

  /// The assigned policies of the 'Identity' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupProperties>? platformIdentityMgMetadata;

  /// The assigned policies of the 'Management' management group under 'Platform' management group.
  final pulumi.Input<ManagementGroupProperties>? platformManagementMgMetadata;

  /// The names of the 'Platform' child management groups and their assigned policies, excluding the default ones: 'Connectivity', 'Identity', and 'Management'
  final pulumi.Input<List<PlatformManagementGroupProperties>>?
  platformMgChildren;

  /// The assigned policies of the 'Platform' management group.
  final pulumi.Input<ManagementGroupProperties>? platformMgMetadata;

  /// The assigned policies of the 'Sandbox' management group and indicator to create it or not.
  final pulumi.Input<SandboxManagementGroupProperties>? sandboxMgMetadata;

  /// Tags are key-value pairs that can be assigned to a resource to organize and manage it more effectively. Example: {'name': 'a tag name', 'value': 'a tag value'}
  final pulumi.Input<List<Tags>>? tags;

  /// The assigned policies of the parent management group.
  final pulumi.Input<ManagementGroupProperties>? topLevelMgMetadata;

  /// Creates a new [LandingZoneConfigurationResourceProperties].
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
  /// [sandboxMgMetadata] The assigned policies of the 'Sandbox' management group and indicator to create it or not.
  /// [tags] Tags are key-value pairs that can be assigned to a resource to organize and manage it more effectively. Example: {'name': 'a tag name', 'value': 'a tag value'}
  /// [topLevelMgMetadata] The assigned policies of the parent management group.
  LandingZoneConfigurationResourceProperties({
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
    this.sandboxMgMetadata,
    this.tags,
    this.topLevelMgMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBastionCreationOption': azureBastionCreationOption,
      'azureBastionSubnetCidrBlock': ?azureBastionSubnetCidrBlock,
      'customNamingConvention':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomNamingConvention>,
            List<Map<String, dynamic>>
          >(
            customNamingConvention,
            (value) =>
                pulumi.Input.encodeList<
                  CustomNamingConvention,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ddosProtectionCreationOption': ddosProtectionCreationOption,
      'decommissionedMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            DecommissionedManagementGroupProperties,
            Map<String, dynamic>
          >(decommissionedMgMetadata, (value) => value.toMap()),
      'existingAzureBastionId': ?existingAzureBastionId,
      'existingDdosProtectionId': ?existingDdosProtectionId,
      'existingLogAnalyticsWorkspaceId': ?existingLogAnalyticsWorkspaceId,
      'firewallCreationOption': firewallCreationOption,
      'firewallSubnetCidrBlock': ?firewallSubnetCidrBlock,
      'gatewaySubnetCidrBlock': gatewaySubnetCidrBlock,
      'hubNetworkCidrBlock': hubNetworkCidrBlock,
      'landingZonesMgChildren':
          ?pulumi.Input.mapOptionalInputValue<
            List<LandingZoneManagementGroupProperties>,
            List<Map<String, dynamic>>
          >(
            landingZonesMgChildren,
            (value) =>
                pulumi.Input.encodeList<
                  LandingZoneManagementGroupProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'landingZonesMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(landingZonesMgMetadata, (value) => value.toMap()),
      'logAnalyticsWorkspaceCreationOption':
          logAnalyticsWorkspaceCreationOption,
      'logRetentionInDays': logRetentionInDays,
      'managedIdentity':
          pulumi.Input.mapInputValue<
            ManagedIdentityProperties,
            Map<String, dynamic>
          >(managedIdentity, (value) => value.toMap()),
      'namingConventionFormula': ?namingConventionFormula,
      'platformConnectivityMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(platformConnectivityMgMetadata, (value) => value.toMap()),
      'platformIdentityMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(platformIdentityMgMetadata, (value) => value.toMap()),
      'platformManagementMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(platformManagementMgMetadata, (value) => value.toMap()),
      'platformMgChildren':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlatformManagementGroupProperties>,
            List<Map<String, dynamic>>
          >(
            platformMgChildren,
            (value) =>
                pulumi.Input.encodeList<
                  PlatformManagementGroupProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'platformMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(platformMgMetadata, (value) => value.toMap()),
      'sandboxMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            SandboxManagementGroupProperties,
            Map<String, dynamic>
          >(sandboxMgMetadata, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<Tags>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<Tags, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'topLevelMgMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ManagementGroupProperties,
            Map<String, dynamic>
          >(topLevelMgMetadata, (value) => value.toMap()),
    };
  }

  factory LandingZoneConfigurationResourceProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return LandingZoneConfigurationResourceProperties(
      azureBastionCreationOption: pulumi.Input.fromValue(
        map['azureBastionCreationOption'] as String,
      ),
      azureBastionSubnetCidrBlock: (() {
        final guardedValue = map['azureBastionSubnetCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customNamingConvention: (() {
        final guardedValue = map['customNamingConvention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomNamingConvention>(
            guardedValue,
            (value) => CustomNamingConvention.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ddosProtectionCreationOption: pulumi.Input.fromValue(
        map['ddosProtectionCreationOption'] as String,
      ),
      decommissionedMgMetadata: (() {
        final guardedValue = map['decommissionedMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DecommissionedManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      existingAzureBastionId: (() {
        final guardedValue = map['existingAzureBastionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      existingDdosProtectionId: (() {
        final guardedValue = map['existingDdosProtectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      existingLogAnalyticsWorkspaceId: (() {
        final guardedValue = map['existingLogAnalyticsWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firewallCreationOption: pulumi.Input.fromValue(
        map['firewallCreationOption'] as String,
      ),
      firewallSubnetCidrBlock: (() {
        final guardedValue = map['firewallSubnetCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewaySubnetCidrBlock: pulumi.Input.fromValue(
        map['gatewaySubnetCidrBlock'] as String,
      ),
      hubNetworkCidrBlock: pulumi.Input.fromValue(
        map['hubNetworkCidrBlock'] as String,
      ),
      landingZonesMgChildren: (() {
        final guardedValue = map['landingZonesMgChildren'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LandingZoneManagementGroupProperties>(
            guardedValue,
            (value) => LandingZoneManagementGroupProperties.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      landingZonesMgMetadata: (() {
        final guardedValue = map['landingZonesMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      logAnalyticsWorkspaceCreationOption: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceCreationOption'] as String,
      ),
      logRetentionInDays: pulumi.Input.fromValue(
        map['logRetentionInDays'] as double,
      ),
      managedIdentity: pulumi.Input.fromValue(
        ManagedIdentityProperties.fromMap(
          (map['managedIdentity']! as Map).cast<String, dynamic>(),
        ),
      ),
      namingConventionFormula: (() {
        final guardedValue = map['namingConventionFormula'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platformConnectivityMgMetadata: (() {
        final guardedValue = map['platformConnectivityMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      platformIdentityMgMetadata: (() {
        final guardedValue = map['platformIdentityMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      platformManagementMgMetadata: (() {
        final guardedValue = map['platformManagementMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      platformMgChildren: (() {
        final guardedValue = map['platformMgChildren'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlatformManagementGroupProperties>(
            guardedValue,
            (value) => PlatformManagementGroupProperties.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      platformMgMetadata: (() {
        final guardedValue = map['platformMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sandboxMgMetadata: (() {
        final guardedValue = map['sandboxMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SandboxManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Tags>(
            guardedValue,
            (value) => Tags.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      topLevelMgMetadata: (() {
        final guardedValue = map['topLevelMgMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagementGroupProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
