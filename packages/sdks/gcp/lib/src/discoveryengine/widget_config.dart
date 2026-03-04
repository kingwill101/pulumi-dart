import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_access_settings.dart';
import 'widget_config_args.dart';
import 'widget_config_homepage_setting.dart';
import 'widget_config_state.dart';
import 'widget_config_ui_branding.dart';
import 'widget_config_ui_settings.dart';

/// Represents a WidgetConfig.
///
///
/// To get more information about WidgetConfig, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1alpha/projects.locations.collections.engines.widgetConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Widgetconfig Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
/// });
/// const basicSearchEngine = new gcp.discoveryengine.SearchEngine("basic", {
///     engineId: "engine-id",
///     collectionId: "default_collection",
///     location: basic.location,
///     displayName: "tf-test-engine",
///     dataStoreIds: [basic.dataStoreId],
///     industryVertical: "GENERIC",
///     appType: "APP_TYPE_INTRANET",
///     searchEngineConfig: {},
/// });
/// const basicWidgetConfig = new gcp.discoveryengine.WidgetConfig("basic", {
///     location: basicSearchEngine.location,
///     engineId: basicSearchEngine.engineId,
///     accessSettings: {
///         enableWebApp: true,
///         workforceIdentityPoolProvider: "locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider",
///     },
///     uiSettings: {
///         interactionType: "SEARCH_WITH_ANSWER",
///         enableAutocomplete: true,
///         enableQualityFeedback: true,
///         generativeAnswerConfig: {
///             resultCount: 5,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False)
/// basic_search_engine = gcp.discoveryengine.SearchEngine("basic",
///     engine_id="engine-id",
///     collection_id="default_collection",
///     location=basic.location,
///     display_name="tf-test-engine",
///     data_store_ids=[basic.data_store_id],
///     industry_vertical="GENERIC",
///     app_type="APP_TYPE_INTRANET",
///     search_engine_config={})
/// basic_widget_config = gcp.discoveryengine.WidgetConfig("basic",
///     location=basic_search_engine.location,
///     engine_id=basic_search_engine.engine_id,
///     access_settings={
///         "enable_web_app": True,
///         "workforce_identity_pool_provider": "locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider",
///     },
///     ui_settings={
///         "interaction_type": "SEARCH_WITH_ANSWER",
///         "enable_autocomplete": True,
///         "enable_quality_feedback": True,
///         "generative_answer_config": {
///             "result_count": 5,
///         },
///     })
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
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-datastore",
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
///         EngineId = "engine-id",
///         CollectionId = "default_collection",
///         Location = basic.Location,
///         DisplayName = "tf-test-engine",
///         DataStoreIds = new[]
///         {
///             basic.DataStoreId,
///         },
///         IndustryVertical = "GENERIC",
///         AppType = "APP_TYPE_INTRANET",
///         SearchEngineConfig = null,
///     });
///
///     var basicWidgetConfig = new Gcp.DiscoveryEngine.WidgetConfig("basic", new()
///     {
///         Location = basicSearchEngine.Location,
///         EngineId = basicSearchEngine.EngineId,
///         AccessSettings = new Gcp.DiscoveryEngine.Inputs.WidgetConfigAccessSettingsArgs
///         {
///             EnableWebApp = true,
///             WorkforceIdentityPoolProvider = "locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider",
///         },
///         UiSettings = new Gcp.DiscoveryEngine.Inputs.WidgetConfigUiSettingsArgs
///         {
///             InteractionType = "SEARCH_WITH_ANSWER",
///             EnableAutocomplete = true,
///             EnableQualityFeedback = true,
///             GenerativeAnswerConfig = new Gcp.DiscoveryEngine.Inputs.WidgetConfigUiSettingsGenerativeAnswerConfigArgs
///             {
///                 ResultCount = 5,
///             },
///         },
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
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-datastore"),
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
/// 		basicSearchEngine, err := discoveryengine.NewSearchEngine(ctx, "basic", &discoveryengine.SearchEngineArgs{
/// 			EngineId:     pulumi.String("engine-id"),
/// 			CollectionId: pulumi.String("default_collection"),
/// 			Location:     basic.Location,
/// 			DisplayName:  pulumi.String("tf-test-engine"),
/// 			DataStoreIds: pulumi.StringArray{
/// 				basic.DataStoreId,
/// 			},
/// 			IndustryVertical:   pulumi.String("GENERIC"),
/// 			AppType:            pulumi.String("APP_TYPE_INTRANET"),
/// 			SearchEngineConfig: &discoveryengine.SearchEngineSearchEngineConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewWidgetConfig(ctx, "basic", &discoveryengine.WidgetConfigArgs{
/// 			Location: basicSearchEngine.Location,
/// 			EngineId: basicSearchEngine.EngineId,
/// 			AccessSettings: &discoveryengine.WidgetConfigAccessSettingsArgs{
/// 				EnableWebApp:                  pulumi.Bool(true),
/// 				WorkforceIdentityPoolProvider: pulumi.String("locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider"),
/// 			},
/// 			UiSettings: &discoveryengine.WidgetConfigUiSettingsArgs{
/// 				InteractionType:       pulumi.String("SEARCH_WITH_ANSWER"),
/// 				EnableAutocomplete:    pulumi.Bool(true),
/// 				EnableQualityFeedback: pulumi.Bool(true),
/// 				GenerativeAnswerConfig: &discoveryengine.WidgetConfigUiSettingsGenerativeAnswerConfigArgs{
/// 					ResultCount: pulumi.Int(5),
/// 				},
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.SearchEngine;
/// import com.pulumi.gcp.discoveryengine.SearchEngineArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.SearchEngineSearchEngineConfigArgs;
/// import com.pulumi.gcp.discoveryengine.WidgetConfig;
/// import com.pulumi.gcp.discoveryengine.WidgetConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.WidgetConfigAccessSettingsArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.WidgetConfigUiSettingsArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.WidgetConfigUiSettingsGenerativeAnswerConfigArgs;
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
///         var basic = new DataStore("basic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .build());
///
///         var basicSearchEngine = new SearchEngine("basicSearchEngine", SearchEngineArgs.builder()
///             .engineId("engine-id")
///             .collectionId("default_collection")
///             .location(basic.location())
///             .displayName("tf-test-engine")
///             .dataStoreIds(basic.dataStoreId())
///             .industryVertical("GENERIC")
///             .appType("APP_TYPE_INTRANET")
///             .searchEngineConfig(SearchEngineSearchEngineConfigArgs.builder()
///                 .build())
///             .build());
///
///         var basicWidgetConfig = new WidgetConfig("basicWidgetConfig", WidgetConfigArgs.builder()
///             .location(basicSearchEngine.location())
///             .engineId(basicSearchEngine.engineId())
///             .accessSettings(WidgetConfigAccessSettingsArgs.builder()
///                 .enableWebApp(true)
///                 .workforceIdentityPoolProvider("locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider")
///                 .build())
///             .uiSettings(WidgetConfigUiSettingsArgs.builder()
///                 .interactionType("SEARCH_WITH_ANSWER")
///                 .enableAutocomplete(true)
///                 .enableQualityFeedback(true)
///                 .generativeAnswerConfig(WidgetConfigUiSettingsGenerativeAnswerConfigArgs.builder()
///                     .resultCount(5)
///                     .build())
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
///       dataStoreId: data-store-id
///       displayName: tf-test-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///   basicSearchEngine:
///     type: gcp:discoveryengine:SearchEngine
///     name: basic
///     properties:
///       engineId: engine-id
///       collectionId: default_collection
///       location: ${basic.location}
///       displayName: tf-test-engine
///       dataStoreIds:
///         - ${basic.dataStoreId}
///       industryVertical: GENERIC
///       appType: APP_TYPE_INTRANET
///       searchEngineConfig: {}
///   basicWidgetConfig:
///     type: gcp:discoveryengine:WidgetConfig
///     name: basic
///     properties:
///       location: ${basicSearchEngine.location}
///       engineId: ${basicSearchEngine.engineId}
///       accessSettings:
///         enableWebApp: true
///         workforceIdentityPoolProvider: locations/global/workforcePools/workforce-pool-id/providers/workforce-pool-provider
///       uiSettings:
///         interactionType: SEARCH_WITH_ANSWER
///         enableAutocomplete: true
///         enableQualityFeedback: true
///         generativeAnswerConfig:
///           resultCount: 5
/// ```
///
///
/// ## Import
///
/// WidgetConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/widgetConfigs/{{widget_config_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}`
///
/// When using the `pulumi import` command, WidgetConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/widgetConfigs/{{widget_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default {{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}
/// ```
class WidgetConfig extends pulumi.CustomResource {
  /// Describes widget access settings.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigAccessSettings> accessSettings;

  /// The collection ID.
  late final pulumi.Output<String?> collectionId;

  /// The engine ID.
  late final pulumi.Output<String> engineId;

  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigHomepageSetting?> homepageSetting;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The full resource name of the widget config. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/widgetConfigs/{widget_config_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Describes search widget UI branding settings, such as the widget title, logo,
  /// favicons, and colors.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigUiBranding?> uiBranding;

  /// Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigUiSettings> uiSettings;

  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  late final pulumi.Output<String?> widgetConfigId;

  /// Creates a new [WidgetConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WidgetConfig]. {@macro pulumi_discoveryengine_widget_config_widget_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WidgetConfig(
    String name, {
    WidgetConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/widgetConfig:WidgetConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessSettings = registerOutput<WidgetConfigAccessSettings>(
      'accessSettings',
    );
    collectionId = registerOutput<String?>('collectionId');
    engineId = registerOutput<String>('engineId');
    homepageSetting = registerOutput<WidgetConfigHomepageSetting?>(
      'homepageSetting',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uiBranding = registerOutput<WidgetConfigUiBranding?>('uiBranding');
    uiSettings = registerOutput<WidgetConfigUiSettings>('uiSettings');
    widgetConfigId = registerOutput<String?>('widgetConfigId');
  }

  /// Gets an existing [WidgetConfig] resource's state with the given [name] and [id].
  static WidgetConfig get(
    String name,
    pulumi.Input<String> id, {
    WidgetConfigState? state,
  }) {
    return WidgetConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WidgetConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/widgetConfig:WidgetConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessSettings = registerOutput<WidgetConfigAccessSettings>(
      'accessSettings',
    );
    collectionId = registerOutput<String?>('collectionId');
    engineId = registerOutput<String>('engineId');
    homepageSetting = registerOutput<WidgetConfigHomepageSetting?>(
      'homepageSetting',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uiBranding = registerOutput<WidgetConfigUiBranding?>('uiBranding');
    uiSettings = registerOutput<WidgetConfigUiSettings>('uiSettings');
    widgetConfigId = registerOutput<String?>('widgetConfigId');
  }
}
