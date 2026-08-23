import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_response.dart';
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'system_data_response.dart';

/// Properties of the PrivateEndpointConnection.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicebus [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var privateEndpointConnection = new AzureNative.ServiceBus.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         NamespaceName = "sdk-Namespace-2924",
///         PrivateEndpoint = new AzureNative.ServiceBus.Inputs.PrivateEndpointArgs
///         {
///             Id = "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///         },
///         PrivateEndpointConnectionName = "privateEndpointConnectionName",
///         PrivateLinkServiceConnectionState = new AzureNative.ServiceBus.Inputs.ConnectionStateArgs
///         {
///             Description = "testing",
///             Status = AzureNative.ServiceBus.PrivateLinkConnectionStatus.Rejected,
///         },
///         ProvisioningState = AzureNative.ServiceBus.EndPointProvisioningState.Succeeded,
///         ResourceGroupName = "ArunMonocle",
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
/// 	servicebus "github.com/pulumi/pulumi-azure-native-sdk/servicebus/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicebus.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &servicebus.PrivateEndpointConnectionArgs{
/// 			NamespaceName: pulumi.String("sdk-Namespace-2924"),
/// 			PrivateEndpoint: &servicebus.PrivateEndpointArgs{
/// 				Id: pulumi.String("/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847"),
/// 			},
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnectionName"),
/// 			PrivateLinkServiceConnectionState: &servicebus.ConnectionStateArgs{
/// 				Description: pulumi.String("testing"),
/// 				Status:      pulumi.String(servicebus.PrivateLinkConnectionStatusRejected),
/// 			},
/// 			ProvisioningState: pulumi.String(servicebus.EndPointProvisioningStateSucceeded),
/// 			ResourceGroupName: pulumi.String("ArunMonocle"),
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
/// resource "azure-native_servicebus_privateendpointconnection" "privateEndpointConnection" {
///   namespace_name = "sdk-Namespace-2924"
///   private_endpoint = {
///     id = "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847"
///   }
///   private_endpoint_connection_name = "privateEndpointConnectionName"
///   private_link_service_connection_state = {
///     description = "testing"
///     status      = "Rejected"
///   }
///   provisioning_state  = "Succeeded"
///   resource_group_name = "ArunMonocle"
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
/// import com.pulumi.azurenative.servicebus.PrivateEndpointConnection;
/// import com.pulumi.azurenative.servicebus.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.servicebus.inputs.PrivateEndpointArgs;
/// import com.pulumi.azurenative.servicebus.inputs.ConnectionStateArgs;
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
///             .namespaceName("sdk-Namespace-2924")
///             .privateEndpoint(PrivateEndpointArgs.builder()
///                 .id("/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847")
///                 .build())
///             .privateEndpointConnectionName("privateEndpointConnectionName")
///             .privateLinkServiceConnectionState(ConnectionStateArgs.builder()
///                 .description("testing")
///                 .status("Rejected")
///                 .build())
///             .provisioningState("Succeeded")
///             .resourceGroupName("ArunMonocle")
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
/// const privateEndpointConnection = new azure_native.servicebus.PrivateEndpointConnection("privateEndpointConnection", {
///     namespaceName: "sdk-Namespace-2924",
///     privateEndpoint: {
///         id: "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///     },
///     privateEndpointConnectionName: "privateEndpointConnectionName",
///     privateLinkServiceConnectionState: {
///         description: "testing",
///         status: azure_native.servicebus.PrivateLinkConnectionStatus.Rejected,
///     },
///     provisioningState: azure_native.servicebus.EndPointProvisioningState.Succeeded,
///     resourceGroupName: "ArunMonocle",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.servicebus.PrivateEndpointConnection("privateEndpointConnection",
///     namespace_name="sdk-Namespace-2924",
///     private_endpoint={
///         "id": "/subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847",
///     },
///     private_endpoint_connection_name="privateEndpointConnectionName",
///     private_link_service_connection_state={
///         "description": "testing",
///         "status": azure_native.servicebus.PrivateLinkConnectionStatus.REJECTED,
///     },
///     provisioning_state=azure_native.servicebus.EndPointProvisioningState.SUCCEEDED,
///     resource_group_name="ArunMonocle")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:servicebus:PrivateEndpointConnection
///     properties:
///       namespaceName: sdk-Namespace-2924
///       privateEndpoint:
///         id: /subscriptions/dbedb4e0-40e6-4145-81f3-f1314c150774/resourceGroups/SDK-ServiceBus-8396/providers/Microsoft.Network/privateEndpoints/sdk-Namespace-2847
///       privateEndpointConnectionName: privateEndpointConnectionName
///       privateLinkServiceConnectionState:
///         description: testing
///         status: Rejected
///       provisioningState: Succeeded
///       resourceGroupName: ArunMonocle
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
/// $ pulumi import azure-native:servicebus:PrivateEndpointConnection 928c44d5-b7c6-423b-b6fa-811e0c27b3e0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnectionServicebus extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Private Endpoint resource for this Connection.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// Details about the state of the connection.
  late final pulumi.Output<ConnectionStateResponse?> privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  late final pulumi.Output<String?> provisioningState;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionServicebus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionServicebus]. {@macro pulumi_servicebus_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionServicebus(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<ConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
