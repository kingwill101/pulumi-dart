import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_cloud_args.dart';
import 'virtual_machine_manager_cloud_state.dart';

/// Manages a System Center Virtual Machine Manager Cloud.
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
///     name: "example-scvmmcloud",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     customLocationId: exampleVirtualMachineManagerServer.customLocationId,
///     systemCenterVirtualMachineManagerServerInventoryItemId: example.apply(example => example.inventoryItems?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
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
///     name="example-scvmmcloud",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     custom_location_id=example_virtual_machine_manager_server.custom_location_id,
///     system_center_virtual_machine_manager_server_inventory_item_id=example.inventory_items[0].id)
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
///         Name = "example-scvmmcloud",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         CustomLocationId = exampleVirtualMachineManagerServer.CustomLocationId,
///         SystemCenterVirtualMachineManagerServerInventoryItemId = example.Apply(getVirtualMachineManagerInventoryItemsResult => getVirtualMachineManagerInventoryItemsResult.InventoryItems[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = systemcenter.NewVirtualMachineManagerCloud(ctx, "example", &systemcenter.VirtualMachineManagerCloudArgs{
/// 			Name:              pulumi.String("example-scvmmcloud"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 			CustomLocationId:  exampleVirtualMachineManagerServer.CustomLocationId,
/// 			SystemCenterVirtualMachineManagerServerInventoryItemId: pulumi.String(example.ApplyT(func(example systemcenter.GetVirtualMachineManagerInventoryItemsResult) (*string, error) {
/// 				return &example.InventoryItems[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServer;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerServerArgs;
/// import com.pulumi.azure.systemcenter.SystemcenterFunctions;
/// import com.pulumi.azure.systemcenter.inputs.GetVirtualMachineManagerInventoryItemsArgs;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerCloud;
/// import com.pulumi.azure.systemcenter.VirtualMachineManagerCloudArgs;
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
///             .name("example-scvmmcloud")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .customLocationId(exampleVirtualMachineManagerServer.customLocationId())
///             .systemCenterVirtualMachineManagerServerInventoryItemId(example.applyValue(_example -> _example.inventoryItems()[0].id()))
///             .build());
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
///       name: example-scvmmcloud
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       customLocationId: ${exampleVirtualMachineManagerServer.customLocationId}
///       systemCenterVirtualMachineManagerServerInventoryItemId: ${example.inventoryItems[0].id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:systemcenter:getVirtualMachineManagerInventoryItems
///       arguments:
///         inventoryType: Cloud
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
/// System Center Virtual Machine Manager Clouds can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:systemcenter/virtualMachineManagerCloud:VirtualMachineManagerCloud example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.ScVmm/clouds/cloud1
/// ```
class VirtualMachineManagerCloud extends pulumi.CustomResource {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;

  /// The Azure Region where the System Center Virtual Machine Manager Cloud should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the System Center Virtual Machine Manager Cloud. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the System Center Virtual Machine Cloud should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the System Center Virtual Machine Manager Server Inventory Item. Changing this forces a new resource to be created.
  late final pulumi.Output<String>
  systemCenterVirtualMachineManagerServerInventoryItemId;

  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Cloud.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [VirtualMachineManagerCloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineManagerCloud]. {@macro pulumi_systemcenter_virtual_machine_manager_cloud_virtual_machine_manager_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineManagerCloud(
    String name, {
    VirtualMachineManagerCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerCloud:VirtualMachineManagerCloud',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    systemCenterVirtualMachineManagerServerInventoryItemId =
        registerOutput<String>(
          'systemCenterVirtualMachineManagerServerInventoryItemId',
        );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [VirtualMachineManagerCloud] resource's state with the given [name] and [id].
  static VirtualMachineManagerCloud get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineManagerCloudState? state,
  }) {
    return VirtualMachineManagerCloud._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineManagerCloud._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:systemcenter/virtualMachineManagerCloud:VirtualMachineManagerCloud',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    systemCenterVirtualMachineManagerServerInventoryItemId =
        registerOutput<String>(
          'systemCenterVirtualMachineManagerServerInventoryItemId',
        );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
