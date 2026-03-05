import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_search_args.dart';

/// Value object for saved search results.
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2020-08-01.
///
/// Other available API versions: 2020-03-01-preview, 2020-08-01, 2025-02-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native operationalinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SavedSearchCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var savedSearch = new AzureNative.OperationalInsights.SavedSearch("savedSearch", new()
///     {
///         Category = "Saved Search Test Category",
///         DisplayName = "Create or Update Saved Search Test",
///         FunctionAlias = "heartbeat_func",
///         FunctionParameters = "a:int=1",
///         Query = "Heartbeat | summarize Count() by Computer | take a",
///         ResourceGroupName = "TestRG",
///         SavedSearchId = "00000000-0000-0000-0000-00000000000",
///         Tags = new[]
///         {
///             new AzureNative.OperationalInsights.Inputs.TagArgs
///             {
///                 Name = "Group",
///                 Value = "Computer",
///             },
///         },
///         Version = 2,
///         WorkspaceName = "TestWS",
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
/// 	operationalinsights "github.com/pulumi/pulumi-azure-native-sdk/operationalinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationalinsights.NewSavedSearch(ctx, "savedSearch", &operationalinsights.SavedSearchArgs{
/// 			Category:           pulumi.String("Saved Search Test Category"),
/// 			DisplayName:        pulumi.String("Create or Update Saved Search Test"),
/// 			FunctionAlias:      pulumi.String("heartbeat_func"),
/// 			FunctionParameters: pulumi.String("a:int=1"),
/// 			Query:              pulumi.String("Heartbeat | summarize Count() by Computer | take a"),
/// 			ResourceGroupName:  pulumi.String("TestRG"),
/// 			SavedSearchId:      pulumi.String("00000000-0000-0000-0000-00000000000"),
/// 			Tags: operationalinsights.TagArray{
/// 				&operationalinsights.TagArgs{
/// 					Name:  pulumi.String("Group"),
/// 					Value: pulumi.String("Computer"),
/// 				},
/// 			},
/// 			Version:       pulumi.Float64(2),
/// 			WorkspaceName: pulumi.String("TestWS"),
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
/// import com.pulumi.azurenative.operationalinsights.SavedSearch;
/// import com.pulumi.azurenative.operationalinsights.SavedSearchArgs;
/// import com.pulumi.azurenative.operationalinsights.inputs.TagArgs;
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
///         var savedSearch = new SavedSearch("savedSearch", SavedSearchArgs.builder()
///             .category("Saved Search Test Category")
///             .displayName("Create or Update Saved Search Test")
///             .functionAlias("heartbeat_func")
///             .functionParameters("a:int=1")
///             .query("Heartbeat | summarize Count() by Computer | take a")
///             .resourceGroupName("TestRG")
///             .savedSearchId("00000000-0000-0000-0000-00000000000")
///             .tags(TagArgs.builder()
///                 .name("Group")
///                 .value("Computer")
///                 .build())
///             .version(2.0)
///             .workspaceName("TestWS")
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
/// const savedSearch = new azure_native.operationalinsights.SavedSearch("savedSearch", {
///     category: "Saved Search Test Category",
///     displayName: "Create or Update Saved Search Test",
///     functionAlias: "heartbeat_func",
///     functionParameters: "a:int=1",
///     query: "Heartbeat | summarize Count() by Computer | take a",
///     resourceGroupName: "TestRG",
///     savedSearchId: "00000000-0000-0000-0000-00000000000",
///     tags: [{
///         name: "Group",
///         value: "Computer",
///     }],
///     version: 2,
///     workspaceName: "TestWS",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// saved_search = azure_native.operationalinsights.SavedSearch("savedSearch",
///     category="Saved Search Test Category",
///     display_name="Create or Update Saved Search Test",
///     function_alias="heartbeat_func",
///     function_parameters="a:int=1",
///     query="Heartbeat | summarize Count() by Computer | take a",
///     resource_group_name="TestRG",
///     saved_search_id="00000000-0000-0000-0000-00000000000",
///     tags=[{
///         "name": "Group",
///         "value": "Computer",
///     }],
///     version=2,
///     workspace_name="TestWS")
///
/// ```
///
/// ```yaml
/// resources:
///   savedSearch:
///     type: azure-native:operationalinsights:SavedSearch
///     properties:
///       category: Saved Search Test Category
///       displayName: Create or Update Saved Search Test
///       functionAlias: heartbeat_func
///       functionParameters: a:int=1
///       query: Heartbeat | summarize Count() by Computer | take a
///       resourceGroupName: TestRG
///       savedSearchId: 00000000-0000-0000-0000-00000000000
///       tags:
///         - name: Group
///           value: Computer
///       version: 2
///       workspaceName: TestWS
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
/// $ pulumi import azure-native:operationalinsights:SavedSearch myresource1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/savedSearches/{savedSearchId}
/// ```
class SavedSearch extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The category of the saved search. This helps the user to find a saved search faster.
  late final pulumi.Output<String> category;
  /// Saved search display name.
  late final pulumi.Output<String> displayName;
  /// The ETag of the saved search. To override an existing saved search, use "*" or specify the current Etag
  late final pulumi.Output<String?> etag;
  /// The function alias if query serves as a function.
  late final pulumi.Output<String?> functionAlias;
  /// The optional function parameters if query serves as a function. Value should be in the following format: 'param-name1:type1 = default_value1, param-name2:type2 = default_value2'. For more examples and proper syntax please refer to https://docs.microsoft.com/en-us/azure/kusto/query/functions/user-defined-functions.
  late final pulumi.Output<String?> functionParameters;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The query expression for the saved search.
  late final pulumi.Output<String> query;
  /// The tags attached to the saved search.
  late final pulumi.Output<List<Map<String, dynamic>>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The version number of the query language. The current version is 2 and is the default.
  late final pulumi.Output<double?> version;

  /// Creates a new [SavedSearch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavedSearch]. {@macro pulumi_operationalinsights_saved_search_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavedSearch(
    String name, {
    SavedSearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationalinsights:SavedSearch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String>('category');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    functionAlias = registerOutput<String?>('functionAlias');
    functionParameters = registerOutput<String?>('functionParameters');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    tags = registerOutput<List<Map<String, dynamic>>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<double?>('version');
  }
}
