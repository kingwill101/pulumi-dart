import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Private endpoint connection resource for an online experimentation workspace resource.
///
/// Uses Azure REST API version 2025-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates the Private Endpoint Connection.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.OnlineExperimentation.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "jitf",
///         Properties = new AzureNative.OnlineExperimentation.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.OnlineExperimentation.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "afwbq",
///                 Description = "y",
///                 Status = AzureNative.OnlineExperimentation.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "res9871",
///         WorkspaceName = "expworkspace3",
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
/// 	onlineexperimentation "github.com/pulumi/pulumi-azure-native-sdk/onlineexperimentation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := onlineexperimentation.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &onlineexperimentation.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("jitf"),
/// 			Properties: &onlineexperimentation.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &onlineexperimentation.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String("afwbq"),
/// 					Description:     pulumi.String("y"),
/// 					Status:          pulumi.String(onlineexperimentation.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("res9871"),
/// 			WorkspaceName:     pulumi.String("expworkspace3"),
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
/// import com.pulumi.azurenative.onlineexperimentation.PrivateEndpointConnection;
/// import com.pulumi.azurenative.onlineexperimentation.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.onlineexperimentation.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.onlineexperimentation.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("jitf")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("afwbq")
///                     .description("y")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("res9871")
///             .workspaceName("expworkspace3")
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
/// const privateEndpointConnection = new azure_native.onlineexperimentation.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "jitf",
///     properties: {
///         privateLinkServiceConnectionState: {
///             actionsRequired: "afwbq",
///             description: "y",
///             status: azure_native.onlineexperimentation.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "res9871",
///     workspaceName: "expworkspace3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.onlineexperimentation.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="jitf",
///     properties={
///         "private_link_service_connection_state": {
///             "actions_required": "afwbq",
///             "description": "y",
///             "status": azure_native.onlineexperimentation.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="res9871",
///     workspace_name="expworkspace3")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:onlineexperimentation:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: jitf
///       properties:
///         privateLinkServiceConnectionState:
///           actionsRequired: afwbq
///           description: y
///           status: Approved
///       resourceGroupName: res9871
///       workspaceName: expworkspace3
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
/// $ pulumi import azure-native:onlineexperimentation:PrivateEndpointConnection kadsmyhrosefybpbwvwxs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OnlineExperimentation/workspaces/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_onlineexperimentation_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:onlineexperimentation:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
