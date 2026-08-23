import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vmshutdown_schedule_args.dart';
import 'global_vmshutdown_schedule_notification_settings.dart';
import 'global_vmshutdown_schedule_state.dart';

/// Manages automated shutdown schedules for Azure VMs that are not within an Azure DevTest Lab. While this is part of the DevTest Labs service in Azure,
/// this resource applies only to standard VMs, not DevTest Lab VMs. To manage automated shutdown schedules for DevTest Lab VMs, reference the
/// `azure.devtest.Schedule` resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "sample-rg",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "sample-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "sample-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "sample-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "SampleVM",
///     location: example.location,
///     resourceGroupName: example.name,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     size: "Standard_B2s",
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     osDisk: {
///         name: "myosdisk-example",
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     adminUsername: "testadmin",
///     adminPassword: "Password1234!",
///     disablePasswordAuthentication: false,
/// });
/// const exampleGlobalVMShutdownSchedule = new azure.devtest.GlobalVMShutdownSchedule("example", {
///     virtualMachineId: exampleLinuxVirtualMachine.id,
///     location: example.location,
///     enabled: true,
///     dailyRecurrenceTime: "1100",
///     timezone: "Pacific Standard Time",
///     notificationSettings: {
///         enabled: true,
///         timeInMinutes: 60,
///         webhookUrl: "https://sample-webhook-url.example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="sample-rg",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="sample-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="sample-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="sample-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="SampleVM",
///     location=example.location,
///     resource_group_name=example.name,
///     network_interface_ids=[example_network_interface.id],
///     size="Standard_B2s",
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     os_disk={
///         "name": "myosdisk-example",
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     admin_username="testadmin",
///     admin_password="Password1234!",
///     disable_password_authentication=False)
/// example_global_vm_shutdown_schedule = azure.devtest.GlobalVMShutdownSchedule("example",
///     virtual_machine_id=example_linux_virtual_machine.id,
///     location=example.location,
///     enabled=True,
///     daily_recurrence_time="1100",
///     timezone="Pacific Standard Time",
///     notification_settings={
///         "enabled": True,
///         "time_in_minutes": 60,
///         "webhook_url": "https://sample-webhook-url.example.com",
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
///         Name = "sample-rg",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "sample-vnet",
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
///         Name = "sample-subnet",
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
///         Name = "sample-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "SampleVM",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         Size = "Standard_B2s",
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Name = "myosdisk-example",
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         AdminUsername = "testadmin",
///         AdminPassword = "Password1234!",
///         DisablePasswordAuthentication = false,
///     });
///
///     var exampleGlobalVMShutdownSchedule = new Azure.DevTest.GlobalVMShutdownSchedule("example", new()
///     {
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
///         Location = example.Location,
///         Enabled = true,
///         DailyRecurrenceTime = "1100",
///         Timezone = "Pacific Standard Time",
///         NotificationSettings = new Azure.DevTest.Inputs.GlobalVMShutdownScheduleNotificationSettingsArgs
///         {
///             Enabled = true,
///             TimeInMinutes = 60,
///             WebhookUrl = "https://sample-webhook-url.example.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("sample-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("sample-vnet"),
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
/// 			Name:               pulumi.String("sample-subnet"),
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
/// 			Name:              pulumi.String("sample-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("SampleVM"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			Size: pulumi.String("Standard_B2s"),
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Name:               pulumi.String("myosdisk-example"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			AdminUsername:                 pulumi.String("testadmin"),
/// 			AdminPassword:                 pulumi.String("Password1234!"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devtest.NewGlobalVMShutdownSchedule(ctx, "example", &devtest.GlobalVMShutdownScheduleArgs{
/// 			VirtualMachineId:    exampleLinuxVirtualMachine.ID(),
/// 			Location:            example.Location,
/// 			Enabled:             pulumi.Bool(true),
/// 			DailyRecurrenceTime: pulumi.String("1100"),
/// 			Timezone:            pulumi.String("Pacific Standard Time"),
/// 			NotificationSettings: &devtest.GlobalVMShutdownScheduleNotificationSettingsArgs{
/// 				Enabled:       pulumi.Bool(true),
/// 				TimeInMinutes: pulumi.Int(60),
/// 				WebhookUrl:    pulumi.String("https://sample-webhook-url.example.com"),
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
///   name     = "sample-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "sample-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "sample-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_networkinterface" "example" {
///   name                = "sample-nic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "testconfiguration1"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_compute_linuxvirtualmachine" "example" {
///   name                  = "SampleVM"
///   location              = azure_core_resourcegroup.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   network_interface_ids = [azure_network_networkinterface.example.id]
///   size                  = "Standard_B2s"
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
///   os_disk = {
///     name                 = "myosdisk-example"
///     caching              = "ReadWrite"
///     storage_account_type = "Standard_LRS"
///   }
///   admin_username                  = "testadmin"
///   admin_password                  = "Password1234!"
///   disable_password_authentication = false
/// }
/// resource "azure_devtest_globalvmshutdownschedule" "example" {
///   virtual_machine_id    = azure_compute_linuxvirtualmachine.example.id
///   location              = azure_core_resourcegroup.example.location
///   enabled               = true
///   daily_recurrence_time = "1100"
///   timezone              = "Pacific Standard Time"
///   notification_settings = {
///     enabled         = true
///     time_in_minutes = "60"
///     webhook_url     = "https://sample-webhook-url.example.com"
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
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.devtest.GlobalVMShutdownSchedule;
/// import com.pulumi.azure.devtest.GlobalVMShutdownScheduleArgs;
/// import com.pulumi.azure.devtest.inputs.GlobalVMShutdownScheduleNotificationSettingsArgs;
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
///             .name("sample-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("sample-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("sample-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("sample-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("SampleVM")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .size("Standard_B2s")
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .name("myosdisk-example")
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .adminUsername("testadmin")
///             .adminPassword("Password1234!")
///             .disablePasswordAuthentication(false)
///             .build());
///
///         var exampleGlobalVMShutdownSchedule = new GlobalVMShutdownSchedule("exampleGlobalVMShutdownSchedule", GlobalVMShutdownScheduleArgs.builder()
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
///             .location(example.location())
///             .enabled(true)
///             .dailyRecurrenceTime("1100")
///             .timezone("Pacific Standard Time")
///             .notificationSettings(GlobalVMShutdownScheduleNotificationSettingsArgs.builder()
///                 .enabled(true)
///                 .timeInMinutes(60)
///                 .webhookUrl("https://sample-webhook-url.example.com")
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
///       name: sample-rg
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: sample-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: sample-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: sample-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: SampleVM
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       size: Standard_B2s
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       osDisk:
///         name: myosdisk-example
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       adminUsername: testadmin
///       adminPassword: Password1234!
///       disablePasswordAuthentication: false
///   exampleGlobalVMShutdownSchedule:
///     type: azure:devtest:GlobalVMShutdownSchedule
///     name: example
///     properties:
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
///       location: ${example.location}
///       enabled: true
///       dailyRecurrenceTime: '1100'
///       timezone: Pacific Standard Time
///       notificationSettings:
///         enabled: true
///         timeInMinutes: '60'
///         webhookUrl: https://sample-webhook-url.example.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// An existing Dev Test Global Shutdown Schedule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/globalVMShutdownSchedule:GlobalVMShutdownSchedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/sample-rg/providers/Microsoft.DevTestLab/schedules/shutdown-computevm-SampleVM
/// ```
///
/// The name of the resource within the `resource id` will always follow the format `shutdown-computevm-&lt;VM Name&gt;` where `&lt;VM Name&gt;` is replaced by the name of the target Virtual Machine
class GlobalVMShutdownSchedule extends pulumi.CustomResource {
  /// The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)
  late final pulumi.Output<String> dailyRecurrenceTime;
  /// Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The notification setting of a schedule. A `notificationSettings` block as defined below.
  late final pulumi.Output<GlobalVMShutdownScheduleNotificationSettings> notificationSettings;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  late final pulumi.Output<String> timezone;
  /// The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [GlobalVMShutdownSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalVMShutdownSchedule]. {@macro pulumi_devtest_global_vmshutdown_schedule_global_vmshutdown_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalVMShutdownSchedule(
    String name, {
    GlobalVMShutdownScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/globalVMShutdownSchedule:GlobalVMShutdownSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dailyRecurrenceTime = registerOutput<String>('dailyRecurrenceTime');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    notificationSettings = registerOutput<GlobalVMShutdownScheduleNotificationSettings>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalVMShutdownScheduleNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timezone = registerOutput<String>('timezone');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [GlobalVMShutdownSchedule] resource's state with the given [name] and [id].
  static GlobalVMShutdownSchedule get(
    String name,
    pulumi.Input<String> id, {
    GlobalVMShutdownScheduleState? state,
  }) {
    return GlobalVMShutdownSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalVMShutdownSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/globalVMShutdownSchedule:GlobalVMShutdownSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dailyRecurrenceTime = registerOutput<String>('dailyRecurrenceTime');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    notificationSettings = registerOutput<GlobalVMShutdownScheduleNotificationSettings>('notificationSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalVMShutdownScheduleNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timezone = registerOutput<String>('timezone');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
