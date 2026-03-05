import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// Describes an existing private endpoint connection to the Azure AI Search service.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnectionUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Search.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546",
///         Properties = new AzureNative.Search.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Search.Inputs.PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateArgs
///             {
///                 Description = "Rejected for some reason.",
///                 Status = AzureNative.Search.PrivateLinkServiceConnectionStatus.Rejected,
///             },
///         },
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
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
/// 	search "github.com/pulumi/pulumi-azure-native-sdk/search/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := search.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &search.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546"),
/// 			Properties: &search.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &search.PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateArgs{
/// 					Description: pulumi.String("Rejected for some reason."),
/// 					Status:      search.PrivateLinkServiceConnectionStatusRejected,
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SearchServiceName: pulumi.String("mysearchservice"),
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
/// import com.pulumi.azurenative.search.PrivateEndpointConnection;
/// import com.pulumi.azurenative.search.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.search.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.search.inputs.PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateArgs.builder()
///                     .description("Rejected for some reason.")
///                     .status("Rejected")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
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
/// const privateEndpointConnection = new azure_native.search.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546",
///     properties: {
///         privateLinkServiceConnectionState: {
///             description: "Rejected for some reason.",
///             status: azure_native.search.PrivateLinkServiceConnectionStatus.Rejected,
///         },
///     },
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.search.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546",
///     properties={
///         "private_link_service_connection_state": {
///             "description": "Rejected for some reason.",
///             "status": azure_native.search.PrivateLinkServiceConnectionStatus.REJECTED,
///         },
///     },
///     resource_group_name="rg1",
///     search_service_name="mysearchservice")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:search:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546
///       properties:
///         privateLinkServiceConnectionState:
///           description: Rejected for some reason.
///           status: Rejected
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
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
/// $ pulumi import azure-native:search:PrivateEndpointConnection testEndpoint.50bf4fbe-d7c1-4b48-a642-4f5892642546 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes the properties of an existing private endpoint connection to the Azure AI Search service.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_search_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:search:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
