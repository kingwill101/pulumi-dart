import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'signal_rprivate_endpoint_connection_args.dart';
import 'system_data_response.dart';

/// A private endpoint connection to an azure resource
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalRPrivateEndpointConnections_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalRPrivateEndpointConnection = new AzureNative.SignalRService.SignalRPrivateEndpointConnection("signalRPrivateEndpointConnection", new()
///     {
///         PrivateEndpoint = null,
///         PrivateEndpointConnectionName = "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///         PrivateLinkServiceConnectionState = new AzureNative.SignalRService.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "None",
///             Status = AzureNative.SignalRService.PrivateLinkServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
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
/// 	signalrservice "github.com/pulumi/pulumi-azure-native-sdk/signalrservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signalrservice.NewSignalRPrivateEndpointConnection(ctx, "signalRPrivateEndpointConnection", &signalrservice.SignalRPrivateEndpointConnectionArgs{
/// 			PrivateEndpoint:               &signalrservice.PrivateEndpointArgs{},
/// 			PrivateEndpointConnectionName: pulumi.String("mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e"),
/// 			PrivateLinkServiceConnectionState: &signalrservice.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("None"),
/// 				Status:          pulumi.String(signalrservice.PrivateLinkServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("mySignalRService"),
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
/// resource "azure-native_signalrservice_signalrprivateendpointconnection" "signalRPrivateEndpointConnection" {
///   private_endpoint                 = {}
///   private_endpoint_connection_name = "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e"
///   private_link_service_connection_state = {
///     actions_required = "None"
///     status           = "Approved"
///   }
///   resource_group_name = "myResourceGroup"
///   resource_name       = "mySignalRService"
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
/// import com.pulumi.azurenative.signalrservice.SignalRPrivateEndpointConnection;
/// import com.pulumi.azurenative.signalrservice.SignalRPrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var signalRPrivateEndpointConnection = new SignalRPrivateEndpointConnection("signalRPrivateEndpointConnection", SignalRPrivateEndpointConnectionArgs.builder()
///             .privateEndpoint(PrivateEndpointArgs.builder()
///                 .build())
///             .privateEndpointConnectionName("mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("None")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
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
/// const signalRPrivateEndpointConnection = new azure_native.signalrservice.SignalRPrivateEndpointConnection("signalRPrivateEndpointConnection", {
///     privateEndpoint: {},
///     privateEndpointConnectionName: "mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "None",
///         status: azure_native.signalrservice.PrivateLinkServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r_private_endpoint_connection = azure_native.signalrservice.SignalRPrivateEndpointConnection("signalRPrivateEndpointConnection",
///     private_endpoint={},
///     private_endpoint_connection_name="mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e",
///     private_link_service_connection_state={
///         "actions_required": "None",
///         "status": azure_native.signalrservice.PrivateLinkServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService")
///
/// ```
///
/// ```yaml
/// resources:
///   signalRPrivateEndpointConnection:
///     type: azure-native:signalrservice:SignalRPrivateEndpointConnection
///     properties:
///       privateEndpoint: {}
///       privateEndpointConnectionName: mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e
///       privateLinkServiceConnectionState:
///         actionsRequired: None
///         status: Approved
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
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
/// $ pulumi import azure-native:signalrservice:SignalRPrivateEndpointConnection mysignalrservice.1fa229cd-bf3f-47f0-8c49-afb36723997e /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class SignalRPrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Group IDs
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Private endpoint
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// Connection state of the private endpoint connection
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SignalRPrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalRPrivateEndpointConnection]. {@macro pulumi_signalrservice_signal_rprivate_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalRPrivateEndpointConnection(
    String name, {
    SignalRPrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:signalrservice:SignalRPrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
