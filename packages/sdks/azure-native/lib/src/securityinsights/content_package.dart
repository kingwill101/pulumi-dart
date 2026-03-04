import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_package_args.dart';
import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Represents a Package in Azure Security Insights.
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-06-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2023-09-01-preview, 2023-10-01-preview, 2023-11-01, 2023-12-01-preview, 2024-01-01-preview, 2024-03-01, 2024-04-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-03-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native securityinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Install a package to the workspace.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contentPackage = new AzureNative.SecurityInsights.ContentPackage("contentPackage", new()
///     {
///         ContentId = "str.azure-sentinel-solution-str",
///         ContentKind = AzureNative.SecurityInsights.PackageKind.Solution,
///         ContentProductId = "str.azure-sentinel-solution-str-sl-igl6jawr4gwmu",
///         DisplayName = "str",
///         PackageId = "str.azure-sentinel-solution-str",
///         ResourceGroupName = "myRg",
///         Version = "2.0.0",
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
/// 		_, err := securityinsights.NewContentPackage(ctx, "contentPackage", &securityinsights.ContentPackageArgs{
/// 			ContentId:         pulumi.String("str.azure-sentinel-solution-str"),
/// 			ContentKind:       pulumi.String(securityinsights.PackageKindSolution),
/// 			ContentProductId:  pulumi.String("str.azure-sentinel-solution-str-sl-igl6jawr4gwmu"),
/// 			DisplayName:       pulumi.String("str"),
/// 			PackageId:         pulumi.String("str.azure-sentinel-solution-str"),
/// 			ResourceGroupName: pulumi.String("myRg"),
/// 			Version:           pulumi.String("2.0.0"),
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
/// import com.pulumi.azurenative.securityinsights.ContentPackage;
/// import com.pulumi.azurenative.securityinsights.ContentPackageArgs;
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
///         var contentPackage = new ContentPackage("contentPackage", ContentPackageArgs.builder()
///             .contentId("str.azure-sentinel-solution-str")
///             .contentKind("Solution")
///             .contentProductId("str.azure-sentinel-solution-str-sl-igl6jawr4gwmu")
///             .displayName("str")
///             .packageId("str.azure-sentinel-solution-str")
///             .resourceGroupName("myRg")
///             .version("2.0.0")
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
/// const contentPackage = new azure_native.securityinsights.ContentPackage("contentPackage", {
///     contentId: "str.azure-sentinel-solution-str",
///     contentKind: azure_native.securityinsights.PackageKind.Solution,
///     contentProductId: "str.azure-sentinel-solution-str-sl-igl6jawr4gwmu",
///     displayName: "str",
///     packageId: "str.azure-sentinel-solution-str",
///     resourceGroupName: "myRg",
///     version: "2.0.0",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// content_package = azure_native.securityinsights.ContentPackage("contentPackage",
///     content_id="str.azure-sentinel-solution-str",
///     content_kind=azure_native.securityinsights.PackageKind.SOLUTION,
///     content_product_id="str.azure-sentinel-solution-str-sl-igl6jawr4gwmu",
///     display_name="str",
///     package_id="str.azure-sentinel-solution-str",
///     resource_group_name="myRg",
///     version="2.0.0",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   contentPackage:
///     type: azure-native:securityinsights:ContentPackage
///     properties:
///       contentId: str.azure-sentinel-solution-str
///       contentKind: Solution
///       contentProductId: str.azure-sentinel-solution-str-sl-igl6jawr4gwmu
///       displayName: str
///       packageId: str.azure-sentinel-solution-str
///       resourceGroupName: myRg
///       version: 2.0.0
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
/// $ pulumi import azure-native:securityinsights:ContentPackage str.azure-sentinel-solution-str /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/contentPackages/{packageId}
/// ```
class ContentPackage extends pulumi.CustomResource {
  /// The author of the package
  late final pulumi.Output<MetadataAuthorResponse?> author;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The categories of the package
  late final pulumi.Output<MetadataCategoriesResponse?> categories;

  /// The content id of the package
  late final pulumi.Output<String> contentId;

  /// The package kind
  late final pulumi.Output<String> contentKind;

  /// Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  late final pulumi.Output<String> contentProductId;

  /// The version of the content schema.
  late final pulumi.Output<String?> contentSchemaVersion;

  /// The support tier of the package
  late final pulumi.Output<MetadataDependenciesResponse?> dependencies;

  /// The description of the package
  late final pulumi.Output<String?> description;

  /// The display name of the package
  late final pulumi.Output<String> displayName;

  /// Etag of the azure resource
  late final pulumi.Output<String?> etag;

  /// first publish date package item
  late final pulumi.Output<String?> firstPublishDate;

  /// the icon identifier. this id can later be fetched from the content metadata
  late final pulumi.Output<String?> icon;

  /// Flag indicates if this template is deprecated
  late final pulumi.Output<String?> isDeprecated;

  /// Flag indicates if this package is among the featured list.
  late final pulumi.Output<String?> isFeatured;

  /// Flag indicates if this is a newly published package.
  late final pulumi.Output<String?> isNew;

  /// Flag indicates if this package is in preview.
  late final pulumi.Output<String?> isPreview;

  /// last publish date for the package item
  late final pulumi.Output<String?> lastPublishDate;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Providers for the package item
  late final pulumi.Output<List<String>?> providers;

  /// The publisher display name of the package
  late final pulumi.Output<String?> publisherDisplayName;

  /// The source of the package
  late final pulumi.Output<MetadataSourceResponse?> source;

  /// The support tier of the package
  late final pulumi.Output<MetadataSupportResponse?> support;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// the tactics the resource covers
  late final pulumi.Output<List<String>?> threatAnalysisTactics;

  /// the techniques the resource covers, these have to be aligned with the tactics being used
  late final pulumi.Output<List<String>?> threatAnalysisTechniques;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// the latest version number of the package
  late final pulumi.Output<String> version;

  /// Creates a new [ContentPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContentPackage]. {@macro pulumi_securityinsights_content_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContentPackage(
    String name, {
    ContentPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:securityinsights:ContentPackage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    author = registerOutput<MetadataAuthorResponse?>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    categories = registerOutput<MetadataCategoriesResponse?>('categories');
    contentId = registerOutput<String>('contentId');
    contentKind = registerOutput<String>('contentKind');
    contentProductId = registerOutput<String>('contentProductId');
    contentSchemaVersion = registerOutput<String?>('contentSchemaVersion');
    dependencies = registerOutput<MetadataDependenciesResponse?>(
      'dependencies',
    );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String?>('etag');
    firstPublishDate = registerOutput<String?>('firstPublishDate');
    icon = registerOutput<String?>('icon');
    isDeprecated = registerOutput<String?>('isDeprecated');
    isFeatured = registerOutput<String?>('isFeatured');
    isNew = registerOutput<String?>('isNew');
    isPreview = registerOutput<String?>('isPreview');
    lastPublishDate = registerOutput<String?>('lastPublishDate');
    this.name = registerOutput<String>('name');
    providers = registerOutput<List<String>?>('providers');
    publisherDisplayName = registerOutput<String?>('publisherDisplayName');
    source = registerOutput<MetadataSourceResponse?>('source');
    support = registerOutput<MetadataSupportResponse?>('support');
    systemData = registerOutput<SystemDataResponse>('systemData');
    threatAnalysisTactics = registerOutput<List<String>?>(
      'threatAnalysisTactics',
    );
    threatAnalysisTechniques = registerOutput<List<String>?>(
      'threatAnalysisTechniques',
    );
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
