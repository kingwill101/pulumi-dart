import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_oracle_args.dart';
import 'volume_group_oracle_state.dart';
import 'volume_group_oracle_volume.dart';

/// Manages a Application Volume Group for Oracle application.
///
/// > **Note:** This feature is intended to be used for Oracle workloads only, with several requirements, please refer to [Understand Azure NetApp Files application volume group for Oracle](https://learn.microsoft.com/en-us/azure/azure-netapp-files/application-volume-oracle-introduction) document as the starting point to understand this feature before using it with Terraform.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: `${prefix}-resources`,
///     location: location,
///     tags: {
///         SkipNRMSNSG: "true",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: `${prefix}-vnet`,
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.88.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: `${prefix}-delegated-subnet`,
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.88.2.0/24"],
///     delegations: [{
///         name: "exampledelegation",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: `${prefix}-netapp-account`,
///     location: example.location,
///     resourceGroupName: example.name,
/// }, {
///     dependsOn: [exampleSubnet],
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: `${prefix}-netapp-pool`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
///     qosType: "Manual",
/// });
/// const exampleVolumeGroupOracle = new azure.netapp.VolumeGroupOracle("example", {
///     name: `${prefix}-NetAppVolumeGroupOracle`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     groupDescription: "Example volume group for Oracle",
///     applicationIdentifier: "TST",
///     volumes: [
///         {
///             name: `${prefix}-volume-ora1`,
///             volumePath: `${prefix}-my-unique-file-ora-path-1`,
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleSubnet.id,
///             zone: "1",
///             volumeSpecName: "ora-data1",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///         {
///             name: `${prefix}-volume-oraLog`,
///             volumePath: `${prefix}-my-unique-file-oralog-path`,
///             serviceLevel: "Standard",
///             capacityPoolId: examplePool.id,
///             subnetId: exampleSubnet.id,
///             zone: "1",
///             volumeSpecName: "ora-log",
///             storageQuotaInGb: 1024,
///             throughputInMibps: 24,
///             protocols: "NFSv4.1",
///             securityStyle: "unix",
///             snapshotDirectoryVisible: false,
///             exportPolicyRules: [{
///                 ruleIndex: 1,
///                 allowedClients: "0.0.0.0/0",
///                 nfsv3Enabled: false,
///                 nfsv41Enabled: true,
///                 unixReadOnly: false,
///                 unixReadWrite: true,
///                 rootAccessEnabled: false,
///             }],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name=f"{prefix}-resources",
///     location=location,
///     tags={
///         "SkipNRMSNSG": "true",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name=f"{prefix}-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.88.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name=f"{prefix}-delegated-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.88.2.0/24"],
///     delegations=[{
///         "name": "exampledelegation",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example_account = azure.netapp.Account("example",
///     name=f"{prefix}-netapp-account",
///     location=example.location,
///     resource_group_name=example.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_subnet]))
/// example_pool = azure.netapp.Pool("example",
///     name=f"{prefix}-netapp-pool",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     service_level="Standard",
///     size_in_tb=4,
///     qos_type="Manual")
/// example_volume_group_oracle = azure.netapp.VolumeGroupOracle("example",
///     name=f"{prefix}-NetAppVolumeGroupOracle",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     group_description="Example volume group for Oracle",
///     application_identifier="TST",
///     volumes=[
///         {
///             "name": f"{prefix}-volume-ora1",
///             "volume_path": f"{prefix}-my-unique-file-ora-path-1",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_subnet.id,
///             "zone": "1",
///             "volume_spec_name": "ora-data1",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///         },
///         {
///             "name": f"{prefix}-volume-oraLog",
///             "volume_path": f"{prefix}-my-unique-file-oralog-path",
///             "service_level": "Standard",
///             "capacity_pool_id": example_pool.id,
///             "subnet_id": example_subnet.id,
///             "zone": "1",
///             "volume_spec_name": "ora-log",
///             "storage_quota_in_gb": 1024,
///             "throughput_in_mibps": 24,
///             "protocols": "NFSv4.1",
///             "security_style": "unix",
///             "snapshot_directory_visible": False,
///             "export_policy_rules": [{
///                 "rule_index": 1,
///                 "allowed_clients": "0.0.0.0/0",
///                 "nfsv3_enabled": False,
///                 "nfsv41_enabled": True,
///                 "unix_read_only": False,
///                 "unix_read_write": True,
///                 "root_access_enabled": False,
///             }],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = $"{prefix}-resources",
///         Location = location,
///         Tags =
///         {
///             { "SkipNRMSNSG", "true" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = $"{prefix}-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.88.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = $"{prefix}-delegated-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.88.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "exampledelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = $"{prefix}-netapp-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSubnet,
///         },
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = $"{prefix}-netapp-pool",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///         QosType = "Manual",
///     });
///
///     var exampleVolumeGroupOracle = new Azure.NetApp.VolumeGroupOracle("example", new()
///     {
///         Name = $"{prefix}-NetAppVolumeGroupOracle",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         GroupDescription = "Example volume group for Oracle",
///         ApplicationIdentifier = "TST",
///         Volumes = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeGroupOracleVolumeArgs
///             {
///                 Name = $"{prefix}-volume-ora1",
///                 VolumePath = $"{prefix}-my-unique-file-ora-path-1",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleSubnet.Id,
///                 Zone = "1",
///                 VolumeSpecName = "ora-data1",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupOracleVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///             new Azure.NetApp.Inputs.VolumeGroupOracleVolumeArgs
///             {
///                 Name = $"{prefix}-volume-oraLog",
///                 VolumePath = $"{prefix}-my-unique-file-oralog-path",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePool.Id,
///                 SubnetId = exampleSubnet.Id,
///                 Zone = "1",
///                 VolumeSpecName = "ora-log",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupOracleVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-resources", prefix),
/// 			Location: pulumi.Any(location),
/// 			Tags: pulumi.StringMap{
/// 				"SkipNRMSNSG": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.Sprintf("%v-vnet", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.88.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-delegated-subnet", prefix),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.88.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("exampledelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-account", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-pool", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 			QosType:           pulumi.String("Manual"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeGroupOracle(ctx, "example", &netapp.VolumeGroupOracleArgs{
/// 			Name:                  pulumi.Sprintf("%v-NetAppVolumeGroupOracle", prefix),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			AccountName:           exampleAccount.Name,
/// 			GroupDescription:      pulumi.String("Example volume group for Oracle"),
/// 			ApplicationIdentifier: pulumi.String("TST"),
/// 			Volumes: netapp.VolumeGroupOracleVolumeArray{
/// 				&netapp.VolumeGroupOracleVolumeArgs{
/// 					Name:                     pulumi.Sprintf("%v-volume-ora1", prefix),
/// 					VolumePath:               pulumi.Sprintf("%v-my-unique-file-ora-path-1", prefix),
/// 					ServiceLevel:             pulumi.String("Standard"),
/// 					CapacityPoolId:           examplePool.ID(),
/// 					SubnetId:                 exampleSubnet.ID(),
/// 					Zone:                     pulumi.String("1"),
/// 					VolumeSpecName:           pulumi.String("ora-data1"),
/// 					StorageQuotaInGb:         pulumi.Int(1024),
/// 					ThroughputInMibps:        pulumi.Float64(24),
/// 					Protocols:                pulumi.String("NFSv4.1"),
/// 					SecurityStyle:            pulumi.String("unix"),
/// 					SnapshotDirectoryVisible: pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupOracleVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupOracleVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 				&netapp.VolumeGroupOracleVolumeArgs{
/// 					Name:                     pulumi.Sprintf("%v-volume-oraLog", prefix),
/// 					VolumePath:               pulumi.Sprintf("%v-my-unique-file-oralog-path", prefix),
/// 					ServiceLevel:             pulumi.String("Standard"),
/// 					CapacityPoolId:           examplePool.ID(),
/// 					SubnetId:                 exampleSubnet.ID(),
/// 					Zone:                     pulumi.String("1"),
/// 					VolumeSpecName:           pulumi.String("ora-log"),
/// 					StorageQuotaInGb:         pulumi.Int(1024),
/// 					ThroughputInMibps:        pulumi.Float64(24),
/// 					Protocols:                pulumi.String("NFSv4.1"),
/// 					SecurityStyle:            pulumi.String("unix"),
/// 					SnapshotDirectoryVisible: pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupOracleVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupOracleVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.VolumeGroupOracle;
/// import com.pulumi.azure.netapp.VolumeGroupOracleArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeGroupOracleVolumeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name(String.format("%s-resources", prefix))
///             .location(location)
///             .tags(Map.of("SkipNRMSNSG", "true"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name(String.format("%s-vnet", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.88.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name(String.format("%s-delegated-subnet", prefix))
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.88.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("exampledelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name(String.format("%s-netapp-account", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSubnet)
///                 .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name(String.format("%s-netapp-pool", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .qosType("Manual")
///             .build());
///
///         var exampleVolumeGroupOracle = new VolumeGroupOracle("exampleVolumeGroupOracle", VolumeGroupOracleArgs.builder()
///             .name(String.format("%s-NetAppVolumeGroupOracle", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .groupDescription("Example volume group for Oracle")
///             .applicationIdentifier("TST")
///             .volumes(
///                 VolumeGroupOracleVolumeArgs.builder()
///                     .name(String.format("%s-volume-ora1", prefix))
///                     .volumePath(String.format("%s-my-unique-file-ora-path-1", prefix))
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleSubnet.id())
///                     .zone("1")
///                     .volumeSpecName("ora-data1")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .exportPolicyRules(VolumeGroupOracleVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .build(),
///                 VolumeGroupOracleVolumeArgs.builder()
///                     .name(String.format("%s-volume-oraLog", prefix))
///                     .volumePath(String.format("%s-my-unique-file-oralog-path", prefix))
///                     .serviceLevel("Standard")
///                     .capacityPoolId(examplePool.id())
///                     .subnetId(exampleSubnet.id())
///                     .zone("1")
///                     .volumeSpecName("ora-log")
///                     .storageQuotaInGb(1024)
///                     .throughputInMibps(24.0)
///                     .protocols("NFSv4.1")
///                     .securityStyle("unix")
///                     .snapshotDirectoryVisible(false)
///                     .exportPolicyRules(VolumeGroupOracleVolumeExportPolicyRuleArgs.builder()
///                         .ruleIndex(1)
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3Enabled(false)
///                         .nfsv41Enabled(true)
///                         .unixReadOnly(false)
///                         .unixReadWrite(true)
///                         .rootAccessEnabled(false)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: ${prefix}-resources
///       location: ${location}
///       tags:
///         SkipNRMSNSG: 'true'
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: ${prefix}-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.88.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: ${prefix}-delegated-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.88.2.0/24
///       delegations:
///         - name: exampledelegation
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: ${prefix}-netapp-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///     options:
///       dependsOn:
///         - ${exampleSubnet}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: ${prefix}-netapp-pool
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///       qosType: Manual
///   exampleVolumeGroupOracle:
///     type: azure:netapp:VolumeGroupOracle
///     name: example
///     properties:
///       name: ${prefix}-NetAppVolumeGroupOracle
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       groupDescription: Example volume group for Oracle
///       applicationIdentifier: TST
///       volumes:
///         - name: ${prefix}-volume-ora1
///           volumePath: ${prefix}-my-unique-file-ora-path-1
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleSubnet.id}
///           zone: '1'
///           volumeSpecName: ora-data1
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///         - name: ${prefix}-volume-oraLog
///           volumePath: ${prefix}-my-unique-file-oralog-path
///           serviceLevel: Standard
///           capacityPoolId: ${examplePool.id}
///           subnetId: ${exampleSubnet.id}
///           zone: '1'
///           volumeSpecName: ora-log
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
/// ```
///
///
/// ### Cross-Region Replication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: `${prefix}-resources`,
///     location: location,
///     tags: {
///         SkipNRMSNSG: "true",
///     },
/// });
/// // Primary region networking
/// const examplePrimary = new azure.network.VirtualNetwork("example_primary", {
///     name: `${prefix}-vnet-primary`,
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.47.0.0/16"],
/// });
/// const examplePrimarySubnet = new azure.network.Subnet("example_primary", {
///     name: `${prefix}-delegated-subnet-primary`,
///     resourceGroupName: example.name,
///     virtualNetworkName: examplePrimary.name,
///     addressPrefixes: ["10.47.2.0/24"],
///     delegations: [{
///         name: "exampledelegation",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// // Secondary region networking
/// const exampleSecondary = new azure.network.VirtualNetwork("example_secondary", {
///     name: `${prefix}-vnet-secondary`,
///     location: altLocation,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.48.0.0/16"],
/// });
/// const exampleSecondarySubnet = new azure.network.Subnet("example_secondary", {
///     name: `${prefix}-delegated-subnet-secondary`,
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleSecondary.name,
///     addressPrefixes: ["10.48.2.0/24"],
///     delegations: [{
///         name: "exampledelegation",
///         serviceDelegation: {
///             name: "Microsoft.Netapp/volumes",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// // Primary region NetApp infrastructure
/// const examplePrimaryAccount = new azure.netapp.Account("example_primary", {
///     name: `${prefix}-netapp-account-primary`,
///     location: example.location,
///     resourceGroupName: example.name,
/// }, {
///     dependsOn: [examplePrimarySubnet],
/// });
/// const examplePrimaryPool = new azure.netapp.Pool("example_primary", {
///     name: `${prefix}-netapp-pool-primary`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: examplePrimaryAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
///     qosType: "Manual",
/// });
/// // Secondary region NetApp infrastructure
/// const exampleSecondaryAccount = new azure.netapp.Account("example_secondary", {
///     name: `${prefix}-netapp-account-secondary`,
///     location: altLocation,
///     resourceGroupName: example.name,
/// }, {
///     dependsOn: [exampleSecondarySubnet],
/// });
/// const exampleSecondaryPool = new azure.netapp.Pool("example_secondary", {
///     name: `${prefix}-netapp-pool-secondary`,
///     location: altLocation,
///     resourceGroupName: example.name,
///     accountName: exampleSecondaryAccount.name,
///     serviceLevel: "Standard",
///     sizeInTb: 4,
///     qosType: "Manual",
/// });
/// // Primary Oracle volume group
/// const examplePrimaryVolumeGroupOracle = new azure.netapp.VolumeGroupOracle("example_primary", {
///     name: `${prefix}-NetAppVolumeGroupOracle-primary`,
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: examplePrimaryAccount.name,
///     groupDescription: "Primary Oracle volume group for CRR",
///     applicationIdentifier: "TST",
///     volumes: [{
///         name: `${prefix}-volume-ora1-primary`,
///         volumePath: `${prefix}-my-unique-file-ora-path-1-primary`,
///         serviceLevel: "Standard",
///         capacityPoolId: examplePrimaryPool.id,
///         subnetId: examplePrimarySubnet.id,
///         volumeSpecName: "ora-data1",
///         storageQuotaInGb: 1024,
///         throughputInMibps: 24,
///         protocols: "NFSv4.1",
///         securityStyle: "unix",
///         snapshotDirectoryVisible: false,
///         exportPolicyRules: [{
///             ruleIndex: 1,
///             allowedClients: "0.0.0.0/0",
///             nfsv3Enabled: false,
///             nfsv41Enabled: true,
///             unixReadOnly: false,
///             unixReadWrite: true,
///             rootAccessEnabled: false,
///         }],
///     }],
/// });
/// // Secondary Oracle volume group with CRR
/// const exampleSecondaryVolumeGroupOracle = new azure.netapp.VolumeGroupOracle("example_secondary", {
///     name: `${prefix}-NetAppVolumeGroupOracle-secondary`,
///     location: altLocation,
///     resourceGroupName: example.name,
///     accountName: exampleSecondaryAccount.name,
///     groupDescription: "Secondary Oracle volume group for CRR",
///     applicationIdentifier: "TST",
///     volumes: [{
///         name: `${prefix}-volume-ora1-secondary`,
///         volumePath: `${prefix}-my-unique-file-ora-path-1-secondary`,
///         serviceLevel: "Standard",
///         capacityPoolId: exampleSecondaryPool.id,
///         subnetId: exampleSecondarySubnet.id,
///         volumeSpecName: "ora-data1",
///         storageQuotaInGb: 1024,
///         throughputInMibps: 24,
///         protocols: "NFSv4.1",
///         securityStyle: "unix",
///         snapshotDirectoryVisible: false,
///         exportPolicyRules: [{
///             ruleIndex: 1,
///             allowedClients: "0.0.0.0/0",
///             nfsv3Enabled: false,
///             nfsv41Enabled: true,
///             unixReadOnly: false,
///             unixReadWrite: true,
///             rootAccessEnabled: false,
///         }],
///         dataProtectionReplication: {
///             endpointType: "dst",
///             remoteVolumeLocation: example.location,
///             remoteVolumeResourceId: examplePrimaryVolumeGroupOracle.volumes.apply(volumes => volumes[0].id),
///             replicationFrequency: "10minutes",
///         },
///     }],
/// }, {
///     dependsOn: [examplePrimaryVolumeGroupOracle],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name=f"{prefix}-resources",
///     location=location,
///     tags={
///         "SkipNRMSNSG": "true",
///     })
/// # Primary region networking
/// example_primary = azure.network.VirtualNetwork("example_primary",
///     name=f"{prefix}-vnet-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.47.0.0/16"])
/// example_primary_subnet = azure.network.Subnet("example_primary",
///     name=f"{prefix}-delegated-subnet-primary",
///     resource_group_name=example.name,
///     virtual_network_name=example_primary.name,
///     address_prefixes=["10.47.2.0/24"],
///     delegations=[{
///         "name": "exampledelegation",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// # Secondary region networking
/// example_secondary = azure.network.VirtualNetwork("example_secondary",
///     name=f"{prefix}-vnet-secondary",
///     location=alt_location,
///     resource_group_name=example.name,
///     address_spaces=["10.48.0.0/16"])
/// example_secondary_subnet = azure.network.Subnet("example_secondary",
///     name=f"{prefix}-delegated-subnet-secondary",
///     resource_group_name=example.name,
///     virtual_network_name=example_secondary.name,
///     address_prefixes=["10.48.2.0/24"],
///     delegations=[{
///         "name": "exampledelegation",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// # Primary region NetApp infrastructure
/// example_primary_account = azure.netapp.Account("example_primary",
///     name=f"{prefix}-netapp-account-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_primary_subnet]))
/// example_primary_pool = azure.netapp.Pool("example_primary",
///     name=f"{prefix}-netapp-pool-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_primary_account.name,
///     service_level="Standard",
///     size_in_tb=4,
///     qos_type="Manual")
/// # Secondary region NetApp infrastructure
/// example_secondary_account = azure.netapp.Account("example_secondary",
///     name=f"{prefix}-netapp-account-secondary",
///     location=alt_location,
///     resource_group_name=example.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_secondary_subnet]))
/// example_secondary_pool = azure.netapp.Pool("example_secondary",
///     name=f"{prefix}-netapp-pool-secondary",
///     location=alt_location,
///     resource_group_name=example.name,
///     account_name=example_secondary_account.name,
///     service_level="Standard",
///     size_in_tb=4,
///     qos_type="Manual")
/// # Primary Oracle volume group
/// example_primary_volume_group_oracle = azure.netapp.VolumeGroupOracle("example_primary",
///     name=f"{prefix}-NetAppVolumeGroupOracle-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_primary_account.name,
///     group_description="Primary Oracle volume group for CRR",
///     application_identifier="TST",
///     volumes=[{
///         "name": f"{prefix}-volume-ora1-primary",
///         "volume_path": f"{prefix}-my-unique-file-ora-path-1-primary",
///         "service_level": "Standard",
///         "capacity_pool_id": example_primary_pool.id,
///         "subnet_id": example_primary_subnet.id,
///         "volume_spec_name": "ora-data1",
///         "storage_quota_in_gb": 1024,
///         "throughput_in_mibps": 24,
///         "protocols": "NFSv4.1",
///         "security_style": "unix",
///         "snapshot_directory_visible": False,
///         "export_policy_rules": [{
///             "rule_index": 1,
///             "allowed_clients": "0.0.0.0/0",
///             "nfsv3_enabled": False,
///             "nfsv41_enabled": True,
///             "unix_read_only": False,
///             "unix_read_write": True,
///             "root_access_enabled": False,
///         }],
///     }])
/// # Secondary Oracle volume group with CRR
/// example_secondary_volume_group_oracle = azure.netapp.VolumeGroupOracle("example_secondary",
///     name=f"{prefix}-NetAppVolumeGroupOracle-secondary",
///     location=alt_location,
///     resource_group_name=example.name,
///     account_name=example_secondary_account.name,
///     group_description="Secondary Oracle volume group for CRR",
///     application_identifier="TST",
///     volumes=[{
///         "name": f"{prefix}-volume-ora1-secondary",
///         "volume_path": f"{prefix}-my-unique-file-ora-path-1-secondary",
///         "service_level": "Standard",
///         "capacity_pool_id": example_secondary_pool.id,
///         "subnet_id": example_secondary_subnet.id,
///         "volume_spec_name": "ora-data1",
///         "storage_quota_in_gb": 1024,
///         "throughput_in_mibps": 24,
///         "protocols": "NFSv4.1",
///         "security_style": "unix",
///         "snapshot_directory_visible": False,
///         "export_policy_rules": [{
///             "rule_index": 1,
///             "allowed_clients": "0.0.0.0/0",
///             "nfsv3_enabled": False,
///             "nfsv41_enabled": True,
///             "unix_read_only": False,
///             "unix_read_write": True,
///             "root_access_enabled": False,
///         }],
///         "data_protection_replication": {
///             "endpoint_type": "dst",
///             "remote_volume_location": example.location,
///             "remote_volume_resource_id": example_primary_volume_group_oracle.volumes[0].id,
///             "replication_frequency": "10minutes",
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[example_primary_volume_group_oracle]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = $"{prefix}-resources",
///         Location = location,
///         Tags =
///         {
///             { "SkipNRMSNSG", "true" },
///         },
///     });
///
///     // Primary region networking
///     var examplePrimary = new Azure.Network.VirtualNetwork("example_primary", new()
///     {
///         Name = $"{prefix}-vnet-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.47.0.0/16",
///         },
///     });
///
///     var examplePrimarySubnet = new Azure.Network.Subnet("example_primary", new()
///     {
///         Name = $"{prefix}-delegated-subnet-primary",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = examplePrimary.Name,
///         AddressPrefixes = new[]
///         {
///             "10.47.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "exampledelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     // Secondary region networking
///     var exampleSecondary = new Azure.Network.VirtualNetwork("example_secondary", new()
///     {
///         Name = $"{prefix}-vnet-secondary",
///         Location = altLocation,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.48.0.0/16",
///         },
///     });
///
///     var exampleSecondarySubnet = new Azure.Network.Subnet("example_secondary", new()
///     {
///         Name = $"{prefix}-delegated-subnet-secondary",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleSecondary.Name,
///         AddressPrefixes = new[]
///         {
///             "10.48.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "exampledelegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Netapp/volumes",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     // Primary region NetApp infrastructure
///     var examplePrimaryAccount = new Azure.NetApp.Account("example_primary", new()
///     {
///         Name = $"{prefix}-netapp-account-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             examplePrimarySubnet,
///         },
///     });
///
///     var examplePrimaryPool = new Azure.NetApp.Pool("example_primary", new()
///     {
///         Name = $"{prefix}-netapp-pool-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = examplePrimaryAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///         QosType = "Manual",
///     });
///
///     // Secondary region NetApp infrastructure
///     var exampleSecondaryAccount = new Azure.NetApp.Account("example_secondary", new()
///     {
///         Name = $"{prefix}-netapp-account-secondary",
///         Location = altLocation,
///         ResourceGroupName = example.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleSecondarySubnet,
///         },
///     });
///
///     var exampleSecondaryPool = new Azure.NetApp.Pool("example_secondary", new()
///     {
///         Name = $"{prefix}-netapp-pool-secondary",
///         Location = altLocation,
///         ResourceGroupName = example.Name,
///         AccountName = exampleSecondaryAccount.Name,
///         ServiceLevel = "Standard",
///         SizeInTb = 4,
///         QosType = "Manual",
///     });
///
///     // Primary Oracle volume group
///     var examplePrimaryVolumeGroupOracle = new Azure.NetApp.VolumeGroupOracle("example_primary", new()
///     {
///         Name = $"{prefix}-NetAppVolumeGroupOracle-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = examplePrimaryAccount.Name,
///         GroupDescription = "Primary Oracle volume group for CRR",
///         ApplicationIdentifier = "TST",
///         Volumes = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeGroupOracleVolumeArgs
///             {
///                 Name = $"{prefix}-volume-ora1-primary",
///                 VolumePath = $"{prefix}-my-unique-file-ora-path-1-primary",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = examplePrimaryPool.Id,
///                 SubnetId = examplePrimarySubnet.Id,
///                 VolumeSpecName = "ora-data1",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupOracleVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///             },
///         },
///     });
///
///     // Secondary Oracle volume group with CRR
///     var exampleSecondaryVolumeGroupOracle = new Azure.NetApp.VolumeGroupOracle("example_secondary", new()
///     {
///         Name = $"{prefix}-NetAppVolumeGroupOracle-secondary",
///         Location = altLocation,
///         ResourceGroupName = example.Name,
///         AccountName = exampleSecondaryAccount.Name,
///         GroupDescription = "Secondary Oracle volume group for CRR",
///         ApplicationIdentifier = "TST",
///         Volumes = new[]
///         {
///             new Azure.NetApp.Inputs.VolumeGroupOracleVolumeArgs
///             {
///                 Name = $"{prefix}-volume-ora1-secondary",
///                 VolumePath = $"{prefix}-my-unique-file-ora-path-1-secondary",
///                 ServiceLevel = "Standard",
///                 CapacityPoolId = exampleSecondaryPool.Id,
///                 SubnetId = exampleSecondarySubnet.Id,
///                 VolumeSpecName = "ora-data1",
///                 StorageQuotaInGb = 1024,
///                 ThroughputInMibps = 24,
///                 Protocols = "NFSv4.1",
///                 SecurityStyle = "unix",
///                 SnapshotDirectoryVisible = false,
///                 ExportPolicyRules = new[]
///                 {
///                     new Azure.NetApp.Inputs.VolumeGroupOracleVolumeExportPolicyRuleArgs
///                     {
///                         RuleIndex = 1,
///                         AllowedClients = "0.0.0.0/0",
///                         Nfsv3Enabled = false,
///                         Nfsv41Enabled = true,
///                         UnixReadOnly = false,
///                         UnixReadWrite = true,
///                         RootAccessEnabled = false,
///                     },
///                 },
///                 DataProtectionReplication = new Azure.NetApp.Inputs.VolumeGroupOracleVolumeDataProtectionReplicationArgs
///                 {
///                     EndpointType = "dst",
///                     RemoteVolumeLocation = example.Location,
///                     RemoteVolumeResourceId = examplePrimaryVolumeGroupOracle.Volumes.Apply(volumes => volumes[0].Id),
///                     ReplicationFrequency = "10minutes",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             examplePrimaryVolumeGroupOracle,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-resources", prefix),
/// 			Location: pulumi.Any(location),
/// 			Tags: pulumi.StringMap{
/// 				"SkipNRMSNSG": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Primary region networking
/// 		examplePrimary, err := network.NewVirtualNetwork(ctx, "example_primary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.Sprintf("%v-vnet-primary", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.47.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrimarySubnet, err := network.NewSubnet(ctx, "example_primary", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-delegated-subnet-primary", prefix),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: examplePrimary.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.47.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("exampledelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Secondary region networking
/// 		exampleSecondary, err := network.NewVirtualNetwork(ctx, "example_secondary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.Sprintf("%v-vnet-secondary", prefix),
/// 			Location:          pulumi.Any(altLocation),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.48.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecondarySubnet, err := network.NewSubnet(ctx, "example_secondary", &network.SubnetArgs{
/// 			Name:               pulumi.Sprintf("%v-delegated-subnet-secondary", prefix),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleSecondary.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.48.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("exampledelegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Netapp/volumes"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Primary region NetApp infrastructure
/// 		examplePrimaryAccount, err := netapp.NewAccount(ctx, "example_primary", &netapp.AccountArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-account-primary", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			examplePrimarySubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrimaryPool, err := netapp.NewPool(ctx, "example_primary", &netapp.PoolArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-pool-primary", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       examplePrimaryAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 			QosType:           pulumi.String("Manual"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Secondary region NetApp infrastructure
/// 		exampleSecondaryAccount, err := netapp.NewAccount(ctx, "example_secondary", &netapp.AccountArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-account-secondary", prefix),
/// 			Location:          pulumi.Any(altLocation),
/// 			ResourceGroupName: example.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleSecondarySubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecondaryPool, err := netapp.NewPool(ctx, "example_secondary", &netapp.PoolArgs{
/// 			Name:              pulumi.Sprintf("%v-netapp-pool-secondary", prefix),
/// 			Location:          pulumi.Any(altLocation),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleSecondaryAccount.Name,
/// 			ServiceLevel:      pulumi.String("Standard"),
/// 			SizeInTb:          pulumi.Int(4),
/// 			QosType:           pulumi.String("Manual"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Primary Oracle volume group
/// 		examplePrimaryVolumeGroupOracle, err := netapp.NewVolumeGroupOracle(ctx, "example_primary", &netapp.VolumeGroupOracleArgs{
/// 			Name:                  pulumi.Sprintf("%v-NetAppVolumeGroupOracle-primary", prefix),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			AccountName:           examplePrimaryAccount.Name,
/// 			GroupDescription:      pulumi.String("Primary Oracle volume group for CRR"),
/// 			ApplicationIdentifier: pulumi.String("TST"),
/// 			Volumes: netapp.VolumeGroupOracleVolumeArray{
/// 				&netapp.VolumeGroupOracleVolumeArgs{
/// 					Name:                     pulumi.Sprintf("%v-volume-ora1-primary", prefix),
/// 					VolumePath:               pulumi.Sprintf("%v-my-unique-file-ora-path-1-primary", prefix),
/// 					ServiceLevel:             pulumi.String("Standard"),
/// 					CapacityPoolId:           examplePrimaryPool.ID(),
/// 					SubnetId:                 examplePrimarySubnet.ID(),
/// 					VolumeSpecName:           pulumi.String("ora-data1"),
/// 					StorageQuotaInGb:         pulumi.Int(1024),
/// 					ThroughputInMibps:        pulumi.Float64(24),
/// 					Protocols:                pulumi.String("NFSv4.1"),
/// 					SecurityStyle:            pulumi.String("unix"),
/// 					SnapshotDirectoryVisible: pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupOracleVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupOracleVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Secondary Oracle volume group with CRR
/// 		_, err = netapp.NewVolumeGroupOracle(ctx, "example_secondary", &netapp.VolumeGroupOracleArgs{
/// 			Name:                  pulumi.Sprintf("%v-NetAppVolumeGroupOracle-secondary", prefix),
/// 			Location:              pulumi.Any(altLocation),
/// 			ResourceGroupName:     example.Name,
/// 			AccountName:           exampleSecondaryAccount.Name,
/// 			GroupDescription:      pulumi.String("Secondary Oracle volume group for CRR"),
/// 			ApplicationIdentifier: pulumi.String("TST"),
/// 			Volumes: netapp.VolumeGroupOracleVolumeArray{
/// 				&netapp.VolumeGroupOracleVolumeArgs{
/// 					Name:                     pulumi.Sprintf("%v-volume-ora1-secondary", prefix),
/// 					VolumePath:               pulumi.Sprintf("%v-my-unique-file-ora-path-1-secondary", prefix),
/// 					ServiceLevel:             pulumi.String("Standard"),
/// 					CapacityPoolId:           exampleSecondaryPool.ID(),
/// 					SubnetId:                 exampleSecondarySubnet.ID(),
/// 					VolumeSpecName:           pulumi.String("ora-data1"),
/// 					StorageQuotaInGb:         pulumi.Int(1024),
/// 					ThroughputInMibps:        pulumi.Float64(24),
/// 					Protocols:                pulumi.String("NFSv4.1"),
/// 					SecurityStyle:            pulumi.String("unix"),
/// 					SnapshotDirectoryVisible: pulumi.Bool(false),
/// 					ExportPolicyRules: netapp.VolumeGroupOracleVolumeExportPolicyRuleArray{
/// 						&netapp.VolumeGroupOracleVolumeExportPolicyRuleArgs{
/// 							RuleIndex:         pulumi.Int(1),
/// 							AllowedClients:    pulumi.String("0.0.0.0/0"),
/// 							Nfsv3Enabled:      pulumi.Bool(false),
/// 							Nfsv41Enabled:     pulumi.Bool(true),
/// 							UnixReadOnly:      pulumi.Bool(false),
/// 							UnixReadWrite:     pulumi.Bool(true),
/// 							RootAccessEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 					DataProtectionReplication: &netapp.VolumeGroupOracleVolumeDataProtectionReplicationArgs{
/// 						EndpointType:         pulumi.String("dst"),
/// 						RemoteVolumeLocation: example.Location,
/// 						RemoteVolumeResourceId: examplePrimaryVolumeGroupOracle.Volumes.ApplyT(func(volumes []netapp.VolumeGroupOracleVolume) (*string, error) {
/// 							return &volumes[0].Id, nil
/// 						}).(pulumi.StringPtrOutput),
/// 						ReplicationFrequency: pulumi.String("10minutes"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			examplePrimaryVolumeGroupOracle,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.Pool;
/// import com.pulumi.azure.netapp.PoolArgs;
/// import com.pulumi.azure.netapp.VolumeGroupOracle;
/// import com.pulumi.azure.netapp.VolumeGroupOracleArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeGroupOracleVolumeArgs;
/// import com.pulumi.azure.netapp.inputs.VolumeGroupOracleVolumeDataProtectionReplicationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name(String.format("%s-resources", prefix))
///             .location(location)
///             .tags(Map.of("SkipNRMSNSG", "true"))
///             .build());
///
///         // Primary region networking
///         var examplePrimary = new VirtualNetwork("examplePrimary", VirtualNetworkArgs.builder()
///             .name(String.format("%s-vnet-primary", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.47.0.0/16")
///             .build());
///
///         var examplePrimarySubnet = new Subnet("examplePrimarySubnet", SubnetArgs.builder()
///             .name(String.format("%s-delegated-subnet-primary", prefix))
///             .resourceGroupName(example.name())
///             .virtualNetworkName(examplePrimary.name())
///             .addressPrefixes("10.47.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("exampledelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         // Secondary region networking
///         var exampleSecondary = new VirtualNetwork("exampleSecondary", VirtualNetworkArgs.builder()
///             .name(String.format("%s-vnet-secondary", prefix))
///             .location(altLocation)
///             .resourceGroupName(example.name())
///             .addressSpaces("10.48.0.0/16")
///             .build());
///
///         var exampleSecondarySubnet = new Subnet("exampleSecondarySubnet", SubnetArgs.builder()
///             .name(String.format("%s-delegated-subnet-secondary", prefix))
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleSecondary.name())
///             .addressPrefixes("10.48.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("exampledelegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Netapp/volumes")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         // Primary region NetApp infrastructure
///         var examplePrimaryAccount = new Account("examplePrimaryAccount", AccountArgs.builder()
///             .name(String.format("%s-netapp-account-primary", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(examplePrimarySubnet)
///                 .build());
///
///         var examplePrimaryPool = new Pool("examplePrimaryPool", PoolArgs.builder()
///             .name(String.format("%s-netapp-pool-primary", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(examplePrimaryAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .qosType("Manual")
///             .build());
///
///         // Secondary region NetApp infrastructure
///         var exampleSecondaryAccount = new Account("exampleSecondaryAccount", AccountArgs.builder()
///             .name(String.format("%s-netapp-account-secondary", prefix))
///             .location(altLocation)
///             .resourceGroupName(example.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleSecondarySubnet)
///                 .build());
///
///         var exampleSecondaryPool = new Pool("exampleSecondaryPool", PoolArgs.builder()
///             .name(String.format("%s-netapp-pool-secondary", prefix))
///             .location(altLocation)
///             .resourceGroupName(example.name())
///             .accountName(exampleSecondaryAccount.name())
///             .serviceLevel("Standard")
///             .sizeInTb(4)
///             .qosType("Manual")
///             .build());
///
///         // Primary Oracle volume group
///         var examplePrimaryVolumeGroupOracle = new VolumeGroupOracle("examplePrimaryVolumeGroupOracle", VolumeGroupOracleArgs.builder()
///             .name(String.format("%s-NetAppVolumeGroupOracle-primary", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(examplePrimaryAccount.name())
///             .groupDescription("Primary Oracle volume group for CRR")
///             .applicationIdentifier("TST")
///             .volumes(VolumeGroupOracleVolumeArgs.builder()
///                 .name(String.format("%s-volume-ora1-primary", prefix))
///                 .volumePath(String.format("%s-my-unique-file-ora-path-1-primary", prefix))
///                 .serviceLevel("Standard")
///                 .capacityPoolId(examplePrimaryPool.id())
///                 .subnetId(examplePrimarySubnet.id())
///                 .volumeSpecName("ora-data1")
///                 .storageQuotaInGb(1024)
///                 .throughputInMibps(24.0)
///                 .protocols("NFSv4.1")
///                 .securityStyle("unix")
///                 .snapshotDirectoryVisible(false)
///                 .exportPolicyRules(VolumeGroupOracleVolumeExportPolicyRuleArgs.builder()
///                     .ruleIndex(1)
///                     .allowedClients("0.0.0.0/0")
///                     .nfsv3Enabled(false)
///                     .nfsv41Enabled(true)
///                     .unixReadOnly(false)
///                     .unixReadWrite(true)
///                     .rootAccessEnabled(false)
///                     .build())
///                 .build())
///             .build());
///
///         // Secondary Oracle volume group with CRR
///         var exampleSecondaryVolumeGroupOracle = new VolumeGroupOracle("exampleSecondaryVolumeGroupOracle", VolumeGroupOracleArgs.builder()
///             .name(String.format("%s-NetAppVolumeGroupOracle-secondary", prefix))
///             .location(altLocation)
///             .resourceGroupName(example.name())
///             .accountName(exampleSecondaryAccount.name())
///             .groupDescription("Secondary Oracle volume group for CRR")
///             .applicationIdentifier("TST")
///             .volumes(VolumeGroupOracleVolumeArgs.builder()
///                 .name(String.format("%s-volume-ora1-secondary", prefix))
///                 .volumePath(String.format("%s-my-unique-file-ora-path-1-secondary", prefix))
///                 .serviceLevel("Standard")
///                 .capacityPoolId(exampleSecondaryPool.id())
///                 .subnetId(exampleSecondarySubnet.id())
///                 .volumeSpecName("ora-data1")
///                 .storageQuotaInGb(1024)
///                 .throughputInMibps(24.0)
///                 .protocols("NFSv4.1")
///                 .securityStyle("unix")
///                 .snapshotDirectoryVisible(false)
///                 .exportPolicyRules(VolumeGroupOracleVolumeExportPolicyRuleArgs.builder()
///                     .ruleIndex(1)
///                     .allowedClients("0.0.0.0/0")
///                     .nfsv3Enabled(false)
///                     .nfsv41Enabled(true)
///                     .unixReadOnly(false)
///                     .unixReadWrite(true)
///                     .rootAccessEnabled(false)
///                     .build())
///                 .dataProtectionReplication(VolumeGroupOracleVolumeDataProtectionReplicationArgs.builder()
///                     .endpointType("dst")
///                     .remoteVolumeLocation(example.location())
///                     .remoteVolumeResourceId(examplePrimaryVolumeGroupOracle.volumes().applyValue(_volumes -> _volumes[0].id()))
///                     .replicationFrequency("10minutes")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(examplePrimaryVolumeGroupOracle)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: ${prefix}-resources
///       location: ${location}
///       tags:
///         SkipNRMSNSG: 'true'
///   # Primary region networking
///   examplePrimary:
///     type: azure:network:VirtualNetwork
///     name: example_primary
///     properties:
///       name: ${prefix}-vnet-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.47.0.0/16
///   examplePrimarySubnet:
///     type: azure:network:Subnet
///     name: example_primary
///     properties:
///       name: ${prefix}-delegated-subnet-primary
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${examplePrimary.name}
///       addressPrefixes:
///         - 10.47.2.0/24
///       delegations:
///         - name: exampledelegation
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   # Secondary region networking
///   exampleSecondary:
///     type: azure:network:VirtualNetwork
///     name: example_secondary
///     properties:
///       name: ${prefix}-vnet-secondary
///       location: ${altLocation}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.48.0.0/16
///   exampleSecondarySubnet:
///     type: azure:network:Subnet
///     name: example_secondary
///     properties:
///       name: ${prefix}-delegated-subnet-secondary
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleSecondary.name}
///       addressPrefixes:
///         - 10.48.2.0/24
///       delegations:
///         - name: exampledelegation
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   # Primary region NetApp infrastructure
///   examplePrimaryAccount:
///     type: azure:netapp:Account
///     name: example_primary
///     properties:
///       name: ${prefix}-netapp-account-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///     options:
///       dependsOn:
///         - ${examplePrimarySubnet}
///   examplePrimaryPool:
///     type: azure:netapp:Pool
///     name: example_primary
///     properties:
///       name: ${prefix}-netapp-pool-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${examplePrimaryAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///       qosType: Manual
///   # Secondary region NetApp infrastructure
///   exampleSecondaryAccount:
///     type: azure:netapp:Account
///     name: example_secondary
///     properties:
///       name: ${prefix}-netapp-account-secondary
///       location: ${altLocation}
///       resourceGroupName: ${example.name}
///     options:
///       dependsOn:
///         - ${exampleSecondarySubnet}
///   exampleSecondaryPool:
///     type: azure:netapp:Pool
///     name: example_secondary
///     properties:
///       name: ${prefix}-netapp-pool-secondary
///       location: ${altLocation}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleSecondaryAccount.name}
///       serviceLevel: Standard
///       sizeInTb: 4
///       qosType: Manual
///   # Primary Oracle volume group
///   examplePrimaryVolumeGroupOracle:
///     type: azure:netapp:VolumeGroupOracle
///     name: example_primary
///     properties:
///       name: ${prefix}-NetAppVolumeGroupOracle-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${examplePrimaryAccount.name}
///       groupDescription: Primary Oracle volume group for CRR
///       applicationIdentifier: TST
///       volumes:
///         - name: ${prefix}-volume-ora1-primary
///           volumePath: ${prefix}-my-unique-file-ora-path-1-primary
///           serviceLevel: Standard
///           capacityPoolId: ${examplePrimaryPool.id}
///           subnetId: ${examplePrimarySubnet.id}
///           volumeSpecName: ora-data1
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///   # Secondary Oracle volume group with CRR
///   exampleSecondaryVolumeGroupOracle:
///     type: azure:netapp:VolumeGroupOracle
///     name: example_secondary
///     properties:
///       name: ${prefix}-NetAppVolumeGroupOracle-secondary
///       location: ${altLocation}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleSecondaryAccount.name}
///       groupDescription: Secondary Oracle volume group for CRR
///       applicationIdentifier: TST
///       volumes:
///         - name: ${prefix}-volume-ora1-secondary
///           volumePath: ${prefix}-my-unique-file-ora-path-1-secondary
///           serviceLevel: Standard
///           capacityPoolId: ${exampleSecondaryPool.id}
///           subnetId: ${exampleSecondarySubnet.id}
///           volumeSpecName: ora-data1
///           storageQuotaInGb: 1024
///           throughputInMibps: 24
///           protocols: NFSv4.1
///           securityStyle: unix
///           snapshotDirectoryVisible: false
///           exportPolicyRules:
///             - ruleIndex: 1
///               allowedClients: 0.0.0.0/0
///               nfsv3Enabled: false
///               nfsv41Enabled: true
///               unixReadOnly: false
///               unixReadWrite: true
///               rootAccessEnabled: false
///           dataProtectionReplication:
///             endpointType: dst
///             remoteVolumeLocation: ${example.location}
///             remoteVolumeResourceId: ${examplePrimaryVolumeGroupOracle.volumes[0].id}
///             replicationFrequency: 10minutes
///     options:
///       dependsOn:
///         - ${examplePrimaryVolumeGroupOracle}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// Application Volume Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volumeGroupOracle:VolumeGroupOracle example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mytest-rg/providers/Microsoft.NetApp/netAppAccounts/netapp-account-test/volumeGroups/netapp-volumegroup-test
/// ```
class VolumeGroupOracle extends pulumi.CustomResource {
  /// Name of the account where the application volume group belong to. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> accountName;
  /// The SAP System ID, maximum 3 characters, e.g. `OR1`. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> applicationIdentifier;
  /// Volume group description. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> groupDescription;
  /// The Azure Region where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Application Volume Group. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Application Volume Group should exist. Changing this forces a new Application Volume Group to be created and data will be lost.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `volume` blocks as defined below.
  late final pulumi.Output<List<VolumeGroupOracleVolume>> volumes;

  /// Creates a new [VolumeGroupOracle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeGroupOracle]. {@macro pulumi_netapp_volume_group_oracle_volume_group_oracle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeGroupOracle(
    String name, {
    VolumeGroupOracleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeGroupOracle:VolumeGroupOracle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.applicationIdentifier = registerOutput<String>('applicationIdentifier');
    this.groupDescription = registerOutput<String>('groupDescription');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.volumes = registerOutput<List<VolumeGroupOracleVolume>>('volumes');
  }

  /// Gets an existing [VolumeGroupOracle] resource's state with the given [name] and [id].
  static VolumeGroupOracle get(
    String name,
    pulumi.Input<String> id, {
    VolumeGroupOracleState? state,
  }) {
    return VolumeGroupOracle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeGroupOracle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeGroupOracle:VolumeGroupOracle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.applicationIdentifier = registerOutput<String>('applicationIdentifier');
    this.groupDescription = registerOutput<String>('groupDescription');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.volumes = registerOutput<List<VolumeGroupOracleVolume>>('volumes');
  }
}
