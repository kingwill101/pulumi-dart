import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_args.dart';
import 'search_engine_common_config.dart';
import 'search_engine_knowledge_graph_config.dart';
import 'search_engine_search_engine_config.dart';
import 'search_engine_state.dart';

/// Vertex AI Search and Conversation can be used to create a search engine or a chat application by connecting it with a datastore
///
///
/// To get more information about SearchEngine, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.engines)
/// * How-to Guides
/// * [Create a Search Engine](https://cloud.google.com/generative-ai-app-builder/docs/create-engine-es)
///
/// ## Example Usage
///
/// ### Discoveryengine Searchengine Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "example-datastore-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
/// });
/// const basicSearchEngine = new gcp.discoveryengine.SearchEngine("basic", {
///     engineId: "example-engine-id",
///     collectionId: "default_collection",
///     location: basic.location,
///     displayName: "Example Display Name",
///     dataStoreIds: [basic.dataStoreId],
///     searchEngineConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="example-datastore-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False)
/// basic_search_engine = gcp.discoveryengine.SearchEngine("basic",
///     engine_id="example-engine-id",
///     collection_id="default_collection",
///     location=basic.location,
///     display_name="Example Display Name",
///     data_store_ids=[basic.data_store_id],
///     search_engine_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DiscoveryEngine.DataStore("basic", new()
///     {
///         Location = "global",
///         DataStoreId = "example-datastore-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///     });
///
///     var basicSearchEngine = new Gcp.DiscoveryEngine.SearchEngine("basic", new()
///     {
///         EngineId = "example-engine-id",
///         CollectionId = "default_collection",
///         Location = basic.Location,
///         DisplayName = "Example Display Name",
///         DataStoreIds = new[]
///         {
///             basic.DataStoreId,
///         },
///         SearchEngineConfig = null,
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
/// 		basic, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("example-datastore-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewSearchEngine(ctx, "basic", &discoveryengine.SearchEngineArgs{
/// 			EngineId:     pulumi.String("example-engine-id"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			Location:     basic.Location,
/// 			DisplayName:  pulumi.String("Example Display Name"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				basic.DataStoreId,
/// 			},
/// 			SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{},
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
/// resource "gcp_discoveryengine_datastore" "basic" {
///   location                    = "global"
///   data_store_id               = "example-datastore-id"
///   display_name                = "tf-test-structured-datastore"
///   industry_vertical           = "GENERIC"
///   content_config              = "NO_CONTENT"
///   solution_types              = ["SOLUTION_TYPE_SEARCH"]
///   create_advanced_site_search = false
/// }
/// resource "gcp_discoveryengine_searchengine" "basic" {
///   engine_id            = "example-engine-id"
///   collection_id        = "default_collection"
///   location             = gcp_discoveryengine_datastore.basic.location
///   display_name         = "Example Display Name"
///   data_store_ids       = [gcp_discoveryengine_datastore.basic.data_store_id]
///   search_engine_config = {}
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
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
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
///         var basic = new DataStore("basic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("example-datastore-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .build());
///
///         var basicSearchEngine = new SearchEngine("basicSearchEngine", SearchEngineArgs.builder()
///             .engineId("example-engine-id")
///             .collectionId("default_collection")
///             .location(basic.location())
///             .displayName("Example Display Name")
///             .dataStoreIds(basic.dataStoreId())
///             .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: example-datastore-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///   basicSearchEngine:
///     type: gcp:discoveryengine:SearchEngine
///     name: basic
///     properties:
///       engineId: example-engine-id
///       collectionId: default_collection
///       location: ${basic.location}
///       displayName: Example Display Name
///       dataStoreIds:
///         - ${basic.dataStoreId}
///       searchEngineConfig: {}
/// ```
///
/// ### Discoveryengine Searchengine Agentspace Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agentspaceBasic = new gcp.discoveryengine.DataStore("agentspace_basic", {
///     location: "global",
///     dataStoreId: "example-datastore-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
/// });
/// const agentspaceBasicSearchEngine = new gcp.discoveryengine.SearchEngine("agentspace_basic", {
///     engineId: "example-engine-id",
///     collectionId: "default_collection",
///     location: agentspaceBasic.location,
///     displayName: "tf-test-agentspace-search-engine",
///     dataStoreIds: [agentspaceBasic.dataStoreId],
///     industryVertical: "GENERIC",
///     appType: "APP_TYPE_INTRANET",
///     searchEngineConfig: {
///         searchTier: "SEARCH_TIER_STANDARD",
///         requiredSubscriptionTier: "SUBSCRIPTION_TIER_ENTERPRISE",
///         searchAddOns: ["SEARCH_ADD_ON_LLM"],
///     },
///     features: {
///         "agent-sharing-without-admin-approval": "FEATURE_STATE_ON",
///         "disable-agent-sharing": "FEATURE_STATE_OFF",
///     },
///     knowledgeGraphConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agentspace_basic = gcp.discoveryengine.DataStore("agentspace_basic",
///     location="global",
///     data_store_id="example-datastore-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False)
/// agentspace_basic_search_engine = gcp.discoveryengine.SearchEngine("agentspace_basic",
///     engine_id="example-engine-id",
///     collection_id="default_collection",
///     location=agentspace_basic.location,
///     display_name="tf-test-agentspace-search-engine",
///     data_store_ids=[agentspace_basic.data_store_id],
///     industry_vertical="GENERIC",
///     app_type="APP_TYPE_INTRANET",
///     search_engine_config={
///         "search_tier": "SEARCH_TIER_STANDARD",
///         "required_subscription_tier": "SUBSCRIPTION_TIER_ENTERPRISE",
///         "search_add_ons": ["SEARCH_ADD_ON_LLM"],
///     },
///     features={
///         "agent-sharing-without-admin-approval": "FEATURE_STATE_ON",
///         "disable-agent-sharing": "FEATURE_STATE_OFF",
///     },
///     knowledge_graph_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentspaceBasic = new Gcp.DiscoveryEngine.DataStore("agentspace_basic", new()
///     {
///         Location = "global",
///         DataStoreId = "example-datastore-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///     });
///
///     var agentspaceBasicSearchEngine = new Gcp.DiscoveryEngine.SearchEngine("agentspace_basic", new()
///     {
///         EngineId = "example-engine-id",
///         CollectionId = "default_collection",
///         Location = agentspaceBasic.Location,
///         DisplayName = "tf-test-agentspace-search-engine",
///         DataStoreIds = new[]
///         {
///             agentspaceBasic.DataStoreId,
///         },
///         IndustryVertical = "GENERIC",
///         AppType = "APP_TYPE_INTRANET",
///         SearchEngineConfig = new Gcp.DiscoveryEngine.Inputs.SearchEngineSearchEngineConfigArgs
///         {
///             SearchTier = "SEARCH_TIER_STANDARD",
///             RequiredSubscriptionTier = "SUBSCRIPTION_TIER_ENTERPRISE",
///             SearchAddOns = new[]
///             {
///                 "SEARCH_ADD_ON_LLM",
///             },
///         },
///         Features =
///         {
///             { "agent-sharing-without-admin-approval", "FEATURE_STATE_ON" },
///             { "disable-agent-sharing", "FEATURE_STATE_OFF" },
///         },
///         KnowledgeGraphConfig = null,
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
/// 		agentspaceBasic, err := discoveryengine.NewDataStore(ctx, "agentspace_basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("example-datastore-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewSearchEngine(ctx, "agentspace_basic", &discoveryengine.SearchEngineArgs{
/// 			EngineId:     pulumi.String("example-engine-id"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			Location:     agentspaceBasic.Location,
/// 			DisplayName:  pulumi.String("tf-test-agentspace-search-engine"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				agentspaceBasic.DataStoreId,
/// 			},
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			AppType:          pulumi.String("APP_TYPE_INTRANET"),
/// 			SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{
/// 				SearchTier:               pulumi.String("SEARCH_TIER_STANDARD"),
/// 				RequiredSubscriptionTier: pulumi.String("SUBSCRIPTION_TIER_ENTERPRISE"),
/// 				SearchAddOns: pulumi.StringArray{
/// 					pulumi.String("SEARCH_ADD_ON_LLM"),
/// 				},
/// 			},
/// 			Features: pulumi.StringMap{
/// 				"agent-sharing-without-admin-approval": pulumi.String("FEATURE_STATE_ON"),
/// 				"disable-agent-sharing":                pulumi.String("FEATURE_STATE_OFF"),
/// 			},
/// 			KnowledgeGraphConfig: &discoveryengine.SearchEngineKnowledgeGraphConfigArgs{},
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
/// resource "gcp_discoveryengine_datastore" "agentspace_basic" {
///   location                    = "global"
///   data_store_id               = "example-datastore-id"
///   display_name                = "tf-test-structured-datastore"
///   industry_vertical           = "GENERIC"
///   content_config              = "NO_CONTENT"
///   solution_types              = ["SOLUTION_TYPE_SEARCH"]
///   create_advanced_site_search = false
/// }
/// resource "gcp_discoveryengine_searchengine" "agentspace_basic" {
///   engine_id         = "example-engine-id"
///   collection_id     = "default_collection"
///   location          = gcp_discoveryengine_datastore.agentspace_basic.location
///   display_name      = "tf-test-agentspace-search-engine"
///   data_store_ids    = [gcp_discoveryengine_datastore.agentspace_basic.data_store_id]
///   industry_vertical = "GENERIC"
///   app_type          = "APP_TYPE_INTRANET"
///   search_engine_config = {
///     search_tier                = "SEARCH_TIER_STANDARD"
///     required_subscription_tier = "SUBSCRIPTION_TIER_ENTERPRISE"
///     search_add_ons             = ["SEARCH_ADD_ON_LLM"]
///   }
///   features = {
///     "agent-sharing-without-admin-approval" = "FEATURE_STATE_ON"
///     "disable-agent-sharing"                = "FEATURE_STATE_OFF"
///   }
///   knowledge_graph_config = {}
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
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineKnowledgeGraphConfigArgs;
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
///         var agentspaceBasic = new DataStore("agentspaceBasic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("example-datastore-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .build());
///
///         var agentspaceBasicSearchEngine = new SearchEngine("agentspaceBasicSearchEngine", SearchEngineArgs.builder()
///             .engineId("example-engine-id")
///             .collectionId("default_collection")
///             .location(agentspaceBasic.location())
///             .displayName("tf-test-agentspace-search-engine")
///             .dataStoreIds(agentspaceBasic.dataStoreId())
///             .industryVertical("GENERIC")
///             .appType("APP_TYPE_INTRANET")
///             .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
///                 .searchTier("SEARCH_TIER_STANDARD")
///                 .requiredSubscriptionTier("SUBSCRIPTION_TIER_ENTERPRISE")
///                 .searchAddOns("SEARCH_ADD_ON_LLM")
///                 .build())
///             .features(Map.ofEntries(
///                 Map.entry("agent-sharing-without-admin-approval", "FEATURE_STATE_ON"),
///                 Map.entry("disable-agent-sharing", "FEATURE_STATE_OFF")
///             ))
///             .knowledgeGraphConfig(SearchEngineKnowledgeGraphConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agentspaceBasic:
///     type: gcp:discoveryengine:DataStore
///     name: agentspace_basic
///     properties:
///       location: global
///       dataStoreId: example-datastore-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///   agentspaceBasicSearchEngine:
///     type: gcp:discoveryengine:SearchEngine
///     name: agentspace_basic
///     properties:
///       engineId: example-engine-id
///       collectionId: default_collection
///       location: ${agentspaceBasic.location}
///       displayName: tf-test-agentspace-search-engine
///       dataStoreIds:
///         - ${agentspaceBasic.dataStoreId}
///       industryVertical: GENERIC
///       appType: APP_TYPE_INTRANET
///       searchEngineConfig:
///         searchTier: SEARCH_TIER_STANDARD
///         requiredSubscriptionTier: SUBSCRIPTION_TIER_ENTERPRISE
///         searchAddOns:
///           - SEARCH_ADD_ON_LLM
///       features:
///         agent-sharing-without-admin-approval: FEATURE_STATE_ON
///         disable-agent-sharing: FEATURE_STATE_OFF
///       knowledgeGraphConfig: {}
/// ```
///
///
/// ## Import
///
/// SearchEngine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}`
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}`
/// * `{{location}}/{{collection_id}}/{{engine_id}}`
///
///
/// When using the `pulumi import` command, SearchEngine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}
/// $ pulumi import gcp:discoveryengine/searchEngine:SearchEngine default {{location}}/{{collection_id}}/{{engine_id}}
/// ```
class SearchEngine extends pulumi.CustomResource {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  late final pulumi.Output<String?> appType;
  /// The collection ID.
  late final pulumi.Output<String> collectionId;
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  late final pulumi.Output<SearchEngineCommonConfig?> commonConfig;
  /// Timestamp the Engine was created at.
  late final pulumi.Output<String> createTime;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  late final pulumi.Output<List<String>> dataStoreIds;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether to disable analytics for searches performed on this engine.
  late final pulumi.Output<bool?> disableAnalytics;
  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;
  /// Unique ID to use for Search Engine App.
  late final pulumi.Output<String> engineId;
  /// A map of the feature config for the engine to opt in or opt out of features.
  late final pulumi.Output<Map<String, String>> features;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  late final pulumi.Output<String?> industryVertical;
  /// The KMS key to be used to protect this Engine at creation time.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the Engine will be
  /// protected by the KMS key, as indicated in the cmekConfig field.
  late final pulumi.Output<String?> kmsKeyName;
  /// Configurations for the Knowledge Graph.
  /// Structure is documented below.
  late final pulumi.Output<SearchEngineKnowledgeGraphConfig> knowledgeGraphConfig;
  /// Location.
  late final pulumi.Output<String> location;
  /// The unique full resource name of the search engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configurations for a Search Engine.
  /// Structure is documented below.
  late final pulumi.Output<SearchEngineSearchEngineConfig> searchEngineConfig;
  /// Timestamp the Engine was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SearchEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SearchEngine]. {@macro pulumi_discoveryengine_search_engine_search_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SearchEngine(
    String name, {
    SearchEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/searchEngine:SearchEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appType = registerOutput<String?>('appType');
    collectionId = registerOutput<String>('collectionId');
    commonConfig = registerOutput<SearchEngineCommonConfig?>('commonConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableAnalytics = registerOutput<bool?>('disableAnalytics');
    displayName = registerOutput<String>('displayName');
    engineId = registerOutput<String>('engineId');
    features = registerOutput<Map<String, String>>('features');
    industryVertical = registerOutput<String?>('industryVertical');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    knowledgeGraphConfig = registerOutput<SearchEngineKnowledgeGraphConfig>('knowledgeGraphConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineKnowledgeGraphConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    searchEngineConfig = registerOutput<SearchEngineSearchEngineConfig>('searchEngineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineSearchEngineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SearchEngine] resource's state with the given [name] and [id].
  static SearchEngine get(
    String name,
    pulumi.Input<String> id, {
    SearchEngineState? state,
  }) {
    return SearchEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SearchEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/searchEngine:SearchEngine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appType = registerOutput<String?>('appType');
    collectionId = registerOutput<String>('collectionId');
    commonConfig = registerOutput<SearchEngineCommonConfig?>('commonConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dataStoreIds = registerOutput<List<String>>('dataStoreIds');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableAnalytics = registerOutput<bool?>('disableAnalytics');
    displayName = registerOutput<String>('displayName');
    engineId = registerOutput<String>('engineId');
    features = registerOutput<Map<String, String>>('features');
    industryVertical = registerOutput<String?>('industryVertical');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    knowledgeGraphConfig = registerOutput<SearchEngineKnowledgeGraphConfig>('knowledgeGraphConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineKnowledgeGraphConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    searchEngineConfig = registerOutput<SearchEngineSearchEngineConfig>('searchEngineConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SearchEngineSearchEngineConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
