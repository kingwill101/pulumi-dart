import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Manages a NetApp Snapshot.
///
/// ## NetApp Snapshot Usage
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
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
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
///     accountName: exampleAccount.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     serviceLevel: "Premium",
///     sizeInTb: 4,
/// });
/// const exampleVolume = new azure.netapp.Volume("example", {
///     name: "example-netappvolume",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountName: exampleAccount.name,
///     poolName: examplePool.name,
///     volumePath: "my-unique-file-path",
///     serviceLevel: "Premium",
///     subnetId: exampleSubnet.id,
///     storageQuotaInGb: 100,
/// });
/// const exampleSnapshot = new azure.netapp.Snapshot("example", {
///     name: "example-netappsnapshot",
///     accountName: exampleAccount.name,
///     poolName: examplePool.name,
///     volumeName: exampleVolume.name,
///     location: example.location,
///     resourceGroupName: example.name,
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
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
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
///     account_name=example_account.name,
///     location=example.location,
///     resource_group_name=example.name,
///     service_level="Premium",
///     size_in_tb=4)
/// example_volume = azure.netapp.Volume("example",
///     name="example-netappvolume",
///     location=example.location,
///     resource_group_name=example.name,
///     account_name=example_account.name,
///     pool_name=example_pool.name,
///     volume_path="my-unique-file-path",
///     service_level="Premium",
///     subnet_id=example_subnet.id,
///     storage_quota_in_gb=100)
/// example_snapshot = azure.netapp.Snapshot("example",
///     name="example-netappsnapshot",
///     account_name=example_account.name,
///     pool_name=example_pool.name,
///     volume_name=example_volume.name,
///     location=example.location,
///     resource_group_name=example.name)
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
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///         AccountName = exampleAccount.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServiceLevel = "Premium",
///         SizeInTb = 4,
///     });
///
///     var exampleVolume = new Azure.NetApp.Volume("example", new()
///     {
///         Name = "example-netappvolume",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount.Name,
///         PoolName = examplePool.Name,
///         VolumePath = "my-unique-file-path",
///         ServiceLevel = "Premium",
///         SubnetId = exampleSubnet.Id,
///         StorageQuotaInGb = 100,
///     });
///
///     var exampleSnapshot = new Azure.NetApp.Snapshot("example", new()
///     {
///         Name = "example-netappsnapshot",
///         AccountName = exampleAccount.Name,
///         PoolName = examplePool.Name,
///         VolumeName = exampleVolume.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
/// 			Name: pulumi.String("example-virtualnetwork"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 			AccountName:       exampleAccount.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ServiceLevel:      pulumi.String("Premium"),
/// 			SizeInTb:          pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVolume, err := netapp.NewVolume(ctx, "example", &netapp.VolumeArgs{
/// 			Name:              pulumi.String("example-netappvolume"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AccountName:       exampleAccount.Name,
/// 			PoolName:          examplePool.Name,
/// 			VolumePath:        pulumi.String("my-unique-file-path"),
/// 			ServiceLevel:      pulumi.String("Premium"),
/// 			SubnetId:          exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			StorageQuotaInGb:  pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewSnapshot(ctx, "example", &netapp.SnapshotArgs{
/// 			Name:              pulumi.String("example-netappsnapshot"),
/// 			AccountName:       exampleAccount.Name,
/// 			PoolName:          examplePool.Name,
/// 			VolumeName:        exampleVolume.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-virtualnetwork"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "netapp"
///     service_delegation = {
///       name    = "Microsoft.Netapp/volumes"
///       actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_netapp_account" "example" {
///   name                = "example-netappaccount"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_netapp_pool" "example" {
///   name                = "example-netapppool"
///   account_name        = azure_netapp_account.example.name
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   service_level       = "Premium"
///   size_in_tb          = "4"
/// }
/// resource "azure_netapp_volume" "example" {
///   name                = "example-netappvolume"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   account_name        = azure_netapp_account.example.name
///   pool_name           = azure_netapp_pool.example.name
///   volume_path         = "my-unique-file-path"
///   service_level       = "Premium"
///   subnet_id           = azure_network_subnet.example.id
///   storage_quota_in_gb = "100"
/// }
/// resource "azure_netapp_snapshot" "example" {
///   name                = "example-netappsnapshot"
///   account_name        = azure_netapp_account.example.name
///   pool_name           = azure_netapp_pool.example.name
///   volume_name         = azure_netapp_volume.example.name
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
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
/// import com.pulumi.azure.netapp.Snapshot;
/// import com.pulumi.azure.netapp.SnapshotArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///             .accountName(exampleAccount.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .serviceLevel("Premium")
///             .sizeInTb(4)
///             .build());
///
///         var exampleVolume = new Volume("exampleVolume", VolumeArgs.builder()
///             .name("example-netappvolume")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount.name())
///             .poolName(examplePool.name())
///             .volumePath("my-unique-file-path")
///             .serviceLevel("Premium")
///             .subnetId(exampleSubnet.id())
///             .storageQuotaInGb(100)
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .name("example-netappsnapshot")
///             .accountName(exampleAccount.name())
///             .poolName(examplePool.name())
///             .volumeName(exampleVolume.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///       accountName: ${exampleAccount.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       serviceLevel: Premium
///       sizeInTb: '4'
///   exampleVolume:
///     type: azure:netapp:Volume
///     name: example
///     properties:
///       name: example-netappvolume
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount.name}
///       poolName: ${examplePool.name}
///       volumePath: my-unique-file-path
///       serviceLevel: Premium
///       subnetId: ${exampleSubnet.id}
///       storageQuotaInGb: '100'
///   exampleSnapshot:
///     type: azure:netapp:Snapshot
///     name: example
///     properties:
///       name: example-netappsnapshot
///       accountName: ${exampleAccount.name}
///       poolName: ${examplePool.name}
///       volumeName: ${exampleVolume.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetApp` - 2026-01-01
///
/// ## Import
///
/// NetApp Snapshot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/snapshot:Snapshot example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/volume1/snapshots/snapshot1
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the NetApp Snapshot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> poolName;
  /// The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumeName;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_netapp_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    poolName = registerOutput<String>('poolName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    volumeName = registerOutput<String>('volumeName');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    poolName = registerOutput<String>('poolName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    volumeName = registerOutput<String>('volumeName');
  }

  /// Creates a typed reference to an existing [Snapshot] resource.
  Snapshot.reference(String urn)
    : super(
        'azure:netapp/snapshot:Snapshot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String>('accountName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    poolName = registerOutput<String>('poolName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    volumeName = registerOutput<String>('volumeName');
  }
}
