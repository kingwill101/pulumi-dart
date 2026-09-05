import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_args.dart';
import 'scale_set_boot_diagnostics.dart';
import 'scale_set_extension.dart';
import 'scale_set_identity.dart';
import 'scale_set_network_profile.dart';
import 'scale_set_os_profile.dart';
import 'scale_set_os_profile_linux_config.dart';
import 'scale_set_os_profile_secret.dart';
import 'scale_set_os_profile_windows_config.dart';
import 'scale_set_plan.dart';
import 'scale_set_rolling_upgrade_policy.dart';
import 'scale_set_sku.dart';
import 'scale_set_state.dart';
import 'scale_set_storage_profile_data_disk.dart';
import 'scale_set_storage_profile_image_reference.dart';
import 'scale_set_storage_profile_os_disk.dart';

/// Manages a virtual machine scale set.
///
/// ## Example Usage
///
/// ### With Managed Disks (Recommended)
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
///     name: "acctvn",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "acctsub",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     domainNameLabel: example.name,
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "PublicIPAddress",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const bpepool = new azure.lb.BackendAddressPool("bpepool", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "BackEndAddressPool",
/// });
/// const lbnatpool = new azure.lb.NatPool("lbnatpool", {
///     resourceGroupName: example.name,
///     name: "ssh",
///     loadbalancerId: exampleLoadBalancer.id,
///     protocol: "Tcp",
///     frontendPortStart: 50000,
///     frontendPortEnd: 50119,
///     backendPort: 22,
///     frontendIpConfigurationName: "PublicIPAddress",
/// });
/// const exampleProbe = new azure.lb.Probe("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "http-probe",
///     protocol: "Http",
///     requestPath: "/health",
///     port: 8080,
/// });
/// const exampleScaleSet = new azure.compute.ScaleSet("example", {
///     name: "mytestscaleset-1",
///     location: example.location,
///     resourceGroupName: example.name,
///     automaticOsUpgrade: true,
///     upgradePolicyMode: "Rolling",
///     rollingUpgradePolicy: {
///         maxBatchInstancePercent: 20,
///         maxUnhealthyInstancePercent: 20,
///         maxUnhealthyUpgradedInstancePercent: 5,
///         pauseTimeBetweenBatches: "PT0S",
///     },
///     healthProbeId: exampleProbe.id,
///     sku: {
///         name: "Standard_D4_v5",
///         tier: "Standard",
///         capacity: 2,
///     },
///     storageProfileImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     storageProfileOsDisk: {
///         name: "",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         managedDiskType: "Standard_LRS",
///     },
///     storageProfileDataDisks: [{
///         lun: 0,
///         caching: "ReadWrite",
///         createOption: "Empty",
///         diskSizeGb: 10,
///     }],
///     osProfile: {
///         computerNamePrefix: "testvm",
///         adminUsername: "myadmin",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: true,
///         sshKeys: [{
///             path: "/home/myadmin/.ssh/authorized_keys",
///             keyData: std.file({
///                 input: "~/.ssh/demo_key.pub",
///             }).then(invoke => invoke.result),
///         }],
///     },
///     networkProfiles: [{
///         name: "mynetworkprofile",
///         primary: true,
///         ipConfigurations: [{
///             name: "TestIPConfiguration",
///             primary: true,
///             subnetId: exampleSubnet.id,
///             loadBalancerBackendAddressPoolIds: [bpepool.id],
///             loadBalancerInboundNatRulesIds: [lbnatpool.id],
///         }],
///     }],
///     tags: {
///         environment: "staging",
///     },
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
///     name="acctvn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="acctsub",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     domain_name_label=example.name,
///     tags={
///         "environment": "staging",
///     })
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "PublicIPAddress",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// bpepool = azure.lb.BackendAddressPool("bpepool",
///     loadbalancer_id=example_load_balancer.id,
///     name="BackEndAddressPool")
/// lbnatpool = azure.lb.NatPool("lbnatpool",
///     resource_group_name=example.name,
///     name="ssh",
///     loadbalancer_id=example_load_balancer.id,
///     protocol="Tcp",
///     frontend_port_start=50000,
///     frontend_port_end=50119,
///     backend_port=22,
///     frontend_ip_configuration_name="PublicIPAddress")
/// example_probe = azure.lb.Probe("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="http-probe",
///     protocol="Http",
///     request_path="/health",
///     port=8080)
/// example_scale_set = azure.compute.ScaleSet("example",
///     name="mytestscaleset-1",
///     location=example.location,
///     resource_group_name=example.name,
///     automatic_os_upgrade=True,
///     upgrade_policy_mode="Rolling",
///     rolling_upgrade_policy={
///         "max_batch_instance_percent": 20,
///         "max_unhealthy_instance_percent": 20,
///         "max_unhealthy_upgraded_instance_percent": 5,
///         "pause_time_between_batches": "PT0S",
///     },
///     health_probe_id=example_probe.id,
///     sku={
///         "name": "Standard_D4_v5",
///         "tier": "Standard",
///         "capacity": 2,
///     },
///     storage_profile_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     storage_profile_os_disk={
///         "name": "",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "managed_disk_type": "Standard_LRS",
///     },
///     storage_profile_data_disks=[{
///         "lun": 0,
///         "caching": "ReadWrite",
///         "create_option": "Empty",
///         "disk_size_gb": 10,
///     }],
///     os_profile={
///         "computer_name_prefix": "testvm",
///         "admin_username": "myadmin",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": True,
///         "ssh_keys": [{
///             "path": "/home/myadmin/.ssh/authorized_keys",
///             "key_data": std.file(input="~/.ssh/demo_key.pub").result,
///         }],
///     },
///     network_profiles=[{
///         "name": "mynetworkprofile",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "TestIPConfiguration",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///             "load_balancer_backend_address_pool_ids": [bpepool.id],
///             "load_balancer_inbound_nat_rules_ids": [lbnatpool.id],
///         }],
///     }],
///     tags={
///         "environment": "staging",
///     })
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
///         Name = "acctvn",
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
///         Name = "acctsub",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         DomainNameLabel = example.Name,
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = "PublicIPAddress",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var bpepool = new Azure.Lb.BackendAddressPool("bpepool", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "BackEndAddressPool",
///     });
///
///     var lbnatpool = new Azure.Lb.NatPool("lbnatpool", new()
///     {
///         ResourceGroupName = example.Name,
///         Name = "ssh",
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Protocol = "Tcp",
///         FrontendPortStart = 50000,
///         FrontendPortEnd = 50119,
///         BackendPort = 22,
///         FrontendIpConfigurationName = "PublicIPAddress",
///     });
///
///     var exampleProbe = new Azure.Lb.Probe("example", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "http-probe",
///         Protocol = "Http",
///         RequestPath = "/health",
///         Port = 8080,
///     });
///
///     var exampleScaleSet = new Azure.Compute.ScaleSet("example", new()
///     {
///         Name = "mytestscaleset-1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AutomaticOsUpgrade = true,
///         UpgradePolicyMode = "Rolling",
///         RollingUpgradePolicy = new Azure.Compute.Inputs.ScaleSetRollingUpgradePolicyArgs
///         {
///             MaxBatchInstancePercent = 20,
///             MaxUnhealthyInstancePercent = 20,
///             MaxUnhealthyUpgradedInstancePercent = 5,
///             PauseTimeBetweenBatches = "PT0S",
///         },
///         HealthProbeId = exampleProbe.Id,
///         Sku = new Azure.Compute.Inputs.ScaleSetSkuArgs
///         {
///             Name = "Standard_D4_v5",
///             Tier = "Standard",
///             Capacity = 2,
///         },
///         StorageProfileImageReference = new Azure.Compute.Inputs.ScaleSetStorageProfileImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         StorageProfileOsDisk = new Azure.Compute.Inputs.ScaleSetStorageProfileOsDiskArgs
///         {
///             Name = "",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             ManagedDiskType = "Standard_LRS",
///         },
///         StorageProfileDataDisks = new[]
///         {
///             new Azure.Compute.Inputs.ScaleSetStorageProfileDataDiskArgs
///             {
///                 Lun = 0,
///                 Caching = "ReadWrite",
///                 CreateOption = "Empty",
///                 DiskSizeGb = 10,
///             },
///         },
///         OsProfile = new Azure.Compute.Inputs.ScaleSetOsProfileArgs
///         {
///             ComputerNamePrefix = "testvm",
///             AdminUsername = "myadmin",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.ScaleSetOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = true,
///             SshKeys = new[]
///             {
///                 new Azure.Compute.Inputs.ScaleSetOsProfileLinuxConfigSshKeyArgs
///                 {
///                     Path = "/home/myadmin/.ssh/authorized_keys",
///                     KeyData = Std.File.Invoke(new()
///                     {
///                         Input = "~/.ssh/demo_key.pub",
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///         NetworkProfiles = new[]
///         {
///             new Azure.Compute.Inputs.ScaleSetNetworkProfileArgs
///             {
///                 Name = "mynetworkprofile",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.ScaleSetNetworkProfileIpConfigurationArgs
///                     {
///                         Name = "TestIPConfiguration",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                         LoadBalancerBackendAddressPoolIds = new[]
///                         {
///                             bpepool.Id,
///                         },
///                         LoadBalancerInboundNatRulesIds = new[]
///                         {
///                             lbnatpool.Id,
///                         },
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "environment", "staging" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
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
/// 			Name: pulumi.String("acctvn"),
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
/// 			Name:               pulumi.String("acctsub"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			DomainNameLabel:   example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String("PublicIPAddress"),
/// 					PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bpepool, err := lb.NewBackendAddressPool(ctx, "bpepool", &lb.BackendAddressPoolArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID().ToIDOutput().ToStringOutput(),
/// 			Name:           pulumi.String("BackEndAddressPool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lbnatpool, err := lb.NewNatPool(ctx, "lbnatpool", &lb.NatPoolArgs{
/// 			ResourceGroupName:           example.Name,
/// 			Name:                        pulumi.String("ssh"),
/// 			LoadbalancerId:              exampleLoadBalancer.ID().ToIDOutput().ToStringOutput(),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPortStart:           pulumi.Int(50000),
/// 			FrontendPortEnd:             pulumi.Int(50119),
/// 			BackendPort:                 pulumi.Int(22),
/// 			FrontendIpConfigurationName: pulumi.String("PublicIPAddress"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProbe, err := lb.NewProbe(ctx, "example", &lb.ProbeArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID().ToIDOutput().ToStringOutput(),
/// 			Name:           pulumi.String("http-probe"),
/// 			Protocol:       pulumi.String("Http"),
/// 			RequestPath:    pulumi.String("/health"),
/// 			Port:           pulumi.Int(8080),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/demo_key.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewScaleSet(ctx, "example", &compute.ScaleSetArgs{
/// 			Name:               pulumi.String("mytestscaleset-1"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			AutomaticOsUpgrade: pulumi.Bool(true),
/// 			UpgradePolicyMode:  pulumi.String("Rolling"),
/// 			RollingUpgradePolicy: &compute.ScaleSetRollingUpgradePolicyArgs{
/// 				MaxBatchInstancePercent:             pulumi.Int(20),
/// 				MaxUnhealthyInstancePercent:         pulumi.Int(20),
/// 				MaxUnhealthyUpgradedInstancePercent: pulumi.Int(5),
/// 				PauseTimeBetweenBatches:             pulumi.String("PT0S"),
/// 			},
/// 			HealthProbeId: exampleProbe.ID().ToIDOutput().ToStringOutput(),
/// 			Sku: &compute.ScaleSetSkuArgs{
/// 				Name:     pulumi.String("Standard_D4_v5"),
/// 				Tier:     pulumi.String("Standard"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			StorageProfileImageReference: &compute.ScaleSetStorageProfileImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			StorageProfileOsDisk: &compute.ScaleSetStorageProfileOsDiskArgs{
/// 				Name:            pulumi.String(""),
/// 				Caching:         pulumi.String("ReadWrite"),
/// 				CreateOption:    pulumi.String("FromImage"),
/// 				ManagedDiskType: pulumi.String("Standard_LRS"),
/// 			},
/// 			StorageProfileDataDisks: compute.ScaleSetStorageProfileDataDiskArray{
/// 				&compute.ScaleSetStorageProfileDataDiskArgs{
/// 					Lun:          pulumi.Int(0),
/// 					Caching:      pulumi.String("ReadWrite"),
/// 					CreateOption: pulumi.String("Empty"),
/// 					DiskSizeGb:   pulumi.Int(10),
/// 				},
/// 			},
/// 			OsProfile: &compute.ScaleSetOsProfileArgs{
/// 				ComputerNamePrefix: pulumi.String("testvm"),
/// 				AdminUsername:      pulumi.String("myadmin"),
/// 			},
/// 			OsProfileLinuxConfig: &compute.ScaleSetOsProfileLinuxConfigArgs{
/// 				DisablePasswordAuthentication: pulumi.Bool(true),
/// 				SshKeys: compute.ScaleSetOsProfileLinuxConfigSshKeyArray{
/// 					&compute.ScaleSetOsProfileLinuxConfigSshKeyArgs{
/// 						Path:    pulumi.String("/home/myadmin/.ssh/authorized_keys"),
/// 						KeyData: pulumi.String(invokeFile.Result),
/// 					},
/// 				},
/// 			},
/// 			NetworkProfiles: compute.ScaleSetNetworkProfileArray{
/// 				&compute.ScaleSetNetworkProfileArgs{
/// 					Name:    pulumi.String("mynetworkprofile"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.ScaleSetNetworkProfileIpConfigurationArray{
/// 						&compute.ScaleSetNetworkProfileIpConfigurationArgs{
/// 							Name:     pulumi.String("TestIPConfiguration"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 							LoadBalancerBackendAddressPoolIds: pulumi.StringArray{
/// 								bpepool.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 							LoadBalancerInboundNatRulesIds: pulumi.StringArray{
/// 								lbnatpool.ID().ToIDOutput().ToStringOutput(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "acctvn"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "acctsub"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
///   domain_name_label   = azure_core_resourcegroup.example.name
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_lb_loadbalancer" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   frontend_ip_configurations {
///     name                 = "PublicIPAddress"
///     public_ip_address_id = azure_network_publicip.example.id
///   }
/// }
/// resource "azure_lb_backendaddresspool" "bpepool" {
///   loadbalancer_id = azure_lb_loadbalancer.example.id
///   name            = "BackEndAddressPool"
/// }
/// resource "azure_lb_natpool" "lbnatpool" {
///   resource_group_name            = azure_core_resourcegroup.example.name
///   name                           = "ssh"
///   loadbalancer_id                = azure_lb_loadbalancer.example.id
///   protocol                       = "Tcp"
///   frontend_port_start            = 50000
///   frontend_port_end              = 50119
///   backend_port                   = 22
///   frontend_ip_configuration_name = "PublicIPAddress"
/// }
/// resource "azure_lb_probe" "example" {
///   loadbalancer_id = azure_lb_loadbalancer.example.id
///   name            = "http-probe"
///   protocol        = "Http"
///   request_path    = "/health"
///   port            = 8080
/// }
/// resource "azure_compute_scaleset" "example" {
///   name                 = "mytestscaleset-1"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   automatic_os_upgrade = true
///   upgrade_policy_mode  = "Rolling"
///   rolling_upgrade_policy = {
///     max_batch_instance_percent              = 20
///     max_unhealthy_instance_percent          = 20
///     max_unhealthy_upgraded_instance_percent = 5
///     pause_time_between_batches              = "PT0S"
///   }
///   health_probe_id = azure_lb_probe.example.id
///   sku = {
///     name     = "Standard_D4_v5"
///     tier     = "Standard"
///     capacity = 2
///   }
///   storage_profile_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
///   storage_profile_os_disk = {
///     name              = ""
///     caching           = "ReadWrite"
///     create_option     = "FromImage"
///     managed_disk_type = "Standard_LRS"
///   }
///   storage_profile_data_disks {
///     lun           = 0
///     caching       = "ReadWrite"
///     create_option = "Empty"
///     disk_size_gb  = 10
///   }
///   os_profile = {
///     computer_name_prefix = "testvm"
///     admin_username       = "myadmin"
///   }
///   os_profile_linux_config = {
///     disable_password_authentication = true
///     ssh_keys = [{
///       "path"    = "/home/myadmin/.ssh/authorized_keys"
///       "keyData" = file("~/.ssh/demo_key.pub")
///     }]
///   }
///   network_profiles {
///     name    = "mynetworkprofile"
///     primary = true
///     ip_configurations {
///       name                                   = "TestIPConfiguration"
///       primary                                = true
///       subnet_id                              = azure_network_subnet.example.id
///       load_balancer_backend_address_pool_ids = [azure_lb_backendaddresspool.bpepool.id]
///       load_balancer_inbound_nat_rules_ids    = [azure_lb_natpool.lbnatpool.id]
///     }
///   }
///   tags = {
///     "environment" = "staging"
///   }
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
/// import com.pulumi.azure.lb.NatPool;
/// import com.pulumi.azure.lb.NatPoolArgs;
/// import com.pulumi.azure.lb.Probe;
/// import com.pulumi.azure.lb.ProbeArgs;
/// import com.pulumi.azure.compute.ScaleSet;
/// import com.pulumi.azure.compute.ScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetRollingUpgradePolicyArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetSkuArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileDataDiskArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileLinuxConfigArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileLinuxConfigSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetNetworkProfileArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetNetworkProfileIpConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///             .name("acctvn")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("acctsub")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .domainNameLabel(example.name())
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("PublicIPAddress")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var bpepool = new BackendAddressPool("bpepool", BackendAddressPoolArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("BackEndAddressPool")
///             .build());
///
///         var lbnatpool = new NatPool("lbnatpool", NatPoolArgs.builder()
///             .resourceGroupName(example.name())
///             .name("ssh")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .protocol("Tcp")
///             .frontendPortStart(50000)
///             .frontendPortEnd(50119)
///             .backendPort(22)
///             .frontendIpConfigurationName("PublicIPAddress")
///             .build());
///
///         var exampleProbe = new Probe("exampleProbe", ProbeArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("http-probe")
///             .protocol("Http")
///             .requestPath("/health")
///             .port(8080)
///             .build());
///
///         var exampleScaleSet = new ScaleSet("exampleScaleSet", ScaleSetArgs.builder()
///             .name("mytestscaleset-1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .automaticOsUpgrade(true)
///             .upgradePolicyMode("Rolling")
///             .rollingUpgradePolicy(ScaleSetRollingUpgradePolicyArgs.builder()
///                 .maxBatchInstancePercent(20)
///                 .maxUnhealthyInstancePercent(20)
///                 .maxUnhealthyUpgradedInstancePercent(5)
///                 .pauseTimeBetweenBatches("PT0S")
///                 .build())
///             .healthProbeId(exampleProbe.id())
///             .sku(ScaleSetSkuArgs.builder()
///                 .name("Standard_D4_v5")
///                 .tier("Standard")
///                 .capacity(2)
///                 .build())
///             .storageProfileImageReference(ScaleSetStorageProfileImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .storageProfileOsDisk(ScaleSetStorageProfileOsDiskArgs.builder()
///                 .name("")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .managedDiskType("Standard_LRS")
///                 .build())
///             .storageProfileDataDisks(ScaleSetStorageProfileDataDiskArgs.builder()
///                 .lun(0)
///                 .caching("ReadWrite")
///                 .createOption("Empty")
///                 .diskSizeGb(10)
///                 .build())
///             .osProfile(ScaleSetOsProfileArgs.builder()
///                 .computerNamePrefix("testvm")
///                 .adminUsername("myadmin")
///                 .build())
///             .osProfileLinuxConfig(ScaleSetOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(true)
///                 .sshKeys(ScaleSetOsProfileLinuxConfigSshKeyArgs.builder()
///                     .path("/home/myadmin/.ssh/authorized_keys")
///                     .keyData(StdFunctions.file(FileArgs.builder()
///                         .input("~/.ssh/demo_key.pub")
///                         .build()).result())
///                     .build())
///                 .build())
///             .networkProfiles(ScaleSetNetworkProfileArgs.builder()
///                 .name("mynetworkprofile")
///                 .primary(true)
///                 .ipConfigurations(ScaleSetNetworkProfileIpConfigurationArgs.builder()
///                     .name("TestIPConfiguration")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .loadBalancerBackendAddressPoolIds(bpepool.id())
///                     .loadBalancerInboundNatRulesIds(lbnatpool.id())
///                     .build())
///                 .build())
///             .tags(Map.of("environment", "staging"))
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
///       name: acctvn
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: acctsub
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       domainNameLabel: ${example.name}
///       tags:
///         environment: staging
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: PublicIPAddress
///           publicIpAddressId: ${examplePublicIp.id}
///   bpepool:
///     type: azure:lb:BackendAddressPool
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: BackEndAddressPool
///   lbnatpool:
///     type: azure:lb:NatPool
///     properties:
///       resourceGroupName: ${example.name}
///       name: ssh
///       loadbalancerId: ${exampleLoadBalancer.id}
///       protocol: Tcp
///       frontendPortStart: 50000
///       frontendPortEnd: 50119
///       backendPort: 22
///       frontendIpConfigurationName: PublicIPAddress
///   exampleProbe:
///     type: azure:lb:Probe
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: http-probe
///       protocol: Http
///       requestPath: /health
///       port: 8080
///   exampleScaleSet:
///     type: azure:compute:ScaleSet
///     name: example
///     properties:
///       name: mytestscaleset-1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       automaticOsUpgrade: true
///       upgradePolicyMode: Rolling
///       rollingUpgradePolicy:
///         maxBatchInstancePercent: 20
///         maxUnhealthyInstancePercent: 20
///         maxUnhealthyUpgradedInstancePercent: 5
///         pauseTimeBetweenBatches: PT0S
///       healthProbeId: ${exampleProbe.id}
///       sku:
///         name: Standard_D4_v5
///         tier: Standard
///         capacity: 2
///       storageProfileImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       storageProfileOsDisk:
///         name: ""
///         caching: ReadWrite
///         createOption: FromImage
///         managedDiskType: Standard_LRS
///       storageProfileDataDisks:
///         - lun: 0
///           caching: ReadWrite
///           createOption: Empty
///           diskSizeGb: 10
///       osProfile:
///         computerNamePrefix: testvm
///         adminUsername: myadmin
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: true
///         sshKeys:
///           - path: /home/myadmin/.ssh/authorized_keys
///             keyData:
///               fn::invoke:
///                 function: std:file
///                 arguments:
///                   input: ~/.ssh/demo_key.pub
///                 return: result
///       networkProfiles:
///         - name: mynetworkprofile
///           primary: true
///           ipConfigurations:
///             - name: TestIPConfiguration
///               primary: true
///               subnetId: ${exampleSubnet.id}
///               loadBalancerBackendAddressPoolIds:
///                 - ${bpepool.id}
///               loadBalancerInboundNatRulesIds:
///                 - ${lbnatpool.id}
///       tags:
///         environment: staging
/// ```
///
///
///
/// ### With Unmanaged Disks
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
///     name: "acctvn",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "acctsub",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "accsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     tags: {
///         environment: "staging",
///     },
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "vhds",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "private",
/// });
/// const exampleScaleSet = new azure.compute.ScaleSet("example", {
///     name: "mytestscaleset-1",
///     location: example.location,
///     resourceGroupName: example.name,
///     upgradePolicyMode: "Manual",
///     sku: {
///         name: "Standard_D4_v5",
///         tier: "Standard",
///         capacity: 2,
///     },
///     osProfile: {
///         computerNamePrefix: "testvm",
///         adminUsername: "myadmin",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: true,
///         sshKeys: [{
///             path: "/home/myadmin/.ssh/authorized_keys",
///             keyData: std.file({
///                 input: "~/.ssh/demo_key.pub",
///             }).then(invoke => invoke.result),
///         }],
///     },
///     networkProfiles: [{
///         name: "TestNetworkProfile",
///         primary: true,
///         ipConfigurations: [{
///             name: "TestIPConfiguration",
///             primary: true,
///             subnetId: exampleSubnet.id,
///         }],
///     }],
///     storageProfileOsDisk: {
///         name: "osDiskProfile",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         vhdContainers: [pulumi.interpolate`${exampleAccount.primaryBlobEndpoint}${exampleContainer.name}`],
///     },
///     storageProfileImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
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
///     name="acctvn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="acctsub",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_account = azure.storage.Account("example",
///     name="accsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     tags={
///         "environment": "staging",
///     })
/// example_container = azure.storage.Container("example",
///     name="vhds",
///     storage_account_name=example_account.name,
///     container_access_type="private")
/// example_scale_set = azure.compute.ScaleSet("example",
///     name="mytestscaleset-1",
///     location=example.location,
///     resource_group_name=example.name,
///     upgrade_policy_mode="Manual",
///     sku={
///         "name": "Standard_D4_v5",
///         "tier": "Standard",
///         "capacity": 2,
///     },
///     os_profile={
///         "computer_name_prefix": "testvm",
///         "admin_username": "myadmin",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": True,
///         "ssh_keys": [{
///             "path": "/home/myadmin/.ssh/authorized_keys",
///             "key_data": std.file(input="~/.ssh/demo_key.pub").result,
///         }],
///     },
///     network_profiles=[{
///         "name": "TestNetworkProfile",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "TestIPConfiguration",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///         }],
///     }],
///     storage_profile_os_disk={
///         "name": "osDiskProfile",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "vhd_containers": [pulumi.Output.all(
///             primary_blob_endpoint=example_account.primary_blob_endpoint,
///             name=example_container.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['primary_blob_endpoint']}{resolved_outputs['name']}")
/// ],
///     },
///     storage_profile_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
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
///         Name = "acctvn",
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
///         Name = "acctsub",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "accsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         Tags =
///         {
///             { "environment", "staging" },
///         },
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "vhds",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "private",
///     });
///
///     var exampleScaleSet = new Azure.Compute.ScaleSet("example", new()
///     {
///         Name = "mytestscaleset-1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         UpgradePolicyMode = "Manual",
///         Sku = new Azure.Compute.Inputs.ScaleSetSkuArgs
///         {
///             Name = "Standard_D4_v5",
///             Tier = "Standard",
///             Capacity = 2,
///         },
///         OsProfile = new Azure.Compute.Inputs.ScaleSetOsProfileArgs
///         {
///             ComputerNamePrefix = "testvm",
///             AdminUsername = "myadmin",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.ScaleSetOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = true,
///             SshKeys = new[]
///             {
///                 new Azure.Compute.Inputs.ScaleSetOsProfileLinuxConfigSshKeyArgs
///                 {
///                     Path = "/home/myadmin/.ssh/authorized_keys",
///                     KeyData = Std.File.Invoke(new()
///                     {
///                         Input = "~/.ssh/demo_key.pub",
///                     }).Apply(invoke => invoke.Result),
///                 },
///             },
///         },
///         NetworkProfiles = new[]
///         {
///             new Azure.Compute.Inputs.ScaleSetNetworkProfileArgs
///             {
///                 Name = "TestNetworkProfile",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.ScaleSetNetworkProfileIpConfigurationArgs
///                     {
///                         Name = "TestIPConfiguration",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                     },
///                 },
///             },
///         },
///         StorageProfileOsDisk = new Azure.Compute.Inputs.ScaleSetStorageProfileOsDiskArgs
///         {
///             Name = "osDiskProfile",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             VhdContainers = new[]
///             {
///                 Output.Tuple(exampleAccount.PrimaryBlobEndpoint, exampleContainer.Name).Apply(values =>
///                 {
///                     var primaryBlobEndpoint = values.Item1;
///                     var name = values.Item2;
///                     return $"{primaryBlobEndpoint}{name}";
///                 }),
///             },
///         },
///         StorageProfileImageReference = new Azure.Compute.Inputs.ScaleSetStorageProfileImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 			Name: pulumi.String("acctvn"),
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
/// 			Name:               pulumi.String("acctsub"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("accsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("vhds"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/demo_key.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewScaleSet(ctx, "example", &compute.ScaleSetArgs{
/// 			Name:              pulumi.String("mytestscaleset-1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			UpgradePolicyMode: pulumi.String("Manual"),
/// 			Sku: &compute.ScaleSetSkuArgs{
/// 				Name:     pulumi.String("Standard_D4_v5"),
/// 				Tier:     pulumi.String("Standard"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 			OsProfile: &compute.ScaleSetOsProfileArgs{
/// 				ComputerNamePrefix: pulumi.String("testvm"),
/// 				AdminUsername:      pulumi.String("myadmin"),
/// 			},
/// 			OsProfileLinuxConfig: &compute.ScaleSetOsProfileLinuxConfigArgs{
/// 				DisablePasswordAuthentication: pulumi.Bool(true),
/// 				SshKeys: compute.ScaleSetOsProfileLinuxConfigSshKeyArray{
/// 					&compute.ScaleSetOsProfileLinuxConfigSshKeyArgs{
/// 						Path:    pulumi.String("/home/myadmin/.ssh/authorized_keys"),
/// 						KeyData: pulumi.String(invokeFile.Result),
/// 					},
/// 				},
/// 			},
/// 			NetworkProfiles: compute.ScaleSetNetworkProfileArray{
/// 				&compute.ScaleSetNetworkProfileArgs{
/// 					Name:    pulumi.String("TestNetworkProfile"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.ScaleSetNetworkProfileIpConfigurationArray{
/// 						&compute.ScaleSetNetworkProfileIpConfigurationArgs{
/// 							Name:     pulumi.String("TestIPConfiguration"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			StorageProfileOsDisk: &compute.ScaleSetStorageProfileOsDiskArgs{
/// 				Name:         pulumi.String("osDiskProfile"),
/// 				Caching:      pulumi.String("ReadWrite"),
/// 				CreateOption: pulumi.String("FromImage"),
/// 				VhdContainers: pulumi.StringArray{
/// 					pulumi.All(exampleAccount.PrimaryBlobEndpoint, exampleContainer.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						primaryBlobEndpoint := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("%v%v", primaryBlobEndpoint, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			StorageProfileImageReference: &compute.ScaleSetStorageProfileImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "acctvn"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "acctsub"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "accsa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   tags = {
///     "environment" = "staging"
///   }
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "vhds"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "private"
/// }
/// resource "azure_compute_scaleset" "example" {
///   name                = "mytestscaleset-1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   upgrade_policy_mode = "Manual"
///   sku = {
///     name     = "Standard_D4_v5"
///     tier     = "Standard"
///     capacity = 2
///   }
///   os_profile = {
///     computer_name_prefix = "testvm"
///     admin_username       = "myadmin"
///   }
///   os_profile_linux_config = {
///     disable_password_authentication = true
///     ssh_keys = [{
///       "path"    = "/home/myadmin/.ssh/authorized_keys"
///       "keyData" = file("~/.ssh/demo_key.pub")
///     }]
///   }
///   network_profiles {
///     name    = "TestNetworkProfile"
///     primary = true
///     ip_configurations {
///       name      = "TestIPConfiguration"
///       primary   = true
///       subnet_id = azure_network_subnet.example.id
///     }
///   }
///   storage_profile_os_disk = {
///     name           = "osDiskProfile"
///     caching        = "ReadWrite"
///     create_option  = "FromImage"
///     vhd_containers = ["${azure_storage_account.example.primary_blob_endpoint}${azure_storage_container.example.name}"]
///   }
///   storage_profile_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.compute.ScaleSet;
/// import com.pulumi.azure.compute.ScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetSkuArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileLinuxConfigArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetOsProfileLinuxConfigSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetNetworkProfileArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetNetworkProfileIpConfigurationArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileImageReferenceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///             .name("acctvn")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("acctsub")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("accsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("vhds")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("private")
///             .build());
///
///         var exampleScaleSet = new ScaleSet("exampleScaleSet", ScaleSetArgs.builder()
///             .name("mytestscaleset-1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .upgradePolicyMode("Manual")
///             .sku(ScaleSetSkuArgs.builder()
///                 .name("Standard_D4_v5")
///                 .tier("Standard")
///                 .capacity(2)
///                 .build())
///             .osProfile(ScaleSetOsProfileArgs.builder()
///                 .computerNamePrefix("testvm")
///                 .adminUsername("myadmin")
///                 .build())
///             .osProfileLinuxConfig(ScaleSetOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(true)
///                 .sshKeys(ScaleSetOsProfileLinuxConfigSshKeyArgs.builder()
///                     .path("/home/myadmin/.ssh/authorized_keys")
///                     .keyData(StdFunctions.file(FileArgs.builder()
///                         .input("~/.ssh/demo_key.pub")
///                         .build()).result())
///                     .build())
///                 .build())
///             .networkProfiles(ScaleSetNetworkProfileArgs.builder()
///                 .name("TestNetworkProfile")
///                 .primary(true)
///                 .ipConfigurations(ScaleSetNetworkProfileIpConfigurationArgs.builder()
///                     .name("TestIPConfiguration")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .build())
///                 .build())
///             .storageProfileOsDisk(ScaleSetStorageProfileOsDiskArgs.builder()
///                 .name("osDiskProfile")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .vhdContainers(Output.tuple(exampleAccount.primaryBlobEndpoint(), exampleContainer.name()).applyValue(values -> {
///                     var primaryBlobEndpoint = values.t1;
///                     var name = values.t2;
///                     return String.format("%s%s", primaryBlobEndpoint,name);
///                 }))
///                 .build())
///             .storageProfileImageReference(ScaleSetStorageProfileImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
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
///       name: acctvn
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: acctsub
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: accsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       tags:
///         environment: staging
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: vhds
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: private
///   exampleScaleSet:
///     type: azure:compute:ScaleSet
///     name: example
///     properties:
///       name: mytestscaleset-1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       upgradePolicyMode: Manual
///       sku:
///         name: Standard_D4_v5
///         tier: Standard
///         capacity: 2
///       osProfile:
///         computerNamePrefix: testvm
///         adminUsername: myadmin
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: true
///         sshKeys:
///           - path: /home/myadmin/.ssh/authorized_keys
///             keyData:
///               fn::invoke:
///                 function: std:file
///                 arguments:
///                   input: ~/.ssh/demo_key.pub
///                 return: result
///       networkProfiles:
///         - name: TestNetworkProfile
///           primary: true
///           ipConfigurations:
///             - name: TestIPConfiguration
///               primary: true
///               subnetId: ${exampleSubnet.id}
///       storageProfileOsDisk:
///         name: osDiskProfile
///         caching: ReadWrite
///         createOption: FromImage
///         vhdContainers:
///           - ${exampleAccount.primaryBlobEndpoint}${exampleContainer.name}
///       storageProfileImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
/// ```
///
///
/// ## Example of storageProfileImageReference with id
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.compute.Image("example", {name: "test"});
/// const exampleScaleSet = new azure.compute.ScaleSet("example", {
///     name: "test",
///     storageProfileImageReference: {
///         id: example.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.Image("example", name="test")
/// example_scale_set = azure.compute.ScaleSet("example",
///     name="test",
///     storage_profile_image_reference={
///         "id": example.id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Compute.Image("example", new()
///     {
///         Name = "test",
///     });
///
///     var exampleScaleSet = new Azure.Compute.ScaleSet("example", new()
///     {
///         Name = "test",
///         StorageProfileImageReference = new Azure.Compute.Inputs.ScaleSetStorageProfileImageReferenceArgs
///         {
///             Id = example.Id,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.NewImage(ctx, "example", &compute.ImageArgs{
/// 			Name: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewScaleSet(ctx, "example", &compute.ScaleSetArgs{
/// 			Name: pulumi.String("test"),
/// 			StorageProfileImageReference: &compute.ScaleSetStorageProfileImageReferenceArgs{
/// 				Id: example.ID().ToIDOutput().ToStringOutput(),
/// 			},
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
/// resource "azure_compute_image" "example" {
///   name = "test"
/// }
/// resource "azure_compute_scaleset" "example" {
///   name = "test"
///   storage_profile_image_reference = {
///     id = azure_compute_image.example.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.compute.Image;
/// import com.pulumi.azure.compute.ImageArgs;
/// import com.pulumi.azure.compute.ScaleSet;
/// import com.pulumi.azure.compute.ScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetStorageProfileImageReferenceArgs;
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
///         var example = new Image("example", ImageArgs.builder()
///             .name("test")
///             .build());
///
///         var exampleScaleSet = new ScaleSet("exampleScaleSet", ScaleSetArgs.builder()
///             .name("test")
///             .storageProfileImageReference(ScaleSetStorageProfileImageReferenceArgs.builder()
///                 .id(example.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:compute:Image
///     properties:
///       name: test
///   exampleScaleSet:
///     type: azure:compute:ScaleSet
///     name: example
///     properties:
///       name: test
///       storageProfileImageReference:
///         id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2025-04-01
///
/// ## Import
///
/// Virtual Machine Scale Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/scaleSet:ScaleSet scaleset1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachineScaleSets/scaleset1
/// ```
class ScaleSet extends pulumi.CustomResource {
  /// Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when `upgradePolicyMode` is set to `Rolling`. Defaults to `false`.
  late final pulumi.Output<bool?> automaticOsUpgrade;
  /// A `bootDiagnostics` block as referenced below.
  late final pulumi.Output<ScaleSetBootDiagnostics?> bootDiagnostics;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `evictionPolicy` can only be set when `priority` is set to `Low`.
  late final pulumi.Output<String?> evictionPolicy;
  /// Can be specified multiple times to add extension profiles to the scale set. Each `extension` block supports the fields documented below.
  late final pulumi.Output<List<ScaleSetExtension>?> extensions;
  /// Specifies the identifier for the load balancer health probe. Required when using `Rolling` as your `upgradePolicyMode`.
  late final pulumi.Output<String?> healthProbeId;
  /// An `identity` block as defined below.
  late final pulumi.Output<ScaleSetIdentity?> identity;
  /// (Optional, when a Windows machine) Specifies the Windows OS license type. If supplied, the only allowed values are `Windows_Client` and `Windows_Server`.
  late final pulumi.Output<String> licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A collection of `networkProfile` blocks as documented below.
  late final pulumi.Output<List<ScaleSetNetworkProfile>> networkProfiles;
  /// A `osProfile` block as documented below.
  late final pulumi.Output<ScaleSetOsProfile> osProfile;
  /// A `osProfileLinuxConfig` block as documented below.
  late final pulumi.Output<ScaleSetOsProfileLinuxConfig> osProfileLinuxConfig;
  /// A collection of `osProfileSecrets` blocks as documented below.
  late final pulumi.Output<List<ScaleSetOsProfileSecret>?> osProfileSecrets;
  /// A `osProfileWindowsConfig` block as documented below.
  late final pulumi.Output<ScaleSetOsProfileWindowsConfig?> osProfileWindowsConfig;
  /// Specifies whether the virtual machine scale set should be overprovisioned. Defaults to `true`.
  late final pulumi.Output<bool?> overprovision;
  /// A `plan` block as documented below.
  late final pulumi.Output<ScaleSetPlan?> plan;
  /// Specifies the priority for the Virtual Machines in the Scale Set. Possible values are `Low` and `Regular`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> priority;
  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  late final pulumi.Output<String?> proximityPlacementGroupId;
  /// The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `rollingUpgradePolicy` block as defined below. This is only applicable when the `upgradePolicyMode` is `Rolling`.
  late final pulumi.Output<ScaleSetRollingUpgradePolicy?> rollingUpgradePolicy;
  /// Specifies whether the scale set is limited to a single placement group with a maximum size of 100 virtual machines. If set to false, managed disks must be used. Changing this forces a new resource to be created. See [documentation](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-placement-groups) for more information. Defaults to `true`.
  late final pulumi.Output<bool?> singlePlacementGroup;
  /// A `sku` block as documented below.
  late final pulumi.Output<ScaleSetSku> sku;
  /// A `storageProfileDataDisk` block as documented below.
  late final pulumi.Output<List<ScaleSetStorageProfileDataDisk>?> storageProfileDataDisks;
  /// A `storageProfileImageReference` block as documented below.
  late final pulumi.Output<ScaleSetStorageProfileImageReference> storageProfileImageReference;
  /// A `storageProfileOsDisk` block as documented below.
  late final pulumi.Output<ScaleSetStorageProfileOsDisk> storageProfileOsDisk;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, `Rolling`, `Manual`, or `Automatic`. When choosing `Rolling`, you will need to set a health probe.
  late final pulumi.Output<String> upgradePolicyMode;
  /// A collection of availability zones to spread the Virtual Machines over. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScaleSet]. {@macro pulumi_compute_scale_set_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScaleSet(
    String name, {
    ScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/scaleSet:ScaleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automaticOsUpgrade = registerOutput<bool?>('automaticOsUpgrade');
    bootDiagnostics = registerOutput<ScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensions = registerOutput<List<ScaleSetExtension>?>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetExtension>(guardedValue, (value) => ScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    identity = registerOutput<ScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfiles = registerOutput<List<ScaleSetNetworkProfile>>('networkProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetNetworkProfile>(guardedValue, (value) => ScaleSetNetworkProfile.fromMap((value as Map).cast<String, dynamic>())); });
    osProfile = registerOutput<ScaleSetOsProfile>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileLinuxConfig = registerOutput<ScaleSetOsProfileLinuxConfig>('osProfileLinuxConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileLinuxConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileSecrets = registerOutput<List<ScaleSetOsProfileSecret>?>('osProfileSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetOsProfileSecret>(guardedValue, (value) => ScaleSetOsProfileSecret.fromMap((value as Map).cast<String, dynamic>())); });
    osProfileWindowsConfig = registerOutput<ScaleSetOsProfileWindowsConfig?>('osProfileWindowsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileWindowsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<ScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<String?>('priority');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<ScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<ScaleSetSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileDataDisks = registerOutput<List<ScaleSetStorageProfileDataDisk>?>('storageProfileDataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetStorageProfileDataDisk>(guardedValue, (value) => ScaleSetStorageProfileDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    storageProfileImageReference = registerOutput<ScaleSetStorageProfileImageReference>('storageProfileImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileOsDisk = registerOutput<ScaleSetStorageProfileOsDisk>('storageProfileOsDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicyMode = registerOutput<String>('upgradePolicyMode');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ScaleSet] resource's state with the given [name] and [id].
  static ScaleSet get(
    String name,
    pulumi.Input<String> id, {
    ScaleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ScaleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ScaleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/scaleSet:ScaleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticOsUpgrade = registerOutput<bool?>('automaticOsUpgrade');
    bootDiagnostics = registerOutput<ScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensions = registerOutput<List<ScaleSetExtension>?>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetExtension>(guardedValue, (value) => ScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    identity = registerOutput<ScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfiles = registerOutput<List<ScaleSetNetworkProfile>>('networkProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetNetworkProfile>(guardedValue, (value) => ScaleSetNetworkProfile.fromMap((value as Map).cast<String, dynamic>())); });
    osProfile = registerOutput<ScaleSetOsProfile>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileLinuxConfig = registerOutput<ScaleSetOsProfileLinuxConfig>('osProfileLinuxConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileLinuxConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileSecrets = registerOutput<List<ScaleSetOsProfileSecret>?>('osProfileSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetOsProfileSecret>(guardedValue, (value) => ScaleSetOsProfileSecret.fromMap((value as Map).cast<String, dynamic>())); });
    osProfileWindowsConfig = registerOutput<ScaleSetOsProfileWindowsConfig?>('osProfileWindowsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileWindowsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<ScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<String?>('priority');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<ScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<ScaleSetSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileDataDisks = registerOutput<List<ScaleSetStorageProfileDataDisk>?>('storageProfileDataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetStorageProfileDataDisk>(guardedValue, (value) => ScaleSetStorageProfileDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    storageProfileImageReference = registerOutput<ScaleSetStorageProfileImageReference>('storageProfileImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileOsDisk = registerOutput<ScaleSetStorageProfileOsDisk>('storageProfileOsDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicyMode = registerOutput<String>('upgradePolicyMode');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ScaleSet] resource.
  ScaleSet.reference(String urn)
    : super(
        'azure:compute/scaleSet:ScaleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automaticOsUpgrade = registerOutput<bool?>('automaticOsUpgrade');
    bootDiagnostics = registerOutput<ScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensions = registerOutput<List<ScaleSetExtension>?>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetExtension>(guardedValue, (value) => ScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    identity = registerOutput<ScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkProfiles = registerOutput<List<ScaleSetNetworkProfile>>('networkProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetNetworkProfile>(guardedValue, (value) => ScaleSetNetworkProfile.fromMap((value as Map).cast<String, dynamic>())); });
    osProfile = registerOutput<ScaleSetOsProfile>('osProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileLinuxConfig = registerOutput<ScaleSetOsProfileLinuxConfig>('osProfileLinuxConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileLinuxConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osProfileSecrets = registerOutput<List<ScaleSetOsProfileSecret>?>('osProfileSecrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetOsProfileSecret>(guardedValue, (value) => ScaleSetOsProfileSecret.fromMap((value as Map).cast<String, dynamic>())); });
    osProfileWindowsConfig = registerOutput<ScaleSetOsProfileWindowsConfig?>('osProfileWindowsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetOsProfileWindowsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<ScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<String?>('priority');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<ScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<ScaleSetSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileDataDisks = registerOutput<List<ScaleSetStorageProfileDataDisk>?>('storageProfileDataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetStorageProfileDataDisk>(guardedValue, (value) => ScaleSetStorageProfileDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    storageProfileImageReference = registerOutput<ScaleSetStorageProfileImageReference>('storageProfileImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfileOsDisk = registerOutput<ScaleSetStorageProfileOsDisk>('storageProfileOsDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetStorageProfileOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    upgradePolicyMode = registerOutput<String>('upgradePolicyMode');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
