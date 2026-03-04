import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_response.dart';
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'system_data_response.dart';

/// Properties of the PrivateEndpointConnection.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native relay [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NameSpacePrivateEndPointConnectionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Relay.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         NamespaceName = "example-RelayNamespace-5849",
///         PrivateEndpoint = new AzureNative.Relay.Inputs.PrivateEndpointArgs
///         {
///             Id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1",
///         },
///         PrivateEndpointConnectionName = "{privateEndpointConnection name}",
///         PrivateLinkServiceConnectionState = new AzureNative.Relay.Inputs.ConnectionStateArgs
///         {
///             Description = "You may pass",
///             Status = AzureNative.Relay.PrivateLinkConnectionStatus.Approved,
///         },
///         ResourceGroupName = "resourcegroup",
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
/// 	relay "github.com/pulumi/pulumi-azure-native-sdk/relay/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := relay.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &relay.PrivateEndpointConnectionArgs{
/// 			NamespaceName: pulumi.String("example-RelayNamespace-5849"),
/// 			PrivateEndpoint: &relay.PrivateEndpointArgs{
/// 				Id: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1"),
/// 			},
/// 			PrivateEndpointConnectionName: pulumi.String("{privateEndpointConnection name}"),
/// 			PrivateLinkServiceConnectionState: &relay.ConnectionStateArgs{
/// 				Description: pulumi.String("You may pass"),
/// 				Status:      pulumi.String(relay.PrivateLinkConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourcegroup"),
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
/// import com.pulumi.azurenative.relay.PrivateEndpointConnection;
/// import com.pulumi.azurenative.relay.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.relay.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.relay.inputs.ConnectionStateArgs;
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
///             .namespaceName("example-RelayNamespace-5849")
///             .privateEndpoint(PrivateEndpointArgs.builder()
///                 .id("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1")
///                 .build())
///             .privateEndpointConnectionName("{privateEndpointConnection name}")
///             .privateLinkServiceConnectionState(ConnectionStateArgs.builder()
///                 .description("You may pass")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("resourcegroup")
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
/// const privateEndpointConnection = new azure_native.relay.PrivateEndpointConnection("privateEndpointConnection", {
///     namespaceName: "example-RelayNamespace-5849",
///     privateEndpoint: {
///         id: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1",
///     },
///     privateEndpointConnectionName: "{privateEndpointConnection name}",
///     privateLinkServiceConnectionState: {
///         description: "You may pass",
///         status: azure_native.relay.PrivateLinkConnectionStatus.Approved,
///     },
///     resourceGroupName: "resourcegroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.relay.PrivateEndpointConnection("privateEndpointConnection",
///     namespace_name="example-RelayNamespace-5849",
///     private_endpoint={
///         "id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1",
///     },
///     private_endpoint_connection_name="{privateEndpointConnection name}",
///     private_link_service_connection_state={
///         "description": "You may pass",
///         "status": azure_native.relay.PrivateLinkConnectionStatus.APPROVED,
///     },
///     resource_group_name="resourcegroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:relay:PrivateEndpointConnection
///     properties:
///       namespaceName: example-RelayNamespace-5849
///       privateEndpoint:
///         id: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/resourcegroup/providers/Microsoft.Network/privateEndpoints/ali-relay-pve-1
///       privateEndpointConnectionName: '{privateEndpointConnection name}'
///       privateLinkServiceConnectionState:
///         description: You may pass
///         status: Approved
///       resourceGroupName: resourcegroup
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
/// $ pulumi import azure-native:relay:PrivateEndpointConnection {privateEndpointConnection name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Relay/namespaces/{namespaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionRelay extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Private Endpoint resource for this Connection.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// Details about the state of the connection.
  late final pulumi.Output<ConnectionStateResponse?>
  privateLinkServiceConnectionState;

  /// Provisioning state of the Private Endpoint Connection.
  late final pulumi.Output<String?> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionRelay].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionRelay]. {@macro pulumi_relay_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionRelay(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:relay:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
    );
    privateLinkServiceConnectionState =
        registerOutput<ConnectionStateResponse?>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
