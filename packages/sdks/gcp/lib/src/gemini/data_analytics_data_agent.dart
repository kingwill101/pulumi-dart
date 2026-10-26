import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_args.dart';
import 'data_analytics_data_agent_data_analytics_agent.dart';
import 'data_analytics_data_agent_state.dart';

/// A DataAgent lets users interact with configured data sources by using
/// natural language, as part of the Conversational Analytics API.
///
/// &gt; **Note:** Deleting a DataAgent soft-deletes it. A soft-deleted DataAgent
/// is purged after 30 days (see `purgeTime`), and its `dataAgentId` cannot be
/// reused in the same project and location until then. Changing a field that
/// forces replacement (such as `kmsKey`) while keeping the same `dataAgentId`
/// therefore fails with an `ALREADY_EXISTS` error; use a new `dataAgentId`
/// instead.
///
///
/// To get more information about DataAgent, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/conversational-analytics-api/reference/rest/v1/projects.locations.dataAgents)
/// * How-to Guides
/// * [Conversational Analytics API overview](https://cloud.google.com/gemini/data-agents/conversational-analytics-api/overview)
///
/// ## Example Usage
///
/// ### Gemini Data Analytics Data Agent Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.DataAnalyticsDataAgent("example", {
///     location: "global",
///     dataAgentId: "data-agent",
///     displayName: "Example data agent",
///     description: "Example Gemini Data Analytics data agent.",
///     labels: {
///         env: "test",
///     },
///     dataAnalyticsAgent: {
///         stagingContext: {
///             systemInstruction: "Answer questions about the sample Shakespeare corpus.",
///             datasourceReferences: {
///                 bq: {
///                     tableReferences: [{
///                         projectId: "bigquery-public-data",
///                         datasetId: "samples",
///                         tableId: "shakespeare",
///                     }],
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.DataAnalyticsDataAgent("example",
///     location="global",
///     data_agent_id="data-agent",
///     display_name="Example data agent",
///     description="Example Gemini Data Analytics data agent.",
///     labels={
///         "env": "test",
///     },
///     data_analytics_agent={
///         "staging_context": {
///             "system_instruction": "Answer questions about the sample Shakespeare corpus.",
///             "datasource_references": {
///                 "bq": {
///                     "table_references": [{
///                         "project_id": "bigquery-public-data",
///                         "dataset_id": "samples",
///                         "table_id": "shakespeare",
///                     }],
///                 },
///             },
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
///     var example = new Gcp.Gemini.DataAnalyticsDataAgent("example", new()
///     {
///         Location = "global",
///         DataAgentId = "data-agent",
///         DisplayName = "Example data agent",
///         Description = "Example Gemini Data Analytics data agent.",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         DataAnalyticsAgent = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs
///         {
///             StagingContext = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs
///             {
///                 SystemInstruction = "Answer questions about the sample Shakespeare corpus.",
///                 DatasourceReferences = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs
///                 {
///                     Bq = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs
///                     {
///                         TableReferences = new[]
///                         {
///                             new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs
///                             {
///                                 ProjectId = "bigquery-public-data",
///                                 DatasetId = "samples",
///                                 TableId = "shakespeare",
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewDataAnalyticsDataAgent(ctx, "example", &gemini.DataAnalyticsDataAgentArgs{
/// 			Location:    pulumi.String("global"),
/// 			DataAgentId: pulumi.String("data-agent"),
/// 			DisplayName: pulumi.String("Example data agent"),
/// 			Description: pulumi.String("Example Gemini Data Analytics data agent."),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			DataAnalyticsAgent: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentArgs{
/// 				StagingContext: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs{
/// 					SystemInstruction: pulumi.String("Answer questions about the sample Shakespeare corpus."),
/// 					DatasourceReferences: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs{
/// 						Bq: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs{
/// 							TableReferences: gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArray{
/// 								&gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs{
/// 									ProjectId: pulumi.String("bigquery-public-data"),
/// 									DatasetId: pulumi.String("samples"),
/// 									TableId:   pulumi.String("shakespeare"),
/// 								},
/// 							},
/// 						},
/// 					},
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
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gemini_data_analytics_data_agent" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location      = "global"
///   data_agent_id = "data-agent"
///   display_name  = "Example data agent"
///   description   = "Example Gemini Data Analytics data agent."
///   labels = {
///     "env" = "test"
///   }
///   data_analytics_agent = {
///     staging_context = {
///       system_instruction = "Answer questions about the sample Shakespeare corpus."
///       datasource_references = {
///         bq = {
///           table_references = [{
///             project_id = "bigquery-public-data"
///             dataset_id = "samples"
///             table_id   = "shakespeare"
///           }]
///         }
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgent;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs;
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
///         var example = new DataAnalyticsDataAgent("example", DataAnalyticsDataAgentArgs.builder()
///             .location("global")
///             .dataAgentId("data-agent")
///             .displayName("Example data agent")
///             .description("Example Gemini Data Analytics data agent.")
///             .labels(Map.of("env", "test"))
///             .dataAnalyticsAgent(DataAnalyticsDataAgentDataAnalyticsAgentArgs.builder()
///                 .stagingContext(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs.builder()
///                     .systemInstruction("Answer questions about the sample Shakespeare corpus.")
///                     .datasourceReferences(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs.builder()
///                         .bq(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs.builder()
///                             .tableReferences(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs.builder()
///                                 .projectId("bigquery-public-data")
///                                 .datasetId("samples")
///                                 .tableId("shakespeare")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:DataAnalyticsDataAgent
///     properties:
///       location: global
///       dataAgentId: data-agent
///       displayName: Example data agent
///       description: Example Gemini Data Analytics data agent.
///       labels:
///         env: test
///       dataAnalyticsAgent:
///         stagingContext:
///           systemInstruction: Answer questions about the sample Shakespeare corpus.
///           datasourceReferences:
///             bq:
///               tableReferences:
///                 - projectId: bigquery-public-data
///                   datasetId: samples
///                   tableId: shakespeare
/// ```
///
/// ### Gemini Data Analytics Data Agent Bigquery
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "data_agent",
///     location: "US",
///     deleteContentsOnDestroy: true,
/// });
/// const table = new gcp.bigquery.Table("table", {
///     datasetId: dataset.datasetId,
///     tableId: "sales",
///     deletionProtection: false,
///     schema: JSON.stringify([
///         {
///             name: "order_id",
///             type: "STRING",
///             mode: "REQUIRED",
///         },
///         {
///             name: "order_total",
///             type: "FLOAT",
///             mode: "NULLABLE",
///         },
///     ]),
/// });
/// const example = new gcp.gemini.DataAnalyticsDataAgent("example", {
///     location: "global",
///     dataAgentId: "data-agent-bq",
///     displayName: "BigQuery data agent",
///     description: "Example Gemini Data Analytics data agent backed by BigQuery.",
///     labels: {
///         env: "test",
///     },
///     dataAnalyticsAgent: {
///         publishedContext: {
///             systemInstruction: "Answer questions about sales orders.",
///             datasourceReferences: {
///                 bq: {
///                     tableReferences: [{
///                         projectId: dataset.project,
///                         datasetId: dataset.datasetId,
///                         tableId: table.tableId,
///                     }],
///                 },
///             },
///             options: {
///                 analysis: {
///                     python: {
///                         enabled: true,
///                     },
///                 },
///                 datasource: {
///                     bigQueryMaxBilledBytes: 1000000000,
///                 },
///             },
///             exampleQueries: [{
///                 naturalLanguageQuestion: "What is the total order value?",
///                 sqlQuery: "SELECT SUM(order_total) AS total_order_value FROM sales",
///             }],
///             glossaryTerms: [{
///                 displayName: "Order",
///                 description: "A customer purchase transaction.",
///                 labels: [
///                     "sales",
///                     "transaction",
///                 ],
///             }],
///             schemaRelationships: [{
///                 leftSchemaPaths: {
///                     tableFqn: pulumi.interpolate`${dataset.project}.${dataset.datasetId}.${table.tableId}`,
///                     paths: ["order_id"],
///                 },
///                 rightSchemaPaths: {
///                     tableFqn: pulumi.interpolate`${dataset.project}.${dataset.datasetId}.${table.tableId}`,
///                     paths: ["order_total"],
///                 },
///                 sources: ["LLM_SUGGESTED"],
///                 confidenceScore: 0.9,
///             }],
///         },
///     },
/// }, {
///     dependsOn: [table],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="data_agent",
///     location="US",
///     delete_contents_on_destroy=True)
/// table = gcp.bigquery.Table("table",
///     dataset_id=dataset.dataset_id,
///     table_id="sales",
///     deletion_protection=False,
///     schema=json.dumps([
///         {
///             "name": "order_id",
///             "type": "STRING",
///             "mode": "REQUIRED",
///         },
///         {
///             "name": "order_total",
///             "type": "FLOAT",
///             "mode": "NULLABLE",
///         },
///     ]))
/// example = gcp.gemini.DataAnalyticsDataAgent("example",
///     location="global",
///     data_agent_id="data-agent-bq",
///     display_name="BigQuery data agent",
///     description="Example Gemini Data Analytics data agent backed by BigQuery.",
///     labels={
///         "env": "test",
///     },
///     data_analytics_agent={
///         "published_context": {
///             "system_instruction": "Answer questions about sales orders.",
///             "datasource_references": {
///                 "bq": {
///                     "table_references": [{
///                         "project_id": dataset.project,
///                         "dataset_id": dataset.dataset_id,
///                         "table_id": table.table_id,
///                     }],
///                 },
///             },
///             "options": {
///                 "analysis": {
///                     "python": {
///                         "enabled": True,
///                     },
///                 },
///                 "datasource": {
///                     "big_query_max_billed_bytes": 1000000000,
///                 },
///             },
///             "example_queries": [{
///                 "natural_language_question": "What is the total order value?",
///                 "sql_query": "SELECT SUM(order_total) AS total_order_value FROM sales",
///             }],
///             "glossary_terms": [{
///                 "display_name": "Order",
///                 "description": "A customer purchase transaction.",
///                 "labels": [
///                     "sales",
///                     "transaction",
///                 ],
///             }],
///             "schema_relationships": [{
///                 "left_schema_paths": {
///                     "table_fqn": pulumi.Output.all(
///                         project=dataset.project,
///                         dataset_id=dataset.dataset_id,
///                         table_id=table.table_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///                     "paths": ["order_id"],
///                 },
///                 "right_schema_paths": {
///                     "table_fqn": pulumi.Output.all(
///                         project=dataset.project,
///                         dataset_id=dataset.dataset_id,
///                         table_id=table.table_id
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///                     "paths": ["order_total"],
///                 },
///                 "sources": ["LLM_SUGGESTED"],
///                 "confidence_score": 0.9,
///             }],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[table]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "data_agent",
///         Location = "US",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var table = new Gcp.BigQuery.Table("table", new()
///     {
///         DatasetId = dataset.DatasetId,
///         TableId = "sales",
///         DeletionProtection = false,
///         Schema = JsonSerializer.Serialize(new[]
///         {
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "order_id",
///                 ["type"] = "STRING",
///                 ["mode"] = "REQUIRED",
///             },
///             new Dictionary<string, object?>
///             {
///                 ["name"] = "order_total",
///                 ["type"] = "FLOAT",
///                 ["mode"] = "NULLABLE",
///             },
///         }),
///     });
///
///     var example = new Gcp.Gemini.DataAnalyticsDataAgent("example", new()
///     {
///         Location = "global",
///         DataAgentId = "data-agent-bq",
///         DisplayName = "BigQuery data agent",
///         Description = "Example Gemini Data Analytics data agent backed by BigQuery.",
///         Labels =
///         {
///             { "env", "test" },
///         },
///         DataAnalyticsAgent = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs
///         {
///             PublishedContext = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextArgs
///             {
///                 SystemInstruction = "Answer questions about sales orders.",
///                 DatasourceReferences = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesArgs
///                 {
///                     Bq = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqArgs
///                     {
///                         TableReferences = new[]
///                         {
///                             new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceArgs
///                             {
///                                 ProjectId = dataset.Project,
///                                 DatasetId = dataset.DatasetId,
///                                 TableId = table.TableId,
///                             },
///                         },
///                     },
///                 },
///                 Options = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsArgs
///                 {
///                     Analysis = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisArgs
///                     {
///                         Python = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPythonArgs
///                         {
///                             Enabled = true,
///                         },
///                     },
///                     Datasource = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasourceArgs
///                     {
///                         BigQueryMaxBilledBytes = 1000000000,
///                     },
///                 },
///                 ExampleQueries = new[]
///                 {
///                     new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryArgs
///                     {
///                         NaturalLanguageQuestion = "What is the total order value?",
///                         SqlQuery = "SELECT SUM(order_total) AS total_order_value FROM sales",
///                     },
///                 },
///                 GlossaryTerms = new[]
///                 {
///                     new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTermArgs
///                     {
///                         DisplayName = "Order",
///                         Description = "A customer purchase transaction.",
///                         Labels = new[]
///                         {
///                             "sales",
///                             "transaction",
///                         },
///                     },
///                 },
///                 SchemaRelationships = new[]
///                 {
///                     new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipArgs
///                     {
///                         LeftSchemaPaths = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPathsArgs
///                         {
///                             TableFqn = Output.Tuple(dataset.Project, dataset.DatasetId, table.TableId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var datasetId = values.Item2;
///                                 var tableId = values.Item3;
///                                 return $"{project}.{datasetId}.{tableId}";
///                             }),
///                             Paths = new[]
///                             {
///                                 "order_id",
///                             },
///                         },
///                         RightSchemaPaths = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPathsArgs
///                         {
///                             TableFqn = Output.Tuple(dataset.Project, dataset.DatasetId, table.TableId).Apply(values =>
///                             {
///                                 var project = values.Item1;
///                                 var datasetId = values.Item2;
///                                 var tableId = values.Item3;
///                                 return $"{project}.{datasetId}.{tableId}";
///                             }),
///                             Paths = new[]
///                             {
///                                 "order_total",
///                             },
///                         },
///                         Sources = new[]
///                         {
///                             "LLM_SUGGESTED",
///                         },
///                         ConfidenceScore = 0.9,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             table,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("data_agent"),
/// 			Location:                pulumi.String("US"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal([]interface{}{
/// 			map[string]string{
/// 				"name": "order_id",
/// 				"type": "STRING",
/// 				"mode": "REQUIRED",
/// 			},
/// 			map[string]string{
/// 				"name": "order_total",
/// 				"type": "FLOAT",
/// 				"mode": "NULLABLE",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		table, err := bigquery.NewTable(ctx, "table", &bigquery.TableArgs{
/// 			DatasetId:          dataset.DatasetId,
/// 			TableId:            pulumi.String("sales"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Schema:             pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewDataAnalyticsDataAgent(ctx, "example", &gemini.DataAnalyticsDataAgentArgs{
/// 			Location:    pulumi.String("global"),
/// 			DataAgentId: pulumi.String("data-agent-bq"),
/// 			DisplayName: pulumi.String("BigQuery data agent"),
/// 			Description: pulumi.String("Example Gemini Data Analytics data agent backed by BigQuery."),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			DataAnalyticsAgent: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentArgs{
/// 				PublishedContext: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextArgs{
/// 					SystemInstruction: pulumi.String("Answer questions about sales orders."),
/// 					DatasourceReferences: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesArgs{
/// 						Bq: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqArgs{
/// 							TableReferences: gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceArray{
/// 								&gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceArgs{
/// 									ProjectId: dataset.Project,
/// 									DatasetId: dataset.DatasetId,
/// 									TableId:   table.TableId,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Options: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsArgs{
/// 						Analysis: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisArgs{
/// 							Python: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPythonArgs{
/// 								Enabled: pulumi.Bool(true),
/// 							},
/// 						},
/// 						Datasource: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasourceArgs{
/// 							BigQueryMaxBilledBytes: pulumi.Int(1000000000),
/// 						},
/// 					},
/// 					ExampleQueries: gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryArray{
/// 						&gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryArgs{
/// 							NaturalLanguageQuestion: pulumi.String("What is the total order value?"),
/// 							SqlQuery:                pulumi.String("SELECT SUM(order_total) AS total_order_value FROM sales"),
/// 						},
/// 					},
/// 					GlossaryTerms: gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTermArray{
/// 						&gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTermArgs{
/// 							DisplayName: pulumi.String("Order"),
/// 							Description: pulumi.String("A customer purchase transaction."),
/// 							Labels: pulumi.StringArray{
/// 								pulumi.String("sales"),
/// 								pulumi.String("transaction"),
/// 							},
/// 						},
/// 					},
/// 					SchemaRelationships: gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipArray{
/// 						&gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipArgs{
/// 							LeftSchemaPaths: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPathsArgs{
/// 								TableFqn: pulumi.All(dataset.Project, dataset.DatasetId, table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									datasetId := _args[1].(string)
/// 									tableId := _args[2].(string)
/// 									return fmt.Sprintf("%v.%v.%v", project, datasetId, tableId), nil
/// 								}).(pulumi.StringOutput),
/// 								Paths: pulumi.StringArray{
/// 									pulumi.String("order_id"),
/// 								},
/// 							},
/// 							RightSchemaPaths: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPathsArgs{
/// 								TableFqn: pulumi.All(dataset.Project, dataset.DatasetId, table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 									project := _args[0].(string)
/// 									datasetId := _args[1].(string)
/// 									tableId := _args[2].(string)
/// 									return fmt.Sprintf("%v.%v.%v", project, datasetId, tableId), nil
/// 								}).(pulumi.StringOutput),
/// 								Paths: pulumi.StringArray{
/// 									pulumi.String("order_total"),
/// 								},
/// 							},
/// 							Sources: pulumi.StringArray{
/// 								pulumi.String("LLM_SUGGESTED"),
/// 							},
/// 							ConfidenceScore: pulumi.Float64(0.9),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			table,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "dataset" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset_id                 = "data_agent"
///   location                   = "US"
///   delete_contents_on_destroy = true
/// }
/// resource "gcp_bigquery_table" "table" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   dataset_id          = gcp_bigquery_dataset.dataset.dataset_id
///   table_id            = "sales"
///   deletion_protection = false
///   schema = jsonencode([{
///     "name" = "order_id"
///     "type" = "STRING"
///     "mode" = "REQUIRED"
///     }, {
///     "name" = "order_total"
///     "type" = "FLOAT"
///     "mode" = "NULLABLE"
///   }])
/// }
/// resource "gcp_gemini_data_analytics_data_agent" "example" {
///   depends_on = [gcp_bigquery_table.table]
///   lifecycle {
///     create_before_destroy = true
///   }
///   location      = "global"
///   data_agent_id = "data-agent-bq"
///   display_name  = "BigQuery data agent"
///   description   = "Example Gemini Data Analytics data agent backed by BigQuery."
///   labels = {
///     "env" = "test"
///   }
///   data_analytics_agent = {
///     published_context = {
///       system_instruction = "Answer questions about sales orders."
///       datasource_references = {
///         bq = {
///           table_references = [{
///             project_id = gcp_bigquery_dataset.dataset.project
///             dataset_id = gcp_bigquery_dataset.dataset.dataset_id
///             table_id   = gcp_bigquery_table.table.table_id
///           }]
///         }
///       }
///       options = {
///         analysis = {
///           python = {
///             enabled = true
///           }
///         }
///         datasource = {
///           big_query_max_billed_bytes = 1000000000
///         }
///       }
///       example_queries = [{
///         natural_language_question = "What is the total order value?"
///         sql_query                 = "SELECT SUM(order_total) AS total_order_value FROM sales"
///       }]
///       glossary_terms = [{
///         display_name = "Order"
///         description  = "A customer purchase transaction."
///         labels       = ["sales", "transaction"]
///       }]
///       schema_relationships = [{
///         left_schema_paths = {
///           table_fqn ="${gcp_bigquery_dataset.dataset.project}.${gcp_bigquery_dataset.dataset.dataset_id}.${gcp_bigquery_table.table.table_id}"
///           paths     = ["order_id"]
///         }
///         right_schema_paths = {
///           table_fqn ="${gcp_bigquery_dataset.dataset.project}.${gcp_bigquery_dataset.dataset.dataset_id}.${gcp_bigquery_table.table.table_id}"
///           paths     = ["order_total"]
///         }
///         sources          = ["LLM_SUGGESTED"]
///         confidence_score = 0.9
///       }]
///     }
///   }
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
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgent;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPythonArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasourceArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTermArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPathsArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPathsArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("data_agent")
///             .location("US")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var table = new Table("table", TableArgs.builder()
///             .datasetId(dataset.datasetId())
///             .tableId("sales")
///             .deletionProtection(false)
///             .schema(serializeJson(
///                 jsonArray(
///                     jsonObject(
///                         jsonProperty("name", "order_id"),
///                         jsonProperty("type", "STRING"),
///                         jsonProperty("mode", "REQUIRED")
///                     ),
///                     jsonObject(
///                         jsonProperty("name", "order_total"),
///                         jsonProperty("type", "FLOAT"),
///                         jsonProperty("mode", "NULLABLE")
///                     )
///                 )))
///             .build());
///
///         var example = new DataAnalyticsDataAgent("example", DataAnalyticsDataAgentArgs.builder()
///             .location("global")
///             .dataAgentId("data-agent-bq")
///             .displayName("BigQuery data agent")
///             .description("Example Gemini Data Analytics data agent backed by BigQuery.")
///             .labels(Map.of("env", "test"))
///             .dataAnalyticsAgent(DataAnalyticsDataAgentDataAnalyticsAgentArgs.builder()
///                 .publishedContext(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextArgs.builder()
///                     .systemInstruction("Answer questions about sales orders.")
///                     .datasourceReferences(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesArgs.builder()
///                         .bq(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqArgs.builder()
///                             .tableReferences(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceArgs.builder()
///                                 .projectId(dataset.project())
///                                 .datasetId(dataset.datasetId())
///                                 .tableId(table.tableId())
///                                 .build())
///                             .build())
///                         .build())
///                     .options(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsArgs.builder()
///                         .analysis(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisArgs.builder()
///                             .python(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPythonArgs.builder()
///                                 .enabled(true)
///                                 .build())
///                             .build())
///                         .datasource(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasourceArgs.builder()
///                             .bigQueryMaxBilledBytes(1000000000)
///                             .build())
///                         .build())
///                     .exampleQueries(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryArgs.builder()
///                         .naturalLanguageQuestion("What is the total order value?")
///                         .sqlQuery("SELECT SUM(order_total) AS total_order_value FROM sales")
///                         .build())
///                     .glossaryTerms(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTermArgs.builder()
///                         .displayName("Order")
///                         .description("A customer purchase transaction.")
///                         .labels(
///                             "sales",
///                             "transaction")
///                         .build())
///                     .schemaRelationships(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipArgs.builder()
///                         .leftSchemaPaths(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPathsArgs.builder()
///                             .tableFqn(Output.tuple(dataset.project(), dataset.datasetId(), table.tableId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var datasetId = values.t2;
///                                 var tableId = values.t3;
///                                 return String.format("%s.%s.%s", project,datasetId,tableId);
///                             }))
///                             .paths("order_id")
///                             .build())
///                         .rightSchemaPaths(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPathsArgs.builder()
///                             .tableFqn(Output.tuple(dataset.project(), dataset.datasetId(), table.tableId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var datasetId = values.t2;
///                                 var tableId = values.t3;
///                                 return String.format("%s.%s.%s", project,datasetId,tableId);
///                             }))
///                             .paths("order_total")
///                             .build())
///                         .sources("LLM_SUGGESTED")
///                         .confidenceScore(0.9)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(table)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: data_agent
///       location: US
///       deleteContentsOnDestroy: true
///   table:
///     type: gcp:bigquery:Table
///     properties:
///       datasetId: ${dataset.datasetId}
///       tableId: sales
///       deletionProtection: false
///       schema:
///         fn::toJSON:
///           - name: order_id
///             type: STRING
///             mode: REQUIRED
///           - name: order_total
///             type: FLOAT
///             mode: NULLABLE
///   example:
///     type: gcp:gemini:DataAnalyticsDataAgent
///     properties:
///       location: global
///       dataAgentId: data-agent-bq
///       displayName: BigQuery data agent
///       description: Example Gemini Data Analytics data agent backed by BigQuery.
///       labels:
///         env: test
///       dataAnalyticsAgent:
///         publishedContext:
///           systemInstruction: Answer questions about sales orders.
///           datasourceReferences:
///             bq:
///               tableReferences:
///                 - projectId: ${dataset.project}
///                   datasetId: ${dataset.datasetId}
///                   tableId: ${table.tableId}
///           options:
///             analysis:
///               python:
///                 enabled: true
///             datasource:
///               bigQueryMaxBilledBytes: 1e+09
///           exampleQueries:
///             - naturalLanguageQuestion: What is the total order value?
///               sqlQuery: SELECT SUM(order_total) AS total_order_value FROM sales
///           glossaryTerms:
///             - displayName: Order
///               description: A customer purchase transaction.
///               labels:
///                 - sales
///                 - transaction
///           schemaRelationships:
///             - leftSchemaPaths:
///                 tableFqn: ${dataset.project}.${dataset.datasetId}.${table.tableId}
///                 paths:
///                   - order_id
///               rightSchemaPaths:
///                 tableFqn: ${dataset.project}.${dataset.datasetId}.${table.tableId}
///                 paths:
///                   - order_total
///               sources:
///                 - LLM_SUGGESTED
///               confidenceScore: 0.9
///     options:
///       dependsOn:
///         - ${table}
/// ```
///
/// ### Gemini Data Analytics Data Agent Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const kmsIam = new gcp.kms.CryptoKeyIAMMember("kms_iam", {
///     cryptoKeyId: "kms-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-geminidataanalytics.iam.gserviceaccount.com`),
/// });
/// const example = new gcp.gemini.DataAnalyticsDataAgent("example", {
///     location: "us-central1",
///     dataAgentId: "data-agent-cmek",
///     displayName: "CMEK data agent",
///     description: "Example Gemini Data Analytics data agent with customer-managed encryption.",
///     kmsKey: "kms-key",
///     dataAnalyticsAgent: {
///         stagingContext: {
///             systemInstruction: "Answer questions about the sample Shakespeare corpus.",
///             datasourceReferences: {
///                 bq: {
///                     tableReferences: [{
///                         projectId: "bigquery-public-data",
///                         datasetId: "samples",
///                         tableId: "shakespeare",
///                     }],
///                 },
///             },
///         },
///     },
/// }, {
///     dependsOn: [kmsIam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// kms_iam = gcp.kms.CryptoKeyIAMMember("kms_iam",
///     crypto_key_id="kms-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-geminidataanalytics.iam.gserviceaccount.com")
/// example = gcp.gemini.DataAnalyticsDataAgent("example",
///     location="us-central1",
///     data_agent_id="data-agent-cmek",
///     display_name="CMEK data agent",
///     description="Example Gemini Data Analytics data agent with customer-managed encryption.",
///     kms_key="kms-key",
///     data_analytics_agent={
///         "staging_context": {
///             "system_instruction": "Answer questions about the sample Shakespeare corpus.",
///             "datasource_references": {
///                 "bq": {
///                     "table_references": [{
///                         "project_id": "bigquery-public-data",
///                         "dataset_id": "samples",
///                         "table_id": "shakespeare",
///                     }],
///                 },
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[kms_iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var kmsIam = new Gcp.Kms.CryptoKeyIAMMember("kms_iam", new()
///     {
///         CryptoKeyId = "kms-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-geminidataanalytics.iam.gserviceaccount.com",
///     });
///
///     var example = new Gcp.Gemini.DataAnalyticsDataAgent("example", new()
///     {
///         Location = "us-central1",
///         DataAgentId = "data-agent-cmek",
///         DisplayName = "CMEK data agent",
///         Description = "Example Gemini Data Analytics data agent with customer-managed encryption.",
///         KmsKey = "kms-key",
///         DataAnalyticsAgent = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs
///         {
///             StagingContext = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs
///             {
///                 SystemInstruction = "Answer questions about the sample Shakespeare corpus.",
///                 DatasourceReferences = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs
///                 {
///                     Bq = new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs
///                     {
///                         TableReferences = new[]
///                         {
///                             new Gcp.Gemini.Inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs
///                             {
///                                 ProjectId = "bigquery-public-data",
///                                 DatasetId = "samples",
///                                 TableId = "shakespeare",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsIam,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kmsIam, err := kms.NewCryptoKeyIAMMember(ctx, "kms_iam", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-geminidataanalytics.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewDataAnalyticsDataAgent(ctx, "example", &gemini.DataAnalyticsDataAgentArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DataAgentId: pulumi.String("data-agent-cmek"),
/// 			DisplayName: pulumi.String("CMEK data agent"),
/// 			Description: pulumi.String("Example Gemini Data Analytics data agent with customer-managed encryption."),
/// 			KmsKey:      pulumi.String("kms-key"),
/// 			DataAnalyticsAgent: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentArgs{
/// 				StagingContext: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs{
/// 					SystemInstruction: pulumi.String("Answer questions about the sample Shakespeare corpus."),
/// 					DatasourceReferences: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs{
/// 						Bq: &gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs{
/// 							TableReferences: gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArray{
/// 								&gemini.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs{
/// 									ProjectId: pulumi.String("bigquery-public-data"),
/// 									DatasetId: pulumi.String("samples"),
/// 									TableId:   pulumi.String("shakespeare"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsIam,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_kms_crypto_key_i_a_m_member" "kms_iam" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   crypto_key_id = "kms-key"
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-geminidataanalytics.iam.gserviceaccount.com"
/// }
/// resource "gcp_gemini_data_analytics_data_agent" "example" {
///   depends_on = [gcp_kms_crypto_key_i_a_m_member.kms_iam]
///   lifecycle {
///     create_before_destroy = true
///   }
///   location      = "us-central1"
///   data_agent_id = "data-agent-cmek"
///   display_name  = "CMEK data agent"
///   description   = "Example Gemini Data Analytics data agent with customer-managed encryption."
///   kms_key       = "kms-key"
///   data_analytics_agent = {
///     staging_context = {
///       system_instruction = "Answer questions about the sample Shakespeare corpus."
///       datasource_references = {
///         bq = {
///           table_references = [{
///             project_id = "bigquery-public-data"
///             dataset_id = "samples"
///             table_id   = "shakespeare"
///           }]
///         }
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgent;
/// import com.pulumi.gcp.gemini.DataAnalyticsDataAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs;
/// import com.pulumi.gcp.gemini.inputs.DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var kmsIam = new CryptoKeyIAMMember("kmsIam", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-geminidataanalytics.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var example = new DataAnalyticsDataAgent("example", DataAnalyticsDataAgentArgs.builder()
///             .location("us-central1")
///             .dataAgentId("data-agent-cmek")
///             .displayName("CMEK data agent")
///             .description("Example Gemini Data Analytics data agent with customer-managed encryption.")
///             .kmsKey("kms-key")
///             .dataAnalyticsAgent(DataAnalyticsDataAgentDataAnalyticsAgentArgs.builder()
///                 .stagingContext(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextArgs.builder()
///                     .systemInstruction("Answer questions about the sample Shakespeare corpus.")
///                     .datasourceReferences(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesArgs.builder()
///                         .bq(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqArgs.builder()
///                             .tableReferences(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceArgs.builder()
///                                 .projectId("bigquery-public-data")
///                                 .datasetId("samples")
///                                 .tableId("shakespeare")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsIam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kmsIam:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: kms_iam
///     properties:
///       cryptoKeyId: kms-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-geminidataanalytics.iam.gserviceaccount.com
///   example:
///     type: gcp:gemini:DataAnalyticsDataAgent
///     properties:
///       location: us-central1
///       dataAgentId: data-agent-cmek
///       displayName: CMEK data agent
///       description: Example Gemini Data Analytics data agent with customer-managed encryption.
///       kmsKey: kms-key
///       dataAnalyticsAgent:
///         stagingContext:
///           systemInstruction: Answer questions about the sample Shakespeare corpus.
///           datasourceReferences:
///             bq:
///               tableReferences:
///                 - projectId: bigquery-public-data
///                   datasetId: samples
///                   tableId: shakespeare
///     options:
///       dependsOn:
///         - ${kmsIam}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// DataAgent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}}`
/// * `{{project}}/{{location}}/{{data_agent_id}}`
/// * `{{location}}/{{data_agent_id}}`
///
///
/// When using the `pulumi import` command, DataAgent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent default projects/{{project}}/locations/{{location}}/dataAgents/{{data_agent_id}}
/// $ pulumi import gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent default {{project}}/{{location}}/{{data_agent_id}}
/// $ pulumi import gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent default {{location}}/{{data_agent_id}}
/// ```
class DataAnalyticsDataAgent extends pulumi.CustomResource {
  /// Output only. The time when the data agent was created.
  late final pulumi.Output<String> createTime;
  /// Required. The ID to use for the DataAgent, which becomes the final component
  /// of the resource name. The ID must start with a lowercase letter and may
  /// contain lowercase letters, digits, underscores, and hyphens, up to 63
  /// characters in total.
  late final pulumi.Output<String> dataAgentId;
  /// Data analytics agent configuration.
  /// Structure is documented below.
  late final pulumi.Output<DataAnalyticsDataAgentDataAnalyticsAgent?> dataAnalyticsAgent;
  /// Output only. The time the data agent was soft deleted.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. Description of the agent. Must be between 1 and 1024 characters.
  late final pulumi.Output<String?> description;
  /// Optional. User friendly display name. Must be between 1 and 256 characters.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Customer managed encryption key (CMEK) to use for encrypting the
  /// DataAgent resources. Cloud KMS CryptoKeys must reside in the same location
  /// as the DataAgent. The expected format is
  /// projects/*/locations/*/keyRings/*/cryptoKeys/*.
  late final pulumi.Output<String?> kmsKey;
  /// Optional. Labels to help users filter related agents.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the DataAgent.
  late final pulumi.Output<String> location;
  /// Output only. Identifier. The unique resource name of a DataAgent.
  /// Format: projects/{project}/locations/{location}/dataAgents/{dataAgentId}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Output only. Timestamp in UTC of when this data agent is considered expired.
  late final pulumi.Output<String> purgeTime;
  /// Output only. The time when the data agent was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataAnalyticsDataAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataAnalyticsDataAgent]. {@macro pulumi_gemini_data_analytics_data_agent_data_analytics_data_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataAnalyticsDataAgent(
    String name, {
    DataAnalyticsDataAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    dataAgentId = registerOutput<String>('dataAgentId');
    dataAnalyticsAgent = registerOutput<DataAnalyticsDataAgentDataAnalyticsAgent?>('dataAnalyticsAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataAnalyticsDataAgentDataAnalyticsAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataAnalyticsDataAgent] resource's state with the given [name] and [id].
  static DataAnalyticsDataAgent get(
    String name,
    pulumi.Input<String> id, {
    DataAnalyticsDataAgentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataAnalyticsDataAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataAnalyticsDataAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataAgentId = registerOutput<String>('dataAgentId');
    dataAnalyticsAgent = registerOutput<DataAnalyticsDataAgentDataAnalyticsAgent?>('dataAnalyticsAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataAnalyticsDataAgentDataAnalyticsAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DataAnalyticsDataAgent] resource.
  DataAnalyticsDataAgent.reference(String urn)
    : super(
        'gcp:gemini/dataAnalyticsDataAgent:DataAnalyticsDataAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dataAgentId = registerOutput<String>('dataAgentId');
    dataAnalyticsAgent = registerOutput<DataAnalyticsDataAgentDataAnalyticsAgent?>('dataAnalyticsAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataAnalyticsDataAgentDataAnalyticsAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    purgeTime = registerOutput<String>('purgeTime');
    updateTime = registerOutput<String>('updateTime');
  }
}
