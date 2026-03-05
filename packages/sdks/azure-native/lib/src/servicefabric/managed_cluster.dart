import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_type_versions_cleanup_policy_response.dart';
import 'azure_active_directory_response.dart';
import 'cluster_upgrade_policy_response.dart';
import 'managed_cluster_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// The managed cluster resource
///
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a cluster with maximum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ServiceFabric.ManagedCluster("managedCluster", new()
///     {
///         AddonFeatures = new[]
///         {
///             AzureNative.ServiceFabric.ManagedClusterAddOnFeature.DnsService,
///             AzureNative.ServiceFabric.ManagedClusterAddOnFeature.BackupRestoreService,
///             AzureNative.ServiceFabric.ManagedClusterAddOnFeature.ResourceMonitorService,
///         },
///         AdminPassword = "{vm-password}",
///         AdminUserName = "vmadmin",
///         AllowRdpAccess = true,
///         ApplicationTypeVersionsCleanupPolicy = new AzureNative.ServiceFabric.Inputs.ApplicationTypeVersionsCleanupPolicyArgs
///         {
///             MaxUnusedVersionsToKeep = 3,
///         },
///         AuxiliarySubnets = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.SubnetArgs
///             {
///                 EnableIpv6 = true,
///                 Name = "testSubnet1",
///                 NetworkSecurityGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1",
///                 PrivateEndpointNetworkPolicies = AzureNative.ServiceFabric.PrivateEndpointNetworkPolicies.Enabled,
///                 PrivateLinkServiceNetworkPolicies = AzureNative.ServiceFabric.PrivateLinkServiceNetworkPolicies.Enabled,
///             },
///         },
///         ClientConnectionPort = 19000,
///         ClusterCodeVersion = "7.1.168.9494",
///         ClusterName = "myCluster",
///         ClusterUpgradeMode = AzureNative.ServiceFabric.ClusterUpgradeMode.Manual,
///         DdosProtectionPlanId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan",
///         DnsName = "myCluster",
///         EnableAutoOSUpgrade = true,
///         EnableHttpGatewayExclusiveAuthMode = true,
///         EnableIpv6 = true,
///         FabricSettings = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.SettingsSectionDescriptionArgs
///             {
///                 Name = "ManagedIdentityTokenService",
///                 Parameters = new[]
///                 {
///                     new AzureNative.ServiceFabric.Inputs.SettingsParameterDescriptionArgs
///                     {
///                         Name = "IsEnabled",
///                         Value = "true",
///                     },
///                 },
///             },
///         },
///         HttpGatewayConnectionPort = 19080,
///         HttpGatewayTokenAuthConnectionPort = 19081,
///         IpTags = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.IpTagArgs
///             {
///                 IpTagType = "FirstPartyUsage",
///                 Tag = "SQL",
///             },
///         },
///         LoadBalancingRules = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendPort = 80,
///                 FrontendPort = 80,
///                 ProbePort = 80,
///                 ProbeProtocol = AzureNative.ServiceFabric.ProbeProtocol.Http,
///                 Protocol = "http",
///             },
///             new AzureNative.ServiceFabric.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendPort = 443,
///                 FrontendPort = 443,
///                 ProbePort = 443,
///                 ProbeProtocol = AzureNative.ServiceFabric.ProbeProtocol.Http,
///                 Protocol = "http",
///             },
///             new AzureNative.ServiceFabric.Inputs.LoadBalancingRuleArgs
///             {
///                 BackendPort = 10000,
///                 FrontendPort = 10000,
///                 LoadDistribution = "Default",
///                 ProbePort = 10000,
///                 ProbeProtocol = AzureNative.ServiceFabric.ProbeProtocol.Http,
///                 Protocol = AzureNative.ServiceFabric.Protocol.Tcp,
///             },
///         },
///         Location = "eastus",
///         NetworkSecurityRules = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.NetworkSecurityRuleArgs
///             {
///                 Access = AzureNative.ServiceFabric.Access.Allow,
///                 Description = "Test description",
///                 DestinationAddressPrefixes = new[]
///                 {
///                     "*",
///                 },
///                 DestinationPortRanges = new[]
///                 {
///                     "*",
///                 },
///                 Direction = AzureNative.ServiceFabric.Direction.Inbound,
///                 Name = "TestName",
///                 Priority = 1010,
///                 Protocol = AzureNative.ServiceFabric.NsgProtocol.Tcp,
///                 SourceAddressPrefixes = new[]
///                 {
///                     "*",
///                 },
///                 SourcePortRanges = new[]
///                 {
///                     "*",
///                 },
///             },
///             new AzureNative.ServiceFabric.Inputs.NetworkSecurityRuleArgs
///             {
///                 Access = AzureNative.ServiceFabric.Access.Allow,
///                 DestinationAddressPrefix = "*",
///                 DestinationPortRange = "33500-33699",
///                 Direction = AzureNative.ServiceFabric.Direction.Inbound,
///                 Name = "AllowARM",
///                 Priority = 2002,
///                 Protocol = "*",
///                 SourceAddressPrefix = "AzureResourceManager",
///                 SourcePortRange = "*",
///             },
///         },
///         PublicIPPrefixId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix",
///         PublicIPv6PrefixId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix",
///         ResourceGroupName = "resRg",
///         ServiceEndpoints = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.ServiceEndpointArgs
///             {
///                 Locations = new[]
///                 {
///                     "eastus2",
///                     "usnorth",
///                 },
///                 Service = "Microsoft.Storage",
///             },
///         },
///         Sku = new AzureNative.ServiceFabric.Inputs.SkuArgs
///         {
///             Name = AzureNative.ServiceFabric.SkuName.Basic,
///         },
///         Tags = null,
///         UpgradeDescription = new AzureNative.ServiceFabric.Inputs.ClusterUpgradePolicyArgs
///         {
///             DeltaHealthPolicy = new AzureNative.ServiceFabric.Inputs.ClusterUpgradeDeltaHealthPolicyArgs
///             {
///                 MaxPercentDeltaUnhealthyApplications = 40,
///                 MaxPercentDeltaUnhealthyNodes = 20,
///                 MaxPercentUpgradeDomainDeltaUnhealthyNodes = 40,
///             },
///             ForceRestart = false,
///             HealthPolicy = new AzureNative.ServiceFabric.Inputs.ClusterHealthPolicyArgs
///             {
///                 MaxPercentUnhealthyApplications = 30,
///                 MaxPercentUnhealthyNodes = 10,
///             },
///             MonitoringPolicy = new AzureNative.ServiceFabric.Inputs.ClusterMonitoringPolicyArgs
///             {
///                 HealthCheckRetryTimeout = "00:55:00",
///                 HealthCheckStableDuration = "00:45:00",
///                 HealthCheckWaitDuration = "00:05:00",
///                 UpgradeDomainTimeout = "03:00:00",
///                 UpgradeTimeout = "12:00:00",
///             },
///         },
///         UseCustomVnet = true,
///         ZonalResiliency = true,
///         ZonalUpdateMode = AzureNative.ServiceFabric.ZonalUpdateMode.Fast,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewManagedCluster(ctx, "managedCluster", &servicefabric.ManagedClusterArgs{
/// 			AddonFeatures: pulumi.StringArray{
/// 				pulumi.String(servicefabric.ManagedClusterAddOnFeatureDnsService),
/// 				pulumi.String(servicefabric.ManagedClusterAddOnFeatureBackupRestoreService),
/// 				pulumi.String(servicefabric.ManagedClusterAddOnFeatureResourceMonitorService),
/// 			},
/// 			AdminPassword:  pulumi.String("{vm-password}"),
/// 			AdminUserName:  pulumi.String("vmadmin"),
/// 			AllowRdpAccess: pulumi.Bool(true),
/// 			ApplicationTypeVersionsCleanupPolicy: &servicefabric.ApplicationTypeVersionsCleanupPolicyArgs{
/// 				MaxUnusedVersionsToKeep: pulumi.Int(3),
/// 			},
/// 			AuxiliarySubnets: servicefabric.SubnetArray{
/// 				&servicefabric.SubnetArgs{
/// 					EnableIpv6:                        pulumi.Bool(true),
/// 					Name:                              pulumi.String("testSubnet1"),
/// 					NetworkSecurityGroupId:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1"),
/// 					PrivateEndpointNetworkPolicies:    pulumi.String(servicefabric.PrivateEndpointNetworkPoliciesEnabled),
/// 					PrivateLinkServiceNetworkPolicies: pulumi.String(servicefabric.PrivateLinkServiceNetworkPoliciesEnabled),
/// 				},
/// 			},
/// 			ClientConnectionPort:               pulumi.Int(19000),
/// 			ClusterCodeVersion:                 pulumi.String("7.1.168.9494"),
/// 			ClusterName:                        pulumi.String("myCluster"),
/// 			ClusterUpgradeMode:                 pulumi.String(servicefabric.ClusterUpgradeModeManual),
/// 			DdosProtectionPlanId:               pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan"),
/// 			DnsName:                            pulumi.String("myCluster"),
/// 			EnableAutoOSUpgrade:                pulumi.Bool(true),
/// 			EnableHttpGatewayExclusiveAuthMode: pulumi.Bool(true),
/// 			EnableIpv6:                         pulumi.Bool(true),
/// 			FabricSettings: servicefabric.SettingsSectionDescriptionArray{
/// 				&servicefabric.SettingsSectionDescriptionArgs{
/// 					Name: pulumi.String("ManagedIdentityTokenService"),
/// 					Parameters: servicefabric.SettingsParameterDescriptionArray{
/// 						&servicefabric.SettingsParameterDescriptionArgs{
/// 							Name:  pulumi.String("IsEnabled"),
/// 							Value: pulumi.String("true"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			HttpGatewayConnectionPort:          pulumi.Int(19080),
/// 			HttpGatewayTokenAuthConnectionPort: pulumi.Int(19081),
/// 			IpTags: servicefabric.IpTagArray{
/// 				&servicefabric.IpTagArgs{
/// 					IpTagType: pulumi.String("FirstPartyUsage"),
/// 					Tag:       pulumi.String("SQL"),
/// 				},
/// 			},
/// 			LoadBalancingRules: servicefabric.LoadBalancingRuleArray{
/// 				&servicefabric.LoadBalancingRuleArgs{
/// 					BackendPort:   pulumi.Int(80),
/// 					FrontendPort:  pulumi.Int(80),
/// 					ProbePort:     pulumi.Int(80),
/// 					ProbeProtocol: pulumi.String(servicefabric.ProbeProtocolHttp),
/// 					Protocol:      pulumi.String("http"),
/// 				},
/// 				&servicefabric.LoadBalancingRuleArgs{
/// 					BackendPort:   pulumi.Int(443),
/// 					FrontendPort:  pulumi.Int(443),
/// 					ProbePort:     pulumi.Int(443),
/// 					ProbeProtocol: pulumi.String(servicefabric.ProbeProtocolHttp),
/// 					Protocol:      pulumi.String("http"),
/// 				},
/// 				&servicefabric.LoadBalancingRuleArgs{
/// 					BackendPort:      pulumi.Int(10000),
/// 					FrontendPort:     pulumi.Int(10000),
/// 					LoadDistribution: pulumi.String("Default"),
/// 					ProbePort:        pulumi.Int(10000),
/// 					ProbeProtocol:    pulumi.String(servicefabric.ProbeProtocolHttp),
/// 					Protocol:         pulumi.String(servicefabric.ProtocolTcp),
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			NetworkSecurityRules: servicefabric.NetworkSecurityRuleArray{
/// 				&servicefabric.NetworkSecurityRuleArgs{
/// 					Access:      pulumi.String(servicefabric.AccessAllow),
/// 					Description: pulumi.String("Test description"),
/// 					DestinationAddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					DestinationPortRanges: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					Direction: pulumi.String(servicefabric.DirectionInbound),
/// 					Name:      pulumi.String("TestName"),
/// 					Priority:  pulumi.Int(1010),
/// 					Protocol:  pulumi.String(servicefabric.NsgProtocolTcp),
/// 					SourceAddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					SourcePortRanges: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				&servicefabric.NetworkSecurityRuleArgs{
/// 					Access:                   pulumi.String(servicefabric.AccessAllow),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("33500-33699"),
/// 					Direction:                pulumi.String(servicefabric.DirectionInbound),
/// 					Name:                     pulumi.String("AllowARM"),
/// 					Priority:                 pulumi.Int(2002),
/// 					Protocol:                 pulumi.String("*"),
/// 					SourceAddressPrefix:      pulumi.String("AzureResourceManager"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 				},
/// 			},
/// 			PublicIPPrefixId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix"),
/// 			PublicIPv6PrefixId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix"),
/// 			ResourceGroupName:  pulumi.String("resRg"),
/// 			ServiceEndpoints: servicefabric.ServiceEndpointArray{
/// 				&servicefabric.ServiceEndpointArgs{
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("eastus2"),
/// 						pulumi.String("usnorth"),
/// 					},
/// 					Service: pulumi.String("Microsoft.Storage"),
/// 				},
/// 			},
/// 			Sku: &servicefabric.SkuArgs{
/// 				Name: pulumi.String(servicefabric.SkuNameBasic),
/// 			},
/// 			Tags: pulumi.StringMap{},
/// 			UpgradeDescription: &servicefabric.ClusterUpgradePolicyArgs{
/// 				DeltaHealthPolicy: &servicefabric.ClusterUpgradeDeltaHealthPolicyArgs{
/// 					MaxPercentDeltaUnhealthyApplications:       pulumi.Int(40),
/// 					MaxPercentDeltaUnhealthyNodes:              pulumi.Int(20),
/// 					MaxPercentUpgradeDomainDeltaUnhealthyNodes: pulumi.Int(40),
/// 				},
/// 				ForceRestart: pulumi.Bool(false),
/// 				HealthPolicy: &servicefabric.ClusterHealthPolicyArgs{
/// 					MaxPercentUnhealthyApplications: pulumi.Int(30),
/// 					MaxPercentUnhealthyNodes:        pulumi.Int(10),
/// 				},
/// 				MonitoringPolicy: &servicefabric.ClusterMonitoringPolicyArgs{
/// 					HealthCheckRetryTimeout:   pulumi.String("00:55:00"),
/// 					HealthCheckStableDuration: pulumi.String("00:45:00"),
/// 					HealthCheckWaitDuration:   pulumi.String("00:05:00"),
/// 					UpgradeDomainTimeout:      pulumi.String("03:00:00"),
/// 					UpgradeTimeout:            pulumi.String("12:00:00"),
/// 				},
/// 			},
/// 			UseCustomVnet:   pulumi.Bool(true),
/// 			ZonalResiliency: pulumi.Bool(true),
/// 			ZonalUpdateMode: pulumi.String(servicefabric.ZonalUpdateModeFast),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicefabric.ManagedCluster;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ApplicationTypeVersionsCleanupPolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SubnetArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SettingsSectionDescriptionArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.IpTagArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.LoadBalancingRuleArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.NetworkSecurityRuleArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ServiceEndpointArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SkuArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ClusterUpgradePolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ClusterUpgradeDeltaHealthPolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ClusterHealthPolicyArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.ClusterMonitoringPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonFeatures(
///                 "DnsService",
///                 "BackupRestoreService",
///                 "ResourceMonitorService")
///             .adminPassword("{vm-password}")
///             .adminUserName("vmadmin")
///             .allowRdpAccess(true)
///             .applicationTypeVersionsCleanupPolicy(ApplicationTypeVersionsCleanupPolicyArgs.builder()
///                 .maxUnusedVersionsToKeep(3)
///                 .build())
///             .auxiliarySubnets(SubnetArgs.builder()
///                 .enableIpv6(true)
///                 .name("testSubnet1")
///                 .networkSecurityGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1")
///                 .privateEndpointNetworkPolicies("enabled")
///                 .privateLinkServiceNetworkPolicies("enabled")
///                 .build())
///             .clientConnectionPort(19000)
///             .clusterCodeVersion("7.1.168.9494")
///             .clusterName("myCluster")
///             .clusterUpgradeMode("Manual")
///             .ddosProtectionPlanId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan")
///             .dnsName("myCluster")
///             .enableAutoOSUpgrade(true)
///             .enableHttpGatewayExclusiveAuthMode(true)
///             .enableIpv6(true)
///             .fabricSettings(SettingsSectionDescriptionArgs.builder()
///                 .name("ManagedIdentityTokenService")
///                 .parameters(SettingsParameterDescriptionArgs.builder()
///                     .name("IsEnabled")
///                     .value("true")
///                     .build())
///                 .build())
///             .httpGatewayConnectionPort(19080)
///             .httpGatewayTokenAuthConnectionPort(19081)
///             .ipTags(IpTagArgs.builder()
///                 .ipTagType("FirstPartyUsage")
///                 .tag("SQL")
///                 .build())
///             .loadBalancingRules(
///                 LoadBalancingRuleArgs.builder()
///                     .backendPort(80)
///                     .frontendPort(80)
///                     .probePort(80)
///                     .probeProtocol("http")
///                     .protocol("http")
///                     .build(),
///                 LoadBalancingRuleArgs.builder()
///                     .backendPort(443)
///                     .frontendPort(443)
///                     .probePort(443)
///                     .probeProtocol("http")
///                     .protocol("http")
///                     .build(),
///                 LoadBalancingRuleArgs.builder()
///                     .backendPort(10000)
///                     .frontendPort(10000)
///                     .loadDistribution("Default")
///                     .probePort(10000)
///                     .probeProtocol("http")
///                     .protocol("tcp")
///                     .build())
///             .location("eastus")
///             .networkSecurityRules(
///                 NetworkSecurityRuleArgs.builder()
///                     .access("allow")
///                     .description("Test description")
///                     .destinationAddressPrefixes("*")
///                     .destinationPortRanges("*")
///                     .direction("inbound")
///                     .name("TestName")
///                     .priority(1010)
///                     .protocol("tcp")
///                     .sourceAddressPrefixes("*")
///                     .sourcePortRanges("*")
///                     .build(),
///                 NetworkSecurityRuleArgs.builder()
///                     .access("allow")
///                     .destinationAddressPrefix("*")
///                     .destinationPortRange("33500-33699")
///                     .direction("inbound")
///                     .name("AllowARM")
///                     .priority(2002)
///                     .protocol("*")
///                     .sourceAddressPrefix("AzureResourceManager")
///                     .sourcePortRange("*")
///                     .build())
///             .publicIPPrefixId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix")
///             .publicIPv6PrefixId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix")
///             .resourceGroupName("resRg")
///             .serviceEndpoints(ServiceEndpointArgs.builder()
///                 .locations(
///                     "eastus2",
///                     "usnorth")
///                 .service("Microsoft.Storage")
///                 .build())
///             .sku(SkuArgs.builder()
///                 .name("Basic")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
///             .upgradeDescription(ClusterUpgradePolicyArgs.builder()
///                 .deltaHealthPolicy(ClusterUpgradeDeltaHealthPolicyArgs.builder()
///                     .maxPercentDeltaUnhealthyApplications(40)
///                     .maxPercentDeltaUnhealthyNodes(20)
///                     .maxPercentUpgradeDomainDeltaUnhealthyNodes(40)
///                     .build())
///                 .forceRestart(false)
///                 .healthPolicy(ClusterHealthPolicyArgs.builder()
///                     .maxPercentUnhealthyApplications(30)
///                     .maxPercentUnhealthyNodes(10)
///                     .build())
///                 .monitoringPolicy(ClusterMonitoringPolicyArgs.builder()
///                     .healthCheckRetryTimeout("00:55:00")
///                     .healthCheckStableDuration("00:45:00")
///                     .healthCheckWaitDuration("00:05:00")
///                     .upgradeDomainTimeout("03:00:00")
///                     .upgradeTimeout("12:00:00")
///                     .build())
///                 .build())
///             .useCustomVnet(true)
///             .zonalResiliency(true)
///             .zonalUpdateMode("Fast")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedCluster = new azure_native.servicefabric.ManagedCluster("managedCluster", {
///     addonFeatures: [
///         azure_native.servicefabric.ManagedClusterAddOnFeature.DnsService,
///         azure_native.servicefabric.ManagedClusterAddOnFeature.BackupRestoreService,
///         azure_native.servicefabric.ManagedClusterAddOnFeature.ResourceMonitorService,
///     ],
///     adminPassword: "{vm-password}",
///     adminUserName: "vmadmin",
///     allowRdpAccess: true,
///     applicationTypeVersionsCleanupPolicy: {
///         maxUnusedVersionsToKeep: 3,
///     },
///     auxiliarySubnets: [{
///         enableIpv6: true,
///         name: "testSubnet1",
///         networkSecurityGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1",
///         privateEndpointNetworkPolicies: azure_native.servicefabric.PrivateEndpointNetworkPolicies.Enabled,
///         privateLinkServiceNetworkPolicies: azure_native.servicefabric.PrivateLinkServiceNetworkPolicies.Enabled,
///     }],
///     clientConnectionPort: 19000,
///     clusterCodeVersion: "7.1.168.9494",
///     clusterName: "myCluster",
///     clusterUpgradeMode: azure_native.servicefabric.ClusterUpgradeMode.Manual,
///     ddosProtectionPlanId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan",
///     dnsName: "myCluster",
///     enableAutoOSUpgrade: true,
///     enableHttpGatewayExclusiveAuthMode: true,
///     enableIpv6: true,
///     fabricSettings: [{
///         name: "ManagedIdentityTokenService",
///         parameters: [{
///             name: "IsEnabled",
///             value: "true",
///         }],
///     }],
///     httpGatewayConnectionPort: 19080,
///     httpGatewayTokenAuthConnectionPort: 19081,
///     ipTags: [{
///         ipTagType: "FirstPartyUsage",
///         tag: "SQL",
///     }],
///     loadBalancingRules: [
///         {
///             backendPort: 80,
///             frontendPort: 80,
///             probePort: 80,
///             probeProtocol: azure_native.servicefabric.ProbeProtocol.Http,
///             protocol: "http",
///         },
///         {
///             backendPort: 443,
///             frontendPort: 443,
///             probePort: 443,
///             probeProtocol: azure_native.servicefabric.ProbeProtocol.Http,
///             protocol: "http",
///         },
///         {
///             backendPort: 10000,
///             frontendPort: 10000,
///             loadDistribution: "Default",
///             probePort: 10000,
///             probeProtocol: azure_native.servicefabric.ProbeProtocol.Http,
///             protocol: azure_native.servicefabric.Protocol.Tcp,
///         },
///     ],
///     location: "eastus",
///     networkSecurityRules: [
///         {
///             access: azure_native.servicefabric.Access.Allow,
///             description: "Test description",
///             destinationAddressPrefixes: ["*"],
///             destinationPortRanges: ["*"],
///             direction: azure_native.servicefabric.Direction.Inbound,
///             name: "TestName",
///             priority: 1010,
///             protocol: azure_native.servicefabric.NsgProtocol.Tcp,
///             sourceAddressPrefixes: ["*"],
///             sourcePortRanges: ["*"],
///         },
///         {
///             access: azure_native.servicefabric.Access.Allow,
///             destinationAddressPrefix: "*",
///             destinationPortRange: "33500-33699",
///             direction: azure_native.servicefabric.Direction.Inbound,
///             name: "AllowARM",
///             priority: 2002,
///             protocol: "*",
///             sourceAddressPrefix: "AzureResourceManager",
///             sourcePortRange: "*",
///         },
///     ],
///     publicIPPrefixId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix",
///     publicIPv6PrefixId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix",
///     resourceGroupName: "resRg",
///     serviceEndpoints: [{
///         locations: [
///             "eastus2",
///             "usnorth",
///         ],
///         service: "Microsoft.Storage",
///     }],
///     sku: {
///         name: azure_native.servicefabric.SkuName.Basic,
///     },
///     tags: {},
///     upgradeDescription: {
///         deltaHealthPolicy: {
///             maxPercentDeltaUnhealthyApplications: 40,
///             maxPercentDeltaUnhealthyNodes: 20,
///             maxPercentUpgradeDomainDeltaUnhealthyNodes: 40,
///         },
///         forceRestart: false,
///         healthPolicy: {
///             maxPercentUnhealthyApplications: 30,
///             maxPercentUnhealthyNodes: 10,
///         },
///         monitoringPolicy: {
///             healthCheckRetryTimeout: "00:55:00",
///             healthCheckStableDuration: "00:45:00",
///             healthCheckWaitDuration: "00:05:00",
///             upgradeDomainTimeout: "03:00:00",
///             upgradeTimeout: "12:00:00",
///         },
///     },
///     useCustomVnet: true,
///     zonalResiliency: true,
///     zonalUpdateMode: azure_native.servicefabric.ZonalUpdateMode.Fast,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.servicefabric.ManagedCluster("managedCluster",
///     addon_features=[
///         azure_native.servicefabric.ManagedClusterAddOnFeature.DNS_SERVICE,
///         azure_native.servicefabric.ManagedClusterAddOnFeature.BACKUP_RESTORE_SERVICE,
///         azure_native.servicefabric.ManagedClusterAddOnFeature.RESOURCE_MONITOR_SERVICE,
///     ],
///     admin_password="{vm-password}",
///     admin_user_name="vmadmin",
///     allow_rdp_access=True,
///     application_type_versions_cleanup_policy={
///         "max_unused_versions_to_keep": 3,
///     },
///     auxiliary_subnets=[{
///         "enable_ipv6": True,
///         "name": "testSubnet1",
///         "network_security_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1",
///         "private_endpoint_network_policies": azure_native.servicefabric.PrivateEndpointNetworkPolicies.ENABLED,
///         "private_link_service_network_policies": azure_native.servicefabric.PrivateLinkServiceNetworkPolicies.ENABLED,
///     }],
///     client_connection_port=19000,
///     cluster_code_version="7.1.168.9494",
///     cluster_name="myCluster",
///     cluster_upgrade_mode=azure_native.servicefabric.ClusterUpgradeMode.MANUAL,
///     ddos_protection_plan_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan",
///     dns_name="myCluster",
///     enable_auto_os_upgrade=True,
///     enable_http_gateway_exclusive_auth_mode=True,
///     enable_ipv6=True,
///     fabric_settings=[{
///         "name": "ManagedIdentityTokenService",
///         "parameters": [{
///             "name": "IsEnabled",
///             "value": "true",
///         }],
///     }],
///     http_gateway_connection_port=19080,
///     http_gateway_token_auth_connection_port=19081,
///     ip_tags=[{
///         "ip_tag_type": "FirstPartyUsage",
///         "tag": "SQL",
///     }],
///     load_balancing_rules=[
///         {
///             "backend_port": 80,
///             "frontend_port": 80,
///             "probe_port": 80,
///             "probe_protocol": azure_native.servicefabric.ProbeProtocol.HTTP,
///             "protocol": "http",
///         },
///         {
///             "backend_port": 443,
///             "frontend_port": 443,
///             "probe_port": 443,
///             "probe_protocol": azure_native.servicefabric.ProbeProtocol.HTTP,
///             "protocol": "http",
///         },
///         {
///             "backend_port": 10000,
///             "frontend_port": 10000,
///             "load_distribution": "Default",
///             "probe_port": 10000,
///             "probe_protocol": azure_native.servicefabric.ProbeProtocol.HTTP,
///             "protocol": azure_native.servicefabric.Protocol.TCP,
///         },
///     ],
///     location="eastus",
///     network_security_rules=[
///         {
///             "access": azure_native.servicefabric.Access.ALLOW,
///             "description": "Test description",
///             "destination_address_prefixes": ["*"],
///             "destination_port_ranges": ["*"],
///             "direction": azure_native.servicefabric.Direction.INBOUND,
///             "name": "TestName",
///             "priority": 1010,
///             "protocol": azure_native.servicefabric.NsgProtocol.TCP,
///             "source_address_prefixes": ["*"],
///             "source_port_ranges": ["*"],
///         },
///         {
///             "access": azure_native.servicefabric.Access.ALLOW,
///             "destination_address_prefix": "*",
///             "destination_port_range": "33500-33699",
///             "direction": azure_native.servicefabric.Direction.INBOUND,
///             "name": "AllowARM",
///             "priority": 2002,
///             "protocol": "*",
///             "source_address_prefix": "AzureResourceManager",
///             "source_port_range": "*",
///         },
///     ],
///     public_ip_prefix_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix",
///     public_i_pv6_prefix_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix",
///     resource_group_name="resRg",
///     service_endpoints=[{
///         "locations": [
///             "eastus2",
///             "usnorth",
///         ],
///         "service": "Microsoft.Storage",
///     }],
///     sku={
///         "name": azure_native.servicefabric.SkuName.BASIC,
///     },
///     tags={},
///     upgrade_description={
///         "delta_health_policy": {
///             "max_percent_delta_unhealthy_applications": 40,
///             "max_percent_delta_unhealthy_nodes": 20,
///             "max_percent_upgrade_domain_delta_unhealthy_nodes": 40,
///         },
///         "force_restart": False,
///         "health_policy": {
///             "max_percent_unhealthy_applications": 30,
///             "max_percent_unhealthy_nodes": 10,
///         },
///         "monitoring_policy": {
///             "health_check_retry_timeout": "00:55:00",
///             "health_check_stable_duration": "00:45:00",
///             "health_check_wait_duration": "00:05:00",
///             "upgrade_domain_timeout": "03:00:00",
///             "upgrade_timeout": "12:00:00",
///         },
///     },
///     use_custom_vnet=True,
///     zonal_resiliency=True,
///     zonal_update_mode=azure_native.servicefabric.ZonalUpdateMode.FAST)
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:servicefabric:ManagedCluster
///     properties:
///       addonFeatures:
///         - DnsService
///         - BackupRestoreService
///         - ResourceMonitorService
///       adminPassword: '{vm-password}'
///       adminUserName: vmadmin
///       allowRdpAccess: true
///       applicationTypeVersionsCleanupPolicy:
///         maxUnusedVersionsToKeep: 3
///       auxiliarySubnets:
///         - enableIpv6: true
///           name: testSubnet1
///           networkSecurityGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/networkSecurityGroups/sn1
///           privateEndpointNetworkPolicies: enabled
///           privateLinkServiceNetworkPolicies: enabled
///       clientConnectionPort: 19000
///       clusterCodeVersion: 7.1.168.9494
///       clusterName: myCluster
///       clusterUpgradeMode: Manual
///       ddosProtectionPlanId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/ddosProtectionPlans/myDDoSProtectionPlan
///       dnsName: myCluster
///       enableAutoOSUpgrade: true
///       enableHttpGatewayExclusiveAuthMode: true
///       enableIpv6: true
///       fabricSettings:
///         - name: ManagedIdentityTokenService
///           parameters:
///             - name: IsEnabled
///               value: 'true'
///       httpGatewayConnectionPort: 19080
///       httpGatewayTokenAuthConnectionPort: 19081
///       ipTags:
///         - ipTagType: FirstPartyUsage
///           tag: SQL
///       loadBalancingRules:
///         - backendPort: 80
///           frontendPort: 80
///           probePort: 80
///           probeProtocol: http
///           protocol: http
///         - backendPort: 443
///           frontendPort: 443
///           probePort: 443
///           probeProtocol: http
///           protocol: http
///         - backendPort: 10000
///           frontendPort: 10000
///           loadDistribution: Default
///           probePort: 10000
///           probeProtocol: http
///           protocol: tcp
///       location: eastus
///       networkSecurityRules:
///         - access: allow
///           description: Test description
///           destinationAddressPrefixes:
///             - '*'
///           destinationPortRanges:
///             - '*'
///           direction: inbound
///           name: TestName
///           priority: 1010
///           protocol: tcp
///           sourceAddressPrefixes:
///             - '*'
///           sourcePortRanges:
///             - '*'
///         - access: allow
///           destinationAddressPrefix: '*'
///           destinationPortRange: 33500-33699
///           direction: inbound
///           name: AllowARM
///           priority: 2002
///           protocol: '*'
///           sourceAddressPrefix: AzureResourceManager
///           sourcePortRange: '*'
///       publicIPPrefixId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPPrefix
///       publicIPv6PrefixId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/resRg/providers/Microsoft.Network/publicIPPrefixes/myPublicIPv6Prefix
///       resourceGroupName: resRg
///       serviceEndpoints:
///         - locations:
///             - eastus2
///             - usnorth
///           service: Microsoft.Storage
///       sku:
///         name: Basic
///       tags: {}
///       upgradeDescription:
///         deltaHealthPolicy:
///           maxPercentDeltaUnhealthyApplications: 40
///           maxPercentDeltaUnhealthyNodes: 20
///           maxPercentUpgradeDomainDeltaUnhealthyNodes: 40
///         forceRestart: false
///         healthPolicy:
///           maxPercentUnhealthyApplications: 30
///           maxPercentUnhealthyNodes: 10
///         monitoringPolicy:
///           healthCheckRetryTimeout: 00:55:00
///           healthCheckStableDuration: 00:45:00
///           healthCheckWaitDuration: 00:05:00
///           upgradeDomainTimeout: 03:00:00
///           upgradeTimeout: 12:00:00
///       useCustomVnet: true
///       zonalResiliency: true
///       zonalUpdateMode: Fast
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a cluster with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ServiceFabric.ManagedCluster("managedCluster", new()
///     {
///         AdminPassword = "{vm-password}",
///         AdminUserName = "vmadmin",
///         ClusterName = "myCluster",
///         ClusterUpgradeCadence = AzureNative.ServiceFabric.ClusterUpgradeCadence.Wave1,
///         ClusterUpgradeMode = AzureNative.ServiceFabric.ClusterUpgradeMode.Automatic,
///         DnsName = "myCluster",
///         FabricSettings = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.SettingsSectionDescriptionArgs
///             {
///                 Name = "ManagedIdentityTokenService",
///                 Parameters = new[]
///                 {
///                     new AzureNative.ServiceFabric.Inputs.SettingsParameterDescriptionArgs
///                     {
///                         Name = "IsEnabled",
///                         Value = "true",
///                     },
///                 },
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "resRg",
///         Sku = new AzureNative.ServiceFabric.Inputs.SkuArgs
///         {
///             Name = AzureNative.ServiceFabric.SkuName.Basic,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewManagedCluster(ctx, "managedCluster", &servicefabric.ManagedClusterArgs{
/// 			AdminPassword:         pulumi.String("{vm-password}"),
/// 			AdminUserName:         pulumi.String("vmadmin"),
/// 			ClusterName:           pulumi.String("myCluster"),
/// 			ClusterUpgradeCadence: pulumi.String(servicefabric.ClusterUpgradeCadenceWave1),
/// 			ClusterUpgradeMode:    pulumi.String(servicefabric.ClusterUpgradeModeAutomatic),
/// 			DnsName:               pulumi.String("myCluster"),
/// 			FabricSettings: servicefabric.SettingsSectionDescriptionArray{
/// 				&servicefabric.SettingsSectionDescriptionArgs{
/// 					Name: pulumi.String("ManagedIdentityTokenService"),
/// 					Parameters: servicefabric.SettingsParameterDescriptionArray{
/// 						&servicefabric.SettingsParameterDescriptionArgs{
/// 							Name:  pulumi.String("IsEnabled"),
/// 							Value: pulumi.String("true"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			Sku: &servicefabric.SkuArgs{
/// 				Name: pulumi.String(servicefabric.SkuNameBasic),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicefabric.ManagedCluster;
/// import com.pulumi.azurenative.servicefabric.ManagedClusterArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SettingsSectionDescriptionArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SkuArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .adminPassword("{vm-password}")
///             .adminUserName("vmadmin")
///             .clusterName("myCluster")
///             .clusterUpgradeCadence("Wave1")
///             .clusterUpgradeMode("Automatic")
///             .dnsName("myCluster")
///             .fabricSettings(SettingsSectionDescriptionArgs.builder()
///                 .name("ManagedIdentityTokenService")
///                 .parameters(SettingsParameterDescriptionArgs.builder()
///                     .name("IsEnabled")
///                     .value("true")
///                     .build())
///                 .build())
///             .location("eastus")
///             .resourceGroupName("resRg")
///             .sku(SkuArgs.builder()
///                 .name("Basic")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedCluster = new azure_native.servicefabric.ManagedCluster("managedCluster", {
///     adminPassword: "{vm-password}",
///     adminUserName: "vmadmin",
///     clusterName: "myCluster",
///     clusterUpgradeCadence: azure_native.servicefabric.ClusterUpgradeCadence.Wave1,
///     clusterUpgradeMode: azure_native.servicefabric.ClusterUpgradeMode.Automatic,
///     dnsName: "myCluster",
///     fabricSettings: [{
///         name: "ManagedIdentityTokenService",
///         parameters: [{
///             name: "IsEnabled",
///             value: "true",
///         }],
///     }],
///     location: "eastus",
///     resourceGroupName: "resRg",
///     sku: {
///         name: azure_native.servicefabric.SkuName.Basic,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.servicefabric.ManagedCluster("managedCluster",
///     admin_password="{vm-password}",
///     admin_user_name="vmadmin",
///     cluster_name="myCluster",
///     cluster_upgrade_cadence=azure_native.servicefabric.ClusterUpgradeCadence.WAVE1,
///     cluster_upgrade_mode=azure_native.servicefabric.ClusterUpgradeMode.AUTOMATIC,
///     dns_name="myCluster",
///     fabric_settings=[{
///         "name": "ManagedIdentityTokenService",
///         "parameters": [{
///             "name": "IsEnabled",
///             "value": "true",
///         }],
///     }],
///     location="eastus",
///     resource_group_name="resRg",
///     sku={
///         "name": azure_native.servicefabric.SkuName.BASIC,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:servicefabric:ManagedCluster
///     properties:
///       adminPassword: '{vm-password}'
///       adminUserName: vmadmin
///       clusterName: myCluster
///       clusterUpgradeCadence: Wave1
///       clusterUpgradeMode: Automatic
///       dnsName: myCluster
///       fabricSettings:
///         - name: ManagedIdentityTokenService
///           parameters:
///             - name: IsEnabled
///               value: 'true'
///       location: eastus
///       resourceGroupName: resRg
///       sku:
///         name: Basic
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:servicefabric:ManagedCluster myCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedClusters/{clusterName}
/// ```
class ManagedCluster extends pulumi.CustomResource {
  /// List of add-on features to enable on the cluster.
  late final pulumi.Output<List<String>?> addonFeatures;
  /// VM admin user password.
  late final pulumi.Output<String?> adminPassword;
  /// VM admin user name.
  late final pulumi.Output<String> adminUserName;
  /// Setting this to true enables RDP access to the VM. The default NSG rule opens RDP port to Internet which can be overridden with custom Network Security Rules. The default value for this setting is false.
  late final pulumi.Output<bool?> allowRdpAccess;
  /// The policy used to clean up unused versions.
  late final pulumi.Output<ApplicationTypeVersionsCleanupPolicyResponse?> applicationTypeVersionsCleanupPolicy;
  /// Auxiliary subnets for the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> auxiliarySubnets;
  /// The AAD authentication settings of the cluster.
  late final pulumi.Output<AzureActiveDirectoryResponse?> azureActiveDirectory;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The port used for client connections to the cluster.
  late final pulumi.Output<int?> clientConnectionPort;
  /// Client certificates that are allowed to manage the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> clients;
  /// List of thumbprints of the cluster certificates.
  late final pulumi.Output<List<String>> clusterCertificateThumbprints;
  /// The Service Fabric runtime version of the cluster. This property is required when **clusterUpgradeMode** is set to 'Manual'. To get list of available Service Fabric versions for new clusters use [ClusterVersion API](./ClusterVersion.md). To get the list of available version for existing clusters use **availableClusterVersions**.
  late final pulumi.Output<String?> clusterCodeVersion;
  /// A service generated unique identifier for the cluster resource.
  late final pulumi.Output<String> clusterId;
  /// The current state of the cluster.
  late final pulumi.Output<String> clusterState;
  /// Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
  late final pulumi.Output<String?> clusterUpgradeCadence;
  /// The upgrade mode of the cluster when new Service Fabric runtime version is available.
  late final pulumi.Output<String?> clusterUpgradeMode;
  /// Specify the resource id of a DDoS network protection plan that will be associated with the virtual network of the cluster.
  late final pulumi.Output<String?> ddosProtectionPlanId;
  /// The cluster dns name.
  late final pulumi.Output<String> dnsName;
  /// Setting this to true enables automatic OS upgrade for the node types that are created using any platform OS image with version 'latest'. The default value for this setting is false.
  late final pulumi.Output<bool?> enableAutoOSUpgrade;
  /// If true, token-based authentication is not allowed on the HttpGatewayEndpoint. This is required to support TLS versions 1.3 and above. If token-based authentication is used, HttpGatewayTokenAuthConnectionPort must be defined.
  late final pulumi.Output<bool?> enableHttpGatewayExclusiveAuthMode;
  /// Setting this to true creates IPv6 address space for the default VNet used by the cluster. This setting cannot be changed once the cluster is created. The default value for this setting is false.
  late final pulumi.Output<bool?> enableIpv6;
  /// Setting this to true will link the IPv4 address as the ServicePublicIP of the IPv6 address. It can only be set to True if IPv6 is enabled on the cluster.
  late final pulumi.Output<bool?> enableServicePublicIP;
  /// Azure resource etag.
  late final pulumi.Output<String> etag;
  /// The list of custom fabric settings to configure the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> fabricSettings;
  /// The fully qualified domain name associated with the public load balancer of the cluster.
  late final pulumi.Output<String> fqdn;
  /// The port used for HTTP connections to the cluster.
  late final pulumi.Output<int?> httpGatewayConnectionPort;
  /// The port used for token-auth based HTTPS connections to the cluster. Cannot be set to the same port as HttpGatewayEndpoint.
  late final pulumi.Output<int?> httpGatewayTokenAuthConnectionPort;
  /// The list of IP tags associated with the default public IP address of the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipTags;
  /// The IPv4 address associated with the public load balancer of the cluster.
  late final pulumi.Output<String> ipv4Address;
  /// IPv6 address for the cluster if IPv6 is enabled.
  late final pulumi.Output<String> ipv6Address;
  /// Load balancing rules that are applied to the public load balancer of the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> loadBalancingRules;
  /// Azure resource location.
  late final pulumi.Output<String> location;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// Custom Network Security Rules that are applied to the Virtual Network of the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkSecurityRules;
  /// The provisioning state of the managed cluster resource.
  late final pulumi.Output<String> provisioningState;
  /// Specify the resource id of a public IPv4 prefix that the load balancer will allocate a public IPv4 address from. This setting cannot be changed once the cluster is created.
  late final pulumi.Output<String?> publicIPPrefixId;
  /// Specify the resource id of a public IPv6 prefix that the load balancer will allocate a public IPv6 address from. This setting cannot be changed once the cluster is created.
  late final pulumi.Output<String?> publicIPv6PrefixId;
  /// Service endpoints for subnets in the cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> serviceEndpoints;
  /// The sku of the managed cluster
  late final pulumi.Output<SkuResponse> sku;
  /// If specified, the node types for the cluster are created in this subnet instead of the default VNet. The **networkSecurityRules** specified for the cluster are also applied to this subnet. This setting cannot be changed once the cluster is created.
  late final pulumi.Output<String?> subnetId;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Azure resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;
  /// The policy to use when upgrading the cluster.
  late final pulumi.Output<ClusterUpgradePolicyResponse?> upgradeDescription;
  /// For new clusters, this parameter indicates that it uses Bring your own VNet, but the subnet is specified at node type level; and for such clusters, the subnetId property is required for node types.
  late final pulumi.Output<bool?> useCustomVnet;
  /// Indicates if the cluster has zone resiliency.
  late final pulumi.Output<bool?> zonalResiliency;
  /// Indicates the update mode for Cross Az clusters.
  late final pulumi.Output<String?> zonalUpdateMode;

  /// Creates a new [ManagedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCluster]. {@macro pulumi_servicefabric_managed_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCluster(
    String name, {
    ManagedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:ManagedCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonFeatures = registerOutput<List<String>?>('addonFeatures');
    adminPassword = registerOutput<String?>('adminPassword');
    adminUserName = registerOutput<String>('adminUserName');
    allowRdpAccess = registerOutput<bool?>('allowRdpAccess');
    applicationTypeVersionsCleanupPolicy = registerOutput<ApplicationTypeVersionsCleanupPolicyResponse?>('applicationTypeVersionsCleanupPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTypeVersionsCleanupPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    auxiliarySubnets = registerOutput<List<Map<String, dynamic>>?>('auxiliarySubnets');
    azureActiveDirectory = registerOutput<AzureActiveDirectoryResponse?>('azureActiveDirectory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureActiveDirectoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientConnectionPort = registerOutput<int?>('clientConnectionPort');
    clients = registerOutput<List<Map<String, dynamic>>?>('clients');
    clusterCertificateThumbprints = registerOutput<List<String>>('clusterCertificateThumbprints');
    clusterCodeVersion = registerOutput<String?>('clusterCodeVersion');
    clusterId = registerOutput<String>('clusterId');
    clusterState = registerOutput<String>('clusterState');
    clusterUpgradeCadence = registerOutput<String?>('clusterUpgradeCadence');
    clusterUpgradeMode = registerOutput<String?>('clusterUpgradeMode');
    ddosProtectionPlanId = registerOutput<String?>('ddosProtectionPlanId');
    dnsName = registerOutput<String>('dnsName');
    enableAutoOSUpgrade = registerOutput<bool?>('enableAutoOSUpgrade');
    enableHttpGatewayExclusiveAuthMode = registerOutput<bool?>('enableHttpGatewayExclusiveAuthMode');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    enableServicePublicIP = registerOutput<bool?>('enableServicePublicIP');
    etag = registerOutput<String>('etag');
    fabricSettings = registerOutput<List<Map<String, dynamic>>?>('fabricSettings');
    fqdn = registerOutput<String>('fqdn');
    httpGatewayConnectionPort = registerOutput<int?>('httpGatewayConnectionPort');
    httpGatewayTokenAuthConnectionPort = registerOutput<int?>('httpGatewayTokenAuthConnectionPort');
    ipTags = registerOutput<List<Map<String, dynamic>>?>('ipTags');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv6Address = registerOutput<String>('ipv6Address');
    loadBalancingRules = registerOutput<List<Map<String, dynamic>>?>('loadBalancingRules');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkSecurityRules = registerOutput<List<Map<String, dynamic>>?>('networkSecurityRules');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPPrefixId = registerOutput<String?>('publicIPPrefixId');
    publicIPv6PrefixId = registerOutput<String?>('publicIPv6PrefixId');
    serviceEndpoints = registerOutput<List<Map<String, dynamic>>?>('serviceEndpoints');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnetId = registerOutput<String?>('subnetId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    upgradeDescription = registerOutput<ClusterUpgradePolicyResponse?>('upgradeDescription', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    useCustomVnet = registerOutput<bool?>('useCustomVnet');
    zonalResiliency = registerOutput<bool?>('zonalResiliency');
    zonalUpdateMode = registerOutput<String?>('zonalUpdateMode');
  }
}
