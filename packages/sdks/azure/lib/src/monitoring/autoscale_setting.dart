import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_args.dart';
import 'autoscale_setting_notification.dart';
import 'autoscale_setting_predictive.dart';
import 'autoscale_setting_profile.dart';
import 'autoscale_setting_state.dart';

/// Manages a AutoScale Setting which can be applied to Virtual Machine Scale Sets, App Services and other scalable resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "autoscalingTest",
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
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "exampleset",
///     location: example.location,
///     resourceGroupName: example.name,
///     upgradeMode: "Manual",
///     sku: "Standard_F2",
///     instances: 2,
///     adminUsername: "myadmin",
///     adminSshKeys: [{
///         username: "myadmin",
///         publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     networkInterfaces: [{
///         name: "TestNetworkProfile",
///         primary: true,
///         ipConfigurations: [{
///             name: "TestIPConfiguration",
///             primary: true,
///             subnetId: exampleSubnet.id,
///         }],
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "StandardSSD_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleAutoscaleSetting = new azure.monitoring.AutoscaleSetting("example", {
///     name: "myAutoscaleSetting",
///     resourceGroupName: example.name,
///     location: example.location,
///     targetResourceId: exampleLinuxVirtualMachineScaleSet.id,
///     profiles: [{
///         name: "defaultProfile",
///         capacity: {
///             "default": 1,
///             minimum: 1,
///             maximum: 10,
///         },
///         rules: [
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "GreaterThan",
///                     threshold: 75,
///                     metricNamespace: "microsoft.compute/virtualmachinescalesets",
///                     dimensions: [{
///                         name: "AppName",
///                         operator: "Equals",
///                         values: ["App1"],
///                     }],
///                 },
///                 scaleAction: {
///                     direction: "Increase",
///                     type: "ChangeCount",
///                     value: 1,
///                     cooldown: "PT1M",
///                 },
///             },
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "LessThan",
///                     threshold: 25,
///                 },
///                 scaleAction: {
///                     direction: "Decrease",
///                     type: "ChangeCount",
///                     value: 1,
///                     cooldown: "PT1M",
///                 },
///             },
///         ],
///     }],
///     predictive: {
///         scaleMode: "Enabled",
///         lookAheadTime: "PT5M",
///     },
///     notification: {
///         email: {
///             sendToSubscriptionAdministrator: true,
///             sendToSubscriptionCoAdministrator: true,
///             customEmails: ["admin@contoso.com"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="autoscalingTest",
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
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="exampleset",
///     location=example.location,
///     resource_group_name=example.name,
///     upgrade_mode="Manual",
///     sku="Standard_F2",
///     instances=2,
///     admin_username="myadmin",
///     admin_ssh_keys=[{
///         "username": "myadmin",
///         "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     network_interfaces=[{
///         "name": "TestNetworkProfile",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "TestIPConfiguration",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///         }],
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "StandardSSD_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_autoscale_setting = azure.monitoring.AutoscaleSetting("example",
///     name="myAutoscaleSetting",
///     resource_group_name=example.name,
///     location=example.location,
///     target_resource_id=example_linux_virtual_machine_scale_set.id,
///     profiles=[{
///         "name": "defaultProfile",
///         "capacity": {
///             "default": 1,
///             "minimum": 1,
///             "maximum": 10,
///         },
///         "rules": [
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "GreaterThan",
///                     "threshold": float(75),
///                     "metric_namespace": "microsoft.compute/virtualmachinescalesets",
///                     "dimensions": [{
///                         "name": "AppName",
///                         "operator": "Equals",
///                         "values": ["App1"],
///                     }],
///                 },
///                 "scale_action": {
///                     "direction": "Increase",
///                     "type": "ChangeCount",
///                     "value": 1,
///                     "cooldown": "PT1M",
///                 },
///             },
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "LessThan",
///                     "threshold": float(25),
///                 },
///                 "scale_action": {
///                     "direction": "Decrease",
///                     "type": "ChangeCount",
///                     "value": 1,
///                     "cooldown": "PT1M",
///                 },
///             },
///         ],
///     }],
///     predictive={
///         "scale_mode": "Enabled",
///         "look_ahead_time": "PT5M",
///     },
///     notification={
///         "email": {
///             "send_to_subscription_administrator": True,
///             "send_to_subscription_co_administrator": True,
///             "custom_emails": ["admin@contoso.com"],
///         },
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "autoscalingTest",
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
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "exampleset",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         UpgradeMode = "Manual",
///         Sku = "Standard_F2",
///         Instances = 2,
///         AdminUsername = "myadmin",
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs
///             {
///                 Username = "myadmin",
///                 PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "TestNetworkProfile",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "TestIPConfiguration",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                     },
///                 },
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "StandardSSD_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleAutoscaleSetting = new Azure.Monitoring.AutoscaleSetting("example", new()
///     {
///         Name = "myAutoscaleSetting",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         TargetResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///         Profiles = new[]
///         {
///             new Azure.Monitoring.Inputs.AutoscaleSettingProfileArgs
///             {
///                 Name = "defaultProfile",
///                 Capacity = new Azure.Monitoring.Inputs.AutoscaleSettingProfileCapacityArgs
///                 {
///                     Default = 1,
///                     Minimum = 1,
///                     Maximum = 10,
///                 },
///                 Rules = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "GreaterThan",
///                             Threshold = 75,
///                             MetricNamespace = "microsoft.compute/virtualmachinescalesets",
///                             Dimensions = new[]
///                             {
///                                 new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerDimensionArgs
///                                 {
///                                     Name = "AppName",
///                                     Operator = "Equals",
///                                     Values = new[]
///                                     {
///                                         "App1",
///                                     },
///                                 },
///                             },
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Increase",
///                             Type = "ChangeCount",
///                             Value = 1,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "LessThan",
///                             Threshold = 25,
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Decrease",
///                             Type = "ChangeCount",
///                             Value = 1,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                 },
///             },
///         },
///         Predictive = new Azure.Monitoring.Inputs.AutoscaleSettingPredictiveArgs
///         {
///             ScaleMode = "Enabled",
///             LookAheadTime = "PT5M",
///         },
///         Notification = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationArgs
///         {
///             Email = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationEmailArgs
///             {
///                 SendToSubscriptionAdministrator = true,
///                 SendToSubscriptionCoAdministrator = true,
///                 CustomEmails = new[]
///                 {
///                     "admin@contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("autoscalingTest"),
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
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("exampleset"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			UpgradeMode:       pulumi.String("Manual"),
/// 			Sku:               pulumi.String("Standard_F2"),
/// 			Instances:         pulumi.Int(2),
/// 			AdminUsername:     pulumi.String("myadmin"),
/// 			AdminSshKeys: compute.LinuxVirtualMachineScaleSetAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineScaleSetAdminSshKeyArgs{
/// 					Username:  pulumi.String("myadmin"),
/// 					PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("TestNetworkProfile"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name:     pulumi.String("TestIPConfiguration"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("StandardSSD_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAutoscaleSetting(ctx, "example", &monitoring.AutoscaleSettingArgs{
/// 			Name:              pulumi.String("myAutoscaleSetting"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			TargetResourceId:  exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 			Profiles: monitoring.AutoscaleSettingProfileArray{
/// 				&monitoring.AutoscaleSettingProfileArgs{
/// 					Name: pulumi.String("defaultProfile"),
/// 					Capacity: &monitoring.AutoscaleSettingProfileCapacityArgs{
/// 						Default: pulumi.Int(1),
/// 						Minimum: pulumi.Int(1),
/// 						Maximum: pulumi.Int(10),
/// 					},
/// 					Rules: monitoring.AutoscaleSettingProfileRuleArray{
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("GreaterThan"),
/// 								Threshold:        pulumi.Float64(75),
/// 								MetricNamespace:  pulumi.String("microsoft.compute/virtualmachinescalesets"),
/// 								Dimensions: monitoring.AutoscaleSettingProfileRuleMetricTriggerDimensionArray{
/// 									&monitoring.AutoscaleSettingProfileRuleMetricTriggerDimensionArgs{
/// 										Name:     pulumi.String("AppName"),
/// 										Operator: pulumi.String("Equals"),
/// 										Values: pulumi.StringArray{
/// 											pulumi.String("App1"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Increase"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(1),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("LessThan"),
/// 								Threshold:        pulumi.Float64(25),
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Decrease"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(1),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Predictive: &monitoring.AutoscaleSettingPredictiveArgs{
/// 				ScaleMode:     pulumi.String("Enabled"),
/// 				LookAheadTime: pulumi.String("PT5M"),
/// 			},
/// 			Notification: &monitoring.AutoscaleSettingNotificationArgs{
/// 				Email: &monitoring.AutoscaleSettingNotificationEmailArgs{
/// 					SendToSubscriptionAdministrator:   pulumi.Bool(true),
/// 					SendToSubscriptionCoAdministrator: pulumi.Bool(true),
/// 					CustomEmails: pulumi.StringArray{
/// 						pulumi.String("admin@contoso.com"),
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
///   name     = "autoscalingTest"
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
/// resource "azure_compute_linuxvirtualmachinescaleset" "example" {
///   name                = "exampleset"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   upgrade_mode        = "Manual"
///   sku                 = "Standard_F2"
///   instances           = 2
///   admin_username      = "myadmin"
///   admin_ssh_keys {
///     username   = "myadmin"
///     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"
///   }
///   network_interfaces {
///     name    = "TestNetworkProfile"
///     primary = true
///     ip_configurations {
///       name      = "TestIPConfiguration"
///       primary   = true
///       subnet_id = azure_network_subnet.example.id
///     }
///   }
///   os_disk = {
///     caching              = "ReadWrite"
///     storage_account_type = "StandardSSD_LRS"
///   }
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
/// }
/// resource "azure_monitoring_autoscalesetting" "example" {
///   name                = "myAutoscaleSetting"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   target_resource_id  = azure_compute_linuxvirtualmachinescaleset.example.id
///   profiles {
///     name = "defaultProfile"
///     capacity = {
///       default = 1
///       minimum = 1
///       maximum = 10
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "GreaterThan"
///         threshold          = 75
///         metric_namespace   = "microsoft.compute/virtualmachinescalesets"
///         dimensions = [{
///           "name"     = "AppName"
///           "operator" = "Equals"
///           "values"   = ["App1"]
///         }]
///       }
///       scale_action = {
///         direction = "Increase"
///         type      = "ChangeCount"
///         value     = "1"
///         cooldown  = "PT1M"
///       }
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "LessThan"
///         threshold          = 25
///       }
///       scale_action = {
///         direction = "Decrease"
///         type      = "ChangeCount"
///         value     = "1"
///         cooldown  = "PT1M"
///       }
///     }
///   }
///   predictive = {
///     scale_mode      = "Enabled"
///     look_ahead_time = "PT5M"
///   }
///   notification = {
///     email = {
///       send_to_subscription_administrator    = true
///       send_to_subscription_co_administrator = true
///       custom_emails                         = ["admin@contoso.com"]
///     }
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.monitoring.AutoscaleSetting;
/// import com.pulumi.azure.monitoring.AutoscaleSettingArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileCapacityArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleMetricTriggerArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleMetricTriggerDimensionArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleScaleActionArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingPredictiveArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationEmailArgs;
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
///             .name("autoscalingTest")
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
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("exampleset")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .upgradeMode("Manual")
///             .sku("Standard_F2")
///             .instances(2)
///             .adminUsername("myadmin")
///             .adminSshKeys(LinuxVirtualMachineScaleSetAdminSshKeyArgs.builder()
///                 .username("myadmin")
///                 .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("TestNetworkProfile")
///                 .primary(true)
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("TestIPConfiguration")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .build())
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("StandardSSD_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleAutoscaleSetting = new AutoscaleSetting("exampleAutoscaleSetting", AutoscaleSettingArgs.builder()
///             .name("myAutoscaleSetting")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .targetResourceId(exampleLinuxVirtualMachineScaleSet.id())
///             .profiles(AutoscaleSettingProfileArgs.builder()
///                 .name("defaultProfile")
///                 .capacity(AutoscaleSettingProfileCapacityArgs.builder()
///                     .default_(1)
///                     .minimum(1)
///                     .maximum(10)
///                     .build())
///                 .rules(
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("GreaterThan")
///                             .threshold(75.0)
///                             .metricNamespace("microsoft.compute/virtualmachinescalesets")
///                             .dimensions(AutoscaleSettingProfileRuleMetricTriggerDimensionArgs.builder()
///                                 .name("AppName")
///                                 .operator("Equals")
///                                 .values("App1")
///                                 .build())
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Increase")
///                             .type("ChangeCount")
///                             .value(1)
///                             .cooldown("PT1M")
///                             .build())
///                         .build(),
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("LessThan")
///                             .threshold(25.0)
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Decrease")
///                             .type("ChangeCount")
///                             .value(1)
///                             .cooldown("PT1M")
///                             .build())
///                         .build())
///                 .build())
///             .predictive(AutoscaleSettingPredictiveArgs.builder()
///                 .scaleMode("Enabled")
///                 .lookAheadTime("PT5M")
///                 .build())
///             .notification(AutoscaleSettingNotificationArgs.builder()
///                 .email(AutoscaleSettingNotificationEmailArgs.builder()
///                     .sendToSubscriptionAdministrator(true)
///                     .sendToSubscriptionCoAdministrator(true)
///                     .customEmails("admin@contoso.com")
///                     .build())
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
///       name: autoscalingTest
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
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: exampleset
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       upgradeMode: Manual
///       sku: Standard_F2
///       instances: 2
///       adminUsername: myadmin
///       adminSshKeys:
///         - username: myadmin
///           publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com
///       networkInterfaces:
///         - name: TestNetworkProfile
///           primary: true
///           ipConfigurations:
///             - name: TestIPConfiguration
///               primary: true
///               subnetId: ${exampleSubnet.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: StandardSSD_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleAutoscaleSetting:
///     type: azure:monitoring:AutoscaleSetting
///     name: example
///     properties:
///       name: myAutoscaleSetting
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       targetResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///       profiles:
///         - name: defaultProfile
///           capacity:
///             default: 1
///             minimum: 1
///             maximum: 10
///           rules:
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: GreaterThan
///                 threshold: 75
///                 metricNamespace: microsoft.compute/virtualmachinescalesets
///                 dimensions:
///                   - name: AppName
///                     operator: Equals
///                     values:
///                       - App1
///               scaleAction:
///                 direction: Increase
///                 type: ChangeCount
///                 value: '1'
///                 cooldown: PT1M
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: LessThan
///                 threshold: 25
///               scaleAction:
///                 direction: Decrease
///                 type: ChangeCount
///                 value: '1'
///                 cooldown: PT1M
///       predictive:
///         scaleMode: Enabled
///         lookAheadTime: PT5M
///       notification:
///         email:
///           sendToSubscriptionAdministrator: true
///           sendToSubscriptionCoAdministrator: true
///           customEmails:
///             - admin@contoso.com
/// ```
///
///
///
/// ### Repeating On Weekends)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "autoscalingTest",
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
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "exampleset",
///     location: example.location,
///     resourceGroupName: example.name,
///     upgradeMode: "Manual",
///     sku: "Standard_F2",
///     instances: 2,
///     adminUsername: "myadmin",
///     adminSshKeys: [{
///         username: "myadmin",
///         publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     networkInterfaces: [{
///         name: "TestNetworkProfile",
///         primary: true,
///         ipConfigurations: [{
///             name: "TestIPConfiguration",
///             primary: true,
///             subnetId: exampleSubnet.id,
///         }],
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "StandardSSD_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleAutoscaleSetting = new azure.monitoring.AutoscaleSetting("example", {
///     name: "myAutoscaleSetting",
///     resourceGroupName: example.name,
///     location: example.location,
///     targetResourceId: exampleLinuxVirtualMachineScaleSet.id,
///     profiles: [{
///         name: "Weekends",
///         capacity: {
///             "default": 1,
///             minimum: 1,
///             maximum: 10,
///         },
///         rules: [
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "GreaterThan",
///                     threshold: 90,
///                 },
///                 scaleAction: {
///                     direction: "Increase",
///                     type: "ChangeCount",
///                     value: 2,
///                     cooldown: "PT1M",
///                 },
///             },
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "LessThan",
///                     threshold: 10,
///                 },
///                 scaleAction: {
///                     direction: "Decrease",
///                     type: "ChangeCount",
///                     value: 2,
///                     cooldown: "PT1M",
///                 },
///             },
///         ],
///         recurrence: {
///             timezone: "Pacific Standard Time",
///             days: [
///                 "Saturday",
///                 "Sunday",
///             ],
///             hours: 12,
///             minutes: 0,
///         },
///     }],
///     notification: {
///         email: {
///             sendToSubscriptionAdministrator: true,
///             sendToSubscriptionCoAdministrator: true,
///             customEmails: ["admin@contoso.com"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="autoscalingTest",
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
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="exampleset",
///     location=example.location,
///     resource_group_name=example.name,
///     upgrade_mode="Manual",
///     sku="Standard_F2",
///     instances=2,
///     admin_username="myadmin",
///     admin_ssh_keys=[{
///         "username": "myadmin",
///         "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     network_interfaces=[{
///         "name": "TestNetworkProfile",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "TestIPConfiguration",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///         }],
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "StandardSSD_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_autoscale_setting = azure.monitoring.AutoscaleSetting("example",
///     name="myAutoscaleSetting",
///     resource_group_name=example.name,
///     location=example.location,
///     target_resource_id=example_linux_virtual_machine_scale_set.id,
///     profiles=[{
///         "name": "Weekends",
///         "capacity": {
///             "default": 1,
///             "minimum": 1,
///             "maximum": 10,
///         },
///         "rules": [
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "GreaterThan",
///                     "threshold": float(90),
///                 },
///                 "scale_action": {
///                     "direction": "Increase",
///                     "type": "ChangeCount",
///                     "value": 2,
///                     "cooldown": "PT1M",
///                 },
///             },
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "LessThan",
///                     "threshold": float(10),
///                 },
///                 "scale_action": {
///                     "direction": "Decrease",
///                     "type": "ChangeCount",
///                     "value": 2,
///                     "cooldown": "PT1M",
///                 },
///             },
///         ],
///         "recurrence": {
///             "timezone": "Pacific Standard Time",
///             "days": [
///                 "Saturday",
///                 "Sunday",
///             ],
///             "hours": 12,
///             "minutes": 0,
///         },
///     }],
///     notification={
///         "email": {
///             "send_to_subscription_administrator": True,
///             "send_to_subscription_co_administrator": True,
///             "custom_emails": ["admin@contoso.com"],
///         },
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "autoscalingTest",
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
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "exampleset",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         UpgradeMode = "Manual",
///         Sku = "Standard_F2",
///         Instances = 2,
///         AdminUsername = "myadmin",
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs
///             {
///                 Username = "myadmin",
///                 PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "TestNetworkProfile",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "TestIPConfiguration",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                     },
///                 },
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "StandardSSD_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleAutoscaleSetting = new Azure.Monitoring.AutoscaleSetting("example", new()
///     {
///         Name = "myAutoscaleSetting",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         TargetResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///         Profiles = new[]
///         {
///             new Azure.Monitoring.Inputs.AutoscaleSettingProfileArgs
///             {
///                 Name = "Weekends",
///                 Capacity = new Azure.Monitoring.Inputs.AutoscaleSettingProfileCapacityArgs
///                 {
///                     Default = 1,
///                     Minimum = 1,
///                     Maximum = 10,
///                 },
///                 Rules = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "GreaterThan",
///                             Threshold = 90,
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Increase",
///                             Type = "ChangeCount",
///                             Value = 2,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "LessThan",
///                             Threshold = 10,
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Decrease",
///                             Type = "ChangeCount",
///                             Value = 2,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                 },
///                 Recurrence = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRecurrenceArgs
///                 {
///                     Timezone = "Pacific Standard Time",
///                     Days = new[]
///                     {
///                         "Saturday",
///                         "Sunday",
///                     },
///                     Hours = 12,
///                     Minutes = 0,
///                 },
///             },
///         },
///         Notification = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationArgs
///         {
///             Email = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationEmailArgs
///             {
///                 SendToSubscriptionAdministrator = true,
///                 SendToSubscriptionCoAdministrator = true,
///                 CustomEmails = new[]
///                 {
///                     "admin@contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("autoscalingTest"),
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
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("exampleset"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			UpgradeMode:       pulumi.String("Manual"),
/// 			Sku:               pulumi.String("Standard_F2"),
/// 			Instances:         pulumi.Int(2),
/// 			AdminUsername:     pulumi.String("myadmin"),
/// 			AdminSshKeys: compute.LinuxVirtualMachineScaleSetAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineScaleSetAdminSshKeyArgs{
/// 					Username:  pulumi.String("myadmin"),
/// 					PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("TestNetworkProfile"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name:     pulumi.String("TestIPConfiguration"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("StandardSSD_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAutoscaleSetting(ctx, "example", &monitoring.AutoscaleSettingArgs{
/// 			Name:              pulumi.String("myAutoscaleSetting"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			TargetResourceId:  exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 			Profiles: monitoring.AutoscaleSettingProfileArray{
/// 				&monitoring.AutoscaleSettingProfileArgs{
/// 					Name: pulumi.String("Weekends"),
/// 					Capacity: &monitoring.AutoscaleSettingProfileCapacityArgs{
/// 						Default: pulumi.Int(1),
/// 						Minimum: pulumi.Int(1),
/// 						Maximum: pulumi.Int(10),
/// 					},
/// 					Rules: monitoring.AutoscaleSettingProfileRuleArray{
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("GreaterThan"),
/// 								Threshold:        pulumi.Float64(90),
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Increase"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(2),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("LessThan"),
/// 								Threshold:        pulumi.Float64(10),
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Decrease"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(2),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 					},
/// 					Recurrence: &monitoring.AutoscaleSettingProfileRecurrenceArgs{
/// 						Timezone: pulumi.String("Pacific Standard Time"),
/// 						Days: pulumi.StringArray{
/// 							pulumi.String("Saturday"),
/// 							pulumi.String("Sunday"),
/// 						},
/// 						Hours:   pulumi.Int(12),
/// 						Minutes: pulumi.Int(0),
/// 					},
/// 				},
/// 			},
/// 			Notification: &monitoring.AutoscaleSettingNotificationArgs{
/// 				Email: &monitoring.AutoscaleSettingNotificationEmailArgs{
/// 					SendToSubscriptionAdministrator:   pulumi.Bool(true),
/// 					SendToSubscriptionCoAdministrator: pulumi.Bool(true),
/// 					CustomEmails: pulumi.StringArray{
/// 						pulumi.String("admin@contoso.com"),
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
///   name     = "autoscalingTest"
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
/// resource "azure_compute_linuxvirtualmachinescaleset" "example" {
///   name                = "exampleset"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   upgrade_mode        = "Manual"
///   sku                 = "Standard_F2"
///   instances           = 2
///   admin_username      = "myadmin"
///   admin_ssh_keys {
///     username   = "myadmin"
///     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"
///   }
///   network_interfaces {
///     name    = "TestNetworkProfile"
///     primary = true
///     ip_configurations {
///       name      = "TestIPConfiguration"
///       primary   = true
///       subnet_id = azure_network_subnet.example.id
///     }
///   }
///   os_disk = {
///     caching              = "ReadWrite"
///     storage_account_type = "StandardSSD_LRS"
///   }
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
/// }
/// resource "azure_monitoring_autoscalesetting" "example" {
///   name                = "myAutoscaleSetting"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   target_resource_id  = azure_compute_linuxvirtualmachinescaleset.example.id
///   profiles {
///     name = "Weekends"
///     capacity = {
///       default = 1
///       minimum = 1
///       maximum = 10
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "GreaterThan"
///         threshold          = 90
///       }
///       scale_action = {
///         direction = "Increase"
///         type      = "ChangeCount"
///         value     = "2"
///         cooldown  = "PT1M"
///       }
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "LessThan"
///         threshold          = 10
///       }
///       scale_action = {
///         direction = "Decrease"
///         type      = "ChangeCount"
///         value     = "2"
///         cooldown  = "PT1M"
///       }
///     }
///     recurrence = {
///       timezone = "Pacific Standard Time"
///       days     = ["Saturday", "Sunday"]
///       hours    = 12
///       minutes  = 0
///     }
///   }
///   notification = {
///     email = {
///       send_to_subscription_administrator    = true
///       send_to_subscription_co_administrator = true
///       custom_emails                         = ["admin@contoso.com"]
///     }
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.monitoring.AutoscaleSetting;
/// import com.pulumi.azure.monitoring.AutoscaleSettingArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileCapacityArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleMetricTriggerArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleScaleActionArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRecurrenceArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationEmailArgs;
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
///             .name("autoscalingTest")
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
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("exampleset")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .upgradeMode("Manual")
///             .sku("Standard_F2")
///             .instances(2)
///             .adminUsername("myadmin")
///             .adminSshKeys(LinuxVirtualMachineScaleSetAdminSshKeyArgs.builder()
///                 .username("myadmin")
///                 .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("TestNetworkProfile")
///                 .primary(true)
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("TestIPConfiguration")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .build())
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("StandardSSD_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleAutoscaleSetting = new AutoscaleSetting("exampleAutoscaleSetting", AutoscaleSettingArgs.builder()
///             .name("myAutoscaleSetting")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .targetResourceId(exampleLinuxVirtualMachineScaleSet.id())
///             .profiles(AutoscaleSettingProfileArgs.builder()
///                 .name("Weekends")
///                 .capacity(AutoscaleSettingProfileCapacityArgs.builder()
///                     .default_(1)
///                     .minimum(1)
///                     .maximum(10)
///                     .build())
///                 .rules(
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("GreaterThan")
///                             .threshold(90.0)
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Increase")
///                             .type("ChangeCount")
///                             .value(2)
///                             .cooldown("PT1M")
///                             .build())
///                         .build(),
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("LessThan")
///                             .threshold(10.0)
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Decrease")
///                             .type("ChangeCount")
///                             .value(2)
///                             .cooldown("PT1M")
///                             .build())
///                         .build())
///                 .recurrence(AutoscaleSettingProfileRecurrenceArgs.builder()
///                     .timezone("Pacific Standard Time")
///                     .days(
///                         "Saturday",
///                         "Sunday")
///                     .hours(12)
///                     .minutes(0)
///                     .build())
///                 .build())
///             .notification(AutoscaleSettingNotificationArgs.builder()
///                 .email(AutoscaleSettingNotificationEmailArgs.builder()
///                     .sendToSubscriptionAdministrator(true)
///                     .sendToSubscriptionCoAdministrator(true)
///                     .customEmails("admin@contoso.com")
///                     .build())
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
///       name: autoscalingTest
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
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: exampleset
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       upgradeMode: Manual
///       sku: Standard_F2
///       instances: 2
///       adminUsername: myadmin
///       adminSshKeys:
///         - username: myadmin
///           publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com
///       networkInterfaces:
///         - name: TestNetworkProfile
///           primary: true
///           ipConfigurations:
///             - name: TestIPConfiguration
///               primary: true
///               subnetId: ${exampleSubnet.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: StandardSSD_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleAutoscaleSetting:
///     type: azure:monitoring:AutoscaleSetting
///     name: example
///     properties:
///       name: myAutoscaleSetting
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       targetResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///       profiles:
///         - name: Weekends
///           capacity:
///             default: 1
///             minimum: 1
///             maximum: 10
///           rules:
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: GreaterThan
///                 threshold: 90
///               scaleAction:
///                 direction: Increase
///                 type: ChangeCount
///                 value: '2'
///                 cooldown: PT1M
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: LessThan
///                 threshold: 10
///               scaleAction:
///                 direction: Decrease
///                 type: ChangeCount
///                 value: '2'
///                 cooldown: PT1M
///           recurrence:
///             timezone: Pacific Standard Time
///             days:
///               - Saturday
///               - Sunday
///             hours: 12
///             minutes: 0
///       notification:
///         email:
///           sendToSubscriptionAdministrator: true
///           sendToSubscriptionCoAdministrator: true
///           customEmails:
///             - admin@contoso.com
/// ```
///
///
///
/// ### For Fixed Dates)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "autoscalingTest",
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
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "exampleset",
///     location: example.location,
///     resourceGroupName: example.name,
///     upgradeMode: "Manual",
///     sku: "Standard_F2",
///     instances: 2,
///     adminUsername: "myadmin",
///     adminSshKeys: [{
///         username: "myadmin",
///         publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     networkInterfaces: [{
///         name: "TestNetworkProfile",
///         primary: true,
///         ipConfigurations: [{
///             name: "TestIPConfiguration",
///             primary: true,
///             subnetId: exampleSubnet.id,
///         }],
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "StandardSSD_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleAutoscaleSetting = new azure.monitoring.AutoscaleSetting("example", {
///     name: "myAutoscaleSetting",
///     enabled: true,
///     resourceGroupName: example.name,
///     location: example.location,
///     targetResourceId: exampleLinuxVirtualMachineScaleSet.id,
///     profiles: [{
///         name: "forJuly",
///         capacity: {
///             "default": 1,
///             minimum: 1,
///             maximum: 10,
///         },
///         rules: [
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "GreaterThan",
///                     threshold: 90,
///                 },
///                 scaleAction: {
///                     direction: "Increase",
///                     type: "ChangeCount",
///                     value: 2,
///                     cooldown: "PT1M",
///                 },
///             },
///             {
///                 metricTrigger: {
///                     metricName: "Percentage CPU",
///                     metricResourceId: exampleLinuxVirtualMachineScaleSet.id,
///                     timeGrain: "PT1M",
///                     statistic: "Average",
///                     timeWindow: "PT5M",
///                     timeAggregation: "Average",
///                     operator: "LessThan",
///                     threshold: 10,
///                 },
///                 scaleAction: {
///                     direction: "Decrease",
///                     type: "ChangeCount",
///                     value: 2,
///                     cooldown: "PT1M",
///                 },
///             },
///         ],
///         fixedDate: {
///             timezone: "Pacific Standard Time",
///             start: "2020-07-01T00:00:00Z",
///             end: "2020-07-31T23:59:59Z",
///         },
///     }],
///     notification: {
///         email: {
///             sendToSubscriptionAdministrator: true,
///             sendToSubscriptionCoAdministrator: true,
///             customEmails: ["admin@contoso.com"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="autoscalingTest",
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
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="exampleset",
///     location=example.location,
///     resource_group_name=example.name,
///     upgrade_mode="Manual",
///     sku="Standard_F2",
///     instances=2,
///     admin_username="myadmin",
///     admin_ssh_keys=[{
///         "username": "myadmin",
///         "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///     }],
///     network_interfaces=[{
///         "name": "TestNetworkProfile",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "TestIPConfiguration",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///         }],
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "StandardSSD_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_autoscale_setting = azure.monitoring.AutoscaleSetting("example",
///     name="myAutoscaleSetting",
///     enabled=True,
///     resource_group_name=example.name,
///     location=example.location,
///     target_resource_id=example_linux_virtual_machine_scale_set.id,
///     profiles=[{
///         "name": "forJuly",
///         "capacity": {
///             "default": 1,
///             "minimum": 1,
///             "maximum": 10,
///         },
///         "rules": [
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "GreaterThan",
///                     "threshold": float(90),
///                 },
///                 "scale_action": {
///                     "direction": "Increase",
///                     "type": "ChangeCount",
///                     "value": 2,
///                     "cooldown": "PT1M",
///                 },
///             },
///             {
///                 "metric_trigger": {
///                     "metric_name": "Percentage CPU",
///                     "metric_resource_id": example_linux_virtual_machine_scale_set.id,
///                     "time_grain": "PT1M",
///                     "statistic": "Average",
///                     "time_window": "PT5M",
///                     "time_aggregation": "Average",
///                     "operator": "LessThan",
///                     "threshold": float(10),
///                 },
///                 "scale_action": {
///                     "direction": "Decrease",
///                     "type": "ChangeCount",
///                     "value": 2,
///                     "cooldown": "PT1M",
///                 },
///             },
///         ],
///         "fixed_date": {
///             "timezone": "Pacific Standard Time",
///             "start": "2020-07-01T00:00:00Z",
///             "end": "2020-07-31T23:59:59Z",
///         },
///     }],
///     notification={
///         "email": {
///             "send_to_subscription_administrator": True,
///             "send_to_subscription_co_administrator": True,
///             "custom_emails": ["admin@contoso.com"],
///         },
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "autoscalingTest",
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
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "exampleset",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         UpgradeMode = "Manual",
///         Sku = "Standard_F2",
///         Instances = 2,
///         AdminUsername = "myadmin",
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs
///             {
///                 Username = "myadmin",
///                 PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "TestNetworkProfile",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "TestIPConfiguration",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                     },
///                 },
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "StandardSSD_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleAutoscaleSetting = new Azure.Monitoring.AutoscaleSetting("example", new()
///     {
///         Name = "myAutoscaleSetting",
///         Enabled = true,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         TargetResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///         Profiles = new[]
///         {
///             new Azure.Monitoring.Inputs.AutoscaleSettingProfileArgs
///             {
///                 Name = "forJuly",
///                 Capacity = new Azure.Monitoring.Inputs.AutoscaleSettingProfileCapacityArgs
///                 {
///                     Default = 1,
///                     Minimum = 1,
///                     Maximum = 10,
///                 },
///                 Rules = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "GreaterThan",
///                             Threshold = 90,
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Increase",
///                             Type = "ChangeCount",
///                             Value = 2,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                     new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleArgs
///                     {
///                         MetricTrigger = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleMetricTriggerArgs
///                         {
///                             MetricName = "Percentage CPU",
///                             MetricResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///                             TimeGrain = "PT1M",
///                             Statistic = "Average",
///                             TimeWindow = "PT5M",
///                             TimeAggregation = "Average",
///                             Operator = "LessThan",
///                             Threshold = 10,
///                         },
///                         ScaleAction = new Azure.Monitoring.Inputs.AutoscaleSettingProfileRuleScaleActionArgs
///                         {
///                             Direction = "Decrease",
///                             Type = "ChangeCount",
///                             Value = 2,
///                             Cooldown = "PT1M",
///                         },
///                     },
///                 },
///                 FixedDate = new Azure.Monitoring.Inputs.AutoscaleSettingProfileFixedDateArgs
///                 {
///                     Timezone = "Pacific Standard Time",
///                     Start = "2020-07-01T00:00:00Z",
///                     End = "2020-07-31T23:59:59Z",
///                 },
///             },
///         },
///         Notification = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationArgs
///         {
///             Email = new Azure.Monitoring.Inputs.AutoscaleSettingNotificationEmailArgs
///             {
///                 SendToSubscriptionAdministrator = true,
///                 SendToSubscriptionCoAdministrator = true,
///                 CustomEmails = new[]
///                 {
///                     "admin@contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("autoscalingTest"),
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
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("exampleset"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			UpgradeMode:       pulumi.String("Manual"),
/// 			Sku:               pulumi.String("Standard_F2"),
/// 			Instances:         pulumi.Int(2),
/// 			AdminUsername:     pulumi.String("myadmin"),
/// 			AdminSshKeys: compute.LinuxVirtualMachineScaleSetAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineScaleSetAdminSshKeyArgs{
/// 					Username:  pulumi.String("myadmin"),
/// 					PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("TestNetworkProfile"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name:     pulumi.String("TestIPConfiguration"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("StandardSSD_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAutoscaleSetting(ctx, "example", &monitoring.AutoscaleSettingArgs{
/// 			Name:              pulumi.String("myAutoscaleSetting"),
/// 			Enabled:           pulumi.Bool(true),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			TargetResourceId:  exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 			Profiles: monitoring.AutoscaleSettingProfileArray{
/// 				&monitoring.AutoscaleSettingProfileArgs{
/// 					Name: pulumi.String("forJuly"),
/// 					Capacity: &monitoring.AutoscaleSettingProfileCapacityArgs{
/// 						Default: pulumi.Int(1),
/// 						Minimum: pulumi.Int(1),
/// 						Maximum: pulumi.Int(10),
/// 					},
/// 					Rules: monitoring.AutoscaleSettingProfileRuleArray{
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("GreaterThan"),
/// 								Threshold:        pulumi.Float64(90),
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Increase"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(2),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 						&monitoring.AutoscaleSettingProfileRuleArgs{
/// 							MetricTrigger: &monitoring.AutoscaleSettingProfileRuleMetricTriggerArgs{
/// 								MetricName:       pulumi.String("Percentage CPU"),
/// 								MetricResourceId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 								TimeGrain:        pulumi.String("PT1M"),
/// 								Statistic:        pulumi.String("Average"),
/// 								TimeWindow:       pulumi.String("PT5M"),
/// 								TimeAggregation:  pulumi.String("Average"),
/// 								Operator:         pulumi.String("LessThan"),
/// 								Threshold:        pulumi.Float64(10),
/// 							},
/// 							ScaleAction: &monitoring.AutoscaleSettingProfileRuleScaleActionArgs{
/// 								Direction: pulumi.String("Decrease"),
/// 								Type:      pulumi.String("ChangeCount"),
/// 								Value:     pulumi.Int(2),
/// 								Cooldown:  pulumi.String("PT1M"),
/// 							},
/// 						},
/// 					},
/// 					FixedDate: &monitoring.AutoscaleSettingProfileFixedDateArgs{
/// 						Timezone: pulumi.String("Pacific Standard Time"),
/// 						Start:    pulumi.String("2020-07-01T00:00:00Z"),
/// 						End:      pulumi.String("2020-07-31T23:59:59Z"),
/// 					},
/// 				},
/// 			},
/// 			Notification: &monitoring.AutoscaleSettingNotificationArgs{
/// 				Email: &monitoring.AutoscaleSettingNotificationEmailArgs{
/// 					SendToSubscriptionAdministrator:   pulumi.Bool(true),
/// 					SendToSubscriptionCoAdministrator: pulumi.Bool(true),
/// 					CustomEmails: pulumi.StringArray{
/// 						pulumi.String("admin@contoso.com"),
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
///   name     = "autoscalingTest"
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
/// resource "azure_compute_linuxvirtualmachinescaleset" "example" {
///   name                = "exampleset"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   upgrade_mode        = "Manual"
///   sku                 = "Standard_F2"
///   instances           = 2
///   admin_username      = "myadmin"
///   admin_ssh_keys {
///     username   = "myadmin"
///     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com"
///   }
///   network_interfaces {
///     name    = "TestNetworkProfile"
///     primary = true
///     ip_configurations {
///       name      = "TestIPConfiguration"
///       primary   = true
///       subnet_id = azure_network_subnet.example.id
///     }
///   }
///   os_disk = {
///     caching              = "ReadWrite"
///     storage_account_type = "StandardSSD_LRS"
///   }
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
/// }
/// resource "azure_monitoring_autoscalesetting" "example" {
///   name                = "myAutoscaleSetting"
///   enabled             = true
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   target_resource_id  = azure_compute_linuxvirtualmachinescaleset.example.id
///   profiles {
///     name = "forJuly"
///     capacity = {
///       default = 1
///       minimum = 1
///       maximum = 10
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "GreaterThan"
///         threshold          = 90
///       }
///       scale_action = {
///         direction = "Increase"
///         type      = "ChangeCount"
///         value     = "2"
///         cooldown  = "PT1M"
///       }
///     }
///     rules {
///       metric_trigger = {
///         metric_name        = "Percentage CPU"
///         metric_resource_id = azure_compute_linuxvirtualmachinescaleset.example.id
///         time_grain         = "PT1M"
///         statistic          = "Average"
///         time_window        = "PT5M"
///         time_aggregation   = "Average"
///         operator           = "LessThan"
///         threshold          = 10
///       }
///       scale_action = {
///         direction = "Decrease"
///         type      = "ChangeCount"
///         value     = "2"
///         cooldown  = "PT1M"
///       }
///     }
///     fixed_date = {
///       timezone = "Pacific Standard Time"
///       start    = "2020-07-01T00:00:00Z"
///       end      = "2020-07-31T23:59:59Z"
///     }
///   }
///   notification = {
///     email = {
///       send_to_subscription_administrator    = true
///       send_to_subscription_co_administrator = true
///       custom_emails                         = ["admin@contoso.com"]
///     }
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.monitoring.AutoscaleSetting;
/// import com.pulumi.azure.monitoring.AutoscaleSettingArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileCapacityArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleMetricTriggerArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileRuleScaleActionArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingProfileFixedDateArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationArgs;
/// import com.pulumi.azure.monitoring.inputs.AutoscaleSettingNotificationEmailArgs;
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
///             .name("autoscalingTest")
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
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("exampleset")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .upgradeMode("Manual")
///             .sku("Standard_F2")
///             .instances(2)
///             .adminUsername("myadmin")
///             .adminSshKeys(LinuxVirtualMachineScaleSetAdminSshKeyArgs.builder()
///                 .username("myadmin")
///                 .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("TestNetworkProfile")
///                 .primary(true)
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("TestIPConfiguration")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .build())
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("StandardSSD_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleAutoscaleSetting = new AutoscaleSetting("exampleAutoscaleSetting", AutoscaleSettingArgs.builder()
///             .name("myAutoscaleSetting")
///             .enabled(true)
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .targetResourceId(exampleLinuxVirtualMachineScaleSet.id())
///             .profiles(AutoscaleSettingProfileArgs.builder()
///                 .name("forJuly")
///                 .capacity(AutoscaleSettingProfileCapacityArgs.builder()
///                     .default_(1)
///                     .minimum(1)
///                     .maximum(10)
///                     .build())
///                 .rules(
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("GreaterThan")
///                             .threshold(90.0)
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Increase")
///                             .type("ChangeCount")
///                             .value(2)
///                             .cooldown("PT1M")
///                             .build())
///                         .build(),
///                     AutoscaleSettingProfileRuleArgs.builder()
///                         .metricTrigger(AutoscaleSettingProfileRuleMetricTriggerArgs.builder()
///                             .metricName("Percentage CPU")
///                             .metricResourceId(exampleLinuxVirtualMachineScaleSet.id())
///                             .timeGrain("PT1M")
///                             .statistic("Average")
///                             .timeWindow("PT5M")
///                             .timeAggregation("Average")
///                             .operator("LessThan")
///                             .threshold(10.0)
///                             .build())
///                         .scaleAction(AutoscaleSettingProfileRuleScaleActionArgs.builder()
///                             .direction("Decrease")
///                             .type("ChangeCount")
///                             .value(2)
///                             .cooldown("PT1M")
///                             .build())
///                         .build())
///                 .fixedDate(AutoscaleSettingProfileFixedDateArgs.builder()
///                     .timezone("Pacific Standard Time")
///                     .start("2020-07-01T00:00:00Z")
///                     .end("2020-07-31T23:59:59Z")
///                     .build())
///                 .build())
///             .notification(AutoscaleSettingNotificationArgs.builder()
///                 .email(AutoscaleSettingNotificationEmailArgs.builder()
///                     .sendToSubscriptionAdministrator(true)
///                     .sendToSubscriptionCoAdministrator(true)
///                     .customEmails("admin@contoso.com")
///                     .build())
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
///       name: autoscalingTest
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
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: exampleset
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       upgradeMode: Manual
///       sku: Standard_F2
///       instances: 2
///       adminUsername: myadmin
///       adminSshKeys:
///         - username: myadmin
///           publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCsTcryUl51Q2VSEHqDRNmceUFo55ZtcIwxl2QITbN1RREti5ml/VTytC0yeBOvnZA4x4CFpdw/lCDPk0yrH9Ei5vVkXmOrExdTlT3qI7YaAzj1tUVlBd4S6LX1F7y6VLActvdHuDDuXZXzCDd/97420jrDfWZqJMlUK/EmCE5ParCeHIRIvmBxcEnGfFIsw8xQZl0HphxWOtJil8qsUWSdMyCiJYYQpMoMliO99X40AUc4/AlsyPyT5ddbKk08YrZ+rKDVHF7o29rh4vi5MmHkVgVQHKiKybWlHq+b71gIAUQk9wrJxD+dqt4igrmDSpIjfjwnd+l5UIn5fJSO5DYV4YT/4hwK7OKmuo7OFHD0WyY5YnkYEMtFgzemnRBdE8ulcT60DQpVgRMXFWHvhyCWy0L6sgj1QWDZlLpvsIvNfHsyhKFMG1frLnMt/nP0+YCcfg+v1JYeCKjeoJxB8DWcRBsjzItY0CGmzP8UYZiYKl/2u+2TgFS5r7NWH11bxoUzjKdaa1NLw+ieA8GlBFfCbfWe6YVB9ggUte4VtYFMZGxOjS2bAiYtfgTKFJv+XqORAwExG6+G2eDxIDyo80/OA9IG7Xv/jwQr7D6KDjDuULFcN/iTxuttoKrHeYz1hf5ZQlBdllwJHYx6fK2g8kha6r2JIQKocvsAXiiONqSfw== hello@world.com
///       networkInterfaces:
///         - name: TestNetworkProfile
///           primary: true
///           ipConfigurations:
///             - name: TestIPConfiguration
///               primary: true
///               subnetId: ${exampleSubnet.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: StandardSSD_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleAutoscaleSetting:
///     type: azure:monitoring:AutoscaleSetting
///     name: example
///     properties:
///       name: myAutoscaleSetting
///       enabled: true
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       targetResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///       profiles:
///         - name: forJuly
///           capacity:
///             default: 1
///             minimum: 1
///             maximum: 10
///           rules:
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: GreaterThan
///                 threshold: 90
///               scaleAction:
///                 direction: Increase
///                 type: ChangeCount
///                 value: '2'
///                 cooldown: PT1M
///             - metricTrigger:
///                 metricName: Percentage CPU
///                 metricResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///                 timeGrain: PT1M
///                 statistic: Average
///                 timeWindow: PT5M
///                 timeAggregation: Average
///                 operator: LessThan
///                 threshold: 10
///               scaleAction:
///                 direction: Decrease
///                 type: ChangeCount
///                 value: '2'
///                 cooldown: PT1M
///           fixedDate:
///             timezone: Pacific Standard Time
///             start: 2020-07-01T00:00:00Z
///             end: 2020-07-31T23:59:59Z
///       notification:
///         email:
///           sendToSubscriptionAdministrator: true
///           sendToSubscriptionCoAdministrator: true
///           customEmails:
///             - admin@contoso.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2022-10-01
///
/// ## Import
///
/// AutoScale Setting can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/autoscaleSetting:AutoscaleSetting example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/autoScaleSettings/setting1
/// ```
class AutoscaleSetting extends pulumi.CustomResource {
  /// Specifies whether automatic scaling is enabled for the target resource. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the AutoScale Setting. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies a `notification` block as defined below.
  late final pulumi.Output<AutoscaleSettingNotification?> notification;
  /// A `predictive` block as defined below.
  late final pulumi.Output<AutoscaleSettingPredictive?> predictive;
  /// Specifies one or more (up to 20) `profile` blocks as defined below.
  late final pulumi.Output<List<AutoscaleSettingProfile>> profiles;
  /// The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [AutoscaleSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscaleSetting]. {@macro pulumi_monitoring_autoscale_setting_autoscale_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscaleSetting(
    String name, {
    AutoscaleSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/autoscaleSetting:AutoscaleSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<AutoscaleSettingNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predictive = registerOutput<AutoscaleSettingPredictive?>('predictive', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingPredictive.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profiles = registerOutput<List<AutoscaleSettingProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoscaleSettingProfile>(guardedValue, (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [AutoscaleSetting] resource's state with the given [name] and [id].
  static AutoscaleSetting get(
    String name,
    pulumi.Input<String> id, {
    AutoscaleSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoscaleSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoscaleSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/autoscaleSetting:AutoscaleSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<AutoscaleSettingNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predictive = registerOutput<AutoscaleSettingPredictive?>('predictive', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingPredictive.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profiles = registerOutput<List<AutoscaleSettingProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoscaleSettingProfile>(guardedValue, (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Creates a typed reference to an existing [AutoscaleSetting] resource.
  AutoscaleSetting.reference(String urn)
    : super(
        'azure:monitoring/autoscaleSetting:AutoscaleSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notification = registerOutput<AutoscaleSettingNotification?>('notification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    predictive = registerOutput<AutoscaleSettingPredictive?>('predictive', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoscaleSettingPredictive.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profiles = registerOutput<List<AutoscaleSettingProfile>>('profiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutoscaleSettingProfile>(guardedValue, (value) => AutoscaleSettingProfile.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
