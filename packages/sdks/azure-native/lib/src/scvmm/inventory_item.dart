import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_item_args.dart';
import 'system_data_response.dart';

/// Defines the inventory item.
///
/// Uses Azure REST API version 2023-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-21-preview.
///
/// Other available API versions: 2022-05-21-preview, 2023-10-07, 2024-06-01, 2025-03-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native scvmm [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateInventoryItem
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inventoryItem = new AzureNative.ScVmm.InventoryItem("inventoryItem", new()
///     {
///         InventoryItemName = "12345678-1234-1234-1234-123456789abc",
///         InventoryType = AzureNative.ScVmm.InventoryType.Cloud,
///         ResourceGroupName = "testrg",
///         VmmServerName = "ContosoVMMServer",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	scvmm "github.com/pulumi/pulumi-azure-native-sdk/scvmm/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scvmm.NewInventoryItem(ctx, "inventoryItem", &scvmm.InventoryItemArgs{
/// 			InventoryItemName: pulumi.String("12345678-1234-1234-1234-123456789abc"),
/// 			InventoryType:     pulumi.String(scvmm.InventoryTypeCloud),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VmmServerName:     pulumi.String("ContosoVMMServer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.scvmm.InventoryItem;
/// import com.pulumi.azurenative.scvmm.InventoryItemArgs;
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
///         var inventoryItem = new InventoryItem("inventoryItem", InventoryItemArgs.builder()
///             .inventoryItemName("12345678-1234-1234-1234-123456789abc")
///             .inventoryType("Cloud")
///             .resourceGroupName("testrg")
///             .vmmServerName("ContosoVMMServer")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const inventoryItem = new azure_native.scvmm.InventoryItem("inventoryItem", {
///     inventoryItemName: "12345678-1234-1234-1234-123456789abc",
///     inventoryType: azure_native.scvmm.InventoryType.Cloud,
///     resourceGroupName: "testrg",
///     vmmServerName: "ContosoVMMServer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// inventory_item = azure_native.scvmm.InventoryItem("inventoryItem",
///     inventory_item_name="12345678-1234-1234-1234-123456789abc",
///     inventory_type=azure_native.scvmm.InventoryType.CLOUD,
///     resource_group_name="testrg",
///     vmm_server_name="ContosoVMMServer")
///
/// ```
///
/// ```yaml
/// resources:
///   inventoryItem:
///     type: azure-native:scvmm:InventoryItem
///     properties:
///       inventoryItemName: 12345678-1234-1234-1234-123456789abc
///       inventoryType: Cloud
///       resourceGroupName: testrg
///       vmmServerName: ContosoVMMServer
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:scvmm:InventoryItem 12345678-1234-1234-1234-123456789abc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ScVmm/vmmServers/{vmmServerName}/inventoryItems/{inventoryItemName}
/// ```
class InventoryItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the Managed Object name in VMM for the inventory item.
  late final pulumi.Output<String> inventoryItemName;
  /// They inventory type.
  late final pulumi.Output<String> inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Gets the tracked resource id corresponding to the inventory resource.
  late final pulumi.Output<String> managedResourceId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets the UUID (which is assigned by VMM) for the inventory item.
  late final pulumi.Output<String> uuid;

  /// Creates a new [InventoryItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InventoryItem]. {@macro pulumi_scvmm_inventory_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InventoryItem(
    String name, {
    InventoryItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:scvmm:InventoryItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    inventoryItemName = registerOutput<String>('inventoryItemName');
    inventoryType = registerOutput<String>('inventoryType');
    kind = registerOutput<String?>('kind');
    managedResourceId = registerOutput<String>('managedResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
