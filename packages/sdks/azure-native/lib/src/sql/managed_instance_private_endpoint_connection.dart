import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_private_endpoint_connection_args.dart';
import 'managed_instance_private_endpoint_property_response.dart';
import 'managed_instance_private_link_service_connection_state_property_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var managedInstancePrivateEndpointConnection = new AzureNative.Sql.ManagedInstancePrivateEndpointConnection("managedInstancePrivateEndpointConnection", new()
///     {
///         ManagedInstanceName = "test-cl",
///         PrivateEndpointConnectionName = "private-endpoint-connection-name",
///         PrivateLinkServiceConnectionState = new AzureNative.Sql.Inputs.ManagedInstancePrivateLinkServiceConnectionStatePropertyArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = "Approved",
///         },
///         ResourceGroupName = "Default",
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
/// 		_, err := sql.NewManagedInstancePrivateEndpointConnection(ctx, "managedInstancePrivateEndpointConnection", &sql.ManagedInstancePrivateEndpointConnectionArgs{
/// 			ManagedInstanceName:           pulumi.String("test-cl"),
/// 			PrivateEndpointConnectionName: pulumi.String("private-endpoint-connection-name"),
/// 			PrivateLinkServiceConnectionState: &sql.ManagedInstancePrivateLinkServiceConnectionStatePropertyArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("Default"),
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
/// resource "azure-native_sql_managedinstanceprivateendpointconnection" "managedInstancePrivateEndpointConnection" {
///   managed_instance_name            = "test-cl"
///   private_endpoint_connection_name = "private-endpoint-connection-name"
///   private_link_service_connection_state = {
///     description = "Approved by johndoe@contoso.com"
///     status      = "Approved"
///   }
///   resource_group_name = "Default"
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
/// import com.pulumi.azurenative.sql.ManagedInstancePrivateEndpointConnection;
/// import com.pulumi.azurenative.sql.ManagedInstancePrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.sql.inputs.ManagedInstancePrivateLinkServiceConnectionStatePropertyArgs;
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
///         var managedInstancePrivateEndpointConnection = new ManagedInstancePrivateEndpointConnection("managedInstancePrivateEndpointConnection", ManagedInstancePrivateEndpointConnectionArgs.builder()
///             .managedInstanceName("test-cl")
///             .privateEndpointConnectionName("private-endpoint-connection-name")
///             .privateLinkServiceConnectionState(ManagedInstancePrivateLinkServiceConnectionStatePropertyArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("Default")
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
/// const managedInstancePrivateEndpointConnection = new azure_native.sql.ManagedInstancePrivateEndpointConnection("managedInstancePrivateEndpointConnection", {
///     managedInstanceName: "test-cl",
///     privateEndpointConnectionName: "private-endpoint-connection-name",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: "Approved",
///     },
///     resourceGroupName: "Default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_instance_private_endpoint_connection = azure_native.sql.ManagedInstancePrivateEndpointConnection("managedInstancePrivateEndpointConnection",
///     managed_instance_name="test-cl",
///     private_endpoint_connection_name="private-endpoint-connection-name",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": "Approved",
///     },
///     resource_group_name="Default")
///
/// ```
///
/// ```yaml
/// resources:
///   managedInstancePrivateEndpointConnection:
///     type: azure-native:sql:ManagedInstancePrivateEndpointConnection
///     properties:
///       managedInstanceName: test-cl
///       privateEndpointConnectionName: private-endpoint-connection-name
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: Default
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
/// $ pulumi import azure-native:sql:ManagedInstancePrivateEndpointConnection private-endpoint-connection-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class ManagedInstancePrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Private endpoint which the connection belongs to.
  late final pulumi.Output<ManagedInstancePrivateEndpointPropertyResponse?> privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  late final pulumi.Output<ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse?> privateLinkServiceConnectionState;
  /// State of the Private Endpoint Connection.
  late final pulumi.Output<String> provisioningState;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedInstancePrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstancePrivateEndpointConnection]. {@macro pulumi_sql_managed_instance_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstancePrivateEndpointConnection(
    String name, {
    ManagedInstancePrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ManagedInstancePrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<ManagedInstancePrivateEndpointPropertyResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedInstancePrivateEndpointPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
