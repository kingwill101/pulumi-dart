import 'package:pulumi/pulumi.dart' as pulumi;
import 'bookmark_relation_args.dart';
import 'system_data_response.dart';

/// Represents a relation between two resources
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a bookmark relation.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bookmarkRelation = new AzureNative.SecurityInsights.BookmarkRelation("bookmarkRelation", new()
///     {
///         BookmarkId = "2216d0e1-91e3-4902-89fd-d2df8c535096",
///         RelatedResourceId = "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812",
///         RelationName = "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///         ResourceGroupName = "myRg",
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
/// 		_, err := securityinsights.NewBookmarkRelation(ctx, "bookmarkRelation", &securityinsights.BookmarkRelationArgs{
/// 			BookmarkId:        pulumi.String("2216d0e1-91e3-4902-89fd-d2df8c535096"),
/// 			RelatedResourceId: pulumi.String("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812"),
/// 			RelationName:      pulumi.String("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014"),
/// 			ResourceGroupName: pulumi.String("myRg"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.securityinsights.BookmarkRelation;
/// import com.pulumi.azurenative.securityinsights.BookmarkRelationArgs;
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
///         var bookmarkRelation = new BookmarkRelation("bookmarkRelation", BookmarkRelationArgs.builder()
///             .bookmarkId("2216d0e1-91e3-4902-89fd-d2df8c535096")
///             .relatedResourceId("/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812")
///             .relationName("4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014")
///             .resourceGroupName("myRg")
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
/// const bookmarkRelation = new azure_native.securityinsights.BookmarkRelation("bookmarkRelation", {
///     bookmarkId: "2216d0e1-91e3-4902-89fd-d2df8c535096",
///     relatedResourceId: "/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812",
///     relationName: "4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     resourceGroupName: "myRg",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bookmark_relation = azure_native.securityinsights.BookmarkRelation("bookmarkRelation",
///     bookmark_id="2216d0e1-91e3-4902-89fd-d2df8c535096",
///     related_resource_id="/subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812",
///     relation_name="4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   bookmarkRelation:
///     type: azure-native:securityinsights:BookmarkRelation
///     properties:
///       bookmarkId: 2216d0e1-91e3-4902-89fd-d2df8c535096
///       relatedResourceId: /subscriptions/d0cfe6b2-9ac0-4464-9919-dccaee2e48c0/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/incidents/afbd324f-6c48-459c-8710-8d1e1cd03812
///       relationName: 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014
///       resourceGroupName: myRg
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
/// $ pulumi import azure-native:securityinsights:BookmarkRelation 4bb36b7b-26ff-4d1c-9cbe-0d8ab3da0014 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/bookmarks/{bookmarkId}/relations/{relationName}
/// ```
class BookmarkRelation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource ID of the related resource
  late final pulumi.Output<String> relatedResourceId;
  /// The resource kind of the related resource
  late final pulumi.Output<String> relatedResourceKind;
  /// The name of the related resource
  late final pulumi.Output<String> relatedResourceName;
  /// The resource type of the related resource
  late final pulumi.Output<String> relatedResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BookmarkRelation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BookmarkRelation]. {@macro pulumi_securityinsights_bookmark_relation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BookmarkRelation(
    String name, {
    BookmarkRelationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:BookmarkRelation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    relatedResourceId = registerOutput<String>('relatedResourceId');
    relatedResourceKind = registerOutput<String>('relatedResourceKind');
    relatedResourceName = registerOutput<String>('relatedResourceName');
    relatedResourceType = registerOutput<String>('relatedResourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
