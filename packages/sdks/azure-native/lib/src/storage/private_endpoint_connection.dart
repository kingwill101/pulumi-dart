import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01, 2025-08-01, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountPutPrivateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Storage.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         AccountName = "sto9699",
///         PrivateEndpointConnectionName = "{privateEndpointConnectionName}",
///         PrivateLinkServiceConnectionState = new AzureNative.Storage.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.Storage.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "res7687",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &storage.PrivateEndpointConnectionArgs{
/// 			AccountName:                   pulumi.String("sto9699"),
/// 			PrivateEndpointConnectionName: pulumi.String("{privateEndpointConnectionName}"),
/// 			PrivateLinkServiceConnectionState: &storage.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(storage.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_storage_privateendpointconnection" "privateEndpointConnection" {
///   account_name                     = "sto9699"
///   private_endpoint_connection_name = "{privateEndpointConnectionName}"
///   private_link_service_connection_state = {
///     description = "Auto-Approved"
///     status      = "Approved"
///   }
///   resource_group_name = "res7687"
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
/// import com.pulumi.azurenative.storage.PrivateEndpointConnection;
/// import com.pulumi.azurenative.storage.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.storage.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .accountName("sto9699")
///             .privateEndpointConnectionName("{privateEndpointConnectionName}")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("res7687")
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
/// const privateEndpointConnection = new azure_native.storage.PrivateEndpointConnection("privateEndpointConnection", {
///     accountName: "sto9699",
///     privateEndpointConnectionName: "{privateEndpointConnectionName}",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.storage.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.storage.PrivateEndpointConnection("privateEndpointConnection",
///     account_name="sto9699",
///     private_endpoint_connection_name="{privateEndpointConnectionName}",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.storage.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:storage:PrivateEndpointConnection
///     properties:
///       accountName: sto9699
///       privateEndpointConnectionName: '{privateEndpointConnectionName}'
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: res7687
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
/// $ pulumi import azure-native:storage:PrivateEndpointConnection {privateEndpointConnectionName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_storage_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnection] resource.
  PrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:storage:PrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
