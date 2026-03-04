import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_recovery_service_vault_protection_intent_response.dart';
import 'protection_intent_args.dart';

/// Base class for backup ProtectionIntent.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Azure Vm Protection Intent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var protectionIntent = new AzureNative.RecoveryServices.ProtectionIntent("protectionIntent", new()
///     {
///         FabricName = "Azure",
///         IntentObjectName = "vm;iaasvmcontainerv2;chamsrgtest;chamscandel",
///         Properties = new AzureNative.RecoveryServices.Inputs.AzureResourceProtectionIntentArgs
///         {
///             PolicyId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy",
///             ProtectionIntentItemType = "AzureResourceItem",
///             SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel",
///         },
///         ResourceGroupName = "myRG",
///         VaultName = "myVault",
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
/// 		_, err := recoveryservices.NewProtectionIntent(ctx, "protectionIntent", &recoveryservices.ProtectionIntentArgs{
/// 			FabricName:       pulumi.String("Azure"),
/// 			IntentObjectName: pulumi.String("vm;iaasvmcontainerv2;chamsrgtest;chamscandel"),
/// 			Properties: &recoveryservices.AzureResourceProtectionIntentArgs{
/// 				PolicyId:                 pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy"),
/// 				ProtectionIntentItemType: pulumi.String("AzureResourceItem"),
/// 				SourceResourceId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VaultName:         pulumi.String("myVault"),
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
/// import com.pulumi.azurenative.recoveryservices.ProtectionIntent;
/// import com.pulumi.azurenative.recoveryservices.ProtectionIntentArgs;
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
///         var protectionIntent = new ProtectionIntent("protectionIntent", ProtectionIntentArgs.builder()
///             .fabricName("Azure")
///             .intentObjectName("vm;iaasvmcontainerv2;chamsrgtest;chamscandel")
///             .properties(AzureResourceProtectionIntentArgs.builder()
///                 .policyId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy")
///                 .protectionIntentItemType("AzureResourceItem")
///                 .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel")
///                 .build())
///             .resourceGroupName("myRG")
///             .vaultName("myVault")
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
/// const protectionIntent = new azure_native.recoveryservices.ProtectionIntent("protectionIntent", {
///     fabricName: "Azure",
///     intentObjectName: "vm;iaasvmcontainerv2;chamsrgtest;chamscandel",
///     properties: {
///         policyId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy",
///         protectionIntentItemType: "AzureResourceItem",
///         sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel",
///     },
///     resourceGroupName: "myRG",
///     vaultName: "myVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// protection_intent = azure_native.recoveryservices.ProtectionIntent("protectionIntent",
///     fabric_name="Azure",
///     intent_object_name="vm;iaasvmcontainerv2;chamsrgtest;chamscandel",
///     properties={
///         "policy_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy",
///         "protection_intent_item_type": "AzureResourceItem",
///         "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel",
///     },
///     resource_group_name="myRG",
///     vault_name="myVault")
///
/// ```
///
/// ```yaml
/// resources:
///   protectionIntent:
///     type: azure-native:recoveryservices:ProtectionIntent
///     properties:
///       fabricName: Azure
///       intentObjectName: vm;iaasvmcontainerv2;chamsrgtest;chamscandel
///       properties:
///         policyId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.RecoveryServices/vaults/myVault/backupPolicies/myPolicy
///         protectionIntentItemType: AzureResourceItem
///         sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/chamsrgtest/providers/Microsoft.Compute/virtualMachines/chamscandel
///       resourceGroupName: myRG
///       vaultName: myVault
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
/// $ pulumi import azure-native:recoveryservices:ProtectionIntent vm;iaasvmcontainerv2;chamsrgtest;chamscandel /Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/backupProtectionIntent/{intentObjectName}
/// ```
class ProtectionIntent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// ProtectionIntentResource properties
  late final pulumi.Output<AzureRecoveryServiceVaultProtectionIntentResponse>
  properties;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [ProtectionIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionIntent]. {@macro pulumi_recoveryservices_protection_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionIntent(
    String name, {
    ProtectionIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ProtectionIntent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<AzureRecoveryServiceVaultProtectionIntentResponse>(
          'properties',
        );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
