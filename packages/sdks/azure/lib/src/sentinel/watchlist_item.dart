import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_item_args.dart';
import 'watchlist_item_state.dart';

/// Manages a Sentinel Watchlist Item.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleLogAnalyticsWorkspaceOnboarding = new azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", {workspaceId: exampleAnalyticsWorkspace.id});
/// const exampleWatchlist = new azure.sentinel.Watchlist("example", {
///     name: "example-watchlist",
///     logAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.workspaceId,
///     displayName: "example-wl",
///     itemSearchKey: "Key",
/// });
/// const exampleWatchlistItem = new azure.sentinel.WatchlistItem("example", {
///     name: "0aac6fa5-223e-49cf-9bfd-3554dc9d2b76",
///     watchlistId: exampleWatchlist.id,
///     properties: {
///         k1: "v1",
///         k2: "v2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_log_analytics_workspace_onboarding = azure.sentinel.LogAnalyticsWorkspaceOnboarding("example", workspace_id=example_analytics_workspace.id)
/// example_watchlist = azure.sentinel.Watchlist("example",
///     name="example-watchlist",
///     log_analytics_workspace_id=example_log_analytics_workspace_onboarding.workspace_id,
///     display_name="example-wl",
///     item_search_key="Key")
/// example_watchlist_item = azure.sentinel.WatchlistItem("example",
///     name="0aac6fa5-223e-49cf-9bfd-3554dc9d2b76",
///     watchlist_id=example_watchlist.id,
///     properties={
///         "k1": "v1",
///         "k2": "v2",
///     })
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleLogAnalyticsWorkspaceOnboarding = new Azure.Sentinel.LogAnalyticsWorkspaceOnboarding("example", new()
///     {
///         WorkspaceId = exampleAnalyticsWorkspace.Id,
///     });
///
///     var exampleWatchlist = new Azure.Sentinel.Watchlist("example", new()
///     {
///         Name = "example-watchlist",
///         LogAnalyticsWorkspaceId = exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
///         DisplayName = "example-wl",
///         ItemSearchKey = "Key",
///     });
///
///     var exampleWatchlistItem = new Azure.Sentinel.WatchlistItem("example", new()
///     {
///         Name = "0aac6fa5-223e-49cf-9bfd-3554dc9d2b76",
///         WatchlistId = exampleWatchlist.Id,
///         Properties =
///         {
///             { "k1", "v1" },
///             { "k2", "v2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/sentinel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogAnalyticsWorkspaceOnboarding, err := sentinel.NewLogAnalyticsWorkspaceOnboarding(ctx, "example", &sentinel.LogAnalyticsWorkspaceOnboardingArgs{
/// 			WorkspaceId: exampleAnalyticsWorkspace.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWatchlist, err := sentinel.NewWatchlist(ctx, "example", &sentinel.WatchlistArgs{
/// 			Name:                    pulumi.String("example-watchlist"),
/// 			LogAnalyticsWorkspaceId: exampleLogAnalyticsWorkspaceOnboarding.WorkspaceId,
/// 			DisplayName:             pulumi.String("example-wl"),
/// 			ItemSearchKey:           pulumi.String("Key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sentinel.NewWatchlistItem(ctx, "example", &sentinel.WatchlistItemArgs{
/// 			Name:        pulumi.String("0aac6fa5-223e-49cf-9bfd-3554dc9d2b76"),
/// 			WatchlistId: exampleWatchlist.ID(),
/// 			Properties: pulumi.StringMap{
/// 				"k1": pulumi.String("v1"),
/// 				"k2": pulumi.String("v2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboarding;
/// import com.pulumi.azure.sentinel.LogAnalyticsWorkspaceOnboardingArgs;
/// import com.pulumi.azure.sentinel.Watchlist;
/// import com.pulumi.azure.sentinel.WatchlistArgs;
/// import com.pulumi.azure.sentinel.WatchlistItem;
/// import com.pulumi.azure.sentinel.WatchlistItemArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleLogAnalyticsWorkspaceOnboarding = new LogAnalyticsWorkspaceOnboarding("exampleLogAnalyticsWorkspaceOnboarding", LogAnalyticsWorkspaceOnboardingArgs.builder()
///             .workspaceId(exampleAnalyticsWorkspace.id())
///             .build());
///
///         var exampleWatchlist = new Watchlist("exampleWatchlist", WatchlistArgs.builder()
///             .name("example-watchlist")
///             .logAnalyticsWorkspaceId(exampleLogAnalyticsWorkspaceOnboarding.workspaceId())
///             .displayName("example-wl")
///             .itemSearchKey("Key")
///             .build());
///
///         var exampleWatchlistItem = new WatchlistItem("exampleWatchlistItem", WatchlistItemArgs.builder()
///             .name("0aac6fa5-223e-49cf-9bfd-3554dc9d2b76")
///             .watchlistId(exampleWatchlist.id())
///             .properties(Map.ofEntries(
///                 Map.entry("k1", "v1"),
///                 Map.entry("k2", "v2")
///             ))
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
///       name: example-rg
///       location: West Europe
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleLogAnalyticsWorkspaceOnboarding:
///     type: azure:sentinel:LogAnalyticsWorkspaceOnboarding
///     name: example
///     properties:
///       workspaceId: ${exampleAnalyticsWorkspace.id}
///   exampleWatchlist:
///     type: azure:sentinel:Watchlist
///     name: example
///     properties:
///       name: example-watchlist
///       logAnalyticsWorkspaceId: ${exampleLogAnalyticsWorkspaceOnboarding.workspaceId}
///       displayName: example-wl
///       itemSearchKey: Key
///   exampleWatchlistItem:
///     type: azure:sentinel:WatchlistItem
///     name: example
///     properties:
///       name: 0aac6fa5-223e-49cf-9bfd-3554dc9d2b76
///       watchlistId: ${exampleWatchlist.id}
///       properties:
///         k1: v1
///         k2: v2
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-11-01
///
/// ## Import
///
/// Sentinel Watchlist Items can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:sentinel/watchlistItem:WatchlistItem example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.OperationalInsights/workspaces/workspace1/providers/Microsoft.SecurityInsights/watchlists/list1/watchlistItems/item1
/// ```
class WatchlistItem extends pulumi.CustomResource {
  /// The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created.
  late final pulumi.Output<String> name;

  /// The key value pairs of the Sentinel Watchlist Item.
  late final pulumi.Output<Map<String, String>> properties;

  /// The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created.
  late final pulumi.Output<String> watchlistId;

  /// Creates a new [WatchlistItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WatchlistItem]. {@macro pulumi_sentinel_watchlist_item_watchlist_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WatchlistItem(
    String name, {
    WatchlistItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:sentinel/watchlistItem:WatchlistItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>>('properties');
    watchlistId = registerOutput<String>('watchlistId');
  }

  /// Gets an existing [WatchlistItem] resource's state with the given [name] and [id].
  static WatchlistItem get(
    String name,
    pulumi.Input<String> id, {
    WatchlistItemState? state,
  }) {
    return WatchlistItem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WatchlistItem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:sentinel/watchlistItem:WatchlistItem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>>('properties');
    watchlistId = registerOutput<String>('watchlistId');
  }
}
