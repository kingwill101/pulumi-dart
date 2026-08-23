import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection class.
///
/// Uses Azure REST API version 2024-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01.
///
/// Other available API versions: 2021-12-01, 2023-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native purview [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Purview.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         AccountName = "account1",
///         PrivateEndpointConnectionName = "privateEndpointConnection1",
///         PrivateLinkServiceConnectionState = new AzureNative.Purview.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by johndoe@company.com",
///             Status = AzureNative.Purview.PrivateEndpointConnectionStatus.Approved,
///         },
///         ResourceGroupName = "SampleResourceGroup",
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
/// 	purview "github.com/pulumi/pulumi-azure-native-sdk/purview/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := purview.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &purview.PrivateEndpointConnectionArgs{
/// 			AccountName:                   pulumi.String("account1"),
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointConnection1"),
/// 			PrivateLinkServiceConnectionState: &purview.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by johndoe@company.com"),
/// 				Status:      pulumi.String(purview.PrivateEndpointConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
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
/// resource "azure-native_purview_privateendpointconnection" "privateEndpointConnection" {
///   account_name                     = "account1"
///   private_endpoint_connection_name = "privateEndpointConnection1"
///   private_link_service_connection_state = {
///     description = "Approved by johndoe@company.com"
///     status      = "Approved"
///   }
///   resource_group_name = "SampleResourceGroup"
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
/// import com.pulumi.azurenative.purview.PrivateEndpointConnection;
/// import com.pulumi.azurenative.purview.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.purview.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .accountName("account1")
///             .privateEndpointConnectionName("privateEndpointConnection1")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by johndoe@company.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
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
/// const privateEndpointConnection = new azure_native.purview.PrivateEndpointConnection("privateEndpointConnection", {
///     accountName: "account1",
///     privateEndpointConnectionName: "privateEndpointConnection1",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@company.com",
///         status: azure_native.purview.PrivateEndpointConnectionStatus.Approved,
///     },
///     resourceGroupName: "SampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.purview.PrivateEndpointConnection("privateEndpointConnection",
///     account_name="account1",
///     private_endpoint_connection_name="privateEndpointConnection1",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@company.com",
///         "status": azure_native.purview.PrivateEndpointConnectionStatus.APPROVED,
///     },
///     resource_group_name="SampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:purview:PrivateEndpointConnection
///     properties:
///       accountName: account1
///       privateEndpointConnectionName: privateEndpointConnection1
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@company.com
///         status: Approved
///       resourceGroupName: SampleResourceGroup
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
/// $ pulumi import azure-native:purview:PrivateEndpointConnection privateEndpointConnection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Purview/accounts/{accountName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint information.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// The private link service connection state.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_purview_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:purview:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
