import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_association_args.dart';
import 'data_collection_rule_association_state.dart';

/// Manages a Data Collection Rule Association.
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
///     name: "virtualnetwork",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_B1ls",
///     adminUsername: "adminuser",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     adminPassword: "example-Password@7890",
///     disablePasswordAuthentication: false,
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
/// });
/// const exampleDataCollectionRule = new azure.monitoring.DataCollectionRule("example", {
///     name: "example-dcr",
///     resourceGroupName: example.name,
///     location: example.location,
///     destinations: {
///         azureMonitorMetrics: {
///             name: "example-destination-metrics",
///         },
///     },
///     dataFlows: [{
///         streams: ["Microsoft-InsightsMetrics"],
///         destinations: ["example-destination-metrics"],
///     }],
/// });
/// const exampleDataCollectionEndpoint = new azure.monitoring.DataCollectionEndpoint("example", {
///     name: "example-dce",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// // associate to a Data Collection Rule
/// const example1 = new azure.monitoring.DataCollectionRuleAssociation("example1", {
///     name: "example1-dcra",
///     targetResourceId: exampleLinuxVirtualMachine.id,
///     dataCollectionRuleId: exampleDataCollectionRule.id,
///     description: "example",
/// });
/// // associate to a Data Collection Endpoint
/// const example2 = new azure.monitoring.DataCollectionRuleAssociation("example2", {
///     targetResourceId: exampleLinuxVirtualMachine.id,
///     dataCollectionEndpointId: exampleDataCollectionEndpoint.id,
///     description: "example",
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
///     name="virtualnetwork",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_B1ls",
///     admin_username="adminuser",
///     network_interface_ids=[example_network_interface.id],
///     admin_password="example-Password@7890",
///     disable_password_authentication=False,
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_data_collection_rule = azure.monitoring.DataCollectionRule("example",
///     name="example-dcr",
///     resource_group_name=example.name,
///     location=example.location,
///     destinations={
///         "azure_monitor_metrics": {
///             "name": "example-destination-metrics",
///         },
///     },
///     data_flows=[{
///         "streams": ["Microsoft-InsightsMetrics"],
///         "destinations": ["example-destination-metrics"],
///     }])
/// example_data_collection_endpoint = azure.monitoring.DataCollectionEndpoint("example",
///     name="example-dce",
///     resource_group_name=example.name,
///     location=example.location)
/// # associate to a Data Collection Rule
/// example1 = azure.monitoring.DataCollectionRuleAssociation("example1",
///     name="example1-dcra",
///     target_resource_id=example_linux_virtual_machine.id,
///     data_collection_rule_id=example_data_collection_rule.id,
///     description="example")
/// # associate to a Data Collection Endpoint
/// example2 = azure.monitoring.DataCollectionRuleAssociation("example2",
///     target_resource_id=example_linux_virtual_machine.id,
///     data_collection_endpoint_id=example_data_collection_endpoint.id,
///     description="example")
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
///         Name = "virtualnetwork",
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
///         Name = "subnet",
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
///         Name = "nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_B1ls",
///         AdminUsername = "adminuser",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         AdminPassword = "example-Password@7890",
///         DisablePasswordAuthentication = false,
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
///     });
///
///     var exampleDataCollectionRule = new Azure.Monitoring.DataCollectionRule("example", new()
///     {
///         Name = "example-dcr",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Destinations = new Azure.Monitoring.Inputs.DataCollectionRuleDestinationsArgs
///         {
///             AzureMonitorMetrics = new Azure.Monitoring.Inputs.DataCollectionRuleDestinationsAzureMonitorMetricsArgs
///             {
///                 Name = "example-destination-metrics",
///             },
///         },
///         DataFlows = new[]
///         {
///             new Azure.Monitoring.Inputs.DataCollectionRuleDataFlowArgs
///             {
///                 Streams = new[]
///                 {
///                     "Microsoft-InsightsMetrics",
///                 },
///                 Destinations = new[]
///                 {
///                     "example-destination-metrics",
///                 },
///             },
///         },
///     });
///
///     var exampleDataCollectionEndpoint = new Azure.Monitoring.DataCollectionEndpoint("example", new()
///     {
///         Name = "example-dce",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     // associate to a Data Collection Rule
///     var example1 = new Azure.Monitoring.DataCollectionRuleAssociation("example1", new()
///     {
///         Name = "example1-dcra",
///         TargetResourceId = exampleLinuxVirtualMachine.Id,
///         DataCollectionRuleId = exampleDataCollectionRule.Id,
///         Description = "example",
///     });
///
///     // associate to a Data Collection Endpoint
///     var example2 = new Azure.Monitoring.DataCollectionRuleAssociation("example2", new()
///     {
///         TargetResourceId = exampleLinuxVirtualMachine.Id,
///         DataCollectionEndpointId = exampleDataCollectionEndpoint.Id,
///         Description = "example",
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("virtualnetwork"),
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
/// 			Name:               pulumi.String("subnet"),
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
/// 			Name:              pulumi.String("nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("machine"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_B1ls"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			AdminPassword:                 pulumi.String("example-Password@7890"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataCollectionRule, err := monitoring.NewDataCollectionRule(ctx, "example", &monitoring.DataCollectionRuleArgs{
/// 			Name:              pulumi.String("example-dcr"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Destinations: &monitoring.DataCollectionRuleDestinationsArgs{
/// 				AzureMonitorMetrics: &monitoring.DataCollectionRuleDestinationsAzureMonitorMetricsArgs{
/// 					Name: pulumi.String("example-destination-metrics"),
/// 				},
/// 			},
/// 			DataFlows: monitoring.DataCollectionRuleDataFlowArray{
/// 				&monitoring.DataCollectionRuleDataFlowArgs{
/// 					Streams: pulumi.StringArray{
/// 						pulumi.String("Microsoft-InsightsMetrics"),
/// 					},
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("example-destination-metrics"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataCollectionEndpoint, err := monitoring.NewDataCollectionEndpoint(ctx, "example", &monitoring.DataCollectionEndpointArgs{
/// 			Name:              pulumi.String("example-dce"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// associate to a Data Collection Rule
/// 		_, err = monitoring.NewDataCollectionRuleAssociation(ctx, "example1", &monitoring.DataCollectionRuleAssociationArgs{
/// 			Name:                 pulumi.String("example1-dcra"),
/// 			TargetResourceId:     exampleLinuxVirtualMachine.ID(),
/// 			DataCollectionRuleId: exampleDataCollectionRule.ID(),
/// 			Description:          pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// associate to a Data Collection Endpoint
/// 		_, err = monitoring.NewDataCollectionRuleAssociation(ctx, "example2", &monitoring.DataCollectionRuleAssociationArgs{
/// 			TargetResourceId:         exampleLinuxVirtualMachine.ID(),
/// 			DataCollectionEndpointId: exampleDataCollectionEndpoint.ID(),
/// 			Description:              pulumi.String("example"),
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
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.monitoring.DataCollectionRule;
/// import com.pulumi.azure.monitoring.DataCollectionRuleArgs;
/// import com.pulumi.azure.monitoring.inputs.DataCollectionRuleDestinationsArgs;
/// import com.pulumi.azure.monitoring.inputs.DataCollectionRuleDestinationsAzureMonitorMetricsArgs;
/// import com.pulumi.azure.monitoring.inputs.DataCollectionRuleDataFlowArgs;
/// import com.pulumi.azure.monitoring.DataCollectionEndpoint;
/// import com.pulumi.azure.monitoring.DataCollectionEndpointArgs;
/// import com.pulumi.azure.monitoring.DataCollectionRuleAssociation;
/// import com.pulumi.azure.monitoring.DataCollectionRuleAssociationArgs;
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
///             .name("virtualnetwork")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_B1ls")
///             .adminUsername("adminuser")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .adminPassword("example-Password@7890")
///             .disablePasswordAuthentication(false)
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
///             .build());
///
///         var exampleDataCollectionRule = new DataCollectionRule("exampleDataCollectionRule", DataCollectionRuleArgs.builder()
///             .name("example-dcr")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .destinations(DataCollectionRuleDestinationsArgs.builder()
///                 .azureMonitorMetrics(DataCollectionRuleDestinationsAzureMonitorMetricsArgs.builder()
///                     .name("example-destination-metrics")
///                     .build())
///                 .build())
///             .dataFlows(DataCollectionRuleDataFlowArgs.builder()
///                 .streams("Microsoft-InsightsMetrics")
///                 .destinations("example-destination-metrics")
///                 .build())
///             .build());
///
///         var exampleDataCollectionEndpoint = new DataCollectionEndpoint("exampleDataCollectionEndpoint", DataCollectionEndpointArgs.builder()
///             .name("example-dce")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         // associate to a Data Collection Rule
///         var example1 = new DataCollectionRuleAssociation("example1", DataCollectionRuleAssociationArgs.builder()
///             .name("example1-dcra")
///             .targetResourceId(exampleLinuxVirtualMachine.id())
///             .dataCollectionRuleId(exampleDataCollectionRule.id())
///             .description("example")
///             .build());
///
///         // associate to a Data Collection Endpoint
///         var example2 = new DataCollectionRuleAssociation("example2", DataCollectionRuleAssociationArgs.builder()
///             .targetResourceId(exampleLinuxVirtualMachine.id())
///             .dataCollectionEndpointId(exampleDataCollectionEndpoint.id())
///             .description("example")
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
///       name: virtualnetwork
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_B1ls
///       adminUsername: adminuser
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       adminPassword: example-Password@7890
///       disablePasswordAuthentication: false
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleDataCollectionRule:
///     type: azure:monitoring:DataCollectionRule
///     name: example
///     properties:
///       name: example-dcr
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       destinations:
///         azureMonitorMetrics:
///           name: example-destination-metrics
///       dataFlows:
///         - streams:
///             - Microsoft-InsightsMetrics
///           destinations:
///             - example-destination-metrics
///   exampleDataCollectionEndpoint:
///     type: azure:monitoring:DataCollectionEndpoint
///     name: example
///     properties:
///       name: example-dce
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   # associate to a Data Collection Rule
///   example1:
///     type: azure:monitoring:DataCollectionRuleAssociation
///     properties:
///       name: example1-dcra
///       targetResourceId: ${exampleLinuxVirtualMachine.id}
///       dataCollectionRuleId: ${exampleDataCollectionRule.id}
///       description: example
///   # associate to a Data Collection Endpoint
///   example2:
///     type: azure:monitoring:DataCollectionRuleAssociation
///     properties:
///       targetResourceId: ${exampleLinuxVirtualMachine.id}
///       dataCollectionEndpointId: ${exampleDataCollectionEndpoint.id}
///       description: example
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2023-03-11
///
/// ## Import
///
/// Data Collection Rules Association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/dataCollectionRuleAssociation:DataCollectionRuleAssociation example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1/providers/Microsoft.Insights/dataCollectionRuleAssociations/dca1
/// ```
class DataCollectionRuleAssociation extends pulumi.CustomResource {
  /// The ID of the Data Collection Endpoint which will be associated to the target resource.
  late final pulumi.Output<String?> dataCollectionEndpointId;
  /// The ID of the Data Collection Rule which will be associated to the target resource.
  ///
  /// > **Note:** Exactly one of `data_collection_endpoint_id` and `data_collection_rule_id` blocks must be specified.
  late final pulumi.Output<String?> dataCollectionRuleId;
  /// The description of the Data Collection Rule Association.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this Data Collection Rule Association. Changing this forces a new Data Collection Rule Association to be created. Defaults to `configurationAccessEndpoint`.
  ///
  /// > **Note:** `name` is required when `data_collection_rule_id` is specified. And when `data_collection_endpoint_id` is specified, the `name` is populated with `configurationAccessEndpoint`.
  late final pulumi.Output<String> name;
  /// The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [DataCollectionRuleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionRuleAssociation]. {@macro pulumi_monitoring_data_collection_rule_association_data_collection_rule_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionRuleAssociation(
    String name, {
    DataCollectionRuleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/dataCollectionRuleAssociation:DataCollectionRuleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataCollectionEndpointId = registerOutput<String?>('dataCollectionEndpointId');
    this.dataCollectionRuleId = registerOutput<String?>('dataCollectionRuleId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [DataCollectionRuleAssociation] resource's state with the given [name] and [id].
  static DataCollectionRuleAssociation get(
    String name,
    pulumi.Input<String> id, {
    DataCollectionRuleAssociationState? state,
  }) {
    return DataCollectionRuleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataCollectionRuleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/dataCollectionRuleAssociation:DataCollectionRuleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataCollectionEndpointId = registerOutput<String?>('dataCollectionEndpointId');
    this.dataCollectionRuleId = registerOutput<String?>('dataCollectionRuleId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.targetResourceId = registerOutput<String>('targetResourceId');
  }
}
