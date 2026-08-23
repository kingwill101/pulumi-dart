import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_machine_manager_inventory_items_args.dart';
import 'get_virtual_machine_manager_inventory_items_result.dart';

/// Use this data source to access information about existing System Center Virtual Machine Manager Inventory Items.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.systemcenter.getVirtualMachineManagerInventoryItems({
///     inventoryType: "Cloud",
///     systemCenterVirtualMachineManagerServerId: exampleAzurermSystemCenterVirtualMachineManagerServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.systemcenter.get_virtual_machine_manager_inventory_items(inventory_type="Cloud",
///     system_center_virtual_machine_manager_server_id=example_azurerm_system_center_virtual_machine_manager_server["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.SystemCenter.GetVirtualMachineManagerInventoryItems.Invoke(new()
///     {
///         InventoryType = "Cloud",
///         SystemCenterVirtualMachineManagerServerId = exampleAzurermSystemCenterVirtualMachineManagerServer.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/systemcenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := systemcenter.GetVirtualMachineManagerInventoryItems(ctx, &systemcenter.GetVirtualMachineManagerInventoryItemsArgs{
/// 			InventoryType: "Cloud",
/// 			SystemCenterVirtualMachineManagerServerId: exampleAzurermSystemCenterVirtualMachineManagerServer.Id,
/// 		}, nil)
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
/// data "azure_systemcenter_getvirtualmachinemanagerinventoryitems" "example" {
///   inventory_type                                  = "Cloud"
///   system_center_virtual_machine_manager_server_id = exampleAzurermSystemCenterVirtualMachineManagerServer.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.systemcenter.SystemcenterFunctions;
/// import com.pulumi.azure.systemcenter.inputs.GetVirtualMachineManagerInventoryItemsArgs;
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
///         final var example = SystemcenterFunctions.getVirtualMachineManagerInventoryItems(GetVirtualMachineManagerInventoryItemsArgs.builder()
///             .inventoryType("Cloud")
///             .systemCenterVirtualMachineManagerServerId(exampleAzurermSystemCenterVirtualMachineManagerServer.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:systemcenter:getVirtualMachineManagerInventoryItems
///       arguments:
///         inventoryType: Cloud
///         systemCenterVirtualMachineManagerServerId: ${exampleAzurermSystemCenterVirtualMachineManagerServer.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.ScVmm` - 2023-10-07
/// [args] Arguments passed to this invoke. {@macro pulumi_systemcenter_get_virtual_machine_manager_inventory_items_get_virtual_machine_manager_inventory_items_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineManagerInventoryItemsResult> getVirtualMachineManagerInventoryItems(
  GetVirtualMachineManagerInventoryItemsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:systemcenter/getVirtualMachineManagerInventoryItems:getVirtualMachineManagerInventoryItems',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineManagerInventoryItemsResult.fromMap(result);
}
