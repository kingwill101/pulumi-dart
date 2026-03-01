import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_virtual_machine_scale_set_args.dart';
import 'assignment_virtual_machine_scale_set_state.dart';

/// Manages a maintenance assignment to a virtual machine scale set.
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
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: example.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: example.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "internal",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleBackendAddressPool = new azure.lb.BackendAddressPool("example", {
///     name: "example",
///     loadbalancerId: exampleLoadBalancer.id,
/// });
/// const exampleProbe = new azure.lb.Probe("example", {
///     name: "example",
///     loadbalancerId: exampleLoadBalancer.id,
///     port: 22,
///     protocol: "Tcp",
/// });
/// const exampleRule = new azure.lb.Rule("example", {
///     name: "example",
///     loadbalancerId: exampleLoadBalancer.id,
///     probeId: exampleProbe.id,
///     frontendIpConfigurationName: "internal",
///     protocol: "Tcp",
///     frontendPort: 22,
///     backendPort: 22,
/// });
/// const exampleConfiguration = new azure.maintenance.Configuration("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: "OSImage",
///     visibility: "Custom",
///     window: {
///         startDateTime: "2021-12-31 00:00",
///         expirationDateTime: "9999-12-31 00:00",
///         duration: "06:00",
///         timeZone: "Pacific Standard Time",
///         recurEvery: "1Days",
///     },
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "sample-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
/// });
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard_F2",
///     instances: 1,
///     adminUsername: "adminuser",
///     adminPassword: "P@ssword1234!",
///     upgradeMode: "Automatic",
///     healthProbeId: exampleProbe.id,
///     disablePasswordAuthentication: false,
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     osDisk: {
///         storageAccountType: "Standard_LRS",
///         caching: "ReadWrite",
///     },
///     networkInterfaces: [{
///         name: "example",
///         primary: true,
///         ipConfigurations: [{
///             name: "internal",
///             primary: true,
///             subnetId: exampleSubnet.id,
///             loadBalancerBackendAddressPoolIds: [exampleBackendAddressPool.id],
///         }],
///     }],
///     automaticOsUpgradePolicy: {
///         disableAutomaticRollback: true,
///         enableAutomaticOsUpgrade: true,
///     },
///     rollingUpgradePolicy: {
///         maxBatchInstancePercent: 20,
///         maxUnhealthyInstancePercent: 20,
///         maxUnhealthyUpgradedInstancePercent: 20,
///         pauseTimeBetweenBatches: "PT0S",
///     },
/// }, {
///     dependsOn: [exampleRule],
/// });
/// const exampleAssignmentVirtualMachineScaleSet = new azure.maintenance.AssignmentVirtualMachineScaleSet("example", {
///     location: example.location,
///     maintenanceConfigurationId: exampleConfiguration.id,
///     virtualMachineScaleSetId: exampleLinuxVirtualMachine.id,
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
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name=example.name,
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name=example.name,
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "internal",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_backend_address_pool = azure.lb.BackendAddressPool("example",
///     name="example",
///     loadbalancer_id=example_load_balancer.id)
/// example_probe = azure.lb.Probe("example",
///     name="example",
///     loadbalancer_id=example_load_balancer.id,
///     port=22,
///     protocol="Tcp")
/// example_rule = azure.lb.Rule("example",
///     name="example",
///     loadbalancer_id=example_load_balancer.id,
///     probe_id=example_probe.id,
///     frontend_ip_configuration_name="internal",
///     protocol="Tcp",
///     frontend_port=22,
///     backend_port=22)
/// example_configuration = azure.maintenance.Configuration("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     scope="OSImage",
///     visibility="Custom",
///     window={
///         "start_date_time": "2021-12-31 00:00",
///         "expiration_date_time": "9999-12-31 00:00",
///         "duration": "06:00",
///         "time_zone": "Pacific Standard Time",
///         "recur_every": "1Days",
///     })
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="sample-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     network_interface_ids=[example_network_interface.id],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     })
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard_F2",
///     instances=1,
///     admin_username="adminuser",
///     admin_password="P@ssword1234!",
///     upgrade_mode="Automatic",
///     health_probe_id=example_probe.id,
///     disable_password_authentication=False,
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     os_disk={
///         "storage_account_type": "Standard_LRS",
///         "caching": "ReadWrite",
///     },
///     network_interfaces=[{
///         "name": "example",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "internal",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///             "load_balancer_backend_address_pool_ids": [example_backend_address_pool.id],
///         }],
///     }],
///     automatic_os_upgrade_policy={
///         "disable_automatic_rollback": True,
///         "enable_automatic_os_upgrade": True,
///     },
///     rolling_upgrade_policy={
///         "max_batch_instance_percent": 20,
///         "max_unhealthy_instance_percent": 20,
///         "max_unhealthy_upgraded_instance_percent": 20,
///         "pause_time_between_batches": "PT0S",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_rule]))
/// example_assignment_virtual_machine_scale_set = azure.maintenance.AssignmentVirtualMachineScaleSet("example",
///     location=example.location,
///     maintenance_configuration_id=example_configuration.id,
///     virtual_machine_scale_set_id=example_linux_virtual_machine.id)
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
///         Name = "example-network",
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
///         Name = "internal",
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
///         Name = example.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = example.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = "internal",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleBackendAddressPool = new Azure.Lb.BackendAddressPool("example", new()
///     {
///         Name = "example",
///         LoadbalancerId = exampleLoadBalancer.Id,
///     });
///
///     var exampleProbe = new Azure.Lb.Probe("example", new()
///     {
///         Name = "example",
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Port = 22,
///         Protocol = "Tcp",
///     });
///
///     var exampleRule = new Azure.Lb.Rule("example", new()
///     {
///         Name = "example",
///         LoadbalancerId = exampleLoadBalancer.Id,
///         ProbeId = exampleProbe.Id,
///         FrontendIpConfigurationName = "internal",
///         Protocol = "Tcp",
///         FrontendPort = 22,
///         BackendPort = 22,
///     });
///
///     var exampleConfiguration = new Azure.Maintenance.Configuration("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scope = "OSImage",
///         Visibility = "Custom",
///         Window = new Azure.Maintenance.Inputs.ConfigurationWindowArgs
///         {
///             StartDateTime = "2021-12-31 00:00",
///             ExpirationDateTime = "9999-12-31 00:00",
///             Duration = "06:00",
///             TimeZone = "Pacific Standard Time",
///             RecurEvery = "1Days",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "sample-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///     });
///
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard_F2",
///         Instances = 1,
///         AdminUsername = "adminuser",
///         AdminPassword = "P@ssword1234!",
///         UpgradeMode = "Automatic",
///         HealthProbeId = exampleProbe.Id,
///         DisablePasswordAuthentication = false,
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             StorageAccountType = "Standard_LRS",
///             Caching = "ReadWrite",
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "example",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "internal",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                         LoadBalancerBackendAddressPoolIds = new[]
///                         {
///                             exampleBackendAddressPool.Id,
///                         },
///                     },
///                 },
///             },
///         },
///         AutomaticOsUpgradePolicy = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicyArgs
///         {
///             DisableAutomaticRollback = true,
///             EnableAutomaticOsUpgrade = true,
///         },
///         RollingUpgradePolicy = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetRollingUpgradePolicyArgs
///         {
///             MaxBatchInstancePercent = 20,
///             MaxUnhealthyInstancePercent = 20,
///             MaxUnhealthyUpgradedInstancePercent = 20,
///             PauseTimeBetweenBatches = "PT0S",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRule,
///         },
///     });
///
///     var exampleAssignmentVirtualMachineScaleSet = new Azure.Maintenance.AssignmentVirtualMachineScaleSet("example", new()
///     {
///         Location = example.Location,
///         MaintenanceConfigurationId = exampleConfiguration.Id,
///         VirtualMachineScaleSetId = exampleLinuxVirtualMachine.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
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
/// 			Name: pulumi.String("example-network"),
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
/// 			Name:               pulumi.String("internal"),
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
/// 			Name:              example.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              example.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String("internal"),
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackendAddressPool, err := lb.NewBackendAddressPool(ctx, "example", &lb.BackendAddressPoolArgs{
/// 			Name:           pulumi.String("example"),
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProbe, err := lb.NewProbe(ctx, "example", &lb.ProbeArgs{
/// 			Name:           pulumi.String("example"),
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 			Port:           pulumi.Int(22),
/// 			Protocol:       pulumi.String("Tcp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRule, err := lb.NewRule(ctx, "example", &lb.RuleArgs{
/// 			Name:                        pulumi.String("example"),
/// 			LoadbalancerId:              exampleLoadBalancer.ID(),
/// 			ProbeId:                     exampleProbe.ID(),
/// 			FrontendIpConfigurationName: pulumi.String("internal"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPort:                pulumi.Int(22),
/// 			BackendPort:                 pulumi.Int(22),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConfiguration, err := maintenance.NewConfiguration(ctx, "example", &maintenance.ConfigurationArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope:             pulumi.String("OSImage"),
/// 			Visibility:        pulumi.String("Custom"),
/// 			Window: &maintenance.ConfigurationWindowArgs{
/// 				StartDateTime:      pulumi.String("2021-12-31 00:00"),
/// 				ExpirationDateTime: pulumi.String("9999-12-31 00:00"),
/// 				Duration:           pulumi.String("06:00"),
/// 				TimeZone:           pulumi.String("Pacific Standard Time"),
/// 				RecurEvery:         pulumi.String("1Days"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("sample-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("example-machine"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:                          pulumi.String("example"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Sku:                           pulumi.String("Standard_F2"),
/// 			Instances:                     pulumi.Int(1),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("P@ssword1234!"),
/// 			UpgradeMode:                   pulumi.String("Automatic"),
/// 			HealthProbeId:                 exampleProbe.ID(),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("example"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name:     pulumi.String("internal"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID(),
/// 							LoadBalancerBackendAddressPoolIds: pulumi.StringArray{
/// 								exampleBackendAddressPool.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AutomaticOsUpgradePolicy: &compute.LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicyArgs{
/// 				DisableAutomaticRollback: pulumi.Bool(true),
/// 				EnableAutomaticOsUpgrade: pulumi.Bool(true),
/// 			},
/// 			RollingUpgradePolicy: &compute.LinuxVirtualMachineScaleSetRollingUpgradePolicyArgs{
/// 				MaxBatchInstancePercent:             pulumi.Int(20),
/// 				MaxUnhealthyInstancePercent:         pulumi.Int(20),
/// 				MaxUnhealthyUpgradedInstancePercent: pulumi.Int(20),
/// 				PauseTimeBetweenBatches:             pulumi.String("PT0S"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleRule,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = maintenance.NewAssignmentVirtualMachineScaleSet(ctx, "example", &maintenance.AssignmentVirtualMachineScaleSetArgs{
/// 			Location:                   example.Location,
/// 			MaintenanceConfigurationId: exampleConfiguration.ID(),
/// 			VirtualMachineScaleSetId:   exampleLinuxVirtualMachine.ID(),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
/// import com.pulumi.azure.lb.Probe;
/// import com.pulumi.azure.lb.ProbeArgs;
/// import com.pulumi.azure.lb.Rule;
/// import com.pulumi.azure.lb.RuleArgs;
/// import com.pulumi.azure.maintenance.Configuration;
/// import com.pulumi.azure.maintenance.ConfigurationArgs;
/// import com.pulumi.azure.maintenance.inputs.ConfigurationWindowArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetRollingUpgradePolicyArgs;
/// import com.pulumi.azure.maintenance.AssignmentVirtualMachineScaleSet;
/// import com.pulumi.azure.maintenance.AssignmentVirtualMachineScaleSetArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name(example.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name(example.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("internal")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleBackendAddressPool = new BackendAddressPool("exampleBackendAddressPool", BackendAddressPoolArgs.builder()
///             .name("example")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .build());
///
///         var exampleProbe = new Probe("exampleProbe", ProbeArgs.builder()
///             .name("example")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .port(22)
///             .protocol("Tcp")
///             .build());
///
///         var exampleRule = new Rule("exampleRule", RuleArgs.builder()
///             .name("example")
///             .loadbalancerId(exampleLoadBalancer.id())
///             .probeId(exampleProbe.id())
///             .frontendIpConfigurationName("internal")
///             .protocol("Tcp")
///             .frontendPort(22)
///             .backendPort(22)
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope("OSImage")
///             .visibility("Custom")
///             .window(ConfigurationWindowArgs.builder()
///                 .startDateTime("2021-12-31 00:00")
///                 .expirationDateTime("9999-12-31 00:00")
///                 .duration("06:00")
///                 .timeZone("Pacific Standard Time")
///                 .recurEvery("1Days")
///                 .build())
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("sample-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard_F2")
///             .instances(1)
///             .adminUsername("adminuser")
///             .adminPassword("P@ssword1234!")
///             .upgradeMode("Automatic")
///             .healthProbeId(exampleProbe.id())
///             .disablePasswordAuthentication(false)
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .storageAccountType("Standard_LRS")
///                 .caching("ReadWrite")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("example")
///                 .primary(true)
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("internal")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .loadBalancerBackendAddressPoolIds(exampleBackendAddressPool.id())
///                     .build())
///                 .build())
///             .automaticOsUpgradePolicy(LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicyArgs.builder()
///                 .disableAutomaticRollback(true)
///                 .enableAutomaticOsUpgrade(true)
///                 .build())
///             .rollingUpgradePolicy(LinuxVirtualMachineScaleSetRollingUpgradePolicyArgs.builder()
///                 .maxBatchInstancePercent(20)
///                 .maxUnhealthyInstancePercent(20)
///                 .maxUnhealthyUpgradedInstancePercent(20)
///                 .pauseTimeBetweenBatches("PT0S")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleRule)
///                 .build());
///
///         var exampleAssignmentVirtualMachineScaleSet = new AssignmentVirtualMachineScaleSet("exampleAssignmentVirtualMachineScaleSet", AssignmentVirtualMachineScaleSetArgs.builder()
///             .location(example.location())
///             .maintenanceConfigurationId(exampleConfiguration.id())
///             .virtualMachineScaleSetId(exampleLinuxVirtualMachine.id())
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
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: ${example.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: ${example.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: internal
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleBackendAddressPool:
///     type: azure:lb:BackendAddressPool
///     name: example
///     properties:
///       name: example
///       loadbalancerId: ${exampleLoadBalancer.id}
///   exampleProbe:
///     type: azure:lb:Probe
///     name: example
///     properties:
///       name: example
///       loadbalancerId: ${exampleLoadBalancer.id}
///       port: 22
///       protocol: Tcp
///   exampleRule:
///     type: azure:lb:Rule
///     name: example
///     properties:
///       name: example
///       loadbalancerId: ${exampleLoadBalancer.id}
///       probeId: ${exampleProbe.id}
///       frontendIpConfigurationName: internal
///       protocol: Tcp
///       frontendPort: 22
///       backendPort: 22
///   exampleConfiguration:
///     type: azure:maintenance:Configuration
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope: OSImage
///       visibility: Custom
///       window:
///         startDateTime: 2021-12-31 00:00
///         expirationDateTime: 9999-12-31 00:00
///         duration: 06:00
///         timeZone: Pacific Standard Time
///         recurEvery: 1Days
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: sample-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard_F2
///       instances: 1
///       adminUsername: adminuser
///       adminPassword: P@ssword1234!
///       upgradeMode: Automatic
///       healthProbeId: ${exampleProbe.id}
///       disablePasswordAuthentication: false
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       osDisk:
///         storageAccountType: Standard_LRS
///         caching: ReadWrite
///       networkInterfaces:
///         - name: example
///           primary: true
///           ipConfigurations:
///             - name: internal
///               primary: true
///               subnetId: ${exampleSubnet.id}
///               loadBalancerBackendAddressPoolIds:
///                 - ${exampleBackendAddressPool.id}
///       automaticOsUpgradePolicy:
///         disableAutomaticRollback: true
///         enableAutomaticOsUpgrade: true
///       rollingUpgradePolicy:
///         maxBatchInstancePercent: 20
///         maxUnhealthyInstancePercent: 20
///         maxUnhealthyUpgradedInstancePercent: 20
///         pauseTimeBetweenBatches: PT0S
///     options:
///       dependsOn:
///         - ${exampleRule}
///   exampleAssignmentVirtualMachineScaleSet:
///     type: azure:maintenance:AssignmentVirtualMachineScaleSet
///     name: example
///     properties:
///       location: ${example.location}
///       maintenanceConfigurationId: ${exampleConfiguration.id}
///       virtualMachineScaleSetId: ${exampleLinuxVirtualMachine.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
///
/// ## Import
///
/// Maintenance Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maintenance/assignmentVirtualMachineScaleSet:AssignmentVirtualMachineScaleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Compute/virtualMachineScaleSets/vmss1/providers/Microsoft.Maintenance/configurationAssignments/assign1
/// ```
class AssignmentVirtualMachineScaleSet extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> maintenanceConfigurationId;
  /// Specifies the Virtual Machine Scale Set ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineScaleSetId;

  /// Creates a new [AssignmentVirtualMachineScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssignmentVirtualMachineScaleSet]. {@macro pulumi_maintenance_assignment_virtual_machine_scale_set_assignment_virtual_machine_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssignmentVirtualMachineScaleSet(
    String name, {
    AssignmentVirtualMachineScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/assignmentVirtualMachineScaleSet:AssignmentVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.maintenanceConfigurationId = registerOutput<String>('maintenanceConfigurationId');
    this.virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }

  /// Gets an existing [AssignmentVirtualMachineScaleSet] resource's state with the given [name] and [id].
  static AssignmentVirtualMachineScaleSet get(
    String name,
    pulumi.Input<String> id, {
    AssignmentVirtualMachineScaleSetState? state,
  }) {
    return AssignmentVirtualMachineScaleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssignmentVirtualMachineScaleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:maintenance/assignmentVirtualMachineScaleSet:AssignmentVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.maintenanceConfigurationId = registerOutput<String>('maintenanceConfigurationId');
    this.virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }
}
