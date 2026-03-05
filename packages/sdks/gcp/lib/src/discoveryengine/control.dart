import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_args.dart';
import 'control_boost_action.dart';
import 'control_filter_action.dart';
import 'control_promote_action.dart';
import 'control_redirect_action.dart';
import 'control_state.dart';
import 'control_synonyms_action.dart';

/// Controls are rules that influence search results.
///
///
/// To get more information about Control, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.collections.engines.controls)
/// * How-to Guides
/// * [Configure serving controls](https://cloud.google.com/gemini/enterprise/docs/configure-serving-controls)
///
/// ## Example Usage
///
/// ### Discoveryengine Control Basic
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
/// const basicControl = new gcp.discoveryengine.Control("basic", {
///     location: basicSearchEngine.location,
///     engineId: basicSearchEngine.engineId,
///     controlId: "control-id",
///     displayName: "tf-test-control",
///     solutionType: "SOLUTION_TYPE_SEARCH",
///     useCases: ["SEARCH_USE_CASE_SEARCH"],
///     synonymsAction: {
///         synonyms: [
///             "test",
///             "experiment",
///         ],
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
/// basic_control = gcp.discoveryengine.Control("basic",
///     location=basic_search_engine.location,
///     engine_id=basic_search_engine.engine_id,
///     control_id="control-id",
///     display_name="tf-test-control",
///     solution_type="SOLUTION_TYPE_SEARCH",
///     use_cases=["SEARCH_USE_CASE_SEARCH"],
///     synonyms_action={
///         "synonyms": [
///             "test",
///             "experiment",
///         ],
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
///     var basicControl = new Gcp.DiscoveryEngine.Control("basic", new()
///     {
///         Location = basicSearchEngine.Location,
///         EngineId = basicSearchEngine.EngineId,
///         ControlId = "control-id",
///         DisplayName = "tf-test-control",
///         SolutionType = "SOLUTION_TYPE_SEARCH",
///         UseCases = new[]
///         {
///             "SEARCH_USE_CASE_SEARCH",
///         },
///         SynonymsAction = new Gcp.DiscoveryEngine.Inputs.ControlSynonymsActionArgs
///         {
///             Synonyms = new[]
///             {
///                 "test",
///                 "experiment",
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
/// 		_, err = discoveryengine.NewControl(ctx, "basic", &discoveryengine.ControlArgs{
/// 			Location:     basicSearchEngine.Location,
/// 			EngineId:     basicSearchEngine.EngineId,
/// 			ControlId:    pulumi.String("control-id"),
/// 			DisplayName:  pulumi.String("tf-test-control"),
/// 			SolutionType: pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			UseCases: pulumi.StringArray{
/// 				pulumi.String("SEARCH_USE_CASE_SEARCH"),
/// 			},
/// 			SynonymsAction: &discoveryengine.ControlSynonymsActionArgs{
/// 				Synonyms: pulumi.StringArray{
/// 					pulumi.String("test"),
/// 					pulumi.String("experiment"),
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
/// import com.pulumi.gcp.discoveryengine.Control;
/// import com.pulumi.gcp.discoveryengine.ControlArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ControlSynonymsActionArgs;
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
///         var basicControl = new Control("basicControl", ControlArgs.builder()
///             .location(basicSearchEngine.location())
///             .engineId(basicSearchEngine.engineId())
///             .controlId("control-id")
///             .displayName("tf-test-control")
///             .solutionType("SOLUTION_TYPE_SEARCH")
///             .useCases("SEARCH_USE_CASE_SEARCH")
///             .synonymsAction(ControlSynonymsActionArgs.builder()
///                 .synonyms(
///                     "test",
///                     "experiment")
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
///   basicControl:
///     type: gcp:discoveryengine:Control
///     name: basic
///     properties:
///       location: ${basicSearchEngine.location}
///       engineId: ${basicSearchEngine.engineId}
///       controlId: control-id
///       displayName: tf-test-control
///       solutionType: SOLUTION_TYPE_SEARCH
///       useCases:
///         - SEARCH_USE_CASE_SEARCH
///       synonymsAction:
///         synonyms:
///           - test
///           - experiment
/// ```
///
///
/// ## Import
///
/// Control can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/controls/{{control_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}`
///
/// When using the `pulumi import` command, Control can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/controls/{{control_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default {{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}
/// ```
class Control extends pulumi.CustomResource {
  /// Changes the returned order of results.
  /// Structure is documented below.
  late final pulumi.Output<ControlBoostAction?> boostAction;

  /// The collection ID. Currently only accepts "default_collection".
  late final pulumi.Output<String?> collectionId;

  /// The conditions under which the control is active.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> conditions;

  /// The unique id of the control.
  late final pulumi.Output<String> controlId;

  /// The display name of the control. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;

  /// The engine to add the control to.
  late final pulumi.Output<String> engineId;

  /// Removes entries from returned results.
  /// Structure is documented below.
  late final pulumi.Output<ControlFilterAction?> filterAction;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the control. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/controls/{control_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Promotes a specified link for a query.
  /// Structure is documented below.
  late final pulumi.Output<ControlPromoteAction?> promoteAction;

  /// Redirects to a specified URI.
  /// Structure is documented below.
  late final pulumi.Output<ControlRedirectAction?> redirectAction;

  /// The solution type that the control belongs to.
  /// Possible values are: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  late final pulumi.Output<String> solutionType;

  /// Associates queries with each other.
  /// Structure is documented below.
  late final pulumi.Output<ControlSynonymsAction?> synonymsAction;

  /// The use cases that the control is used for.
  /// Each value may be one of: `SEARCH_USE_CASE_SEARCH`, `SEARCH_USE_CASE_BROWSE`.
  late final pulumi.Output<List<String>?> useCases;

  /// Creates a new [Control].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Control]. {@macro pulumi_discoveryengine_control_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Control(
    String name, {
    ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/control:Control',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    boostAction = registerOutput<ControlBoostAction?>(
      'boostAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlBoostAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    collectionId = registerOutput<String?>('collectionId');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    controlId = registerOutput<String>('controlId');
    displayName = registerOutput<String>('displayName');
    engineId = registerOutput<String>('engineId');
    filterAction = registerOutput<ControlFilterAction?>(
      'filterAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlFilterAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    promoteAction = registerOutput<ControlPromoteAction?>(
      'promoteAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlPromoteAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    redirectAction = registerOutput<ControlRedirectAction?>(
      'redirectAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlRedirectAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    solutionType = registerOutput<String>('solutionType');
    synonymsAction = registerOutput<ControlSynonymsAction?>(
      'synonymsAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlSynonymsAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    useCases = registerOutput<List<String>?>('useCases');
  }

  /// Gets an existing [Control] resource's state with the given [name] and [id].
  static Control get(
    String name,
    pulumi.Input<String> id, {
    ControlState? state,
  }) {
    return Control._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Control._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/control:Control',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    boostAction = registerOutput<ControlBoostAction?>(
      'boostAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlBoostAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    collectionId = registerOutput<String?>('collectionId');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    controlId = registerOutput<String>('controlId');
    displayName = registerOutput<String>('displayName');
    engineId = registerOutput<String>('engineId');
    filterAction = registerOutput<ControlFilterAction?>(
      'filterAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlFilterAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    promoteAction = registerOutput<ControlPromoteAction?>(
      'promoteAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlPromoteAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    redirectAction = registerOutput<ControlRedirectAction?>(
      'redirectAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlRedirectAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    solutionType = registerOutput<String>('solutionType');
    synonymsAction = registerOutput<ControlSynonymsAction?>(
      'synonymsAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ControlSynonymsAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    useCases = registerOutput<List<String>?>('useCases');
  }
}
