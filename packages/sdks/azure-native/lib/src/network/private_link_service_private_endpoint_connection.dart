import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'private_link_service_private_endpoint_connection_args.dart';

/// PrivateEndpointConnection resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### approve or reject private end point connection for a private link service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkServicePrivateEndpointConnection = new AzureNative.Network.PrivateLinkServicePrivateEndpointConnection("privateLinkServicePrivateEndpointConnection", new()
///     {
///         Name = "testPlePeConnection",
///         PeConnectionName = "testPlePeConnection",
///         PrivateLinkServiceConnectionState = new AzureNative.Network.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "approved it for some reason.",
///             Status = "Approved",
///         },
///         ResourceGroupName = "rg1",
///         ServiceName = "testPls",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewPrivateLinkServicePrivateEndpointConnection(ctx, "privateLinkServicePrivateEndpointConnection", &network.PrivateLinkServicePrivateEndpointConnectionArgs{
/// 			Name:             pulumi.String("testPlePeConnection"),
/// 			PeConnectionName: pulumi.String("testPlePeConnection"),
/// 			PrivateLinkServiceConnectionState: &network.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("approved it for some reason."),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("testPls"),
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
/// import com.pulumi.azurenative.network.PrivateLinkServicePrivateEndpointConnection;
/// import com.pulumi.azurenative.network.PrivateLinkServicePrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateLinkServicePrivateEndpointConnection = new PrivateLinkServicePrivateEndpointConnection("privateLinkServicePrivateEndpointConnection", PrivateLinkServicePrivateEndpointConnectionArgs.builder()
///             .name("testPlePeConnection")
///             .peConnectionName("testPlePeConnection")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("approved it for some reason.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg1")
///             .serviceName("testPls")
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
/// const privateLinkServicePrivateEndpointConnection = new azure_native.network.PrivateLinkServicePrivateEndpointConnection("privateLinkServicePrivateEndpointConnection", {
///     name: "testPlePeConnection",
///     peConnectionName: "testPlePeConnection",
///     privateLinkServiceConnectionState: {
///         description: "approved it for some reason.",
///         status: "Approved",
///     },
///     resourceGroupName: "rg1",
///     serviceName: "testPls",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_service_private_endpoint_connection = azure_native.network.PrivateLinkServicePrivateEndpointConnection("privateLinkServicePrivateEndpointConnection",
///     name="testPlePeConnection",
///     pe_connection_name="testPlePeConnection",
///     private_link_service_connection_state={
///         "description": "approved it for some reason.",
///         "status": "Approved",
///     },
///     resource_group_name="rg1",
///     service_name="testPls")
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkServicePrivateEndpointConnection:
///     type: azure-native:network:PrivateLinkServicePrivateEndpointConnection
///     properties:
///       name: testPlePeConnection
///       peConnectionName: testPlePeConnection
///       privateLinkServiceConnectionState:
///         description: approved it for some reason.
///         status: Approved
///       resourceGroupName: rg1
///       serviceName: testPls
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
/// $ pulumi import azure-native:network:PrivateLinkServicePrivateEndpointConnection testPlePeConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateLinkServices/{serviceName}/privateEndpointConnections/{peConnectionName}
/// ```
class PrivateLinkServicePrivateEndpointConnection
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The consumer link id.
  late final pulumi.Output<String> linkIdentifier;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse> privateEndpoint;

  /// The location of the private endpoint.
  late final pulumi.Output<String> privateEndpointLocation;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkServicePrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkServicePrivateEndpointConnection]. {@macro pulumi_network_private_link_service_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkServicePrivateEndpointConnection(
    String name, {
    PrivateLinkServicePrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:PrivateLinkServicePrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    linkIdentifier = registerOutput<String>('linkIdentifier');
    this.name = registerOutput<String?>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse>(
      'privateEndpoint',
    );
    privateEndpointLocation = registerOutput<String>('privateEndpointLocation');
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse?>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
