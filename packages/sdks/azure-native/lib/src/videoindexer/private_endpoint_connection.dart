import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// Other available API versions: 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native videoindexer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnectionCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.VideoIndexer.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         AccountName = "contoso",
///         PrivateEndpointConnectionName = "peexample01",
///         PrivateLinkServiceConnectionState = new AzureNative.VideoIndexer.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Auto-Approved",
///             Status = AzureNative.VideoIndexer.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "test-rg",
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
/// 	videoindexer "github.com/pulumi/pulumi-azure-native-sdk/videoindexer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := videoindexer.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &videoindexer.PrivateEndpointConnectionArgs{
/// 			AccountName:                   pulumi.String("contoso"),
/// 			PrivateEndpointConnectionName: pulumi.String("peexample01"),
/// 			PrivateLinkServiceConnectionState: &videoindexer.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Auto-Approved"),
/// 				Status:      pulumi.String(videoindexer.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.videoindexer.PrivateEndpointConnection;
/// import com.pulumi.azurenative.videoindexer.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.videoindexer.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .accountName("contoso")
///             .privateEndpointConnectionName("peexample01")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Auto-Approved")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const privateEndpointConnection = new azure_native.videoindexer.PrivateEndpointConnection("privateEndpointConnection", {
///     accountName: "contoso",
///     privateEndpointConnectionName: "peexample01",
///     privateLinkServiceConnectionState: {
///         description: "Auto-Approved",
///         status: azure_native.videoindexer.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.videoindexer.PrivateEndpointConnection("privateEndpointConnection",
///     account_name="contoso",
///     private_endpoint_connection_name="peexample01",
///     private_link_service_connection_state={
///         "description": "Auto-Approved",
///         "status": azure_native.videoindexer.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:videoindexer:PrivateEndpointConnection
///     properties:
///       accountName: contoso
///       privateEndpointConnectionName: peexample01
///       privateLinkServiceConnectionState:
///         description: Auto-Approved
///         status: Approved
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:videoindexer:PrivateEndpointConnection peexample01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VideoIndexer/accounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The private endpoint resource.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_videoindexer_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:videoindexer:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse>(
          'privateLinkServiceConnectionState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PrivateLinkServiceConnectionStateResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String>('provisioningState');
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
    type = registerOutput<String>('type');
  }
}
