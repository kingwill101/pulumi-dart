import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_private_endpoint_connection_args.dart';

/// A private endpoint connection to an azure resource
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSubPrivateEndpointConnections_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSubPrivateEndpointConnection = new AzureNative.WebPubSub.WebPubSubPrivateEndpointConnection("webPubSubPrivateEndpointConnection", new()
///     {
///         PrivateEndpoint = null,
///         PrivateEndpointConnectionName = "mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         PrivateLinkServiceConnectionState = new AzureNative.WebPubSub.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Status = AzureNative.WebPubSub.PrivateLinkServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
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
/// 	webpubsub "github.com/pulumi/pulumi-azure-native-sdk/webpubsub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.NewWebPubSubPrivateEndpointConnection(ctx, "webPubSubPrivateEndpointConnection", &webpubsub.WebPubSubPrivateEndpointConnectionArgs{
/// 			PrivateEndpoint:               &webpubsub.PrivateEndpointArgs{},
/// 			PrivateEndpointConnectionName: pulumi.String("mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e"),
/// 			PrivateLinkServiceConnectionState: &webpubsub.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Status:          pulumi.String(webpubsub.PrivateLinkServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("myWebPubSubService"),
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
/// import com.pulumi.azurenative.webpubsub.WebPubSubPrivateEndpointConnection;
/// import com.pulumi.azurenative.webpubsub.WebPubSubPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var webPubSubPrivateEndpointConnection = new WebPubSubPrivateEndpointConnection("webPubSubPrivateEndpointConnection", WebPubSubPrivateEndpointConnectionArgs.builder()
///             .privateEndpoint(PrivateEndpointArgs.builder()
///                 .build())
///             .privateEndpointConnectionName("mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
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
/// const webPubSubPrivateEndpointConnection = new azure_native.webpubsub.WebPubSubPrivateEndpointConnection("webPubSubPrivateEndpointConnection", {
///     privateEndpoint: {},
///     privateEndpointConnectionName: "mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         status: azure_native.webpubsub.PrivateLinkServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_pub_sub_private_endpoint_connection = azure_native.webpubsub.WebPubSubPrivateEndpointConnection("webPubSubPrivateEndpointConnection",
///     private_endpoint={},
///     private_endpoint_connection_name="mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "status": azure_native.webpubsub.PrivateLinkServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService")
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSubPrivateEndpointConnection:
///     type: azure-native:webpubsub:WebPubSubPrivateEndpointConnection
///     properties:
///       privateEndpoint: {}
///       privateEndpointConnectionName: mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         status: Approved
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
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
/// $ pulumi import azure-native:webpubsub:WebPubSubPrivateEndpointConnection mywebpubsubservice.1fa229cd-bf3f-47f0-8c49-afb36723997e /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class WebPubSubPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Group IDs
  late final pulumi.Output<List<String>> groupIds;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Private endpoint
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// Connection state of the private endpoint connection
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?>
  privateLinkServiceConnectionState;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebPubSubPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSubPrivateEndpointConnection]. {@macro pulumi_webpubsub_web_pub_sub_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSubPrivateEndpointConnection(
    String name, {
    WebPubSubPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:webpubsub:WebPubSubPrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse?>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
