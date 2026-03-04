import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

/// Schema defines the structure and layout of a type of document data.
///
///
/// To get more information about Schema, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores.schemas)
/// * How-to Guides
/// * [Provide a schema for your data store](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema)
///
/// ## Example Usage
///
/// ### Discoveryengine Schema Basic
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
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: true,
/// });
/// const basic = new gcp.discoveryengine.Schema("basic", {
///     location: basicDataStore.location,
///     dataStoreId: basicDataStore.dataStoreId,
///     schemaId: "schema-id",
///     jsonSchema: "{\"$schema\":\"https://json-schema.org/draft/2020-12/schema\",\"datetime_detection\":true,\"type\":\"object\",\"geolocation_detection\":true}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_data_store = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False,
///     skip_default_schema_creation=True)
/// basic = gcp.discoveryengine.Schema("basic",
///     location=basic_data_store.location,
///     data_store_id=basic_data_store.data_store_id,
///     schema_id="schema-id",
///     json_schema="{\"$schema\":\"https://json-schema.org/draft/2020-12/schema\",\"datetime_detection\":true,\"type\":\"object\",\"geolocation_detection\":true}")
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
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = true,
///     });
///
///     var basic = new Gcp.DiscoveryEngine.Schema("basic", new()
///     {
///         Location = basicDataStore.Location,
///         DataStoreId = basicDataStore.DataStoreId,
///         SchemaId = "schema-id",
///         JsonSchema = "{\"$schema\":\"https://json-schema.org/draft/2020-12/schema\",\"datetime_detection\":true,\"type\":\"object\",\"geolocation_detection\":true}",
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
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewSchema(ctx, "basic", &discoveryengine.SchemaArgs{
/// 			Location:    basicDataStore.Location,
/// 			DataStoreId: basicDataStore.DataStoreId,
/// 			SchemaId:    pulumi.String("schema-id"),
/// 			JsonSchema:  pulumi.String("{\"$schema\":\"https://json-schema.org/draft/2020-12/schema\",\"datetime_detection\":true,\"type\":\"object\",\"geolocation_detection\":true}"),
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
/// import com.pulumi.gcp.discoveryengine.Schema;
/// import com.pulumi.gcp.discoveryengine.SchemaArgs;
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
///         var basicDataStore = new DataStore("basicDataStore", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(true)
///             .build());
///
///         var basic = new Schema("basic", SchemaArgs.builder()
///             .location(basicDataStore.location())
///             .dataStoreId(basicDataStore.dataStoreId())
///             .schemaId("schema-id")
///             .jsonSchema("{\"$schema\":\"https://json-schema.org/draft/2020-12/schema\",\"datetime_detection\":true,\"type\":\"object\",\"geolocation_detection\":true}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:Schema
///     properties:
///       location: ${basicDataStore.location}
///       dataStoreId: ${basicDataStore.dataStoreId}
///       schemaId: schema-id
///       jsonSchema: '{"$schema":"https://json-schema.org/draft/2020-12/schema","datetime_detection":true,"type":"object","geolocation_detection":true}'
///   basicDataStore:
///     type: gcp:discoveryengine:DataStore
///     name: basic
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: true
/// ```
///
///
/// ## Import
///
/// Schema can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/schemas/{{schema_id}}`
///
/// * `{{project}}/{{location}}/{{data_store_id}}/{{schema_id}}`
///
/// * `{{location}}/{{data_store_id}}/{{schema_id}}`
///
/// When using the `pulumi import` command, Schema can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/schemas/{{schema_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default {{project}}/{{location}}/{{data_store_id}}/{{schema_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/schema:Schema default {{location}}/{{data_store_id}}/{{schema_id}}
/// ```
class Schema extends pulumi.CustomResource {
  /// The unique id of the data store.
  late final pulumi.Output<String> dataStoreId;

  /// The JSON representation of the schema.
  late final pulumi.Output<String?> jsonSchema;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the schema. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/schemas/{schema_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The unique id of the schema.
  late final pulumi.Output<String> schemaId;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_discoveryengine_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(String name, {SchemaArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:discoveryengine/schema:Schema',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    dataStoreId = registerOutput<String>('dataStoreId');
    jsonSchema = registerOutput<String?>('jsonSchema');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schemaId = registerOutput<String>('schemaId');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:discoveryengine/schema:Schema',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dataStoreId = registerOutput<String>('dataStoreId');
    jsonSchema = registerOutput<String?>('jsonSchema');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schemaId = registerOutput<String>('schemaId');
  }
}
