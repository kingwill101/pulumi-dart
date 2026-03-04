import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_discovery_workspace_args.dart';
import 'storage_discovery_workspace_properties_response.dart';
import 'system_data_response.dart';

/// A Storage Discovery Workspace resource. This resource configures the collection of storage account metrics.
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// Other available API versions: 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagediscovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a StorageDiscoveryWorkspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageDiscoveryWorkspace = new AzureNative.StorageDiscovery.StorageDiscoveryWorkspace("storageDiscoveryWorkspace", new()
///     {
///         Location = "westeurope",
///         Properties = new AzureNative.StorageDiscovery.Inputs.StorageDiscoveryWorkspacePropertiesArgs
///         {
///             Description = "Sample Storage Discovery Workspace",
///             Scopes = new[]
///             {
///                 new AzureNative.StorageDiscovery.Inputs.StorageDiscoveryScopeArgs
///                 {
///                     DisplayName = "Sample-Collection",
///                     ResourceTypes = new[]
///                     {
///                         "/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount",
///                     },
///                     TagKeysOnly = new[]
///                     {
///                         "filterTag1",
///                         "filterTag2",
///                     },
///                     Tags =
///                     {
///                         { "filterTag3", "value3" },
///                         { "filterTag4", "value4" },
///                     },
///                 },
///                 new AzureNative.StorageDiscovery.Inputs.StorageDiscoveryScopeArgs
///                 {
///                     DisplayName = "Sample-Collection-2",
///                     ResourceTypes = new[]
///                     {
///                         "/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount",
///                     },
///                     TagKeysOnly = new[]
///                     {
///                         "filterTag5",
///                     },
///                     Tags =
///                     {
///                         { "filterTag6", "value6" },
///                     },
///                 },
///             },
///             WorkspaceRoots = new[]
///             {
///                 "/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09",
///             },
///         },
///         ResourceGroupName = "sample-rg",
///         StorageDiscoveryWorkspaceName = "Sample-Storage-Workspace",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
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
/// 	storagediscovery "github.com/pulumi/pulumi-azure-native-sdk/storagediscovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagediscovery.NewStorageDiscoveryWorkspace(ctx, "storageDiscoveryWorkspace", &storagediscovery.StorageDiscoveryWorkspaceArgs{
/// 			Location: pulumi.String("westeurope"),
/// 			Properties: &storagediscovery.StorageDiscoveryWorkspacePropertiesArgs{
/// 				Description: pulumi.String("Sample Storage Discovery Workspace"),
/// 				Scopes: storagediscovery.StorageDiscoveryScopeArray{
/// 					&storagediscovery.StorageDiscoveryScopeArgs{
/// 						DisplayName: pulumi.String("Sample-Collection"),
/// 						ResourceTypes: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"),
/// 						},
/// 						TagKeysOnly: pulumi.StringArray{
/// 							pulumi.String("filterTag1"),
/// 							pulumi.String("filterTag2"),
/// 						},
/// 						Tags: pulumi.StringMap{
/// 							"filterTag3": pulumi.String("value3"),
/// 							"filterTag4": pulumi.String("value4"),
/// 						},
/// 					},
/// 					&storagediscovery.StorageDiscoveryScopeArgs{
/// 						DisplayName: pulumi.String("Sample-Collection-2"),
/// 						ResourceTypes: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"),
/// 						},
/// 						TagKeysOnly: pulumi.StringArray{
/// 							pulumi.String("filterTag5"),
/// 						},
/// 						Tags: pulumi.StringMap{
/// 							"filterTag6": pulumi.String("value6"),
/// 						},
/// 					},
/// 				},
/// 				WorkspaceRoots: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09"),
/// 				},
/// 			},
/// 			ResourceGroupName:             pulumi.String("sample-rg"),
/// 			StorageDiscoveryWorkspaceName: pulumi.String("Sample-Storage-Workspace"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
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
/// import com.pulumi.azurenative.storagediscovery.StorageDiscoveryWorkspace;
/// import com.pulumi.azurenative.storagediscovery.StorageDiscoveryWorkspaceArgs;
/// import com.pulumi.azurenative.storagediscovery.inputs.StorageDiscoveryWorkspacePropertiesArgs;
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
///         var storageDiscoveryWorkspace = new StorageDiscoveryWorkspace("storageDiscoveryWorkspace", StorageDiscoveryWorkspaceArgs.builder()
///             .location("westeurope")
///             .properties(StorageDiscoveryWorkspacePropertiesArgs.builder()
///                 .description("Sample Storage Discovery Workspace")
///                 .scopes(
///                     StorageDiscoveryScopeArgs.builder()
///                         .displayName("Sample-Collection")
///                         .resourceTypes("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount")
///                         .tagKeysOnly(
///                             "filterTag1",
///                             "filterTag2")
///                         .tags(Map.ofEntries(
///                             Map.entry("filterTag3", "value3"),
///                             Map.entry("filterTag4", "value4")
///                         ))
///                         .build(),
///                     StorageDiscoveryScopeArgs.builder()
///                         .displayName("Sample-Collection-2")
///                         .resourceTypes("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount")
///                         .tagKeysOnly("filterTag5")
///                         .tags(Map.of("filterTag6", "value6"))
///                         .build())
///                 .workspaceRoots("/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09")
///                 .build())
///             .resourceGroupName("sample-rg")
///             .storageDiscoveryWorkspaceName("Sample-Storage-Workspace")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const storageDiscoveryWorkspace = new azure_native.storagediscovery.StorageDiscoveryWorkspace("storageDiscoveryWorkspace", {
///     location: "westeurope",
///     properties: {
///         description: "Sample Storage Discovery Workspace",
///         scopes: [
///             {
///                 displayName: "Sample-Collection",
///                 resourceTypes: ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"],
///                 tagKeysOnly: [
///                     "filterTag1",
///                     "filterTag2",
///                 ],
///                 tags: {
///                     filterTag3: "value3",
///                     filterTag4: "value4",
///                 },
///             },
///             {
///                 displayName: "Sample-Collection-2",
///                 resourceTypes: ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"],
///                 tagKeysOnly: ["filterTag5"],
///                 tags: {
///                     filterTag6: "value6",
///                 },
///             },
///         ],
///         workspaceRoots: ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09"],
///     },
///     resourceGroupName: "sample-rg",
///     storageDiscoveryWorkspaceName: "Sample-Storage-Workspace",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_discovery_workspace = azure_native.storagediscovery.StorageDiscoveryWorkspace("storageDiscoveryWorkspace",
///     location="westeurope",
///     properties={
///         "description": "Sample Storage Discovery Workspace",
///         "scopes": [
///             {
///                 "display_name": "Sample-Collection",
///                 "resource_types": ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"],
///                 "tag_keys_only": [
///                     "filterTag1",
///                     "filterTag2",
///                 ],
///                 "tags": {
///                     "filterTag3": "value3",
///                     "filterTag4": "value4",
///                 },
///             },
///             {
///                 "display_name": "Sample-Collection-2",
///                 "resource_types": ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount"],
///                 "tag_keys_only": ["filterTag5"],
///                 "tags": {
///                     "filterTag6": "value6",
///                 },
///             },
///         ],
///         "workspace_roots": ["/subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09"],
///     },
///     resource_group_name="sample-rg",
///     storage_discovery_workspace_name="Sample-Storage-Workspace",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageDiscoveryWorkspace:
///     type: azure-native:storagediscovery:StorageDiscoveryWorkspace
///     properties:
///       location: westeurope
///       properties:
///         description: Sample Storage Discovery Workspace
///         scopes:
///           - displayName: Sample-Collection
///             resourceTypes:
///               - /subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount
///             tagKeysOnly:
///               - filterTag1
///               - filterTag2
///             tags:
///               filterTag3: value3
///               filterTag4: value4
///           - displayName: Sample-Collection-2
///             resourceTypes:
///               - /subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09/resourceGroups/sample-rg/providers/Microsoft.Storage/storageAccounts/sample-storageAccount
///             tagKeysOnly:
///               - filterTag5
///             tags:
///               filterTag6: value6
///         workspaceRoots:
///           - /subscriptions/b79cb3ba-745e-5d9a-8903-4a02327a7e09
///       resourceGroupName: sample-rg
///       storageDiscoveryWorkspaceName: Sample-Storage-Workspace
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:storagediscovery:StorageDiscoveryWorkspace sampleworkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageDiscovery/storageDiscoveryWorkspaces/{storageDiscoveryWorkspaceName}
/// ```
class StorageDiscoveryWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<StorageDiscoveryWorkspacePropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageDiscoveryWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageDiscoveryWorkspace]. {@macro pulumi_storagediscovery_storage_discovery_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageDiscoveryWorkspace(
    String name, {
    StorageDiscoveryWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:storagediscovery:StorageDiscoveryWorkspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageDiscoveryWorkspacePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
