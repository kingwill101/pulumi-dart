import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_quota_rule_args.dart';
import 'volume_quota_rule_state.dart';

/// Manages a Volume Quota Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-virtualnetwork",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "netapp",
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
///     name: "example-netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const examplePool = new azure.netapp.Pool("example", {
///     name: "example-netapppool",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     serviceLevel: "Premium",
///     sizeInTb: 4,
/// });
/// const exampleVolume = new azure.netapp.Volume("example", {
///     name: "example-netappvolume",
///     location: example.location,
///     zone: "1",
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     poolName: examplePool.name,
///     volumePath: "my-unique-file-path",
///     serviceLevel: "Premium",
///     subnetId: exampleSubnet.id,
///     networkFeatures: "Basic",
///     protocols: ["NFSv4.1"],
///     securityStyle: "unix",
///     storageQuotaInGb: 100,
///     snapshotDirectoryVisible: false,
/// });
/// const quota1 = new azure.netapp.VolumeQuotaRule("quota1", {
///     name: "example-quota-rule-1",
///     location: example.location,
///     volumeId: exampleVolume.id,
///     quotaTarget: "3001",
///     quotaSizeInKib: 1024,
///     quotaType: "IndividualGroupQuota",
/// });
/// const quota2 = new azure.netapp.VolumeQuotaRule("quota2", {
///     name: "example-quota-rule-2",
///     location: example.location,
///     volumeId: exampleVolume.id,
///     quotaTarget: "2001",
///     quotaSizeInKib: 1024,
///     quotaType: "IndividualUserQuota",
/// });
/// const quota3 = new azure.netapp.VolumeQuotaRule("quota3", {
///     name: "example-quota-rule-3",
///     location: example.location,
///     volumeId: exampleVolume.id,
///     quotaSizeInKib: 1024,
///     quotaType: "DefaultUserQuota",
/// });
/// const quota4 = new azure.netapp.VolumeQuotaRule("quota4", {
///     name: "example-quota-rule-4",
///     location: example.location,
///     volumeId: exampleVolume.id,
///     quotaSizeInKib: 1024,
///     quotaType: "DefaultGroupQuota",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-virtualnetwork",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "netapp",
///         "service_delegation": {
///             "name": "Microsoft.Netapp/volumes",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example_account = azure.netapp.Account("example",
///     name="example-netappaccount",
///     location=example.location,
///     resource_group_name=example.name)
/// example_pool = azure.netapp.Pool("example",
///     name="example-netapppool",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     service_level="Premium",
///     size_in_tb=4)
/// example_volume = azure.netapp.Volume("example",
///     name="example-netappvolume",
///     location=example.location,
///     zone="1",
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     pool_name=example_pool.name,
///     volume_path="my-unique-file-path",
///     service_level="Premium",
///     subnet_id=example_subnet.id,
///     network_features="Basic",
///     protocols=["NFSv4.1"],
///     security_style="unix",
///     storage_quota_in_gb=100,
///     snapshot_directory_visible=False)
/// quota1 = azure.netapp.VolumeQuotaRule("quota1",
///     name="example-quota-rule-1",
///     location=example.location,
///     volume_id=example_volume.id,
///     quota_target="3001",
///     quota_size_in_kib=1024,
///     quota_type="IndividualGroupQuota")
/// quota2 = azure.netapp.VolumeQuotaRule("quota2",
///     name="example-quota-rule-2",
///     location=example.location,
///     volume_id=example_volume.id,
///     quota_target="2001",
///     quota_size_in_kib=1024,
///     quota_type="IndividualUserQuota")
/// quota3 = azure.netapp.VolumeQuotaRule("quota3",
///     name="example-quota-rule-3",
///     location=example.location,
///     volume_id=example_volume.id,
///     quota_size_in_kib=1024,
///     quota_type="DefaultUserQuota")
/// quota4 = azure.netapp.VolumeQuotaRule("quota4",
///     name="example-quota-rule-4",
///     location=example.location,
///     volume_id=example_volume.id,
///     quota_size_in_kib=1024,
///     quota_type="DefaultGroupQuota")
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-virtualnetwork",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "netapp",
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
///         Name = "example-netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var examplePool = new Azure.NetApp.Pool("example", new()
///     {
///         Name = "example-netapppool",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         ServiceLevel = "Premium",
///         SizeInTb = 4,
///     });
///
///     var exampleVolume = new Azure.NetApp.Volume("example", new()
///     {
///         Name = "example-netappvolume",
///         Location = example.Location,
///         Zone = "1",
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         PoolName = examplePool.Name,
///         VolumePath = "my-unique-file-path",
///         ServiceLevel = "Premium",
///         SubnetId = exampleSubnet.Id,
///         NetworkFeatures = "Basic",
///         Protocols = new[]
///         {
///             "NFSv4.1",
///         },
///         SecurityStyle = "unix",
///         StorageQuotaInGb = 100,
///         SnapshotDirectoryVisible = false,
///     });
///
///     var quota1 = new Azure.NetApp.VolumeQuotaRule("quota1", new()
///     {
///         Name = "example-quota-rule-1",
///         Location = example.Location,
///         VolumeId = exampleVolume.Id,
///         QuotaTarget = "3001",
///         QuotaSizeInKib = 1024,
///         QuotaType = "IndividualGroupQuota",
///     });
///
///     var quota2 = new Azure.NetApp.VolumeQuotaRule("quota2", new()
///     {
///         Name = "example-quota-rule-2",
///         Location = example.Location,
///         VolumeId = exampleVolume.Id,
///         QuotaTarget = "2001",
///         QuotaSizeInKib = 1024,
///         QuotaType = "IndividualUserQuota",
///     });
///
///     var quota3 = new Azure.NetApp.VolumeQuotaRule("quota3", new()
///     {
///         Name = "example-quota-rule-3",
///         Location = example.Location,
///         VolumeId = exampleVolume.Id,
///         QuotaSizeInKib = 1024,
///         QuotaType = "DefaultUserQuota",
///     });
///
///     var quota4 = new Azure.NetApp.VolumeQuotaRule("quota4", new()
///     {
///         Name = "example-quota-rule-4",
///         Location = example.Location,
///         VolumeId = exampleVolume.Id,
///         QuotaSizeInKib = 1024,
///         QuotaType = "DefaultGroupQuota",
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-virtualnetwork"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("netapp"),
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
/// 			Name:              pulumi.String("example-netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePool, err := netapp.NewPool(ctx, "example", &netapp.PoolArgs{
/// 			Name:              pulumi.String("example-netapppool"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			ServiceLevel:      pulumi.String("Premium"),
/// 			SizeInTb:          pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolume, err := netapp.NewVolume(ctx, "example", &netapp.VolumeArgs{
/// 			Name:              pulumi.String("example-netappvolume"),
/// 			Location:          example.Location,
/// 			Zone:              pulumi.String("1"),
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			PoolName:          examplePool.Name,
/// 			VolumePath:        pulumi.String("my-unique-file-path"),
/// 			ServiceLevel:      pulumi.String("Premium"),
/// 			SubnetId:          exampleSubnet.ID(),
/// 			NetworkFeatures:   pulumi.String("Basic"),
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSv4.1"),
/// 			},
/// 			SecurityStyle:            pulumi.String("unix"),
/// 			StorageQuotaInGb:         pulumi.Int(100),
/// 			SnapshotDirectoryVisible: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeQuotaRule(ctx, "quota1", &netapp.VolumeQuotaRuleArgs{
/// 			Name:           pulumi.String("example-quota-rule-1"),
/// 			Location:       example.Location,
/// 			VolumeId:       exampleVolume.ID(),
/// 			QuotaTarget:    pulumi.String("3001"),
/// 			QuotaSizeInKib: pulumi.Int(1024),
/// 			QuotaType:      pulumi.String("IndividualGroupQuota"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeQuotaRule(ctx, "quota2", &netapp.VolumeQuotaRuleArgs{
/// 			Name:           pulumi.String("example-quota-rule-2"),
/// 			Location:       example.Location,
/// 			VolumeId:       exampleVolume.ID(),
/// 			QuotaTarget:    pulumi.String("2001"),
/// 			QuotaSizeInKib: pulumi.Int(1024),
/// 			QuotaType:      pulumi.String("IndividualUserQuota"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeQuotaRule(ctx, "quota3", &netapp.VolumeQuotaRuleArgs{
/// 			Name:           pulumi.String("example-quota-rule-3"),
/// 			Location:       example.Location,
/// 			VolumeId:       exampleVolume.ID(),
/// 			QuotaSizeInKib: pulumi.Int(1024),
/// 			QuotaType:      pulumi.String("DefaultUserQuota"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeQuotaRule(ctx, "quota4", &netapp.VolumeQuotaRuleArgs{
/// 			Name:           pulumi.String("example-quota-rule-4"),
/// 			Location:       example.Location,
/// 			VolumeId:       exampleVolume.ID(),
/// 			QuotaSizeInKib: pulumi.Int(1024),
/// 			QuotaType:      pulumi.String("DefaultGroupQuota"),
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
/// import com.pulumi.azure.netapp.Volume;
/// import com.pulumi.azure.netapp.VolumeArgs;
/// import com.pulumi.azure.netapp.VolumeQuotaRule;
/// import com.pulumi.azure.netapp.VolumeQuotaRuleArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-virtualnetwork")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("netapp")
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
///             .name("example-netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var examplePool = new Pool("examplePool", PoolArgs.builder()
///             .name("example-netapppool")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .serviceLevel("Premium")
///             .sizeInTb(4)
///             .build());
///
///         var exampleVolume = new Volume("exampleVolume", VolumeArgs.builder()
///             .name("example-netappvolume")
///             .location(example.location())
///             .zone("1")
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .poolName(examplePool.name())
///             .volumePath("my-unique-file-path")
///             .serviceLevel("Premium")
///             .subnetId(exampleSubnet.id())
///             .networkFeatures("Basic")
///             .protocols("NFSv4.1")
///             .securityStyle("unix")
///             .storageQuotaInGb(100)
///             .snapshotDirectoryVisible(false)
///             .build());
///
///         var quota1 = new VolumeQuotaRule("quota1", VolumeQuotaRuleArgs.builder()
///             .name("example-quota-rule-1")
///             .location(example.location())
///             .volumeId(exampleVolume.id())
///             .quotaTarget("3001")
///             .quotaSizeInKib(1024)
///             .quotaType("IndividualGroupQuota")
///             .build());
///
///         var quota2 = new VolumeQuotaRule("quota2", VolumeQuotaRuleArgs.builder()
///             .name("example-quota-rule-2")
///             .location(example.location())
///             .volumeId(exampleVolume.id())
///             .quotaTarget("2001")
///             .quotaSizeInKib(1024)
///             .quotaType("IndividualUserQuota")
///             .build());
///
///         var quota3 = new VolumeQuotaRule("quota3", VolumeQuotaRuleArgs.builder()
///             .name("example-quota-rule-3")
///             .location(example.location())
///             .volumeId(exampleVolume.id())
///             .quotaSizeInKib(1024)
///             .quotaType("DefaultUserQuota")
///             .build());
///
///         var quota4 = new VolumeQuotaRule("quota4", VolumeQuotaRuleArgs.builder()
///             .name("example-quota-rule-4")
///             .location(example.location())
///             .volumeId(exampleVolume.id())
///             .quotaSizeInKib(1024)
///             .quotaType("DefaultGroupQuota")
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-virtualnetwork
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: netapp
///           serviceDelegation:
///             name: Microsoft.Netapp/volumes
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: example-netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   examplePool:
///     type: azure:netapp:Pool
///     name: example
///     properties:
///       name: example-netapppool
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       serviceLevel: Premium
///       sizeInTb: 4
///   exampleVolume:
///     type: azure:netapp:Volume
///     name: example
///     properties:
///       name: example-netappvolume
///       location: ${example.location}
///       zone: '1'
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       poolName: ${examplePool.name}
///       volumePath: my-unique-file-path
///       serviceLevel: Premium
///       subnetId: ${exampleSubnet.id}
///       networkFeatures: Basic
///       protocols:
///         - NFSv4.1
///       securityStyle: unix
///       storageQuotaInGb: 100
///       snapshotDirectoryVisible: false
///   quota1:
///     type: azure:netapp:VolumeQuotaRule
///     properties:
///       name: example-quota-rule-1
///       location: ${example.location}
///       volumeId: ${exampleVolume.id}
///       quotaTarget: '3001'
///       quotaSizeInKib: 1024
///       quotaType: IndividualGroupQuota
///   quota2:
///     type: azure:netapp:VolumeQuotaRule
///     properties:
///       name: example-quota-rule-2
///       location: ${example.location}
///       volumeId: ${exampleVolume.id}
///       quotaTarget: '2001'
///       quotaSizeInKib: 1024
///       quotaType: IndividualUserQuota
///   quota3:
///     type: azure:netapp:VolumeQuotaRule
///     properties:
///       name: example-quota-rule-3
///       location: ${example.location}
///       volumeId: ${exampleVolume.id}
///       quotaSizeInKib: 1024
///       quotaType: DefaultUserQuota
///   quota4:
///     type: azure:netapp:VolumeQuotaRule
///     properties:
///       name: example-quota-rule-4
///       location: ${example.location}
///       volumeId: ${exampleVolume.id}
///       quotaSizeInKib: 1024
///       quotaType: DefaultGroupQuota
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// Volume Quota Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volumeQuotaRule:VolumeQuotaRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/vol1/volumeQuotaRules/quota1
/// ```
class VolumeQuotaRule extends pulumi.CustomResource {
  /// The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created.
  late final pulumi.Output<String> name;
  /// Quota size in kibibytes.
  late final pulumi.Output<int> quotaSizeInKib;
  /// Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `quota_target ` must be used when `quota_type` is `IndividualGroupQuota` or `IndividualUserQuota`
  ///
  /// &gt; **Note:** more information about this resource can be found at [Understand default and individual user and group quotas](https://learn.microsoft.com/en-us/azure/azure-netapp-files/default-individual-user-group-quotas-introduction)
  late final pulumi.Output<String?> quotaTarget;
  /// Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created.
  late final pulumi.Output<String> quotaType;
  /// The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeQuotaRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeQuotaRule]. {@macro pulumi_netapp_volume_quota_rule_volume_quota_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeQuotaRule(
    String name, {
    VolumeQuotaRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeQuotaRule:VolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    quotaSizeInKib = registerOutput<int>('quotaSizeInKib');
    quotaTarget = registerOutput<String?>('quotaTarget');
    quotaType = registerOutput<String>('quotaType');
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeQuotaRule] resource's state with the given [name] and [id].
  static VolumeQuotaRule get(
    String name,
    pulumi.Input<String> id, {
    VolumeQuotaRuleState? state,
  }) {
    return VolumeQuotaRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeQuotaRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volumeQuotaRule:VolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    quotaSizeInKib = registerOutput<int>('quotaSizeInKib');
    quotaTarget = registerOutput<String?>('quotaTarget');
    quotaType = registerOutput<String>('quotaType');
    volumeId = registerOutput<String>('volumeId');
  }
}
