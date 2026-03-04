import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fileshare_protected_item_response.dart';
import 'protected_item_args.dart';

/// Base class for backup items.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enable Protection on Azure IaasVm
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectedItem = new AzureNative.RecoveryServices.ProtectedItem("protectedItem", new()
///     {
///         ContainerName = "IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///         FabricName = "Azure",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSComputeVMProtectedItemArgs
///         {
///             PolicyId = "/Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy",
///             ProtectedItemType = "Microsoft.Compute/virtualMachines",
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///         },
///         ProtectedItemName = "VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectedItem(ctx, "protectedItem", &recoveryservices.ProtectedItemArgs{
/// 			ContainerName: pulumi.String("IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1"),
/// 			FabricName:    pulumi.String("Azure"),
/// 			Properties: &recoveryservices.AzureIaaSComputeVMProtectedItemArgs{
/// 				PolicyId:          pulumi.String("/Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy"),
/// 				ProtectedItemType: pulumi.String("Microsoft.Compute/virtualMachines"),
/// 				SourceResourceId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1"),
/// 			},
/// 			ProtectedItemName: pulumi.String("VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1"),
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectedItem;
/// import com.pulumi.azurenative.recoveryservices.ProtectedItemArgs;
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
///         var protectedItem = new ProtectedItem("protectedItem", ProtectedItemArgs.builder()
///             .containerName("IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1")
///             .fabricName("Azure")
///             .properties(AzureIaaSComputeVMProtectedItemArgs.builder()
///                 .policyId("/Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy")
///                 .protectedItemType("Microsoft.Compute/virtualMachines")
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1")
///                 .build())
///             .protectedItemName("VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1")
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectedItem = new azure_native.recoveryservices.ProtectedItem("protectedItem", {
///     containerName: "IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     fabricName: "Azure",
///     properties: {
///         policyId: "/Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy",
///         protectedItemType: "Microsoft.Compute/virtualMachines",
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///     },
///     protectedItemName: "VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protected_item = azure_native.recoveryservices.ProtectedItem("protectedItem",
///     container_name="IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     fabric_name="Azure",
///     properties={
///         "policy_id": "/Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy",
///         "protected_item_type": "Microsoft.Compute/virtualMachines",
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///     },
///     protected_item_name="VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectedItem:
///     type: azure-native:recoveryservices:ProtectedItem
///     properties:
///       containerName: IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1
///       fabricName: Azure
///       properties:
///         policyId: /Subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/SwaggerTestRg/providers/Microsoft.RecoveryServices/vaults/NetSDKTestRsVault/backupPolicies/DefaultPolicy
///         protectedItemType: Microsoft.Compute/virtualMachines
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1
///       protectedItemName: VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Stop Protection with retain data on Azure IaasVm
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectedItem = new AzureNative.RecoveryServices.ProtectedItem("protectedItem", new()
///     {
///         ContainerName = "IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///         FabricName = "Azure",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureIaaSComputeVMProtectedItemArgs
///         {
///             ProtectedItemType = "Microsoft.Compute/virtualMachines",
///             ProtectionState = AzureNative.RecoveryServices.ProtectionState.ProtectionStopped,
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///         },
///         ProtectedItemName = "VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///         ResourceGroupName = "SwaggerTestRg",
///         VaultName = "NetSDKTestRsVault",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewProtectedItem(ctx, "protectedItem", &recoveryservices.ProtectedItemArgs{
/// 			ContainerName: pulumi.String("IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1"),
/// 			FabricName:    pulumi.String("Azure"),
/// 			Properties: &recoveryservices.AzureIaaSComputeVMProtectedItemArgs{
/// 				ProtectedItemType: pulumi.String("Microsoft.Compute/virtualMachines"),
/// 				ProtectionState:   pulumi.String(recoveryservices.ProtectionStateProtectionStopped),
/// 				SourceResourceId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1"),
/// 			},
/// 			ProtectedItemName: pulumi.String("VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1"),
/// 			ResourceGroupName: pulumi.String("SwaggerTestRg"),
/// 			VaultName:         pulumi.String("NetSDKTestRsVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectedItem;
/// import com.pulumi.azurenative.recoveryservices.ProtectedItemArgs;
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
///         var protectedItem = new ProtectedItem("protectedItem", ProtectedItemArgs.builder()
///             .containerName("IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1")
///             .fabricName("Azure")
///             .properties(AzureIaaSComputeVMProtectedItemArgs.builder()
///                 .protectedItemType("Microsoft.Compute/virtualMachines")
///                 .protectionState("ProtectionStopped")
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1")
///                 .build())
///             .protectedItemName("VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1")
///             .resourceGroupName("SwaggerTestRg")
///             .vaultName("NetSDKTestRsVault")
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
/// const protectedItem = new azure_native.recoveryservices.ProtectedItem("protectedItem", {
///     containerName: "IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     fabricName: "Azure",
///     properties: {
///         protectedItemType: "Microsoft.Compute/virtualMachines",
///         protectionState: azure_native.recoveryservices.ProtectionState.ProtectionStopped,
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///     },
///     protectedItemName: "VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     resourceGroupName: "SwaggerTestRg",
///     vaultName: "NetSDKTestRsVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protected_item = azure_native.recoveryservices.ProtectedItem("protectedItem",
///     container_name="IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     fabric_name="Azure",
///     properties={
///         "protected_item_type": "Microsoft.Compute/virtualMachines",
///         "protection_state": azure_native.recoveryservices.ProtectionState.PROTECTION_STOPPED,
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1",
///     },
///     protected_item_name="VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1",
///     resource_group_name="SwaggerTestRg",
///     vault_name="NetSDKTestRsVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectedItem:
///     type: azure-native:recoveryservices:ProtectedItem
///     properties:
///       containerName: IaasVMContainer;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1
///       fabricName: Azure
///       properties:
///         protectedItemType: Microsoft.Compute/virtualMachines
///         protectionState: ProtectionStopped
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/netsdktestrg/providers/Microsoft.Compute/virtualMachines/netvmtestv2vm1
///       protectedItemName: VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1
///       resourceGroupName: SwaggerTestRg
///       vaultName: NetSDKTestRsVault
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
/// $ pulumi import azure-native:recoveryservices:ProtectedItem VM;iaasvmcontainerv2;netsdktestrg;netvmtestv2vm1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}
/// ```
class ProtectedItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// ProtectedItemResource properties
  late final pulumi.Output<AzureFileshareProtectedItemResponse> properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectedItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectedItem]. {@macro pulumi_recoveryservices_protected_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectedItem(
    String name, {
    ProtectedItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ProtectedItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AzureFileshareProtectedItemResponse>(
      'properties',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
