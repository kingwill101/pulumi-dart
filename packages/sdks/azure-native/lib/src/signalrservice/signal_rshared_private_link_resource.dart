import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_rshared_private_link_resource_args.dart';
import 'system_data_response.dart';

/// Describes a Shared Private Link Resource
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalRSharedPrivateLinkResources_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalRSharedPrivateLinkResource = new AzureNative.SignalRService.SignalRSharedPrivateLinkResource("signalRSharedPrivateLinkResource", new()
///     {
///         GroupId = "sites",
///         PrivateLinkResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp",
///         RequestMessage = "Please approve",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
///         SharedPrivateLinkResourceName = "upstream",
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
/// 		_, err := signalrservice.NewSignalRSharedPrivateLinkResource(ctx, "signalRSharedPrivateLinkResource", &signalrservice.SignalRSharedPrivateLinkResourceArgs{
/// 			GroupId:                       pulumi.String("sites"),
/// 			PrivateLinkResourceId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp"),
/// 			RequestMessage:                pulumi.String("Please approve"),
/// 			ResourceGroupName:             pulumi.String("myResourceGroup"),
/// 			ResourceName:                  pulumi.String("mySignalRService"),
/// 			SharedPrivateLinkResourceName: pulumi.String("upstream"),
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
/// resource "azure-native_signalrservice_signalrsharedprivatelinkresource" "signalRSharedPrivateLinkResource" {
///   group_id                          = "sites"
///   private_link_resource_id          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp"
///   request_message                   = "Please approve"
///   resource_group_name               = "myResourceGroup"
///   resource_name                     = "mySignalRService"
///   shared_private_link_resource_name = "upstream"
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
/// import com.pulumi.azurenative.signalrservice.SignalRSharedPrivateLinkResource;
/// import com.pulumi.azurenative.signalrservice.SignalRSharedPrivateLinkResourceArgs;
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
///         var signalRSharedPrivateLinkResource = new SignalRSharedPrivateLinkResource("signalRSharedPrivateLinkResource", SignalRSharedPrivateLinkResourceArgs.builder()
///             .groupId("sites")
///             .privateLinkResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp")
///             .requestMessage("Please approve")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
///             .sharedPrivateLinkResourceName("upstream")
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
/// const signalRSharedPrivateLinkResource = new azure_native.signalrservice.SignalRSharedPrivateLinkResource("signalRSharedPrivateLinkResource", {
///     groupId: "sites",
///     privateLinkResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp",
///     requestMessage: "Please approve",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
///     sharedPrivateLinkResourceName: "upstream",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r_shared_private_link_resource = azure_native.signalrservice.SignalRSharedPrivateLinkResource("signalRSharedPrivateLinkResource",
///     group_id="sites",
///     private_link_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp",
///     request_message="Please approve",
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService",
///     shared_private_link_resource_name="upstream")
///
/// ```
///
/// ```yaml
/// resources:
///   signalRSharedPrivateLinkResource:
///     type: azure-native:signalrservice:SignalRSharedPrivateLinkResource
///     properties:
///       groupId: sites
///       privateLinkResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/Microsoft.Web/sites/myWebApp
///       requestMessage: Please approve
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
///       sharedPrivateLinkResourceName: upstream
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
/// $ pulumi import azure-native:signalrservice:SignalRSharedPrivateLinkResource upstream /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}/sharedPrivateLinkResources/{sharedPrivateLinkResourceName}
/// ```
class SignalRSharedPrivateLinkResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group id from the provider of resource the shared private link resource is for
  late final pulumi.Output<String> groupId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource id of the resource the shared private link resource is for
  late final pulumi.Output<String> privateLinkResourceId;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The request message for requesting approval of the shared private link resource
  late final pulumi.Output<String?> requestMessage;
  /// Status of the shared private link resource
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SignalRSharedPrivateLinkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalRSharedPrivateLinkResource]. {@macro pulumi_signalrservice_signal_rshared_private_link_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalRSharedPrivateLinkResource(
    String name, {
    SignalRSharedPrivateLinkResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:signalrservice:SignalRSharedPrivateLinkResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    provisioningState = registerOutput<String>('provisioningState');
    requestMessage = registerOutput<String?>('requestMessage');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SignalRSharedPrivateLinkResource] resource.
  SignalRSharedPrivateLinkResource.reference(String urn)
    : super(
        'azure-native:signalrservice:SignalRSharedPrivateLinkResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateLinkResourceId = registerOutput<String>('privateLinkResourceId');
    provisioningState = registerOutput<String>('provisioningState');
    requestMessage = registerOutput<String?>('requestMessage');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
