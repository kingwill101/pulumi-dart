import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2018-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve or reject a private endpoint connection with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Sql.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "private-endpoint-connection-name",
///         PrivateLinkServiceConnectionState = new AzureNative.Sql.Inputs.PrivateLinkServiceConnectionStatePropertyArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = AzureNative.Sql.PrivateLinkServiceConnectionStateStatus.Approved,
///         },
///         ResourceGroupName = "Default",
///         ServerName = "test-svr",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &sql.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("private-endpoint-connection-name"),
/// 			PrivateLinkServiceConnectionState: &sql.PrivateLinkServiceConnectionStatePropertyArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String(sql.PrivateLinkServiceConnectionStateStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default"),
/// 			ServerName:        pulumi.String("test-svr"),
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
/// import com.pulumi.azurenative.sql.PrivateEndpointConnection;
/// import com.pulumi.azurenative.sql.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.sql.inputs.PrivateLinkServiceConnectionStatePropertyArgs;
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
///             .privateEndpointConnectionName("private-endpoint-connection-name")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStatePropertyArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("Default")
///             .serverName("test-svr")
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
/// const privateEndpointConnection = new azure_native.sql.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "private-endpoint-connection-name",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: azure_native.sql.PrivateLinkServiceConnectionStateStatus.Approved,
///     },
///     resourceGroupName: "Default",
///     serverName: "test-svr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.sql.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="private-endpoint-connection-name",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": azure_native.sql.PrivateLinkServiceConnectionStateStatus.APPROVED,
///     },
///     resource_group_name="Default",
///     server_name="test-svr")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:sql:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: private-endpoint-connection-name
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: Default
///       serverName: test-svr
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
/// $ pulumi import azure-native:sql:PrivateEndpointConnection private-endpoint-connection-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Group IDs.
  late final pulumi.Output<List<String>> groupIds;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Private endpoint which the connection belongs to.
  late final pulumi.Output<PrivateEndpointPropertyResponse?> privateEndpoint;

  /// Connection state of the private endpoint connection.
  late final pulumi.Output<PrivateLinkServiceConnectionStatePropertyResponse?>
  privateLinkServiceConnectionState;

  /// State of the private endpoint connection.
  late final pulumi.Output<String> provisioningState;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_sql_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointPropertyResponse?>(
      'privateEndpoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStatePropertyResponse?>(
          'privateLinkServiceConnectionState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PrivateLinkServiceConnectionStatePropertyResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
