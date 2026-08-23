import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'watchlist_args.dart';
import 'watchlist_user_info_response.dart';

/// Represents a Watchlist in Azure Security Insights.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a watchlist and bulk creates watchlist items.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var watchlist = new AzureNative.SecurityInsights.Watchlist("watchlist", new()
///     {
///         ContentType = "text/csv",
///         Description = "Watchlist from CSV content",
///         DisplayName = "High Value Assets Watchlist",
///         ItemsSearchKey = "header1",
///         NumberOfLinesToSkip = 1,
///         Provider = "Microsoft",
///         RawContent = @"This line will be skipped
/// header1,header2
/// value1,value2",
///         ResourceGroupName = "myRg",
///         Source = "watchlist.csv",
///         SourceType = AzureNative.SecurityInsights.SourceType.Local,
///         WatchlistAlias = "highValueAsset",
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
/// 		_, err := securityinsights.NewWatchlist(ctx, "watchlist", &securityinsights.WatchlistArgs{
/// 			ContentType:         pulumi.String("text/csv"),
/// 			Description:         pulumi.String("Watchlist from CSV content"),
/// 			DisplayName:         pulumi.String("High Value Assets Watchlist"),
/// 			ItemsSearchKey:      pulumi.String("header1"),
/// 			NumberOfLinesToSkip: pulumi.Int(1),
/// 			Provider:            pulumi.String("Microsoft"),
/// 			RawContent:          pulumi.String("This line will be skipped\nheader1,header2\nvalue1,value2"),
/// 			ResourceGroupName:   pulumi.String("myRg"),
/// 			Source:              pulumi.String("watchlist.csv"),
/// 			SourceType:          pulumi.String(securityinsights.SourceTypeLocal),
/// 			WatchlistAlias:      pulumi.String("highValueAsset"),
/// 			WorkspaceName:       pulumi.String("myWorkspace"),
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
/// resource "azure-native_securityinsights_watchlist" "watchlist" {
///   content_type            = "text/csv"
///   description             = "Watchlist from CSV content"
///   display_name            = "High Value Assets Watchlist"
///   items_search_key        = "header1"
///   number_of_lines_to_skip = 1
///   provider                = "Microsoft"
///   raw_content             = "This line will be skipped\nheader1,header2\nvalue1,value2"
///   resource_group_name     = "myRg"
///   source                  = "watchlist.csv"
///   source_type             = "Local"
///   watchlist_alias         = "highValueAsset"
///   workspace_name          = "myWorkspace"
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
/// import com.pulumi.azurenative.securityinsights.Watchlist;
/// import com.pulumi.azurenative.securityinsights.WatchlistArgs;
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
///         var watchlist = new Watchlist("watchlist", WatchlistArgs.builder()
///             .contentType("text/csv")
///             .description("Watchlist from CSV content")
///             .displayName("High Value Assets Watchlist")
///             .itemsSearchKey("header1")
///             .numberOfLinesToSkip(1)
///             .provider("Microsoft")
///             .rawContent("""
/// This line will be skipped
/// header1,header2
/// value1,value2            """)
///             .resourceGroupName("myRg")
///             .source("watchlist.csv")
///             .sourceType("Local")
///             .watchlistAlias("highValueAsset")
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
/// const watchlist = new azure_native.securityinsights.Watchlist("watchlist", {
///     contentType: "text/csv",
///     description: "Watchlist from CSV content",
///     displayName: "High Value Assets Watchlist",
///     itemsSearchKey: "header1",
///     numberOfLinesToSkip: 1,
///     provider: "Microsoft",
///     rawContent: `This line will be skipped
/// header1,header2
/// value1,value2`,
///     resourceGroupName: "myRg",
///     source: "watchlist.csv",
///     sourceType: azure_native.securityinsights.SourceType.Local,
///     watchlistAlias: "highValueAsset",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// watchlist = azure_native.securityinsights.Watchlist("watchlist",
///     content_type="text/csv",
///     description="Watchlist from CSV content",
///     display_name="High Value Assets Watchlist",
///     items_search_key="header1",
///     number_of_lines_to_skip=1,
///     provider="Microsoft",
///     raw_content="""This line will be skipped
/// header1,header2
/// value1,value2""",
///     resource_group_name="myRg",
///     source="watchlist.csv",
///     source_type=azure_native.securityinsights.SourceType.LOCAL,
///     watchlist_alias="highValueAsset",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   watchlist:
///     type: azure-native:securityinsights:Watchlist
///     properties:
///       contentType: text/csv
///       description: Watchlist from CSV content
///       displayName: High Value Assets Watchlist
///       itemsSearchKey: header1
///       numberOfLinesToSkip: 1
///       provider: Microsoft
///       rawContent: |-
///         This line will be skipped
///         header1,header2
///         value1,value2
///       resourceGroupName: myRg
///       source: watchlist.csv
///       sourceType: Local
///       watchlistAlias: highValueAsset
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a watchlist.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var watchlist = new AzureNative.SecurityInsights.Watchlist("watchlist", new()
///     {
///         Description = "Watchlist from CSV content",
///         DisplayName = "High Value Assets Watchlist",
///         ItemsSearchKey = "header1",
///         Provider = "Microsoft",
///         ResourceGroupName = "myRg",
///         Source = "watchlist.csv",
///         SourceType = AzureNative.SecurityInsights.SourceType.Local,
///         WatchlistAlias = "highValueAsset",
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
/// 		_, err := securityinsights.NewWatchlist(ctx, "watchlist", &securityinsights.WatchlistArgs{
/// 			Description:       pulumi.String("Watchlist from CSV content"),
/// 			DisplayName:       pulumi.String("High Value Assets Watchlist"),
/// 			ItemsSearchKey:    pulumi.String("header1"),
/// 			Provider:          pulumi.String("Microsoft"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Source:            pulumi.String("watchlist.csv"),
/// 			SourceType:        pulumi.String(securityinsights.SourceTypeLocal),
/// 			WatchlistAlias:    pulumi.String("highValueAsset"),
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
/// resource "azure-native_securityinsights_watchlist" "watchlist" {
///   description         = "Watchlist from CSV content"
///   display_name        = "High Value Assets Watchlist"
///   items_search_key    = "header1"
///   provider            = "Microsoft"
///   resource_group_name = "myRg"
///   source              = "watchlist.csv"
///   source_type         = "Local"
///   watchlist_alias     = "highValueAsset"
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
/// import com.pulumi.azurenative.securityinsights.Watchlist;
/// import com.pulumi.azurenative.securityinsights.WatchlistArgs;
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
///         var watchlist = new Watchlist("watchlist", WatchlistArgs.builder()
///             .description("Watchlist from CSV content")
///             .displayName("High Value Assets Watchlist")
///             .itemsSearchKey("header1")
///             .provider("Microsoft")
///             .resourceGroupName("myRg")
///             .source("watchlist.csv")
///             .sourceType("Local")
///             .watchlistAlias("highValueAsset")
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
/// const watchlist = new azure_native.securityinsights.Watchlist("watchlist", {
///     description: "Watchlist from CSV content",
///     displayName: "High Value Assets Watchlist",
///     itemsSearchKey: "header1",
///     provider: "Microsoft",
///     resourceGroupName: "myRg",
///     source: "watchlist.csv",
///     sourceType: azure_native.securityinsights.SourceType.Local,
///     watchlistAlias: "highValueAsset",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// watchlist = azure_native.securityinsights.Watchlist("watchlist",
///     description="Watchlist from CSV content",
///     display_name="High Value Assets Watchlist",
///     items_search_key="header1",
///     provider="Microsoft",
///     resource_group_name="myRg",
///     source="watchlist.csv",
///     source_type=azure_native.securityinsights.SourceType.LOCAL,
///     watchlist_alias="highValueAsset",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   watchlist:
///     type: azure-native:securityinsights:Watchlist
///     properties:
///       description: Watchlist from CSV content
///       displayName: High Value Assets Watchlist
///       itemsSearchKey: header1
///       provider: Microsoft
///       resourceGroupName: myRg
///       source: watchlist.csv
///       sourceType: Local
///       watchlistAlias: highValueAsset
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
/// $ pulumi import azure-native:securityinsights:Watchlist highValueAsset /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/watchlists/{watchlistAlias}
/// ```
class Watchlist extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The content type of the raw content. Example : text/csv or text/tsv
  late final pulumi.Output<String?> contentType;
  /// The time the watchlist was created
  late final pulumi.Output<String?> created;
  /// Describes a user that created the watchlist
  late final pulumi.Output<WatchlistUserInfoResponse?> createdBy;
  /// The default duration of a watchlist (in ISO 8601 duration format)
  late final pulumi.Output<String?> defaultDuration;
  /// A description of the watchlist
  late final pulumi.Output<String?> description;
  /// The display name of the watchlist
  late final pulumi.Output<String> displayName;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// A flag that indicates if the watchlist is deleted or not
  late final pulumi.Output<bool?> isDeleted;
  /// The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address.
  late final pulumi.Output<String> itemsSearchKey;
  /// List of labels relevant to this watchlist
  late final pulumi.Output<List<String>?> labels;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The number of lines in a csv/tsv content to skip before the header
  late final pulumi.Output<int?> numberOfLinesToSkip;
  /// The provider of the watchlist
  late final pulumi.Output<String> provider;
  /// Describes provisioning state
  late final pulumi.Output<String> provisioningState;
  /// The raw content that represents to watchlist items to create. In case of csv/tsv content type, it's the content of the file that will parsed by the endpoint
  late final pulumi.Output<String?> rawContent;
  /// The filename of the watchlist, called 'source'
  late final pulumi.Output<String?> source;
  /// The sourceType of the watchlist
  late final pulumi.Output<String?> sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenantId where the watchlist belongs to
  late final pulumi.Output<String?> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The last time the watchlist was updated
  late final pulumi.Output<String?> updated;
  /// Describes a user that updated the watchlist
  late final pulumi.Output<WatchlistUserInfoResponse?> updatedBy;
  /// The status of the Watchlist upload : New, InProgress or Complete. **Note** : When a Watchlist upload status is InProgress, the Watchlist cannot be deleted
  late final pulumi.Output<String?> uploadStatus;
  /// The alias of the watchlist
  late final pulumi.Output<String?> watchlistAlias;
  /// The id (a Guid) of the watchlist
  late final pulumi.Output<String?> watchlistId;
  /// The type of the watchlist
  late final pulumi.Output<String?> watchlistType;

  /// Creates a new [Watchlist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Watchlist]. {@macro pulumi_securityinsights_watchlist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Watchlist(
    String name, {
    WatchlistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Watchlist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentType = registerOutput<String?>('contentType');
    created = registerOutput<String?>('created');
    createdBy = registerOutput<WatchlistUserInfoResponse?>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultDuration = registerOutput<String?>('defaultDuration');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    isDeleted = registerOutput<bool?>('isDeleted');
    itemsSearchKey = registerOutput<String>('itemsSearchKey');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    numberOfLinesToSkip = registerOutput<int?>('numberOfLinesToSkip');
    provider = registerOutput<String>('provider');
    provisioningState = registerOutput<String>('provisioningState');
    rawContent = registerOutput<String?>('rawContent');
    source = registerOutput<String?>('source');
    sourceType = registerOutput<String?>('sourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
    updated = registerOutput<String?>('updated');
    updatedBy = registerOutput<WatchlistUserInfoResponse?>('updatedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uploadStatus = registerOutput<String?>('uploadStatus');
    watchlistAlias = registerOutput<String?>('watchlistAlias');
    watchlistId = registerOutput<String?>('watchlistId');
    watchlistType = registerOutput<String?>('watchlistType');
  }
}
