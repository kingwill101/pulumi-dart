import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';
import 'web_app_private_endpoint_connection_args.dart';

/// Remote Private Endpoint Connection ARM resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approves or rejects a private endpoint connection for a site.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppPrivateEndpointConnection = new AzureNative.Web.WebAppPrivateEndpointConnection("webAppPrivateEndpointConnection", new()
///     {
///         Name = "testSite",
///         PrivateEndpointConnectionName = "connection",
///         PrivateLinkServiceConnectionState = new AzureNative.Web.Inputs.PrivateLinkConnectionStateArgs
///         {
///             ActionsRequired = "",
///             Description = "Approved by admin.",
///             Status = "Approved",
///         },
///         ResourceGroupName = "rg",
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
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewWebAppPrivateEndpointConnection(ctx, "webAppPrivateEndpointConnection", &web.WebAppPrivateEndpointConnectionArgs{
/// 			Name:                          pulumi.String("testSite"),
/// 			PrivateEndpointConnectionName: pulumi.String("connection"),
/// 			PrivateLinkServiceConnectionState: &web.PrivateLinkConnectionStateArgs{
/// 				ActionsRequired: pulumi.String(""),
/// 				Description:     pulumi.String("Approved by admin."),
/// 				Status:          pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
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
/// import com.pulumi.azurenative.web.WebAppPrivateEndpointConnection;
/// import com.pulumi.azurenative.web.WebAppPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.web.inputs.PrivateLinkConnectionStateArgs;
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
///         var webAppPrivateEndpointConnection = new WebAppPrivateEndpointConnection("webAppPrivateEndpointConnection", WebAppPrivateEndpointConnectionArgs.builder()
///             .name("testSite")
///             .privateEndpointConnectionName("connection")
///             .privateLinkServiceConnectionState(PrivateLinkConnectionStateArgs.builder()
///                 .actionsRequired("")
///                 .description("Approved by admin.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg")
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
/// const webAppPrivateEndpointConnection = new azure_native.web.WebAppPrivateEndpointConnection("webAppPrivateEndpointConnection", {
///     name: "testSite",
///     privateEndpointConnectionName: "connection",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "",
///         description: "Approved by admin.",
///         status: "Approved",
///     },
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_private_endpoint_connection = azure_native.web.WebAppPrivateEndpointConnection("webAppPrivateEndpointConnection",
///     name="testSite",
///     private_endpoint_connection_name="connection",
///     private_link_service_connection_state={
///         "actions_required": "",
///         "description": "Approved by admin.",
///         "status": "Approved",
///     },
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppPrivateEndpointConnection:
///     type: azure-native:web:WebAppPrivateEndpointConnection
///     properties:
///       name: testSite
///       privateEndpointConnectionName: connection
///       privateLinkServiceConnectionState:
///         actionsRequired: ""
///         description: Approved by admin.
///         status: Approved
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:web:WebAppPrivateEndpointConnection connection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class WebAppPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Private IPAddresses mapped to the remote private endpoint
  late final pulumi.Output<List<String>?> ipAddresses;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// PrivateEndpoint of a remote private endpoint connection
  late final pulumi.Output<ArmIdWrapperResponse?> privateEndpoint;

  /// The state of a private link connection
  late final pulumi.Output<PrivateLinkConnectionStateResponse?>
  privateLinkServiceConnectionState;
  late final pulumi.Output<String> provisioningState;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppPrivateEndpointConnection]. {@macro pulumi_web_web_app_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppPrivateEndpointConnection(
    String name, {
    WebAppPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppPrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<ArmIdWrapperResponse?>('privateEndpoint');
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkConnectionStateResponse?>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
