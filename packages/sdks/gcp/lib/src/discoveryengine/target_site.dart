import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_site_args.dart';
import 'target_site_failure_reason.dart';
import 'target_site_site_verification_info.dart';
import 'target_site_state.dart';

/// TargetSite represents a URI pattern that the users want to confine their
/// search.
///
///
/// To get more information about TargetSite, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores.siteSearchEngine.targetSites)
///
/// ## Example Usage
///
/// ### Discoveryengine Targetsite Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicDataStore = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-basic-site-search-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "PUBLIC_WEBSITE",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: false,
/// });
/// const basic = new gcp.discoveryengine.TargetSite("basic", {
///     location: basicDataStore.location,
///     dataStoreId: basicDataStore.dataStoreId,
///     providedUriPattern: "cloud.google.com/docs/*",
///     type: "INCLUDE",
///     exactMatch: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_data_store = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-basic-site-search-datastore",
///     industry_vertical="GENERIC",
///     content_config="PUBLIC_WEBSITE",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False,
///     skip_default_schema_creation=False)
/// basic = gcp.discoveryengine.TargetSite("basic",
///     location=basic_data_store.location,
///     data_store_id=basic_data_store.data_store_id,
///     provided_uri_pattern="cloud.google.com/docs/*",
///     type="INCLUDE",
///     exact_match=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicDataStore = new Gcp.DiscoveryEngine.DataStore("basic", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-basic-site-search-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "PUBLIC_WEBSITE",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = false,
///     });
///
///     var basic = new Gcp.DiscoveryEngine.TargetSite("basic", new()
///     {
///         Location = basicDataStore.Location,
///         DataStoreId = basicDataStore.DataStoreId,
///         ProvidedUriPattern = "cloud.google.com/docs/*",
///         Type = "INCLUDE",
///         ExactMatch = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicDataStore, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-basic-site-search-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("PUBLIC_WEBSITE"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewTargetSite(ctx, "basic", &discoveryengine.TargetSiteArgs{
/// 			Location:           basicDataStore.Location,
/// 			DataStoreId:        basicDataStore.DataStoreId,
/// 			ProvidedUriPattern: pulumi.String("cloud.google.com/docs/*"),
/// 			Type:               pulumi.String("INCLUDE"),
/// 			ExactMatch:         pulumi.Bool(false),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_discoveryengine_targetsite" "basic" {
///   location             = gcp_discoveryengine_datastore.basic.location
///   data_store_id        = gcp_discoveryengine_datastore.basic.data_store_id
///   provided_uri_pattern = "cloud.google.com/docs/*"
///   type                 = "INCLUDE"
///   exact_match          = false
/// }
/// resource "gcp_discoveryengine_datastore" "basic" {
///   location                     = "global"
///   data_store_id                = "data-store-id"
///   display_name                 = "tf-test-basic-site-search-datastore"
///   industry_vertical            = "GENERIC"
///   content_config               = "PUBLIC_WEBSITE"
///   solution_types               = ["SOLUTION_TYPE_SEARCH"]
///   create_advanced_site_search  = false
///   skip_default_schema_creation = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.TargetSite;
/// import com.pulumi.gcp.discoveryengine.TargetSiteArgs;
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
///         var basicDataStore = new DataStore("basicDataStore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-basic-site-search-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("PUBLIC_WEBSITE")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///         var basic = new TargetSite("basic", TargetSiteArgs.builder()
///             .location(basicDataStore.location())
///             .dataStoreId(basicDataStore.dataStoreId())
///             .providedUriPattern("cloud.google.com/docs/*")
///             .type("INCLUDE")
///             .exactMatch(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:TargetSite
///     properties:
///       location: ${basicDataStore.location}
///       dataStoreId: ${basicDataStore.dataStoreId}
///       providedUriPattern: cloud.google.com/docs/*
///       type: INCLUDE
///       exactMatch: false
///   basicDataStore:
///     type: gcp:discoveryengine:DataStore
///     name: basic
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-basic-site-search-datastore
///       industryVertical: GENERIC
///       contentConfig: PUBLIC_WEBSITE
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: false
/// ```
///
/// ### Discoveryengine Targetsite Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advancedDataStore = new gcp.discoveryengine.DataStore("advanced", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-advanced-site-search-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "PUBLIC_WEBSITE",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: true,
///     skipDefaultSchemaCreation: false,
/// });
/// const advanced = new gcp.discoveryengine.TargetSite("advanced", {
///     location: advancedDataStore.location,
///     dataStoreId: advancedDataStore.dataStoreId,
///     providedUriPattern: "cloud.google.com/docs/*",
///     type: "INCLUDE",
///     exactMatch: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advanced_data_store = gcp.discoveryengine.DataStore("advanced",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-advanced-site-search-datastore",
///     industry_vertical="GENERIC",
///     content_config="PUBLIC_WEBSITE",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=True,
///     skip_default_schema_creation=False)
/// advanced = gcp.discoveryengine.TargetSite("advanced",
///     location=advanced_data_store.location,
///     data_store_id=advanced_data_store.data_store_id,
///     provided_uri_pattern="cloud.google.com/docs/*",
///     type="INCLUDE",
///     exact_match=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var advancedDataStore = new Gcp.DiscoveryEngine.DataStore("advanced", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-advanced-site-search-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "PUBLIC_WEBSITE",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = true,
///         SkipDefaultSchemaCreation = false,
///     });
///
///     var advanced = new Gcp.DiscoveryEngine.TargetSite("advanced", new()
///     {
///         Location = advancedDataStore.Location,
///         DataStoreId = advancedDataStore.DataStoreId,
///         ProvidedUriPattern = "cloud.google.com/docs/*",
///         Type = "INCLUDE",
///         ExactMatch = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		advancedDataStore, err := discoveryengine.NewDataStore(ctx, "advanced", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-advanced-site-search-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("PUBLIC_WEBSITE"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(true),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewTargetSite(ctx, "advanced", &discoveryengine.TargetSiteArgs{
/// 			Location:           advancedDataStore.Location,
/// 			DataStoreId:        advancedDataStore.DataStoreId,
/// 			ProvidedUriPattern: pulumi.String("cloud.google.com/docs/*"),
/// 			Type:               pulumi.String("INCLUDE"),
/// 			ExactMatch:         pulumi.Bool(false),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_discoveryengine_targetsite" "advanced" {
///   location             = gcp_discoveryengine_datastore.advanced.location
///   data_store_id        = gcp_discoveryengine_datastore.advanced.data_store_id
///   provided_uri_pattern = "cloud.google.com/docs/*"
///   type                 = "INCLUDE"
///   exact_match          = false
/// }
/// resource "gcp_discoveryengine_datastore" "advanced" {
///   location                     = "global"
///   data_store_id                = "data-store-id"
///   display_name                 = "tf-test-advanced-site-search-datastore"
///   industry_vertical            = "GENERIC"
///   content_config               = "PUBLIC_WEBSITE"
///   solution_types               = ["SOLUTION_TYPE_SEARCH"]
///   create_advanced_site_search  = true
///   skip_default_schema_creation = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.TargetSite;
/// import com.pulumi.gcp.discoveryengine.TargetSiteArgs;
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
///         var advancedDataStore = new DataStore("advancedDataStore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-advanced-site-search-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("PUBLIC_WEBSITE")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(true)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///         var advanced = new TargetSite("advanced", TargetSiteArgs.builder()
///             .location(advancedDataStore.location())
///             .dataStoreId(advancedDataStore.dataStoreId())
///             .providedUriPattern("cloud.google.com/docs/*")
///             .type("INCLUDE")
///             .exactMatch(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advanced:
///     type: gcp:discoveryengine:TargetSite
///     properties:
///       location: ${advancedDataStore.location}
///       dataStoreId: ${advancedDataStore.dataStoreId}
///       providedUriPattern: cloud.google.com/docs/*
///       type: INCLUDE
///       exactMatch: false
///   advancedDataStore:
///     type: gcp:discoveryengine:DataStore
///     name: advanced
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-advanced-site-search-datastore
///       industryVertical: GENERIC
///       contentConfig: PUBLIC_WEBSITE
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: true
///       skipDefaultSchemaCreation: false
/// ```
///
///
/// ## Import
///
/// TargetSite can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/siteSearchEngine/targetSites/{{target_site_id}}`
/// * `{{project}}/{{location}}/{{data_store_id}}/{{target_site_id}}`
/// * `{{location}}/{{data_store_id}}/{{target_site_id}}`
///
///
/// When using the `pulumi import` command, TargetSite can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/siteSearchEngine/targetSites/{{target_site_id}}
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default {{project}}/{{location}}/{{data_store_id}}/{{target_site_id}}
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default {{location}}/{{data_store_id}}/{{target_site_id}}
/// ```
class TargetSite extends pulumi.CustomResource {
  /// The unique id of the data store.
  late final pulumi.Output<String> dataStoreId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// If set to false, a uriPattern is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an uriPattern
  /// is generated to try to be an exact match of the providedUriPattern or
  /// just the specific page if the providedUriPattern is a specific one.
  /// providedUriPattern is always normalized to generate the URI pattern to
  /// be used by the search engine.
  late final pulumi.Output<bool?> exactMatch;
  /// Site search indexing failure reasons.
  /// Structure is documented below.
  late final pulumi.Output<List<TargetSiteFailureReason>> failureReasons;
  /// This is system-generated based on the `providedUriPattern`.
  late final pulumi.Output<String> generatedUriPattern;
  /// The indexing status.
  late final pulumi.Output<String> indexingStatus;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;
  /// The unique full resource name of the target site. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/targetSites/{target_site_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The user provided URI pattern from which the `generatedUriPattern` is
  /// generated.
  late final pulumi.Output<String> providedUriPattern;
  /// Root domain of the `providedUriPattern`.
  late final pulumi.Output<String> rootDomainUri;
  /// Site ownership and validity verification status.
  /// Structure is documented below.
  late final pulumi.Output<List<TargetSiteSiteVerificationInfo>> siteVerificationInfos;
  /// The unique id of the target site.
  late final pulumi.Output<String> targetSiteId;
  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  late final pulumi.Output<String?> type;
  /// The target site's last updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TargetSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetSite]. {@macro pulumi_discoveryengine_target_site_target_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetSite(
    String name, {
    TargetSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/targetSite:TargetSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    dataStoreId = registerOutput<String>('dataStoreId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    exactMatch = registerOutput<bool?>('exactMatch');
    failureReasons = registerOutput<List<TargetSiteFailureReason>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteFailureReason>(guardedValue, (value) => TargetSiteFailureReason.fromMap((value as Map).cast<String, dynamic>())); });
    generatedUriPattern = registerOutput<String>('generatedUriPattern');
    indexingStatus = registerOutput<String>('indexingStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    providedUriPattern = registerOutput<String>('providedUriPattern');
    rootDomainUri = registerOutput<String>('rootDomainUri');
    siteVerificationInfos = registerOutput<List<TargetSiteSiteVerificationInfo>>('siteVerificationInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteSiteVerificationInfo>(guardedValue, (value) => TargetSiteSiteVerificationInfo.fromMap((value as Map).cast<String, dynamic>())); });
    targetSiteId = registerOutput<String>('targetSiteId');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TargetSite] resource's state with the given [name] and [id].
  static TargetSite get(
    String name,
    pulumi.Input<String> id, {
    TargetSiteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TargetSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/targetSite:TargetSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataStoreId = registerOutput<String>('dataStoreId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    exactMatch = registerOutput<bool?>('exactMatch');
    failureReasons = registerOutput<List<TargetSiteFailureReason>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteFailureReason>(guardedValue, (value) => TargetSiteFailureReason.fromMap((value as Map).cast<String, dynamic>())); });
    generatedUriPattern = registerOutput<String>('generatedUriPattern');
    indexingStatus = registerOutput<String>('indexingStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    providedUriPattern = registerOutput<String>('providedUriPattern');
    rootDomainUri = registerOutput<String>('rootDomainUri');
    siteVerificationInfos = registerOutput<List<TargetSiteSiteVerificationInfo>>('siteVerificationInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteSiteVerificationInfo>(guardedValue, (value) => TargetSiteSiteVerificationInfo.fromMap((value as Map).cast<String, dynamic>())); });
    targetSiteId = registerOutput<String>('targetSiteId');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [TargetSite] resource.
  TargetSite.reference(String urn)
    : super(
        'gcp:discoveryengine/targetSite:TargetSite',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataStoreId = registerOutput<String>('dataStoreId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    exactMatch = registerOutput<bool?>('exactMatch');
    failureReasons = registerOutput<List<TargetSiteFailureReason>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteFailureReason>(guardedValue, (value) => TargetSiteFailureReason.fromMap((value as Map).cast<String, dynamic>())); });
    generatedUriPattern = registerOutput<String>('generatedUriPattern');
    indexingStatus = registerOutput<String>('indexingStatus');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    providedUriPattern = registerOutput<String>('providedUriPattern');
    rootDomainUri = registerOutput<String>('rootDomainUri');
    siteVerificationInfos = registerOutput<List<TargetSiteSiteVerificationInfo>>('siteVerificationInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetSiteSiteVerificationInfo>(guardedValue, (value) => TargetSiteSiteVerificationInfo.fromMap((value as Map).cast<String, dynamic>())); });
    targetSiteId = registerOutput<String>('targetSiteId');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
