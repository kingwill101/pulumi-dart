import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'workspace_args.dart';
import 'workspace_resource_properties_response.dart';

/// The resource proxy definition object for Quantum Workspace.
///
/// Uses Azure REST API version 2023-11-13-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-10-preview.
///
/// Other available API versions: 2022-01-10-preview, 2025-01-01-preview, 2025-08-11-preview, 2025-11-01-preview, 2025-12-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quantum [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workspaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Quantum.Workspace("workspace", new()
///     {
///         Location = "West US",
///         Properties = new AzureNative.Quantum.Inputs.WorkspaceResourcePropertiesArgs
///         {
///             Providers = new[]
///             {
///                 new AzureNative.Quantum.Inputs.ProviderArgs
///                 {
///                     ProviderId = "Honeywell",
///                     ProviderSku = "Basic",
///                 },
///                 new AzureNative.Quantum.Inputs.ProviderArgs
///                 {
///                     ProviderId = "IonQ",
///                     ProviderSku = "Basic",
///                 },
///                 new AzureNative.Quantum.Inputs.ProviderArgs
///                 {
///                     ProviderId = "OneQBit",
///                     ProviderSku = "Basic",
///                 },
///             },
///             StorageAccount = "/subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount",
///         },
///         ResourceGroupName = "quantumResourcegroup",
///         WorkspaceName = "quantumworkspace1",
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
/// 	quantum "github.com/pulumi/pulumi-azure-native-sdk/quantum/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quantum.NewWorkspace(ctx, "workspace", &quantum.WorkspaceArgs{
/// 			Location: pulumi.String("West US"),
/// 			Properties: &quantum.WorkspaceResourcePropertiesArgs{
/// 				Providers: quantum.ProviderArray{
/// 					&quantum.ProviderArgs{
/// 						ProviderId:  pulumi.String("Honeywell"),
/// 						ProviderSku: pulumi.String("Basic"),
/// 					},
/// 					&quantum.ProviderArgs{
/// 						ProviderId:  pulumi.String("IonQ"),
/// 						ProviderSku: pulumi.String("Basic"),
/// 					},
/// 					&quantum.ProviderArgs{
/// 						ProviderId:  pulumi.String("OneQBit"),
/// 						ProviderSku: pulumi.String("Basic"),
/// 					},
/// 				},
/// 				StorageAccount: pulumi.String("/subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount"),
/// 			},
/// 			ResourceGroupName: pulumi.String("quantumResourcegroup"),
/// 			WorkspaceName:     pulumi.String("quantumworkspace1"),
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
/// import com.pulumi.azurenative.quantum.Workspace;
/// import com.pulumi.azurenative.quantum.WorkspaceArgs;
/// import com.pulumi.azurenative.quantum.inputs.WorkspaceResourcePropertiesArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .location("West US")
///             .properties(WorkspaceResourcePropertiesArgs.builder()
///                 .providers(
///                     ProviderArgs.builder()
///                         .providerId("Honeywell")
///                         .providerSku("Basic")
///                         .build(),
///                     ProviderArgs.builder()
///                         .providerId("IonQ")
///                         .providerSku("Basic")
///                         .build(),
///                     ProviderArgs.builder()
///                         .providerId("OneQBit")
///                         .providerSku("Basic")
///                         .build())
///                 .storageAccount("/subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount")
///                 .build())
///             .resourceGroupName("quantumResourcegroup")
///             .workspaceName("quantumworkspace1")
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
/// const workspace = new azure_native.quantum.Workspace("workspace", {
///     location: "West US",
///     properties: {
///         providers: [
///             {
///                 providerId: "Honeywell",
///                 providerSku: "Basic",
///             },
///             {
///                 providerId: "IonQ",
///                 providerSku: "Basic",
///             },
///             {
///                 providerId: "OneQBit",
///                 providerSku: "Basic",
///             },
///         ],
///         storageAccount: "/subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount",
///     },
///     resourceGroupName: "quantumResourcegroup",
///     workspaceName: "quantumworkspace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.quantum.Workspace("workspace",
///     location="West US",
///     properties={
///         "providers": [
///             {
///                 "provider_id": "Honeywell",
///                 "provider_sku": "Basic",
///             },
///             {
///                 "provider_id": "IonQ",
///                 "provider_sku": "Basic",
///             },
///             {
///                 "provider_id": "OneQBit",
///                 "provider_sku": "Basic",
///             },
///         ],
///         "storage_account": "/subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount",
///     },
///     resource_group_name="quantumResourcegroup",
///     workspace_name="quantumworkspace1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:quantum:Workspace
///     properties:
///       location: West US
///       properties:
///         providers:
///           - providerId: Honeywell
///             providerSku: Basic
///           - providerId: IonQ
///             providerSku: Basic
///           - providerId: OneQBit
///             providerSku: Basic
///         storageAccount: /subscriptions/1C4B2828-7D49-494F-933D-061373BE28C2/resourceGroups/quantumResourcegroup/providers/Microsoft.Storage/storageAccounts/testStorageAccount
///       resourceGroupName: quantumResourcegroup
///       workspaceName: quantumworkspace1
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
/// $ pulumi import azure-native:quantum:Workspace quantumworkspace1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Quantum/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets or sets the properties. Define quantum workspace's specific properties.
  late final pulumi.Output<WorkspaceResourcePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_quantum_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:quantum:Workspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkspaceResourcePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkspaceResourcePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
