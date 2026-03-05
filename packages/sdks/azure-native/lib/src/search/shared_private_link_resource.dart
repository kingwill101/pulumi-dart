import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_private_link_resource_args.dart';
import 'shared_private_link_resource_properties_response.dart';
import 'system_data_response.dart';

/// Describes a shared private link resource managed by the Azure AI Search service.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-11-01, 2024-03-01-preview, 2024-06-01-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native search [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SharedPrivateLinkResourceCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharedPrivateLinkResource = new AzureNative.Search.SharedPrivateLinkResource("sharedPrivateLinkResource", new()
///     {
///         Properties = new AzureNative.Search.Inputs.SharedPrivateLinkResourcePropertiesArgs
///         {
///             GroupId = "blob",
///             PrivateLinkResourceId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName",
///             RequestMessage = "please approve",
///         },
///         ResourceGroupName = "rg1",
///         SearchServiceName = "mysearchservice",
///         SharedPrivateLinkResourceName = "testResource",
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
/// 		_, err := search.NewSharedPrivateLinkResource(ctx, "sharedPrivateLinkResource", &search.SharedPrivateLinkResourceArgs{
/// 			Properties: &search.SharedPrivateLinkResourcePropertiesArgs{
/// 				GroupId:               pulumi.String("blob"),
/// 				PrivateLinkResourceId: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName"),
/// 				RequestMessage:        pulumi.String("please approve"),
/// 			},
/// 			ResourceGroupName:             pulumi.String("rg1"),
/// 			SearchServiceName:             pulumi.String("mysearchservice"),
/// 			SharedPrivateLinkResourceName: pulumi.String("testResource"),
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
/// import com.pulumi.azurenative.search.SharedPrivateLinkResource;
/// import com.pulumi.azurenative.search.SharedPrivateLinkResourceArgs;
/// import com.pulumi.azurenative.search.inputs.SharedPrivateLinkResourcePropertiesArgs;
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
///         var sharedPrivateLinkResource = new SharedPrivateLinkResource("sharedPrivateLinkResource", SharedPrivateLinkResourceArgs.builder()
///             .properties(SharedPrivateLinkResourcePropertiesArgs.builder()
///                 .groupId("blob")
///                 .privateLinkResourceId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName")
///                 .requestMessage("please approve")
///                 .build())
///             .resourceGroupName("rg1")
///             .searchServiceName("mysearchservice")
///             .sharedPrivateLinkResourceName("testResource")
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
/// const sharedPrivateLinkResource = new azure_native.search.SharedPrivateLinkResource("sharedPrivateLinkResource", {
///     properties: {
///         groupId: "blob",
///         privateLinkResourceId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName",
///         requestMessage: "please approve",
///     },
///     resourceGroupName: "rg1",
///     searchServiceName: "mysearchservice",
///     sharedPrivateLinkResourceName: "testResource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// shared_private_link_resource = azure_native.search.SharedPrivateLinkResource("sharedPrivateLinkResource",
///     properties={
///         "group_id": "blob",
///         "private_link_resource_id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName",
///         "request_message": "please approve",
///     },
///     resource_group_name="rg1",
///     search_service_name="mysearchservice",
///     shared_private_link_resource_name="testResource")
///
/// ```
///
/// ```yaml
/// resources:
///   sharedPrivateLinkResource:
///     type: azure-native:search:SharedPrivateLinkResource
///     properties:
///       properties:
///         groupId: blob
///         privateLinkResourceId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageAccountName
///         requestMessage: please approve
///       resourceGroupName: rg1
///       searchServiceName: mysearchservice
///       sharedPrivateLinkResourceName: testResource
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
/// $ pulumi import azure-native:search:SharedPrivateLinkResource testResource /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}/sharedPrivateLinkResources/{sharedPrivateLinkResourceName}
/// ```
class SharedPrivateLinkResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes the properties of a shared private link resource managed by the Azure AI Search service.
  late final pulumi.Output<SharedPrivateLinkResourcePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SharedPrivateLinkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedPrivateLinkResource]. {@macro pulumi_search_shared_private_link_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedPrivateLinkResource(
    String name, {
    SharedPrivateLinkResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:search:SharedPrivateLinkResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SharedPrivateLinkResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SharedPrivateLinkResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
