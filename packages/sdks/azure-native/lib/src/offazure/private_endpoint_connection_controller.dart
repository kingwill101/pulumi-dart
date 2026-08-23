import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_controller_args.dart';
import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';
import 'system_data_response.dart';

/// REST model used to encapsulate Private Link properties for tracked resources.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-06.
///
/// Other available API versions: 2023-06-06, 2024-05-01-preview, 2024-07-01-preview, 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnectionController_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionController = new AzureNative.OffAzure.PrivateEndpointConnectionController("privateEndpointConnectionController", new()
///     {
///         PeConnectionName = "Q3Y7-B-E80QLei7BHb337-P",
///         PrivateLinkServiceConnectionState = new AzureNative.OffAzure.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "easeoi",
///             Description = "zieisbmqzndfwsnt",
///             Status = AzureNative.OffAzure.PrivateLinkServiceConnectionStateStatus.Approved,
///         },
///         ResourceGroupName = "rgmigrate",
///         SiteName = "-4k3gsPqU5Y3",
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
/// 	offazure "github.com/pulumi/pulumi-azure-native-sdk/offazure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazure.NewPrivateEndpointConnectionController(ctx, "privateEndpointConnectionController", &offazure.PrivateEndpointConnectionControllerArgs{
/// 			PeConnectionName: pulumi.String("Q3Y7-B-E80QLei7BHb337-P"),
/// 			PrivateLinkServiceConnectionState: &offazure.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("easeoi"),
/// 				Description:     pulumi.String("zieisbmqzndfwsnt"),
/// 				Status:          pulumi.String(offazure.PrivateLinkServiceConnectionStateStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
/// 			SiteName:          pulumi.String("-4k3gsPqU5Y3"),
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
/// resource "azure-native_offazure_privateendpointconnectioncontroller" "privateEndpointConnectionController" {
///   pe_connection_name = "Q3Y7-B-E80QLei7BHb337-P"
///   private_link_service_connection_state = {
///     actions_required = "easeoi"
///     description      = "zieisbmqzndfwsnt"
///     status           = "Approved"
///   }
///   resource_group_name = "rgmigrate"
///   site_name           = "-4k3gsPqU5Y3"
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
/// import com.pulumi.azurenative.offazure.PrivateEndpointConnectionController;
/// import com.pulumi.azurenative.offazure.PrivateEndpointConnectionControllerArgs;
/// import com.pulumi.azurenative.offazure.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnectionController = new PrivateEndpointConnectionController("privateEndpointConnectionController", PrivateEndpointConnectionControllerArgs.builder()
///             .peConnectionName("Q3Y7-B-E80QLei7BHb337-P")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("easeoi")
///                 .description("zieisbmqzndfwsnt")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rgmigrate")
///             .siteName("-4k3gsPqU5Y3")
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
/// const privateEndpointConnectionController = new azure_native.offazure.PrivateEndpointConnectionController("privateEndpointConnectionController", {
///     peConnectionName: "Q3Y7-B-E80QLei7BHb337-P",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "easeoi",
///         description: "zieisbmqzndfwsnt",
///         status: azure_native.offazure.PrivateLinkServiceConnectionStateStatus.Approved,
///     },
///     resourceGroupName: "rgmigrate",
///     siteName: "-4k3gsPqU5Y3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_controller = azure_native.offazure.PrivateEndpointConnectionController("privateEndpointConnectionController",
///     pe_connection_name="Q3Y7-B-E80QLei7BHb337-P",
///     private_link_service_connection_state={
///         "actions_required": "easeoi",
///         "description": "zieisbmqzndfwsnt",
///         "status": azure_native.offazure.PrivateLinkServiceConnectionStateStatus.APPROVED,
///     },
///     resource_group_name="rgmigrate",
///     site_name="-4k3gsPqU5Y3")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionController:
///     type: azure-native:offazure:PrivateEndpointConnectionController
///     properties:
///       peConnectionName: Q3Y7-B-E80QLei7BHb337-P
///       privateLinkServiceConnectionState:
///         actionsRequired: easeoi
///         description: zieisbmqzndfwsnt
///         status: Approved
///       resourceGroupName: rgmigrate
///       siteName: -4k3gsPqU5Y3
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
/// $ pulumi import azure-native:offazure:PrivateEndpointConnectionController yjvkdkdcs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/privateEndpointConnections/{peConnectionName}
/// ```
class PrivateEndpointConnectionController extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// array of group ids
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// private endpoints
  late final pulumi.Output<ResourceIdResponse> privateEndpoint;
  /// private endpoints connection state
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse?> privateLinkServiceConnectionState;
  /// provisioning state enum
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionController]. {@macro pulumi_offazure_private_endpoint_connection_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionController(
    String name, {
    PrivateEndpointConnectionControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:PrivateEndpointConnectionController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<ResourceIdResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
