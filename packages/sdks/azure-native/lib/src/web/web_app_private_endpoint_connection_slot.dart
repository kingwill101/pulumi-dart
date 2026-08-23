import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';
import 'system_data_response.dart';
import 'web_app_private_endpoint_connection_slot_args.dart';

/// Remote Private Endpoint Connection ARM resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var webAppPrivateEndpointConnectionSlot = new AzureNative.Web.WebAppPrivateEndpointConnectionSlot("webAppPrivateEndpointConnectionSlot", new()
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
///         Slot = "stage",
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
/// 		_, err := web.NewWebAppPrivateEndpointConnectionSlot(ctx, "webAppPrivateEndpointConnectionSlot", &web.WebAppPrivateEndpointConnectionSlotArgs{
/// 			Name:                          pulumi.String("testSite"),
/// 			PrivateEndpointConnectionName: pulumi.String("connection"),
/// 			PrivateLinkServiceConnectionState: &web.PrivateLinkConnectionStateArgs{
/// 				ActionsRequired: pulumi.String(""),
/// 				Description:     pulumi.String("Approved by admin."),
/// 				Status:          pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Slot:              pulumi.String("stage"),
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
/// resource "azure-native_web_webappprivateendpointconnectionslot" "webAppPrivateEndpointConnectionSlot" {
///   name                             = "testSite"
///   private_endpoint_connection_name = "connection"
///   private_link_service_connection_state = {
///     actions_required = ""
///     description      = "Approved by admin."
///     status           = "Approved"
///   }
///   resource_group_name = "rg"
///   slot                = "stage"
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
/// import com.pulumi.azurenative.web.WebAppPrivateEndpointConnectionSlot;
/// import com.pulumi.azurenative.web.WebAppPrivateEndpointConnectionSlotArgs;
/// import com.pulumi.azurenative.web.inputs.PrivateLinkConnectionStateArgs;
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
///         var webAppPrivateEndpointConnectionSlot = new WebAppPrivateEndpointConnectionSlot("webAppPrivateEndpointConnectionSlot", WebAppPrivateEndpointConnectionSlotArgs.builder()
///             .name("testSite")
///             .privateEndpointConnectionName("connection")
///             .privateLinkServiceConnectionState(PrivateLinkConnectionStateArgs.builder()
///                 .actionsRequired("")
///                 .description("Approved by admin.")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("rg")
///             .slot("stage")
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
/// const webAppPrivateEndpointConnectionSlot = new azure_native.web.WebAppPrivateEndpointConnectionSlot("webAppPrivateEndpointConnectionSlot", {
///     name: "testSite",
///     privateEndpointConnectionName: "connection",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "",
///         description: "Approved by admin.",
///         status: "Approved",
///     },
///     resourceGroupName: "rg",
///     slot: "stage",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_private_endpoint_connection_slot = azure_native.web.WebAppPrivateEndpointConnectionSlot("webAppPrivateEndpointConnectionSlot",
///     name="testSite",
///     private_endpoint_connection_name="connection",
///     private_link_service_connection_state={
///         "actions_required": "",
///         "description": "Approved by admin.",
///         "status": "Approved",
///     },
///     resource_group_name="rg",
///     slot="stage")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppPrivateEndpointConnectionSlot:
///     type: azure-native:web:WebAppPrivateEndpointConnectionSlot
///     properties:
///       name: testSite
///       privateEndpointConnectionName: connection
///       privateLinkServiceConnectionState:
///         actionsRequired: ""
///         description: Approved by admin.
///         status: Approved
///       resourceGroupName: rg
///       slot: stage
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
/// $ pulumi import azure-native:web:WebAppPrivateEndpointConnectionSlot connection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class WebAppPrivateEndpointConnectionSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Private IPAddresses mapped to the remote private endpoint
  late final pulumi.Output<List<String>?> ipAddresses;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// PrivateEndpoint of a remote private endpoint connection
  late final pulumi.Output<ArmIdWrapperResponse?> privateEndpoint;
  /// The state of a private link connection
  late final pulumi.Output<PrivateLinkConnectionStateResponse?> privateLinkServiceConnectionState;
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppPrivateEndpointConnectionSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppPrivateEndpointConnectionSlot]. {@macro pulumi_web_web_app_private_endpoint_connection_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppPrivateEndpointConnectionSlot(
    String name, {
    WebAppPrivateEndpointConnectionSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppPrivateEndpointConnectionSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<ArmIdWrapperResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ArmIdWrapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkConnectionStateResponse?>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
