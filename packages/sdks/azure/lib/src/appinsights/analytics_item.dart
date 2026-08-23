import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_item_args.dart';
import 'analytics_item_state.dart';

/// Manages an Application Insights Analytics Item component.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tf-test",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleAnalyticsItem = new azure.appinsights.AnalyticsItem("example", {
///     name: "testquery",
///     applicationInsightsId: exampleInsights.id,
///     content: "requests //simple example query",
///     scope: "shared",
///     type: "query",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_analytics_item = azure.appinsights.AnalyticsItem("example",
///     name="testquery",
///     application_insights_id=example_insights.id,
///     content="requests //simple example query",
///     scope="shared",
///     type="query")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleAnalyticsItem = new Azure.AppInsights.AnalyticsItem("example", new()
///     {
///         Name = "testquery",
///         ApplicationInsightsId = exampleInsights.Id,
///         Content = "requests //simple example query",
///         Scope = "shared",
///         Type = "query",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appinsights.NewAnalyticsItem(ctx, "example", &appinsights.AnalyticsItemArgs{
/// 			Name:                  pulumi.String("testquery"),
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			Content:               pulumi.String("requests //simple example query"),
/// 			Scope:                 pulumi.String("shared"),
/// 			Type:                  pulumi.String("query"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tf-test"
///   location = "West Europe"
/// }
/// resource "azure_appinsights_insights" "example" {
///   name                = "tf-test-appinsights"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   application_type    = "web"
/// }
/// resource "azure_appinsights_analyticsitem" "example" {
///   name                    = "testquery"
///   application_insights_id = azure_appinsights_insights.example.id
///   content                 = "requests //simple example query"
///   scope                   = "shared"
///   type                    = "query"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appinsights.AnalyticsItem;
/// import com.pulumi.azure.appinsights.AnalyticsItemArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleAnalyticsItem = new AnalyticsItem("exampleAnalyticsItem", AnalyticsItemArgs.builder()
///             .name("testquery")
///             .applicationInsightsId(exampleInsights.id())
///             .content("requests //simple example query")
///             .scope("shared")
///             .type("query")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tf-test
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleAnalyticsItem:
///     type: azure:appinsights:AnalyticsItem
///     name: example
///     properties:
///       name: testquery
///       applicationInsightsId: ${exampleInsights.id}
///       content: requests //simple example query
///       scope: shared
///       type: query
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2015-05-01
///
/// ## Import
///
/// Application Insights Analytics Items can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/analyticsItem:AnalyticsItem example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/components/mycomponent1/analyticsItems/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; **Please Note:** This is a provider Unique ID matching the format: `{appInsightsID}/analyticsItems/{itemId}` for items with `scope` set to `shared`, or  `{appInsightsID}/myAnalyticsItems/{itemId}` for items with `scope` set to `user`
///
/// To find the Analytics Item ID you can query the REST API using the [`az rest` CLI command](https://docs.microsoft.com/cli/azure/reference-index?view=azure-cli-latest#az-rest), e.g.
///
/// ```sh
/// az rest --method GET --uri "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/microsoft.insights/components/appinsightstest/analyticsItems?api-version=2015-05-01"
/// ```
class AnalyticsItem extends pulumi.CustomResource {
  /// The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationInsightsId;
  /// The content for the Analytics Item, for example the query text if `type` is `query`.
  late final pulumi.Output<String> content;
  /// The alias to use for the function. Required when `type` is `function`.
  late final pulumi.Output<String?> functionAlias;
  /// Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  late final pulumi.Output<String> scope;
  /// A string containing the time the Analytics Item was created.
  late final pulumi.Output<String> timeCreated;
  /// A string containing the time the Analytics Item was last modified.
  late final pulumi.Output<String> timeModified;
  /// The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// A string indicating the version of the query format
  late final pulumi.Output<String> version;

  /// Creates a new [AnalyticsItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsItem]. {@macro pulumi_appinsights_analytics_item_analytics_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsItem(
    String name, {
    AnalyticsItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/analyticsItem:AnalyticsItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    content = registerOutput<String>('content');
    functionAlias = registerOutput<String?>('functionAlias');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
    timeCreated = registerOutput<String>('timeCreated');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [AnalyticsItem] resource's state with the given [name] and [id].
  static AnalyticsItem get(
    String name,
    pulumi.Input<String> id, {
    AnalyticsItemState? state,
  }) {
    return AnalyticsItem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalyticsItem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/analyticsItem:AnalyticsItem',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationInsightsId = registerOutput<String>('applicationInsightsId');
    content = registerOutput<String>('content');
    functionAlias = registerOutput<String?>('functionAlias');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
    timeCreated = registerOutput<String>('timeCreated');
    timeModified = registerOutput<String>('timeModified');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
