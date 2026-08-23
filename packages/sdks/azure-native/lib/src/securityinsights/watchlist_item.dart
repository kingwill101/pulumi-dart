import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'watchlist_item_args.dart';
import 'watchlist_user_info_response.dart';

/// Represents a Watchlist Item in Azure Security Insights.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a watchlist item.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var watchlistItem = new AzureNative.SecurityInsights.WatchlistItem("watchlistItem", new()
///     {
///         ItemsKeyValue = new Dictionary<string, object?>
///         {
///             ["Business tier"] = "10.0.2.0/24",
///             ["Data tier"] = "10.0.2.0/24",
///             ["Gateway subnet"] = "10.0.255.224/27",
///             ["Private DMZ in"] = "10.0.0.0/27",
///             ["Public DMZ out"] = "10.0.0.96/27",
///             ["Web Tier"] = "10.0.1.0/24",
///         },
///         ResourceGroupName = "myRg",
///         WatchlistAlias = "highValueAsset",
///         WatchlistItemId = "82ba292c-dc97-4dfc-969d-d4dd9e666842",
///         WorkspaceName = "myWorkspace",
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
/// 	securityinsights "github.com/pulumi/pulumi-azure-native-sdk/securityinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityinsights.NewWatchlistItem(ctx, "watchlistItem", &securityinsights.WatchlistItemArgs{
/// 			ItemsKeyValue: pulumi.Any(map[string]interface{}{
/// 				"Business tier":  "10.0.2.0/24",
/// 				"Data tier":      "10.0.2.0/24",
/// 				"Gateway subnet": "10.0.255.224/27",
/// 				"Private DMZ in": "10.0.0.0/27",
/// 				"Public DMZ out": "10.0.0.96/27",
/// 				"Web Tier":       "10.0.1.0/24",
/// 			}),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			WatchlistAlias:    pulumi.String("highValueAsset"),
/// 			WatchlistItemId:   pulumi.String("82ba292c-dc97-4dfc-969d-d4dd9e666842"),
/// 			WorkspaceName:     pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_watchlistitem" "watchlistItem" {
///   items_key_value = {
///     "Business tier"  = "10.0.2.0/24"
///     "Data tier"      = "10.0.2.0/24"
///     "Gateway subnet" = "10.0.255.224/27"
///     "Private DMZ in" = "10.0.0.0/27"
///     "Public DMZ out" = "10.0.0.96/27"
///     "Web Tier"       = "10.0.1.0/24"
///   }
///   resource_group_name = "myRg"
///   watchlist_alias     = "highValueAsset"
///   watchlist_item_id   = "82ba292c-dc97-4dfc-969d-d4dd9e666842"
///   workspace_name      = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.WatchlistItem;
/// import com.pulumi.azurenative.securityinsights.WatchlistItemArgs;
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
///         var watchlistItem = new WatchlistItem("watchlistItem", WatchlistItemArgs.builder()
///             .itemsKeyValue(Map.ofEntries(
///                 Map.entry("Business tier", "10.0.2.0/24"),
///                 Map.entry("Data tier", "10.0.2.0/24"),
///                 Map.entry("Gateway subnet", "10.0.255.224/27"),
///                 Map.entry("Private DMZ in", "10.0.0.0/27"),
///                 Map.entry("Public DMZ out", "10.0.0.96/27"),
///                 Map.entry("Web Tier", "10.0.1.0/24")
///             ))
///             .resourceGroupName("myRg")
///             .watchlistAlias("highValueAsset")
///             .watchlistItemId("82ba292c-dc97-4dfc-969d-d4dd9e666842")
///             .workspaceName("myWorkspace")
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
/// const watchlistItem = new azure_native.securityinsights.WatchlistItem("watchlistItem", {
///     itemsKeyValue: {
///         "Business tier": "10.0.2.0/24",
///         "Data tier": "10.0.2.0/24",
///         "Gateway subnet": "10.0.255.224/27",
///         "Private DMZ in": "10.0.0.0/27",
///         "Public DMZ out": "10.0.0.96/27",
///         "Web Tier": "10.0.1.0/24",
///     },
///     resourceGroupName: "myRg",
///     watchlistAlias: "highValueAsset",
///     watchlistItemId: "82ba292c-dc97-4dfc-969d-d4dd9e666842",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// watchlist_item = azure_native.securityinsights.WatchlistItem("watchlistItem",
///     items_key_value={
///         "Business tier": "10.0.2.0/24",
///         "Data tier": "10.0.2.0/24",
///         "Gateway subnet": "10.0.255.224/27",
///         "Private DMZ in": "10.0.0.0/27",
///         "Public DMZ out": "10.0.0.96/27",
///         "Web Tier": "10.0.1.0/24",
///     },
///     resource_group_name="myRg",
///     watchlist_alias="highValueAsset",
///     watchlist_item_id="82ba292c-dc97-4dfc-969d-d4dd9e666842",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   watchlistItem:
///     type: azure-native:securityinsights:WatchlistItem
///     properties:
///       itemsKeyValue:
///         Business tier: 10.0.2.0/24
///         Data tier: 10.0.2.0/24
///         Gateway subnet: 10.0.255.224/27
///         Private DMZ in: 10.0.0.0/27
///         Public DMZ out: 10.0.0.96/27
///         Web Tier: 10.0.1.0/24
///       resourceGroupName: myRg
///       watchlistAlias: highValueAsset
///       watchlistItemId: 82ba292c-dc97-4dfc-969d-d4dd9e666842
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:securityinsights:WatchlistItem myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/watchlists/{watchlistAlias}/watchlistItems/{watchlistItemId}
/// ```
class WatchlistItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The time the watchlist item was created
  late final pulumi.Output<String?> created;
  /// Describes a user that created the watchlist item
  late final pulumi.Output<WatchlistUserInfoResponse?> createdBy;
  /// key-value pairs for a watchlist item entity mapping
  late final pulumi.Output<dynamic> entityMapping;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// A flag that indicates if the watchlist item is deleted or not
  late final pulumi.Output<bool?> isDeleted;
  /// key-value pairs for a watchlist item
  late final pulumi.Output<dynamic> itemsKeyValue;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenantId to which the watchlist item belongs to
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The last time the watchlist item was updated
  late final pulumi.Output<String?> updated;
  /// Describes a user that updated the watchlist item
  late final pulumi.Output<WatchlistUserInfoResponse?> updatedBy;
  /// The id (a Guid) of the watchlist item
  late final pulumi.Output<String?> watchlistItemId;
  /// The type of the watchlist item
  late final pulumi.Output<String?> watchlistItemType;

  /// Creates a new [WatchlistItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WatchlistItem]. {@macro pulumi_securityinsights_watchlist_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WatchlistItem(
    String name, {
    WatchlistItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:WatchlistItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    created = registerOutput<String?>('created');
    createdBy = registerOutput<WatchlistUserInfoResponse?>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entityMapping = registerOutput<dynamic>('entityMapping');
    etag = registerOutput<String?>('etag');
    isDeleted = registerOutput<bool?>('isDeleted');
    itemsKeyValue = registerOutput<dynamic>('itemsKeyValue');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
    updated = registerOutput<String?>('updated');
    updatedBy = registerOutput<WatchlistUserInfoResponse?>('updatedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    watchlistItemId = registerOutput<String?>('watchlistItemId');
    watchlistItemType = registerOutput<String?>('watchlistItemType');
  }
}
