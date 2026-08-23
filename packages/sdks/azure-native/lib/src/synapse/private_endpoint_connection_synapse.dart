import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2021-06-01. In version 2.x of the Azure Native provider, it used API version 2021-06-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-05-01, 2021-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native synapse [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve private endpoint connection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Synapse.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "ExamplePrivateEndpointConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.Synapse.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by abc@example.com",
///             Status = "Approved",
///         },
///         ResourceGroupName = "ExampleResourceGroup",
///         WorkspaceName = "ExampleWorkspace",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &synapse.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("ExamplePrivateEndpointConnection"),
/// 			PrivateLinkServiceConnectionState: &synapse.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by abc@example.com"),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("ExampleResourceGroup"),
/// 			WorkspaceName:     pulumi.String("ExampleWorkspace"),
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
/// resource "azure-native_synapse_privateendpointconnection" "privateEndpointConnection" {
///   private_endpoint_connection_name = "ExamplePrivateEndpointConnection"
///   private_link_service_connection_state = {
///     description = "Approved by abc@example.com"
///     status      = "Approved"
///   }
///   resource_group_name = "ExampleResourceGroup"
///   workspace_name      = "ExampleWorkspace"
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
/// import com.pulumi.azurenative.synapse.PrivateEndpointConnection;
/// import com.pulumi.azurenative.synapse.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.synapse.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("ExamplePrivateEndpointConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by abc@example.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("ExampleResourceGroup")
///             .workspaceName("ExampleWorkspace")
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
/// const privateEndpointConnection = new azure_native.synapse.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "ExamplePrivateEndpointConnection",
///     privateLinkServiceConnectionState: {
///         description: "Approved by abc@example.com",
///         status: "Approved",
///     },
///     resourceGroupName: "ExampleResourceGroup",
///     workspaceName: "ExampleWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.synapse.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="ExamplePrivateEndpointConnection",
///     private_link_service_connection_state={
///         "description": "Approved by abc@example.com",
///         "status": "Approved",
///     },
///     resource_group_name="ExampleResourceGroup",
///     workspace_name="ExampleWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:synapse:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: ExamplePrivateEndpointConnection
///       privateLinkServiceConnectionState:
///         description: Approved by abc@example.com
///         status: Approved
///       resourceGroupName: ExampleResourceGroup
///       workspaceName: ExampleWorkspace
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
/// $ pulumi import azure-native:synapse:PrivateEndpointConnection sql /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionSynapse extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint which the connection belongs to.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// Connection state of the private endpoint connection.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionSynapse].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionSynapse]. {@macro pulumi_synapse_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionSynapse(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
