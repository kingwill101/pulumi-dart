import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_args.dart';
import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Metadata resource definition.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-03-01-preview, 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/update minimal metadata.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metadata = new AzureNative.SecurityInsights.Metadata("metadata", new()
///     {
///         ContentId = "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///         Kind = "AnalyticsRule",
///         MetadataName = "metadataName",
///         ParentId = "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
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
/// 		_, err := securityinsights.NewMetadata(ctx, "metadata", &securityinsights.MetadataArgs{
/// 			ContentId:         pulumi.String("c00ee137-7475-47c8-9cce-ec6f0f1bedd0"),
/// 			Kind:              pulumi.String("AnalyticsRule"),
/// 			MetadataName:      pulumi.String("metadataName"),
/// 			ParentId:          pulumi.String("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName"),
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
/// import com.pulumi.azurenative.securityinsights.Metadata;
/// import com.pulumi.azurenative.securityinsights.MetadataArgs;
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
///         var metadata = new Metadata("metadata", MetadataArgs.builder()
///             .contentId("c00ee137-7475-47c8-9cce-ec6f0f1bedd0")
///             .kind("AnalyticsRule")
///             .metadataName("metadataName")
///             .parentId("/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName")
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
/// const metadata = new azure_native.securityinsights.Metadata("metadata", {
///     contentId: "c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     kind: "AnalyticsRule",
///     metadataName: "metadataName",
///     parentId: "/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
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
/// metadata = azure_native.securityinsights.Metadata("metadata",
///     content_id="c00ee137-7475-47c8-9cce-ec6f0f1bedd0",
///     kind="AnalyticsRule",
///     metadata_name="metadataName",
///     parent_id="/subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName",
///     resource_group_name="myRg",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   metadata:
///     type: azure-native:securityinsights:Metadata
///     properties:
///       contentId: c00ee137-7475-47c8-9cce-ec6f0f1bedd0
///       kind: AnalyticsRule
///       metadataName: metadataName
///       parentId: /subscriptions/2e1dc338-d04d-4443-b721-037eff4fdcac/resourceGroups/myRg/providers/Microsoft.OperationalInsights/workspaces/myWorkspace/providers/Microsoft.SecurityInsights/alertRules/ruleName
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
/// $ pulumi import azure-native:securityinsights:Metadata metadataName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/metadata/{metadataName}
/// ```
class Metadata extends pulumi.CustomResource {
  /// The creator of the content item.
  late final pulumi.Output<MetadataAuthorResponse?> author;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Categories for the solution content item
  late final pulumi.Output<MetadataCategoriesResponse?> categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  late final pulumi.Output<String?> contentId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  late final pulumi.Output<String?> contentSchemaVersion;
  /// The custom version of the content. A optional free text
  late final pulumi.Output<String?> customVersion;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  late final pulumi.Output<MetadataDependenciesResponse?> dependencies;
  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;
  /// first publish date solution content item
  late final pulumi.Output<String?> firstPublishDate;
  /// the icon identifier. this id can later be fetched from the solution template
  late final pulumi.Output<String?> icon;
  /// The kind of content the metadata is for.
  late final pulumi.Output<String> kind;
  /// last publish date for the solution content item
  late final pulumi.Output<String?> lastPublishDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  late final pulumi.Output<String> parentId;
  /// preview image file names. These will be taken from the solution artifacts
  late final pulumi.Output<List<String>?> previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  late final pulumi.Output<List<String>?> previewImagesDark;
  /// Providers for the solution content item
  late final pulumi.Output<List<String>?> providers;
  /// Source of the content.  This is where/how it was created.
  late final pulumi.Output<MetadataSourceResponse?> source;
  /// Support information for the metadata - type, name, contact information
  late final pulumi.Output<MetadataSupportResponse?> support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// the tactics the resource covers
  late final pulumi.Output<List<String>?> threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  late final pulumi.Output<List<String>?> threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  late final pulumi.Output<String?> version;

  /// Creates a new [Metadata].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Metadata]. {@macro pulumi_securityinsights_metadata_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Metadata(
    String name, {
    MetadataArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:securityinsights:Metadata',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.author = registerOutput<MetadataAuthorResponse?>('author');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.categories = registerOutput<MetadataCategoriesResponse?>('categories');
    this.contentId = registerOutput<String?>('contentId');
    this.contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    this.customVersion = registerOutput<String?>('customVersion');
    this.dependencies = registerOutput<MetadataDependenciesResponse?>('dependencies');
    this.etag = registerOutput<String?>('etag');
    this.firstPublishDate = registerOutput<String?>('firstPublishDate');
    this.icon = registerOutput<String?>('icon');
    this.kind = registerOutput<String>('kind');
    this.lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.previewImages = registerOutput<List<String>?>('previewImages');
    this.previewImagesDark = registerOutput<List<String>?>('previewImagesDark');
    this.providers = registerOutput<List<String>?>('providers');
    this.source = registerOutput<MetadataSourceResponse?>('source');
    this.support = registerOutput<MetadataSupportResponse?>('support');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.threatAnalysisTactics = registerOutput<List<String>?>('threatAnalysisTactics');
    this.threatAnalysisTechniques = registerOutput<List<String>?>('threatAnalysisTechniques');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
  }
}
