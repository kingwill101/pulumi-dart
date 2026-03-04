import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_runbook_worker_args.dart';
import 'hybrid_runbook_worker_state.dart';

/// Manages a Automation Hybrid Runbook Worker.
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
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleHybridRunbookWorkerGroup = new azure.automation.HybridRunbookWorkerGroup("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     resourceGroupName: example.name,
///     addressSpaces: ["192.168.1.0/24"],
///     location: example.location,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["192.168.1.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "vm-example",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-vm",
///     location: example.location,
///     resourceGroupName: example.name,
///     size: "Standard_B1s",
///     adminUsername: "testadmin",
///     adminPassword: "Password1234!",
///     disablePasswordAuthentication: false,
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     networkInterfaceIds: [exampleNetworkInterface.id],
/// });
/// const exampleHybridRunbookWorker = new azure.automation.HybridRunbookWorker("example", {
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     workerGroupName: exampleHybridRunbookWorkerGroup.name,
///     vmResourceId: exampleLinuxVirtualMachine.id,
///     workerId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_hybrid_runbook_worker_group = azure.automation.HybridRunbookWorkerGroup("example",
///     name="example",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     resource_group_name=example.name,
///     address_spaces=["192.168.1.0/24"],
///     location=example.location)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["192.168.1.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "vm-example",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-vm",
///     location=example.location,
///     resource_group_name=example.name,
///     size="Standard_B1s",
///     admin_username="testadmin",
///     admin_password="Password1234!",
///     disable_password_authentication=False,
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     network_interface_ids=[example_network_interface.id])
/// example_hybrid_runbook_worker = azure.automation.HybridRunbookWorker("example",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     worker_group_name=example_hybrid_runbook_worker_group.name,
///     vm_resource_id=example_linux_virtual_machine.id,
///     worker_id="00000000-0000-0000-0000-000000000000")
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
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleHybridRunbookWorkerGroup = new Azure.Automation.HybridRunbookWorkerGroup("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.1.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "192.168.1.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "vm-example",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-vm",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Size = "Standard_B1s",
///         AdminUsername = "testadmin",
///         AdminPassword = "Password1234!",
///         DisablePasswordAuthentication = false,
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///     });
///
///     var exampleHybridRunbookWorker = new Azure.Automation.HybridRunbookWorker("example", new()
///     {
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         WorkerGroupName = exampleHybridRunbookWorkerGroup.Name,
///         VmResourceId = exampleLinuxVirtualMachine.Id,
///         WorkerId = "00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("example-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHybridRunbookWorkerGroup, err := automation.NewHybridRunbookWorkerGroup(ctx, "example", &automation.HybridRunbookWorkerGroupArgs{
/// 			Name:                  pulumi.String("example"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("vm-example"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.String("example-vm"),
/// 			Location:                      example.Location,
/// 			ResourceGroupName:             example.Name,
/// 			Size:                          pulumi.String("Standard_B1s"),
/// 			AdminUsername:                 pulumi.String("testadmin"),
/// 			AdminPassword:                 pulumi.String("Password1234!"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewHybridRunbookWorker(ctx, "example", &automation.HybridRunbookWorkerArgs{
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			WorkerGroupName:       exampleHybridRunbookWorkerGroup.Name,
/// 			VmResourceId:          exampleLinuxVirtualMachine.ID(),
/// 			WorkerId:              pulumi.String("00000000-0000-0000-0000-000000000000"),
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
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.HybridRunbookWorkerGroup;
/// import com.pulumi.azure.automation.HybridRunbookWorkerGroupArgs;
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
/// import com.pulumi.azure.automation.HybridRunbookWorker;
/// import com.pulumi.azure.automation.HybridRunbookWorkerArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleHybridRunbookWorkerGroup = new HybridRunbookWorkerGroup("exampleHybridRunbookWorkerGroup", HybridRunbookWorkerGroupArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .resourceGroupName(example.name())
///             .addressSpaces("192.168.1.0/24")
///             .location(example.location())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("192.168.1.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("vm-example")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-vm")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .size("Standard_B1s")
///             .adminUsername("testadmin")
///             .adminPassword("Password1234!")
///             .disablePasswordAuthentication(false)
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .build());
///
///         var exampleHybridRunbookWorker = new HybridRunbookWorker("exampleHybridRunbookWorker", HybridRunbookWorkerArgs.builder()
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .workerGroupName(exampleHybridRunbookWorkerGroup.name())
///             .vmResourceId(exampleLinuxVirtualMachine.id())
///             .workerId("00000000-0000-0000-0000-000000000000")
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
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleHybridRunbookWorkerGroup:
///     type: azure:automation:HybridRunbookWorkerGroup
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 192.168.1.0/24
///       location: ${example.location}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 192.168.1.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: vm-example
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-vm
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       size: Standard_B1s
///       adminUsername: testadmin
///       adminPassword: Password1234!
///       disablePasswordAuthentication: false
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///   exampleHybridRunbookWorker:
///     type: azure:automation:HybridRunbookWorker
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       workerGroupName: ${exampleHybridRunbookWorkerGroup.name}
///       vmResourceId: ${exampleLinuxVirtualMachine.id}
///       workerId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/hybridRunbookWorker:HybridRunbookWorker example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/hybridRunbookWorkerGroups/group1/hybridRunbookWorkers/00000000-0000-0000-0000-000000000000
/// ```
class HybridRunbookWorker extends pulumi.CustomResource {
  /// The name of the automation account in which the Hybrid Worker is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;

  /// The IP address of assigned machine.
  late final pulumi.Output<String> ip;

  /// Last Heartbeat from the Worker.
  late final pulumi.Output<String> lastSeenDateTime;

  /// The registration time of the worker machine.
  late final pulumi.Output<String> registrationDateTime;

  /// The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the virtual machine used for this HybridWorker. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> vmResourceId;

  /// The name of the HybridWorker Group. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> workerGroupName;

  /// Specify the ID of this HybridWorker in UUID notation. Changing this forces a new Automation to be created.
  late final pulumi.Output<String> workerId;

  /// The name of HybridWorker.
  late final pulumi.Output<String> workerName;

  /// The type of the HybridWorker, the possible values are `HybridV1` and `HybridV2`.
  late final pulumi.Output<String> workerType;

  /// Creates a new [HybridRunbookWorker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridRunbookWorker]. {@macro pulumi_automation_hybrid_runbook_worker_hybrid_runbook_worker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridRunbookWorker(
    String name, {
    HybridRunbookWorkerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/hybridRunbookWorker:HybridRunbookWorker',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    ip = registerOutput<String>('ip');
    lastSeenDateTime = registerOutput<String>('lastSeenDateTime');
    registrationDateTime = registerOutput<String>('registrationDateTime');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    vmResourceId = registerOutput<String>('vmResourceId');
    workerGroupName = registerOutput<String>('workerGroupName');
    workerId = registerOutput<String>('workerId');
    workerName = registerOutput<String>('workerName');
    workerType = registerOutput<String>('workerType');
  }

  /// Gets an existing [HybridRunbookWorker] resource's state with the given [name] and [id].
  static HybridRunbookWorker get(
    String name,
    pulumi.Input<String> id, {
    HybridRunbookWorkerState? state,
  }) {
    return HybridRunbookWorker._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HybridRunbookWorker._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:automation/hybridRunbookWorker:HybridRunbookWorker',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    ip = registerOutput<String>('ip');
    lastSeenDateTime = registerOutput<String>('lastSeenDateTime');
    registrationDateTime = registerOutput<String>('registrationDateTime');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    vmResourceId = registerOutput<String>('vmResourceId');
    workerGroupName = registerOutput<String>('workerGroupName');
    workerId = registerOutput<String>('workerId');
    workerName = registerOutput<String>('workerName');
    workerType = registerOutput<String>('workerType');
  }
}
