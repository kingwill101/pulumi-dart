import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookmark_args.dart';
import 'incident_info_response.dart';
import 'system_data_response.dart';
import 'user_info_response.dart';

/// Represents a bookmark in Azure Security Insights.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a bookmark.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bookmark = new AzureNative.SecurityInsights.Bookmark("bookmark", new()
///     {
///         BookmarkId = "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///         Created = "2019-01-01T13:15:30Z",
///         CreatedBy = new AzureNative.SecurityInsights.Inputs.UserInfoArgs
///         {
///             ObjectId = "2046feea-040d-4a46-9e2b-91c2941bfa70",
///         },
///         DisplayName = "My bookmark",
///         Labels = new[]
///         {
///             "Tag1",
///             "Tag2",
///         },
///         Notes = "Found a suspicious activity",
///         Query = "SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)",
///         QueryResult = "Security Event query result",
///         ResourceGroupName = "myRg",
///         Updated = "2019-01-01T13:15:30Z",
///         UpdatedBy = new AzureNative.SecurityInsights.Inputs.UserInfoArgs
///         {
///             ObjectId = "2046feea-040d-4a46-9e2b-91c2941bfa70",
///         },
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
/// 		_, err := securityinsights.NewBookmark(ctx, "bookmark", &securityinsights.BookmarkArgs{
/// 			BookmarkId: pulumi.String("73e01a99-5cd7-4139-a149-9f2736ff2ab5"),
/// 			Created:    pulumi.String("2019-01-01T13:15:30Z"),
/// 			CreatedBy: &securityinsights.UserInfoArgs{
/// 				ObjectId: pulumi.String("2046feea-040d-4a46-9e2b-91c2941bfa70"),
/// 			},
/// 			DisplayName: pulumi.String("My bookmark"),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("Tag1"),
/// 				pulumi.String("Tag2"),
/// 			},
/// 			Notes:             pulumi.String("Found a suspicious activity"),
/// 			Query:             pulumi.String("SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)"),
/// 			QueryResult:       pulumi.String("Security Event query result"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Updated:           pulumi.String("2019-01-01T13:15:30Z"),
/// 			UpdatedBy: &securityinsights.UserInfoArgs{
/// 				ObjectId: pulumi.String("2046feea-040d-4a46-9e2b-91c2941bfa70"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.securityinsights.Bookmark;
/// import com.pulumi.azurenative.securityinsights.BookmarkArgs;
/// import com.pulumi.azurenative.securityinsights.inputs.UserInfoArgs;
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
///         var bookmark = new Bookmark("bookmark", BookmarkArgs.builder()
///             .bookmarkId("73e01a99-5cd7-4139-a149-9f2736ff2ab5")
///             .created("2019-01-01T13:15:30Z")
///             .createdBy(UserInfoArgs.builder()
///                 .objectId("2046feea-040d-4a46-9e2b-91c2941bfa70")
///                 .build())
///             .displayName("My bookmark")
///             .labels(
///                 "Tag1",
///                 "Tag2")
///             .notes("Found a suspicious activity")
///             .query("SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)")
///             .queryResult("Security Event query result")
///             .resourceGroupName("myRg")
///             .updated("2019-01-01T13:15:30Z")
///             .updatedBy(UserInfoArgs.builder()
///                 .objectId("2046feea-040d-4a46-9e2b-91c2941bfa70")
///                 .build())
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
/// const bookmark = new azure_native.securityinsights.Bookmark("bookmark", {
///     bookmarkId: "73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     created: "2019-01-01T13:15:30Z",
///     createdBy: {
///         objectId: "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     displayName: "My bookmark",
///     labels: [
///         "Tag1",
///         "Tag2",
///     ],
///     notes: "Found a suspicious activity",
///     query: "SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)",
///     queryResult: "Security Event query result",
///     resourceGroupName: "myRg",
///     updated: "2019-01-01T13:15:30Z",
///     updatedBy: {
///         objectId: "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bookmark = azure_native.securityinsights.Bookmark("bookmark",
///     bookmark_id="73e01a99-5cd7-4139-a149-9f2736ff2ab5",
///     created="2019-01-01T13:15:30Z",
///     created_by={
///         "object_id": "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     display_name="My bookmark",
///     labels=[
///         "Tag1",
///         "Tag2",
///     ],
///     notes="Found a suspicious activity",
///     query="SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)",
///     query_result="Security Event query result",
///     resource_group_name="myRg",
///     updated="2019-01-01T13:15:30Z",
///     updated_by={
///         "object_id": "2046feea-040d-4a46-9e2b-91c2941bfa70",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   bookmark:
///     type: azure-native:securityinsights:Bookmark
///     properties:
///       bookmarkId: 73e01a99-5cd7-4139-a149-9f2736ff2ab5
///       created: 2019-01-01T13:15:30Z
///       createdBy:
///         objectId: 2046feea-040d-4a46-9e2b-91c2941bfa70
///       displayName: My bookmark
///       labels:
///         - Tag1
///         - Tag2
///       notes: Found a suspicious activity
///       query: SecurityEvent | where TimeGenerated > ago(1d) and TimeGenerated < ago(2d)
///       queryResult: Security Event query result
///       resourceGroupName: myRg
///       updated: 2019-01-01T13:15:30Z
///       updatedBy:
///         objectId: 2046feea-040d-4a46-9e2b-91c2941bfa70
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
/// $ pulumi import azure-native:securityinsights:Bookmark 73e01a99-5cd7-4139-a149-9f2736ff2ab5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/bookmarks/{bookmarkId}
/// ```
class Bookmark extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The time the bookmark was created
  late final pulumi.Output<String?> created;

  /// Describes a user that created the bookmark
  late final pulumi.Output<UserInfoResponse?> createdBy;

  /// The display name of the bookmark
  late final pulumi.Output<String> displayName;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// The bookmark event time
  late final pulumi.Output<String?> eventTime;

  /// Describes an incident that relates to bookmark
  late final pulumi.Output<IncidentInfoResponse?> incidentInfo;

  /// List of labels relevant to this bookmark
  late final pulumi.Output<List<String>?> labels;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The notes of the bookmark
  late final pulumi.Output<String?> notes;

  /// The query of the bookmark.
  late final pulumi.Output<String> query;

  /// The end time for the query
  late final pulumi.Output<String?> queryEndTime;

  /// The query result of the bookmark.
  late final pulumi.Output<String?> queryResult;

  /// The start time for the query
  late final pulumi.Output<String?> queryStartTime;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The last time the bookmark was updated
  late final pulumi.Output<String?> updated;

  /// Describes a user that updated the bookmark
  late final pulumi.Output<UserInfoResponse?> updatedBy;

  /// Creates a new [Bookmark].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bookmark]. {@macro pulumi_securityinsights_bookmark_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bookmark(
    String name, {
    BookmarkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:Bookmark',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    created = registerOutput<String?>('created');
    createdBy = registerOutput<UserInfoResponse?>('createdBy');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    eventTime = registerOutput<String?>('eventTime');
    incidentInfo = registerOutput<IncidentInfoResponse?>('incidentInfo');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    query = registerOutput<String>('query');
    queryEndTime = registerOutput<String?>('queryEndTime');
    queryResult = registerOutput<String?>('queryResult');
    queryStartTime = registerOutput<String?>('queryStartTime');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    updated = registerOutput<String?>('updated');
    updatedBy = registerOutput<UserInfoResponse?>('updatedBy');
  }
}
