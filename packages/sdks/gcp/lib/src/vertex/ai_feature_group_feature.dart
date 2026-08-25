import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_group_feature_args.dart';
import 'ai_feature_group_feature_state.dart';

/// Vertex AI Feature Group Feature is feature metadata information.
///
///
/// To get more information about FeatureGroupFeature, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.featureGroups.features)
/// * How-to Guides
/// * [Creating a Feature](https://cloud.google.com/vertex-ai/docs/featurestore/latest/create-feature)
///
/// ## Example Usage
///
/// ### Vertex Ai Feature Group Feature
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sampleDataset = new gcp.bigquery.Dataset("sample_dataset", {
///     datasetId: "job_load_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const sampleTable = new gcp.bigquery.Table("sample_table", {
///     deletionProtection: false,
///     datasetId: sampleDataset.datasetId,
///     tableId: "job_load_table",
///     schema: `[
///     {
///         \\"name\\": \\"feature_id\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"example_feature\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"feature_timestamp\\",
///         \\"type\\": \\"TIMESTAMP\\",
///         \\"mode\\": \\"NULLABLE\\"
///     }
/// ]
/// `,
/// });
/// const sampleFeatureGroup = new gcp.vertex.AiFeatureGroup("sample_feature_group", {
///     name: "example_feature_group",
///     description: "A sample feature group",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     bigQuery: {
///         bigQuerySource: {
///             inputUri: pulumi.interpolate`bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}`,
///         },
///         entityIdColumns: ["feature_id"],
///     },
/// });
/// const featureGroupFeature = new gcp.vertex.AiFeatureGroupFeature("feature_group_feature", {
///     name: "example_feature",
///     region: "us-central1",
///     featureGroup: sampleFeatureGroup.name,
///     description: "A sample feature",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_dataset = gcp.bigquery.Dataset("sample_dataset",
///     dataset_id="job_load_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// sample_table = gcp.bigquery.Table("sample_table",
///     deletion_protection=False,
///     dataset_id=sample_dataset.dataset_id,
///     table_id="job_load_table",
///     schema="""[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// """)
/// sample_feature_group = gcp.vertex.AiFeatureGroup("sample_feature_group",
///     name="example_feature_group",
///     description="A sample feature group",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     big_query={
///         "big_query_source": {
///             "input_uri": pulumi.Output.all(
///                 project=sample_table.project,
///                 dataset_id=sample_table.dataset_id,
///                 table_id=sample_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         },
///         "entity_id_columns": ["feature_id"],
///     })
/// feature_group_feature = gcp.vertex.AiFeatureGroupFeature("feature_group_feature",
///     name="example_feature",
///     region="us-central1",
///     feature_group=sample_feature_group.name,
///     description="A sample feature",
///     labels={
///         "label-one": "value-one",
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
///     var sampleDataset = new Gcp.BigQuery.Dataset("sample_dataset", new()
///     {
///         DatasetId = "job_load_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var sampleTable = new Gcp.BigQuery.Table("sample_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = sampleDataset.DatasetId,
///         TableId = "job_load_table",
///         Schema = @"[
///     {
///         \""name\"": \""feature_id\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""example_feature\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""feature_timestamp\"",
///         \""type\"": \""TIMESTAMP\"",
///         \""mode\"": \""NULLABLE\""
///     }
/// ]
/// ",
///     });
///
///     var sampleFeatureGroup = new Gcp.Vertex.AiFeatureGroup("sample_feature_group", new()
///     {
///         Name = "example_feature_group",
///         Description = "A sample feature group",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         BigQuery = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryArgs
///         {
///             BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryBigQuerySourceArgs
///             {
///                 InputUri = Output.Tuple(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var datasetId = values.Item2;
///                     var tableId = values.Item3;
///                     return $"bq://{project}.{datasetId}.{tableId}";
///                 }),
///             },
///             EntityIdColumns = new[]
///             {
///                 "feature_id",
///             },
///         },
///     });
///
///     var featureGroupFeature = new Gcp.Vertex.AiFeatureGroupFeature("feature_group_feature", new()
///     {
///         Name = "example_feature",
///         Region = "us-central1",
///         FeatureGroup = sampleFeatureGroup.Name,
///         Description = "A sample feature",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		sampleDataset, err := bigquery.NewDataset(ctx, "sample_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_load_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleTable, err := bigquery.NewTable(ctx, "sample_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          sampleDataset.DatasetId,
/// 			TableId:            pulumi.String("job_load_table"),
/// 			Schema: pulumi.String(`[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleFeatureGroup, err := vertex.NewAiFeatureGroup(ctx, "sample_feature_group", &vertex.AiFeatureGroupArgs{
/// 			Name:        pulumi.String("example_feature_group"),
/// 			Description: pulumi.String("A sample feature group"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			BigQuery: &vertex.AiFeatureGroupBigQueryArgs{
/// 				BigQuerySource: &vertex.AiFeatureGroupBigQueryBigQuerySourceArgs{
/// 					InputUri: pulumi.All(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						datasetId := _args[1].(string)
/// 						tableId := _args[2].(string)
/// 						return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				EntityIdColumns: pulumi.StringArray{
/// 					pulumi.String("feature_id"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureGroupFeature(ctx, "feature_group_feature", &vertex.AiFeatureGroupFeatureArgs{
/// 			Name:         pulumi.String("example_feature"),
/// 			Region:       pulumi.String("us-central1"),
/// 			FeatureGroup: sampleFeatureGroup.Name,
/// 			Description:  pulumi.String("A sample feature"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_vertex_aifeaturegroupfeature" "feature_group_feature" {
///   name          = "example_feature"
///   region        = "us-central1"
///   feature_group = gcp_vertex_aifeaturegroup.sample_feature_group.name
///   description   = "A sample feature"
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// resource "gcp_vertex_aifeaturegroup" "sample_feature_group" {
///   name        = "example_feature_group"
///   description = "A sample feature group"
///   region      = "us-central1"
///   labels = {
///     "label-one" = "value-one"
///   }
///   big_query = {
///     big_query_source = {
///       input_uri ="bq://${gcp_bigquery_table.sample_table.project}.${gcp_bigquery_table.sample_table.dataset_id}.${gcp_bigquery_table.sample_table.table_id}"
///     }
///     entity_id_columns = ["feature_id"]
///   }
/// }
/// resource "gcp_bigquery_dataset" "sample_dataset" {
///   dataset_id    = "job_load_dataset"
///   friendly_name = "test"
///   description   = "This is a test description"
///   location      = "US"
/// }
/// resource "gcp_bigquery_table" "sample_table" {
///   deletion_protection = false
///   dataset_id          = gcp_bigquery_dataset.sample_dataset.dataset_id
///   table_id            = "job_load_table"
///   schema              = "[\n    {\n        \\\"name\\\": \\\"feature_id\\\",\n        \\\"type\\\": \\\"STRING\\\",\n        \\\"mode\\\": \\\"NULLABLE\\\"\n    },\n    {\n        \\\"name\\\": \\\"example_feature\\\",\n        \\\"type\\\": \\\"STRING\\\",\n        \\\"mode\\\": \\\"NULLABLE\\\"\n    },\n    {\n        \\\"name\\\": \\\"feature_timestamp\\\",\n        \\\"type\\\": \\\"TIMESTAMP\\\",\n        \\\"mode\\\": \\\"NULLABLE\\\"\n    }\n]\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroup;
/// import com.pulumi.gcp.vertex.AiFeatureGroupArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryBigQuerySourceArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeature;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeatureArgs;
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
///         var sampleDataset = new Dataset("sampleDataset", DatasetArgs.builder()
///             .datasetId("job_load_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var sampleTable = new Table("sampleTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(sampleDataset.datasetId())
///             .tableId("job_load_table")
///             .schema("""
/// [
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
///             """)
///             .build());
///
///         var sampleFeatureGroup = new AiFeatureGroup("sampleFeatureGroup", AiFeatureGroupArgs.builder()
///             .name("example_feature_group")
///             .description("A sample feature group")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .bigQuery(AiFeatureGroupBigQueryArgs.builder()
///                 .bigQuerySource(AiFeatureGroupBigQueryBigQuerySourceArgs.builder()
///                     .inputUri(Output.tuple(sampleTable.project(), sampleTable.datasetId(), sampleTable.tableId()).applyValue(values -> {
///                         var project = values.t1;
///                         var datasetId = values.t2;
///                         var tableId = values.t3;
///                         return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                     }))
///                     .build())
///                 .entityIdColumns("feature_id")
///                 .build())
///             .build());
///
///         var featureGroupFeature = new AiFeatureGroupFeature("featureGroupFeature", AiFeatureGroupFeatureArgs.builder()
///             .name("example_feature")
///             .region("us-central1")
///             .featureGroup(sampleFeatureGroup.name())
///             .description("A sample feature")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureGroupFeature:
///     type: gcp:vertex:AiFeatureGroupFeature
///     name: feature_group_feature
///     properties:
///       name: example_feature
///       region: us-central1
///       featureGroup: ${sampleFeatureGroup.name}
///       description: A sample feature
///       labels:
///         label-one: value-one
///   sampleFeatureGroup:
///     type: gcp:vertex:AiFeatureGroup
///     name: sample_feature_group
///     properties:
///       name: example_feature_group
///       description: A sample feature group
///       region: us-central1
///       labels:
///         label-one: value-one
///       bigQuery:
///         bigQuerySource:
///           inputUri: bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}
///         entityIdColumns:
///           - feature_id
///   sampleDataset:
///     type: gcp:bigquery:Dataset
///     name: sample_dataset
///     properties:
///       datasetId: job_load_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   sampleTable:
///     type: gcp:bigquery:Table
///     name: sample_table
///     properties:
///       deletionProtection: false
///       datasetId: ${sampleDataset.datasetId}
///       tableId: job_load_table
///       schema: |
///         [
///             {
///                 \"name\": \"feature_id\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"example_feature\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"feature_timestamp\",
///                 \"type\": \"TIMESTAMP\",
///                 \"mode\": \"NULLABLE\"
///             }
///         ]
/// ```
///
///
/// ## Import
///
/// FeatureGroupFeature can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureGroups/{{feature_group}}/features/{{name}}`
/// * `{{project}}/{{region}}/{{feature_group}}/{{name}}`
/// * `{{region}}/{{feature_group}}/{{name}}`
/// * `{{feature_group}}/{{name}}`
///
///
/// When using the `pulumi import` command, FeatureGroupFeature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature default projects/{{project}}/locations/{{region}}/featureGroups/{{feature_group}}/features/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature default {{project}}/{{region}}/{{feature_group}}/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature default {{region}}/{{feature_group}}/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature default {{feature_group}}/{{name}}
/// ```
class AiFeatureGroupFeature extends pulumi.CustomResource {
  /// The timestamp of when the FeatureGroup was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the FeatureGroup.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The name of the Feature Group.
  late final pulumi.Output<String> featureGroup;
  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name of the Feature Group Feature.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region for the resource. It should be the same as the feature group's region.
  late final pulumi.Output<String> region;
  /// The timestamp of when the FeatureGroup was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;
  /// The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  late final pulumi.Output<String> versionColumnName;

  /// Creates a new [AiFeatureGroupFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureGroupFeature]. {@macro pulumi_vertex_ai_feature_group_feature_ai_feature_group_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureGroupFeature(
    String name, {
    AiFeatureGroupFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    featureGroup = registerOutput<String>('featureGroup');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    versionColumnName = registerOutput<String>('versionColumnName');
  }

  /// Gets an existing [AiFeatureGroupFeature] resource's state with the given [name] and [id].
  static AiFeatureGroupFeature get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureGroupFeatureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiFeatureGroupFeature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiFeatureGroupFeature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    featureGroup = registerOutput<String>('featureGroup');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    versionColumnName = registerOutput<String>('versionColumnName');
  }

  /// Creates a typed reference to an existing [AiFeatureGroupFeature] resource.
  AiFeatureGroupFeature.reference(String urn)
    : super(
        'gcp:vertex/aiFeatureGroupFeature:AiFeatureGroupFeature',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    featureGroup = registerOutput<String>('featureGroup');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    versionColumnName = registerOutput<String>('versionColumnName');
  }
}
