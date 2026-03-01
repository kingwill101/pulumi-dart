import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_response.dart';

/// Private Endpoint Connection Response Properties
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update PrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.RecoveryServices.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b",
///         Properties = new AzureNative.RecoveryServices.Inputs.PrivateEndpointConnectionArgs
///         {
///             GroupIds = new[]
///             {
///                 AzureNative.RecoveryServices.VaultSubResourceType.AzureBackup_secondary,
///             },
///             PrivateEndpoint = new AzureNative.RecoveryServices.Inputs.PrivateEndpointArgs
///             {
///                 Id = "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3",
///             },
///             PrivateLinkServiceConnectionState = new AzureNative.RecoveryServices.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Approved by johndoe@company.com",
///                 Status = AzureNative.RecoveryServices.PrivateEndpointConnectionStatus.Approved,
///             },
///             ProvisioningState = AzureNative.RecoveryServices.ProvisioningState.Succeeded,
///         },
///         ResourceGroupName = "gaallaRG",
///         VaultName = "gaallavaultbvtd2msi",
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
/// 		_, err := recoveryservices.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &recoveryservices.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b"),
/// 			Properties: &recoveryservices.PrivateEndpointConnectionTypeArgs{
/// 				GroupIds: pulumi.StringArray{
/// 					pulumi.String(recoveryservices.VaultSubResourceType_AzureBackup_secondary),
/// 				},
/// 				PrivateEndpoint: &recoveryservices.PrivateEndpointArgs{
/// 					Id: pulumi.String("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3"),
/// 				},
/// 				PrivateLinkServiceConnectionState: &recoveryservices.PrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Approved by johndoe@company.com"),
/// 					Status:      pulumi.String(recoveryservices.PrivateEndpointConnectionStatusApproved),
/// 				},
/// 				ProvisioningState: pulumi.String(recoveryservices.ProvisioningStateSucceeded),
/// 			},
/// 			ResourceGroupName: pulumi.String("gaallaRG"),
/// 			VaultName:         pulumi.String("gaallavaultbvtd2msi"),
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
/// import com.pulumi.azurenative.recoveryservices.PrivateEndpointConnection;
/// import com.pulumi.azurenative.recoveryservices.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b")
///             .properties(PrivateEndpointConnectionArgs.builder()
///                 .groupIds("AzureBackup_secondary")
///                 .privateEndpoint(PrivateEndpointArgs.builder()
///                     .id("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3")
///                     .build())
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Approved by johndoe@company.com")
///                     .status("Approved")
///                     .build())
///                 .provisioningState("Succeeded")
///                 .build())
///             .resourceGroupName("gaallaRG")
///             .vaultName("gaallavaultbvtd2msi")
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
/// const privateEndpointConnection = new azure_native.recoveryservices.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b",
///     properties: {
///         groupIds: [azure_native.recoveryservices.VaultSubResourceType.AzureBackup_secondary],
///         privateEndpoint: {
///             id: "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3",
///         },
///         privateLinkServiceConnectionState: {
///             description: "Approved by johndoe@company.com",
///             status: azure_native.recoveryservices.PrivateEndpointConnectionStatus.Approved,
///         },
///         provisioningState: azure_native.recoveryservices.ProvisioningState.Succeeded,
///     },
///     resourceGroupName: "gaallaRG",
///     vaultName: "gaallavaultbvtd2msi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.recoveryservices.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b",
///     properties={
///         "group_ids": [azure_native.recoveryservices.VaultSubResourceType.AZURE_BACKUP_SECONDARY],
///         "private_endpoint": {
///             "id": "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3",
///         },
///         "private_link_service_connection_state": {
///             "description": "Approved by johndoe@company.com",
///             "status": azure_native.recoveryservices.PrivateEndpointConnectionStatus.APPROVED,
///         },
///         "provisioning_state": azure_native.recoveryservices.ProvisioningState.SUCCEEDED,
///     },
///     resource_group_name="gaallaRG",
///     vault_name="gaallavaultbvtd2msi")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:recoveryservices:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: gaallatestpe2.5704c932-249a-490b-a142-1396838cd3b
///       properties:
///         groupIds:
///           - AzureBackup_secondary
///         privateEndpoint:
///           id: /subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/gaallaRG/providers/Microsoft.Network/privateEndpoints/gaallatestpe3
///         privateLinkServiceConnectionState:
///           description: Approved by johndoe@company.com
///           status: Approved
///         provisioningState: Succeeded
///       resourceGroupName: gaallaRG
///       vaultName: gaallavaultbvtd2msi
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
/// $ pulumi import azure-native:recoveryservices:PrivateEndpointConnection gaallatestpe1.3592346090307038890.backup.5704c932-249a-490b-a142-1396838cd3b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionRecoveryservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Optional ETag.
  late final pulumi.Output<String?> eTag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;
  /// PrivateEndpointConnectionResource properties
  late final pulumi.Output<PrivateEndpointConnectionResponse> properties;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionRecoveryservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionRecoveryservices]. {@macro pulumi_recoveryservices_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionRecoveryservices(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.eTag = registerOutput<String?>('eTag');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateEndpointConnectionResponse>('properties');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
