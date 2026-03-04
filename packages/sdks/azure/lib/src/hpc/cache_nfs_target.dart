import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_nfs_target_args.dart';
import 'cache_nfs_target_state.dart';

/// Manages a NFS Target within a HPC Cache.
///
/// !&gt; **Note:** The `azure.hpc.CacheNfsTarget` resource has been deprecated because the service is retiring on 2025-09-30. This resource will be removed in v5.0 of the AzureRM Provider. See https://aka.ms/hpccacheretirement for more information.
///
/// &gt; **Note:** By request of the service team the provider no longer automatically registering the `Microsoft.StorageCache` Resource Provider for this resource. To register it you can run `az provider register --namespace 'Microsoft.StorageCache'`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevn",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleHpc = new azure.network.Subnet("example_hpc", {
///     name: "examplesubnethpc",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const exampleCache = new azure.hpc.Cache("example", {
///     name: "examplehpccache",
///     resourceGroupName: example.name,
///     location: example.location,
///     cacheSizeInGb: 3072,
///     subnetId: exampleHpc.id,
///     skuName: "Standard_2G",
/// });
/// const exampleVm = new azure.network.Subnet("example_vm", {
///     name: "examplesubnetvm",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "examplenic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleVm.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const customData = `#!/bin/bash
/// sudo -i
/// apt-get install -y nfs-kernel-server
/// mkdir -p /export/a/1
/// mkdir -p /export/a/2
/// mkdir -p /export/b
/// cat << EOF > /etc/exports
/// /export/a *(rw,fsid=0,insecure,no_subtree_check,async)
/// /export/b *(rw,fsid=0,insecure,no_subtree_check,async)
/// EOF
/// systemctl start nfs-server
/// exportfs -arv
/// `;
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "examplevm",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     adminSshKeys: [{
///         username: "adminuser",
///         publicKey: std.file({
///             input: "~/.ssh/id_rsa.pub",
///         }).then(invoke => invoke.result),
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     customData: std.base64encode({
///         input: customData,
///     }).then(invoke => invoke.result),
/// });
/// const exampleCacheNfsTarget = new azure.hpc.CacheNfsTarget("example", {
///     name: "examplehpcnfstarget",
///     resourceGroupName: example.name,
///     cacheName: exampleCache.name,
///     targetHostName: exampleLinuxVirtualMachine.privateIpAddress,
///     usageModel: "READ_HEAVY_INFREQ",
///     namespaceJunctions: [
///         {
///             namespacePath: "/nfs/a1",
///             nfsExport: "/export/a",
///             targetPath: "1",
///         },
///         {
///             namespacePath: "/nfs/b",
///             nfsExport: "/export/b",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_hpc = azure.network.Subnet("example_hpc",
///     name="examplesubnethpc",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_cache = azure.hpc.Cache("example",
///     name="examplehpccache",
///     resource_group_name=example.name,
///     location=example.location,
///     cache_size_in_gb=3072,
///     subnet_id=example_hpc.id,
///     sku_name="Standard_2G")
/// example_vm = azure.network.Subnet("example_vm",
///     name="examplesubnetvm",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="examplenic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_vm.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// custom_data = """#!/bin/bash
/// sudo -i
/// apt-get install -y nfs-kernel-server
/// mkdir -p /export/a/1
/// mkdir -p /export/a/2
/// mkdir -p /export/b
/// cat << EOF > /etc/exports
/// /export/a *(rw,fsid=0,insecure,no_subtree_check,async)
/// /export/b *(rw,fsid=0,insecure,no_subtree_check,async)
/// EOF
/// systemctl start nfs-server
/// exportfs -arv
/// """
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="examplevm",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     network_interface_ids=[example_network_interface.id],
///     admin_ssh_keys=[{
///         "username": "adminuser",
///         "public_key": std.file(input="~/.ssh/id_rsa.pub").result,
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     custom_data=std.base64encode(input=custom_data).result)
/// example_cache_nfs_target = azure.hpc.CacheNfsTarget("example",
///     name="examplehpcnfstarget",
///     resource_group_name=example.name,
///     cache_name=example_cache.name,
///     target_host_name=example_linux_virtual_machine.private_ip_address,
///     usage_model="READ_HEAVY_INFREQ",
///     namespace_junctions=[
///         {
///             "namespace_path": "/nfs/a1",
///             "nfs_export": "/export/a",
///             "target_path": "1",
///         },
///         {
///             "namespace_path": "/nfs/b",
///             "nfs_export": "/export/b",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///         Name = "examplevn",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleHpc = new Azure.Network.Subnet("example_hpc", new()
///     {
///         Name = "examplesubnethpc",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var exampleCache = new Azure.Hpc.Cache("example", new()
///     {
///         Name = "examplehpccache",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CacheSizeInGb = 3072,
///         SubnetId = exampleHpc.Id,
///         SkuName = "Standard_2G",
///     });
///
///     var exampleVm = new Azure.Network.Subnet("example_vm", new()
///     {
///         Name = "examplesubnetvm",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "examplenic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleVm.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var customData = @"#!/bin/bash
/// sudo -i
/// apt-get install -y nfs-kernel-server
/// mkdir -p /export/a/1
/// mkdir -p /export/a/2
/// mkdir -p /export/b
/// cat << EOF > /etc/exports
/// /export/a *(rw,fsid=0,insecure,no_subtree_check,async)
/// /export/b *(rw,fsid=0,insecure,no_subtree_check,async)
/// EOF
/// systemctl start nfs-server
/// exportfs -arv
/// ";
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "examplevm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineAdminSshKeyArgs
///             {
///                 Username = "adminuser",
///                 PublicKey = Std.File.Invoke(new()
///                 {
///                     Input = "~/.ssh/id_rsa.pub",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         CustomData = Std.Base64encode.Invoke(new()
///         {
///             Input = customData,
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var exampleCacheNfsTarget = new Azure.Hpc.CacheNfsTarget("example", new()
///     {
///         Name = "examplehpcnfstarget",
///         ResourceGroupName = example.Name,
///         CacheName = exampleCache.Name,
///         TargetHostName = exampleLinuxVirtualMachine.PrivateIpAddress,
///         UsageModel = "READ_HEAVY_INFREQ",
///         NamespaceJunctions = new[]
///         {
///             new Azure.Hpc.Inputs.CacheNfsTargetNamespaceJunctionArgs
///             {
///                 NamespacePath = "/nfs/a1",
///                 NfsExport = "/export/a",
///                 TargetPath = "1",
///             },
///             new Azure.Hpc.Inputs.CacheNfsTargetNamespaceJunctionArgs
///             {
///                 NamespacePath = "/nfs/b",
///                 NfsExport = "/export/b",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hpc"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 			Name: pulumi.String("examplevn"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHpc, err := network.NewSubnet(ctx, "example_hpc", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnethpc"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCache, err := hpc.NewCache(ctx, "example", &hpc.CacheArgs{
/// 			Name:              pulumi.String("examplehpccache"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CacheSizeInGb:     pulumi.Int(3072),
/// 			SubnetId:          exampleHpc.ID(),
/// 			SkuName:           pulumi.String("Standard_2G"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVm, err := network.NewSubnet(ctx, "example_vm", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnetvm"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("examplenic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleVm.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customData := `#!/bin/bash
/// sudo -i
/// apt-get install -y nfs-kernel-server
/// mkdir -p /export/a/1
/// mkdir -p /export/a/2
/// mkdir -p /export/b
/// cat << EOF > /etc/exports
/// /export/a *(rw,fsid=0,insecure,no_subtree_check,async)
/// /export/b *(rw,fsid=0,insecure,no_subtree_check,async)
/// EOF
/// systemctl start nfs-server
/// exportfs -arv
/// `
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: customData,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("examplevm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			AdminSshKeys: compute.LinuxVirtualMachineAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineAdminSshKeyArgs{
/// 					Username:  pulumi.String("adminuser"),
/// 					PublicKey: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			CustomData: pulumi.String(invokeBase64encode1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hpc.NewCacheNfsTarget(ctx, "example", &hpc.CacheNfsTargetArgs{
/// 			Name:              pulumi.String("examplehpcnfstarget"),
/// 			ResourceGroupName: example.Name,
/// 			CacheName:         exampleCache.Name,
/// 			TargetHostName:    exampleLinuxVirtualMachine.PrivateIpAddress,
/// 			UsageModel:        pulumi.String("READ_HEAVY_INFREQ"),
/// 			NamespaceJunctions: hpc.CacheNfsTargetNamespaceJunctionArray{
/// 				&hpc.CacheNfsTargetNamespaceJunctionArgs{
/// 					NamespacePath: pulumi.String("/nfs/a1"),
/// 					NfsExport:     pulumi.String("/export/a"),
/// 					TargetPath:    pulumi.String("1"),
/// 				},
/// 				&hpc.CacheNfsTargetNamespaceJunctionArgs{
/// 					NamespacePath: pulumi.String("/nfs/b"),
/// 					NfsExport:     pulumi.String("/export/b"),
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
/// import com.pulumi.azure.hpc.Cache;
/// import com.pulumi.azure.hpc.CacheArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import com.pulumi.azure.hpc.CacheNfsTarget;
/// import com.pulumi.azure.hpc.CacheNfsTargetArgs;
/// import com.pulumi.azure.hpc.inputs.CacheNfsTargetNamespaceJunctionArgs;
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
///             .name("examplevn")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleHpc = new Subnet("exampleHpc", SubnetArgs.builder()
///             .name("examplesubnethpc")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("examplehpccache")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .cacheSizeInGb(3072)
///             .subnetId(exampleHpc.id())
///             .skuName("Standard_2G")
///             .build());
///
///         var exampleVm = new Subnet("exampleVm", SubnetArgs.builder()
///             .name("examplesubnetvm")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("examplenic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleVm.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         final var customData = """
/// #!/bin/bash
/// sudo -i
/// apt-get install -y nfs-kernel-server
/// mkdir -p /export/a/1
/// mkdir -p /export/a/2
/// mkdir -p /export/b
/// cat << EOF > /etc/exports
/// /export/a *(rw,fsid=0,insecure,no_subtree_check,async)
/// /export/b *(rw,fsid=0,insecure,no_subtree_check,async)
/// EOF
/// systemctl start nfs-server
/// exportfs -arv
///         """;
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("examplevm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .adminSshKeys(LinuxVirtualMachineAdminSshKeyArgs.builder()
///                 .username("adminuser")
///                 .publicKey(StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_rsa.pub")
///                     .build()).result())
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .customData(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input(customData)
///                 .build()).result())
///             .build());
///
///         var exampleCacheNfsTarget = new CacheNfsTarget("exampleCacheNfsTarget", CacheNfsTargetArgs.builder()
///             .name("examplehpcnfstarget")
///             .resourceGroupName(example.name())
///             .cacheName(exampleCache.name())
///             .targetHostName(exampleLinuxVirtualMachine.privateIpAddress())
///             .usageModel("READ_HEAVY_INFREQ")
///             .namespaceJunctions(
///                 CacheNfsTargetNamespaceJunctionArgs.builder()
///                     .namespacePath("/nfs/a1")
///                     .nfsExport("/export/a")
///                     .targetPath("1")
///                     .build(),
///                 CacheNfsTargetNamespaceJunctionArgs.builder()
///                     .namespacePath("/nfs/b")
///                     .nfsExport("/export/b")
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevn
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleHpc:
///     type: azure:network:Subnet
///     name: example_hpc
///     properties:
///       name: examplesubnethpc
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   exampleCache:
///     type: azure:hpc:Cache
///     name: example
///     properties:
///       name: examplehpccache
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       cacheSizeInGb: 3072
///       subnetId: ${exampleHpc.id}
///       skuName: Standard_2G
///   exampleVm:
///     type: azure:network:Subnet
///     name: example_vm
///     properties:
///       name: examplesubnetvm
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: examplenic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleVm.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: examplevm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       adminSshKeys:
///         - username: adminuser
///           publicKey:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ~/.ssh/id_rsa.pub
///               return: result
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       customData:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input: ${customData}
///           return: result
///   exampleCacheNfsTarget:
///     type: azure:hpc:CacheNfsTarget
///     name: example
///     properties:
///       name: examplehpcnfstarget
///       resourceGroupName: ${example.name}
///       cacheName: ${exampleCache.name}
///       targetHostName: ${exampleLinuxVirtualMachine.privateIpAddress}
///       usageModel: READ_HEAVY_INFREQ
///       namespaceJunctions:
///         - namespacePath: /nfs/a1
///           nfsExport: /export/a
///           targetPath: '1'
///         - namespacePath: /nfs/b
///           nfsExport: /export/b
/// variables:
///   customData: "#!/bin/bash\nsudo -i \napt-get install -y nfs-kernel-server\nmkdir -p /export/a/1\nmkdir -p /export/a/2\nmkdir -p /export/b\ncat << EOF > /etc/exports\n/export/a *(rw,fsid=0,insecure,no_subtree_check,async)\n/export/b *(rw,fsid=0,insecure,no_subtree_check,async)\nEOF\nsystemctl start nfs-server\nexportfs -arv\n"
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageCache` - 2023-05-01
///
/// ## Import
///
/// NFS Target within a HPC Cache can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hpc/cacheNfsTarget:CacheNfsTarget example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.StorageCache/caches/cache1/storageTargets/target1
/// ```
class CacheNfsTarget extends pulumi.CustomResource {
  /// The name HPC Cache, which the HPC Cache NFS Target will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cacheName;

  /// The name of the HPC Cache NFS Target. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Can be specified multiple times to define multiple `namespace_junction`. Each `namespace_junction` block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> namespaceJunctions;

  /// The name of the Resource Group in which to create the HPC Cache NFS Target. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The IP address or fully qualified domain name (FQDN) of the HPC Cache NFS target. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetHostName;

  /// The type of usage of the HPC Cache NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  late final pulumi.Output<String> usageModel;

  /// The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  late final pulumi.Output<int?> verificationTimerInSeconds;

  /// The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  late final pulumi.Output<int?> writeBackTimerInSeconds;

  /// Creates a new [CacheNfsTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheNfsTarget]. {@macro pulumi_hpc_cache_nfs_target_cache_nfs_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheNfsTarget(
    String name, {
    CacheNfsTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:hpc/cacheNfsTarget:CacheNfsTarget',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    namespaceJunctions = registerOutput<List<Map<String, dynamic>>>(
      'namespaceJunctions',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    targetHostName = registerOutput<String>('targetHostName');
    usageModel = registerOutput<String>('usageModel');
    verificationTimerInSeconds = registerOutput<int?>(
      'verificationTimerInSeconds',
    );
    writeBackTimerInSeconds = registerOutput<int?>('writeBackTimerInSeconds');
  }

  /// Gets an existing [CacheNfsTarget] resource's state with the given [name] and [id].
  static CacheNfsTarget get(
    String name,
    pulumi.Input<String> id, {
    CacheNfsTargetState? state,
  }) {
    return CacheNfsTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CacheNfsTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:hpc/cacheNfsTarget:CacheNfsTarget',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cacheName = registerOutput<String>('cacheName');
    this.name = registerOutput<String>('name');
    namespaceJunctions = registerOutput<List<Map<String, dynamic>>>(
      'namespaceJunctions',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    targetHostName = registerOutput<String>('targetHostName');
    usageModel = registerOutput<String>('usageModel');
    verificationTimerInSeconds = registerOutput<int?>(
      'verificationTimerInSeconds',
    );
    writeBackTimerInSeconds = registerOutput<int?>('writeBackTimerInSeconds');
  }
}
