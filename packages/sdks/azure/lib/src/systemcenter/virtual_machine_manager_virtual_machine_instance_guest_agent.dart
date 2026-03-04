import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_virtual_machine_instance_guest_agent_args.dart';
import 'virtual_machine_manager_virtual_machine_instance_guest_agent_state.dart';

/// Manages a System Center Virtual Machine Manager Virtual Machine Instance Guest Agent.
///
/// &gt; **Note:** By request of the service team the provider is no longer automatically registering the `Microsoft.ScVmm` Resource Provider for this resource. To register it you can run `az provider register --namespace Microsoft.ScVmm`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleArcMachine = new azure.arcmachine.ArcMachine("example", {
///     name: "example-arcmachine",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     kind: "SCVMM",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleVirtualMachineManagerServer = new azure.systemcenter.VirtualMachineManagerServer("example", {
///     name: "example-scvmmms",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     customLocationId: "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///     fqdn: "example.labtest",
///     username: "testUser",
///     password: "H@Sh1CoR3!",
/// });
/// const example = azure.systemcenter.getVirtualMachineManagerInventoryItemsOutput({
///     inventoryType: "Cloud",
///     systemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.id,
/// });
/// const exampleVirtualMachineManagerCloud = new azure.systemcenter.VirtualMachineManagerCloud("example", {
///     name: "example-scvmmc",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     customLocationId: exampleVirtualMachineManagerServer.customLocationId,
///     systemCenterVirtualMachineManagerServerInventoryItemId: example.apply(example => example.inventoryItems?.[0]?.id),
/// });
/// const example2 = azure.systemcenter.getVirtualMachineManagerInventoryItemsOutput({
///     inventoryType: "VirtualMachineTemplate",
///     systemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.id,
/// });
/// const exampleVirtualMachineManagerVirtualMachineTemplate = new azure.systemcenter.VirtualMachineManagerVirtualMachineTemplate("example", {
///     name: "example-scvmmvmt",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     customLocationId: exampleVirtualMachineManagerServer.customLocationId,
///     systemCenterVirtualMachineManagerServerInventoryItemId: example2.apply(example2 => example2.inventoryItems?.[0]?.id),
/// });
/// const exampleVirtualMachineManagerVirtualMachineInstance = new azure.systemcenter.VirtualMachineManagerVirtualMachineInstance("example", {
///     scopedResourceId: exampleArcMachine.id,
///     customLocationId: exampleVirtualMachineManagerServer.customLocationId,
///     infrastructure: {
///         checkpointType: "Standard",
///         systemCenterVirtualMachineManagerCloudId: exampleVirtualMachineManagerCloud.id,
///         systemCenterVirtualMachineManagerTemplateId: exampleVirtualMachineManagerVirtualMachineTemplate.id,
///         systemCenterVirtualMachineManagerVirtualMachineServerId: exampleVirtualMachineManagerServer.id,
///     },
///     operatingSystem: {
///         adminPassword: "AdminPassword123!",
///     },
/// });
/// const exampleVirtualMachineManagerVirtualMachineInstanceGuestAgent = new azure.systemcenter.VirtualMachineManagerVirtualMachineInstanceGuestAgent("example", {
///     scopedResourceId: exampleArcMachine.id,
///     username: "Administrator",
///     password: "AdminPassword123!",
/// }, {
///     dependsOn: [exampleVirtualMachineManagerVirtualMachineInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_arc_machine = azure.arcmachine.ArcMachine("example",
///     name="example-arcmachine",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     kind="SCVMM",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_virtual_machine_manager_server = azure.systemcenter.VirtualMachineManagerServer("example",
///     name="example-scvmmms",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     custom_location_id="/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///     fqdn="example.labtest",
///     username="testUser",
///     password="H@Sh1CoR3!")
/// example = azure.systemcenter.get_virtual_machine_manager_inventory_items_output(inventory_type="Cloud",
///     system_center_virtual_machine_manager_server_id=example_virtual_machine_manager_server.id)
/// example_virtual_machine_manager_cloud = azure.systemcenter.VirtualMachineManagerCloud("example",
///     name="example-scvmmc",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     custom_location_id=example_virtual_machine_manager_server.custom_location_id,
///     system_center_virtual_machine_manager_server_inventory_item_id=example.inventory_items[0].id)
/// example2 = azure.systemcenter.get_virtual_machine_manager_inventory_items_output(inventory_type="VirtualMachineTemplate",
///     system_center_virtual_machine_manager_server_id=example_virtual_machine_manager_server.id)
/// example_virtual_machine_manager_virtual_machine_template = azure.systemcenter.VirtualMachineManagerVirtualMachineTemplate("example",
///     name="example-scvmmvmt",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     custom_location_id=example_virtual_machine_manager_server.custom_location_id,
///     system_center_virtual_machine_manager_server_inventory_item_id=example2.inventory_items[0].id)
/// example_virtual_machine_manager_virtual_machine_instance = azure.systemcenter.VirtualMachineManagerVirtualMachineInstance("example",
///     scoped_resource_id=example_arc_machine.id,
///     custom_location_id=example_virtual_machine_manager_server.custom_location_id,
///     infrastructure={
///         "checkpoint_type": "Standard",
///         "system_center_virtual_machine_manager_cloud_id": example_virtual_machine_manager_cloud.id,
///         "system_center_virtual_machine_manager_template_id": example_virtual_machine_manager_virtual_machine_template.id,
///         "system_center_virtual_machine_manager_virtual_machine_server_id": example_virtual_machine_manager_server.id,
///     },
///     operating_system={
///         "admin_password": "AdminPassword123!",
///     })
/// example_virtual_machine_manager_virtual_machine_instance_guest_agent = azure.systemcenter.VirtualMachineManagerVirtualMachineInstanceGuestAgent("example",
///     scoped_resource_id=example_arc_machine.id,
///     username="Administrator",
///     password="AdminPassword123!",
///     opts = pulumi.ResourceOptions(depends_on=[example_virtual_machine_manager_virtual_machine_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleArcMachine = new Azure.ArcMachine.ArcMachine("example", new()
///     {
///         Name = "example-arcmachine",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         Kind = "SCVMM",
///         Identity = new Azure.ArcMachine.Inputs.ArcMachineIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleVirtualMachineManagerServer = new Azure.SystemCenter.VirtualMachineManagerServer("example", new()
///     {
///         Name = "example-scvmmms",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         CustomLocationId = "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1",
///         Fqdn = "example.labtest",
///         Username = "testUser",
///         Password = "H@Sh1CoR3!",
///     });
///
///     var example = Azure.SystemCenter.GetVirtualMachineManagerInventoryItems.Invoke(new()
///     {
///         InventoryType = "Cloud",
///         SystemCenterVirtualMachineManagerServerId = exampleVirtualMachineManagerServer.Id,
///     });
///
///     var exampleVirtualMachineManagerCloud = new Azure.SystemCenter.VirtualMachineManagerCloud("example", new()
///     {
///         Name = "example-scvmmc",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         CustomLocationId = exampleVirtualMachineManagerServer.CustomLocationId,
///         SystemCenterVirtualMachineManagerServerInventoryItemId = example.Apply(getVirtualMachineManagerInventoryItemsResult => getVirtualMachineManagerInventoryItemsResult.InventoryItems[0]?.Id),
///     });
///
///     var example2 = Azure.SystemCenter.GetVirtualMachineManagerInventoryItems.Invoke(new()
///     {
///         InventoryType = "VirtualMachineTemplate",
///         SystemCenterVirtualMachineManagerServerId = exampleVirtualMachineManagerServer.Id,
///     });
///
///     var exampleVirtualMachineManagerVirtualMachineTemplate = new Azure.SystemCenter.VirtualMachineManagerVirtualMachineTemplate("example", new()
///     {
///         Name = "example-scvmmvmt",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         CustomLocationId = exampleVirtualMachineManagerServer.CustomLocationId,
///         SystemCenterVirtualMachineManagerServerInventoryItemId = example2.Apply(getVirtualMachineManagerInventoryItemsResult => getVirtualMachineManagerInventoryItemsResult.InventoryItems[0]?.Id),
///     });
///
///     var exampleVirtualMachineManagerVirtualMachineInstance = new Azure.SystemCenter.VirtualMachineManagerVirtualMachineInstance("example", new()
///     {
///         ScopedResourceId = exampleArcMachine.Id,
///         CustomLocationId = exampleVirtualMachineManagerServer.CustomLocationId,
///         Infrastructure = new Azure.SystemCenter.Inputs.VirtualMachineManagerVirtualMachineInstanceInfrastructureArgs
///         {
///             CheckpointType = "Standard",
///             SystemCenterVirtualMachineManagerCloudId = exampleVirtualMachineManagerCloud.Id,
///             SystemCenterVirtualMachineManagerTemplateId = exampleVirtualMachineManagerVirtualMachineTemplate.Id,
///             SystemCenterVirtualMachineManagerVirtualMachineServerId = exampleVirtualMachineManagerServer.Id,
///         },
///         OperatingSystem = new Azure.SystemCenter.Inputs.VirtualMachineManagerVirtualMachineInstanceOperatingSystemArgs
///         {
///             AdminPassword = "AdminPassword123!",
///         },
///     });
///
///     var exampleVirtualMachineManagerVirtualMachineInstanceGuestAgent = new Azure.SystemCenter.VirtualMachineManagerVirtualMachineInstanceGuestAgent("example", new()
///     {
///         ScopedResourceId = exampleArcMachine.Id,
///         Username = "Administrator",
///         Password = "AdminPassword123!",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleVirtualMachineManagerVirtualMachineInstance,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/arcmachine"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/systemcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleArcMachine, err := arcmachine.NewArcMachine(ctx, "example", &arcmachine.ArcMachineArgs{
/// 			Name:              pulumi.String("example-arcmachine"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			Kind:              pulumi.String("SCVMM"),
/// 			Identity: &arcmachine.ArcMachineIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachineManagerServer, err := systemcenter.NewVirtualMachineManagerServer(ctx, "example", &systemcenter.VirtualMachineManagerServerArgs{
/// 			Name:              pulumi.String("example-scvmmms"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1"),
/// 			Fqdn:              pulumi.String("example.labtest"),
/// 			Username:          pulumi.String("testUser"),
/// 			Password:          pulumi.String("H@Sh1CoR3!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := systemcenter.GetVirtualMachineManagerInventoryItemsOutput(ctx, systemcenter.GetVirtualMachineManagerInventoryItemsOutputArgs{
/// 			InventoryType: pulumi.String("Cloud"),
/// 			SystemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.ID(),
/// 		}, nil)
/// 		exampleVirtualMachineManagerCloud, err := systemcenter.NewVirtualMachineManagerCloud(ctx, "example", &systemcenter.VirtualMachineManagerCloudArgs{
/// 			Name:              pulumi.String("example-scvmmc"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			CustomLocationId:  exampleVirtualMachineManagerServer.CustomLocationId,
/// 			SystemCenterVirtualMachineManagerServerInventoryItemId: pulumi.String(example.ApplyT(func(example systemcenter.GetVirtualMachineManagerInventoryItemsResult) (*string, error) {
/// 				return &example.InventoryItems[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2 := systemcenter.GetVirtualMachineManagerInventoryItemsOutput(ctx, systemcenter.GetVirtualMachineManagerInventoryItemsOutputArgs{
/// 			InventoryType: pulumi.String("VirtualMachineTemplate"),
/// 			SystemCenterVirtualMachineManagerServerId: exampleVirtualMachineManagerServer.ID(),
/// 		}, nil)
/// 		exampleVirtualMachineManagerVirtualMachineTemplate, err := systemcenter.NewVirtualMachineManagerVirtualMachineTemplate(ctx, "example", &systemcenter.VirtualMachineManagerVirtualMachineTemplateArgs{
/// 			Name:              pulumi.String("example-scvmmvmt"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			CustomLocationId:  exampleVirtualMachineManagerServer.CustomLocationId,
/// 			SystemCenterVirtualMachineManagerServerInventoryItemId: pulumi.String(example2.ApplyT(func(example2 systemcenter.GetVirtualMachineManagerInventoryItemsResult) (*string, error) {
/// 				return &example2.InventoryItems[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachineManagerVirtualMachineInstance, err := systemcenter.NewVirtualMachineManagerVirtualMachineInstance(ctx, "example", &systemcenter.VirtualMachineManagerVirtualMachineInstanceArgs{
/// 			ScopedResourceId: exampleArcMachine.ID(),
/// 			CustomLocationId: exampleVirtualMachineManagerServer.CustomLocationId,
/// 			Infrastructure: &systemcenter.VirtualMachineManagerVirtualMachineInstanceInfrastructureArgs{
/// 				CheckpointType:                                          pulumi.String("Standard"),
/// 				SystemCenterVirtualMachineManagerCloudId:                exampleVirtualMachineManagerCloud.ID(),
/// 				SystemCenterVirtualMachineManagerTemplateId:             exampleVirtualMachineManagerVirtualMachineTemplate.ID(),
/// 				SystemCenterVirtualMachineManagerVirtualMachineServerId: exampleVirtualMachineManagerServer.ID(),
/// 			},
/// 			OperatingSystem: &systemcenter.VirtualMachineManagerVirtualMachineInstanceOperatingSystemArgs{
/// 				AdminPassword: pulumi.String("AdminPassword123!"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = systemcenter.NewVirtualMachineManagerVirtualMachineInstanceGuestAgent(ctx, "example", &systemcenter.VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs{
/// 			ScopedResourceId: exampleArcMachine.ID(),
/// 			Username:         pulumi.String("Administrator"),
/// 			Password:         pulumi.String("AdminPassword123!"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleVirtualMachineManagerVirtualMachineInstance,
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
/// import com.pulumi.azure.arcmachine.ArcMachine;
/// import com.pulumi.azure.arcmachine.ArcMachineArgs;
/// import com.pulumi.azure.arcmachine.inputs.ArcMachineIdentityArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServer;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServerArgs;
/// import com.pulumi.azure.systemcenter.SystemcenterFunctions;
/// import com.pulumi.azure.systemcenter.inputs.GetVirtualMachineManagerInventoryItemsArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerCloud;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerCloudArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineTemplate;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineTemplateArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineInstance;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineInstanceArgs;
/// import com.pulumi.azure.systemcenter.inputs.VirtualMachineManagerVirtualMachineInstanceInfrastructureArgs;
/// import com.pulumi.azure.systemcenter.inputs.VirtualMachineManagerVirtualMachineInstanceOperatingSystemArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineInstanceGuestAgent;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleArcMachine = new ArcMachine("exampleArcMachine", ArcMachineArgs.builder()
///             .name("example-arcmachine")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .kind("SCVMM")
///             .identity(ArcMachineIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleVirtualMachineManagerServer = new VirtualMachineManagerServer("exampleVirtualMachineManagerServer", VirtualMachineManagerServerArgs.builder()
///             .name("example-scvmmms")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .customLocationId("/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1")
///             .fqdn("example.labtest")
///             .username("testUser")
///             .password("H@Sh1CoR3!")
///             .build());
///
///         final var example = SystemcenterFunctions.getVirtualMachineManagerInventoryItems(GetVirtualMachineManagerInventoryItemsArgs.builder()
///             .inventoryType("Cloud")
///             .systemCenterVirtualMachineManagerServerId(exampleVirtualMachineManagerServer.id())
///             .build());
///
///         var exampleVirtualMachineManagerCloud = new VirtualMachineManagerCloud("exampleVirtualMachineManagerCloud", VirtualMachineManagerCloudArgs.builder()
///             .name("example-scvmmc")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .customLocationId(exampleVirtualMachineManagerServer.customLocationId())
///             .systemCenterVirtualMachineManagerServerInventoryItemId(example.applyValue(_example -> _example.inventoryItems()[0].id()))
///             .build());
///
///         final var example2 = SystemcenterFunctions.getVirtualMachineManagerInventoryItems(GetVirtualMachineManagerInventoryItemsArgs.builder()
///             .inventoryType("VirtualMachineTemplate")
///             .systemCenterVirtualMachineManagerServerId(exampleVirtualMachineManagerServer.id())
///             .build());
///
///         var exampleVirtualMachineManagerVirtualMachineTemplate = new VirtualMachineManagerVirtualMachineTemplate("exampleVirtualMachineManagerVirtualMachineTemplate", VirtualMachineManagerVirtualMachineTemplateArgs.builder()
///             .name("example-scvmmvmt")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .customLocationId(exampleVirtualMachineManagerServer.customLocationId())
///             .systemCenterVirtualMachineManagerServerInventoryItemId(example2.applyValue(_example2 -> _example2.inventoryItems()[0].id()))
///             .build());
///
///         var exampleVirtualMachineManagerVirtualMachineInstance = new VirtualMachineManagerVirtualMachineInstance("exampleVirtualMachineManagerVirtualMachineInstance", VirtualMachineManagerVirtualMachineInstanceArgs.builder()
///             .scopedResourceId(exampleArcMachine.id())
///             .customLocationId(exampleVirtualMachineManagerServer.customLocationId())
///             .infrastructure(VirtualMachineManagerVirtualMachineInstanceInfrastructureArgs.builder()
///                 .checkpointType("Standard")
///                 .systemCenterVirtualMachineManagerCloudId(exampleVirtualMachineManagerCloud.id())
///                 .systemCenterVirtualMachineManagerTemplateId(exampleVirtualMachineManagerVirtualMachineTemplate.id())
///                 .systemCenterVirtualMachineManagerVirtualMachineServerId(exampleVirtualMachineManagerServer.id())
///                 .build())
///             .operatingSystem(VirtualMachineManagerVirtualMachineInstanceOperatingSystemArgs.builder()
///                 .adminPassword("AdminPassword123!")
///                 .build())
///             .build());
///
///         var exampleVirtualMachineManagerVirtualMachineInstanceGuestAgent = new VirtualMachineManagerVirtualMachineInstanceGuestAgent("exampleVirtualMachineManagerVirtualMachineInstanceGuestAgent", VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs.builder()
///             .scopedResourceId(exampleArcMachine.id())
///             .username("Administrator")
///             .password("AdminPassword123!")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleVirtualMachineManagerVirtualMachineInstance)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleArcMachine:
///     type: azure:arcmachine:ArcMachine
///     name: example
///     properties:
///       name: example-arcmachine
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       kind: SCVMM
///       identity:
///         type: SystemAssigned
///   exampleVirtualMachineManagerServer:
///     type: azure:systemcenter:VirtualMachineManagerServer
///     name: example
///     properties:
///       name: example-scvmmms
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       customLocationId: /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.ExtendedLocation/customLocations/customLocation1
///       fqdn: example.labtest
///       username: testUser
///       password: H@Sh1CoR3!
///   exampleVirtualMachineManagerCloud:
///     type: azure:systemcenter:VirtualMachineManagerCloud
///     name: example
///     properties:
///       name: example-scvmmc
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       customLocationId: ${exampleVirtualMachineManagerServer.customLocationId}
///       systemCenterVirtualMachineManagerServerInventoryItemId: ${example.inventoryItems[0].id}
///   exampleVirtualMachineManagerVirtualMachineTemplate:
///     type: azure:systemcenter:VirtualMachineManagerVirtualMachineTemplate
///     name: example
///     properties:
///       name: example-scvmmvmt
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       customLocationId: ${exampleVirtualMachineManagerServer.customLocationId}
///       systemCenterVirtualMachineManagerServerInventoryItemId: ${example2.inventoryItems[0].id}
///   exampleVirtualMachineManagerVirtualMachineInstance:
///     type: azure:systemcenter:VirtualMachineManagerVirtualMachineInstance
///     name: example
///     properties:
///       scopedResourceId: ${exampleArcMachine.id}
///       customLocationId: ${exampleVirtualMachineManagerServer.customLocationId}
///       infrastructure:
///         checkpointType: Standard
///         systemCenterVirtualMachineManagerCloudId: ${exampleVirtualMachineManagerCloud.id}
///         systemCenterVirtualMachineManagerTemplateId: ${exampleVirtualMachineManagerVirtualMachineTemplate.id}
///         systemCenterVirtualMachineManagerVirtualMachineServerId: ${exampleVirtualMachineManagerServer.id}
///       operatingSystem:
///         adminPassword: AdminPassword123!
///   exampleVirtualMachineManagerVirtualMachineInstanceGuestAgent:
///     type: azure:systemcenter:VirtualMachineManagerVirtualMachineInstanceGuestAgent
///     name: example
///     properties:
///       scopedResourceId: ${exampleArcMachine.id}
///       username: Administrator
///       password: AdminPassword123!
///     options:
///       dependsOn:
///         - ${exampleVirtualMachineManagerVirtualMachineInstance}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:systemcenter:getVirtualMachineManagerInventoryItems
///       arguments:
///         inventoryType: Cloud
///         systemCenterVirtualMachineManagerServerId: ${exampleVirtualMachineManagerServer.id}
///   example2:
///     fn::invoke:
///       function: azure:systemcenter:getVirtualMachineManagerInventoryItems
///       arguments:
///         inventoryType: VirtualMachineTemplate
///         systemCenterVirtualMachineManagerServerId: ${exampleVirtualMachineManagerServer.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ScVmm` - 2023-10-07
///
/// ## Import
///
/// System Center Virtual Machine Manager Virtual Machine Instance Guest Agents can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:systemcenter/virtualMachineManagerVirtualMachineInstanceGuestAgent:VirtualMachineManagerVirtualMachineInstanceGuestAgent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.HybridCompute/machines/machine1/providers/Microsoft.ScVmm/virtualMachineInstances/default/guestAgents/default
/// ```
class VirtualMachineManagerVirtualMachineInstanceGuestAgent
    extends pulumi.CustomResource {
  /// The password that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  late final pulumi.Output<String> password;

  /// The provisioning action that is used to define the different types of operations for the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Possible values are `install`, `repair` and `uninstall`. Defaults to `install`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> provisioningAction;

  /// The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance Guest Agent is stored. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scopedResourceId;

  /// The username that is used to connect to the System Center Virtual Machine Manager Virtual Machine Instance Guest Agent. Changing this forces a new resource to be created.
  late final pulumi.Output<String> username;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceGuestAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineManagerVirtualMachineInstanceGuestAgent]. {@macro pulumi_systemcenter_virtual_machine_manager_virtual_machine_instance_guest_agent_virtual_machine_manager_virtual_machine_instance_guest_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineManagerVirtualMachineInstanceGuestAgent(
    String name, {
    VirtualMachineManagerVirtualMachineInstanceGuestAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerVirtualMachineInstanceGuestAgent:VirtualMachineManagerVirtualMachineInstanceGuestAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    password = registerOutput<String>('password');
    provisioningAction = registerOutput<String?>('provisioningAction');
    scopedResourceId = registerOutput<String>('scopedResourceId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [VirtualMachineManagerVirtualMachineInstanceGuestAgent] resource's state with the given [name] and [id].
  static VirtualMachineManagerVirtualMachineInstanceGuestAgent get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineManagerVirtualMachineInstanceGuestAgentState? state,
  }) {
    return VirtualMachineManagerVirtualMachineInstanceGuestAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineManagerVirtualMachineInstanceGuestAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerVirtualMachineInstanceGuestAgent:VirtualMachineManagerVirtualMachineInstanceGuestAgent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    password = registerOutput<String>('password');
    provisioningAction = registerOutput<String?>('provisioningAction');
    scopedResourceId = registerOutput<String>('scopedResourceId');
    username = registerOutput<String>('username');
  }
}
