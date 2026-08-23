import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_args.dart';
import 'analyst_agent_persona_artifacts_config.dart';
import 'analyst_agent_persona_state.dart';

/// Represents a persona configuration for an analyst agent in Agentic Applications.
///
///
///
///
///
/// ## Example Usage
///
/// ### Analyst Agent Persona Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.agenticapplications.AnalystAgentPersona("example", {
///     location: "us",
///     analystAgentPersonaId: "basic",
///     displayName: "Test Analyst Persona",
///     displayDescription: "Sample analyst agent persona description",
///     customerContexts: [
///         "Sample customer context for testing",
///         "Initial additional context",
///     ],
///     modelDescription: "Sample model description",
///     role: "ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///     artifactExamples: [{
///         resource: {
///             displayLabel: "sample_raw_file",
///             modelDescription: "Sample artifact resource model description",
///             useRag: false,
///             rawFileResource: {
///                 fileTitle: "financial_summary.txt",
///                 fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                 mimeType: "text/plain",
///             },
///         },
///     }],
///     skills: [{
///         skillId: "finance_analysis_skill",
///         description: "Skill for finance analysis",
///         content: `# Finance Analysis
/// Analyze financial data.`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.agenticapplications.AnalystAgentPersona("example",
///     location="us",
///     analyst_agent_persona_id="basic",
///     display_name="Test Analyst Persona",
///     display_description="Sample analyst agent persona description",
///     customer_contexts=[
///         "Sample customer context for testing",
///         "Initial additional context",
///     ],
///     model_description="Sample model description",
///     role="ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///     artifact_examples=[{
///         "resource": {
///             "display_label": "sample_raw_file",
///             "model_description": "Sample artifact resource model description",
///             "use_rag": False,
///             "raw_file_resource": {
///                 "file_title": "financial_summary.txt",
///                 "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                 "mime_type": "text/plain",
///             },
///         },
///     }],
///     skills=[{
///         "skill_id": "finance_analysis_skill",
///         "description": "Skill for finance analysis",
///         "content": """# Finance Analysis
/// Analyze financial data.""",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.AgenticApplications.AnalystAgentPersona("example", new()
///     {
///         Location = "us",
///         AnalystAgentPersonaId = "basic",
///         DisplayName = "Test Analyst Persona",
///         DisplayDescription = "Sample analyst agent persona description",
///         CustomerContexts = new[]
///         {
///             "Sample customer context for testing",
///             "Initial additional context",
///         },
///         ModelDescription = "Sample model description",
///         Role = "ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///         ArtifactExamples = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleArgs
///             {
///                 Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceArgs
///                 {
///                     DisplayLabel = "sample_raw_file",
///                     ModelDescription = "Sample artifact resource model description",
///                     UseRag = false,
///                     RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs
///                     {
///                         FileTitle = "financial_summary.txt",
///                         FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         MimeType = "text/plain",
///                     },
///                 },
///             },
///         },
///         Skills = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaSkillArgs
///             {
///                 SkillId = "finance_analysis_skill",
///                 Description = "Skill for finance analysis",
///                 Content = @"# Finance Analysis
/// Analyze financial data.",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agenticapplications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agenticapplications.NewAnalystAgentPersona(ctx, "example", &agenticapplications.AnalystAgentPersonaArgs{
/// 			Location:              pulumi.String("us"),
/// 			AnalystAgentPersonaId: pulumi.String("basic"),
/// 			DisplayName:           pulumi.String("Test Analyst Persona"),
/// 			DisplayDescription:    pulumi.String("Sample analyst agent persona description"),
/// 			CustomerContexts: pulumi.StringArray{
/// 				pulumi.String("Sample customer context for testing"),
/// 				pulumi.String("Initial additional context"),
/// 			},
/// 			ModelDescription: pulumi.String("Sample model description"),
/// 			Role:             pulumi.String("ANALYST_ROLE_GENERIC_FINANCE_ANALYST"),
/// 			ArtifactExamples: agenticapplications.AnalystAgentPersonaArtifactExampleArray{
/// 				&agenticapplications.AnalystAgentPersonaArtifactExampleArgs{
/// 					Resource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceArgs{
/// 						DisplayLabel:     pulumi.String("sample_raw_file"),
/// 						ModelDescription: pulumi.String("Sample artifact resource model description"),
/// 						UseRag:           pulumi.Bool(false),
/// 						RawFileResource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs{
/// 							FileTitle:   pulumi.String("financial_summary.txt"),
/// 							FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 							MimeType:    pulumi.String("text/plain"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Skills: agenticapplications.AnalystAgentPersonaSkillArray{
/// 				&agenticapplications.AnalystAgentPersonaSkillArgs{
/// 					SkillId:     pulumi.String("finance_analysis_skill"),
/// 					Description: pulumi.String("Skill for finance analysis"),
/// 					Content:     pulumi.String("# Finance Analysis\nAnalyze financial data."),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_agenticapplications_analystagentpersona" "example" {
///   location                 = "us"
///   analyst_agent_persona_id = "basic"
///   display_name             = "Test Analyst Persona"
///   display_description      = "Sample analyst agent persona description"
///   customer_contexts        = ["Sample customer context for testing", "Initial additional context"]
///   model_description        = "Sample model description"
///   role                     = "ANALYST_ROLE_GENERIC_FINANCE_ANALYST"
///   artifact_examples {
///     resource = {
///       display_label     = "sample_raw_file"
///       model_description = "Sample artifact resource model description"
///       use_rag           = false
///       raw_file_resource = {
///         file_title   = "financial_summary.txt"
///         file_content = "UTEgUmV2ZW51ZTogMTAwTQ=="
///         mime_type    = "text/plain"
///       }
///     }
///   }
///   skills {
///     skill_id    = "finance_analysis_skill"
///     description = "Skill for finance analysis"
///     content     = "# Finance Analysis\nAnalyze financial data."
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.agenticapplications.AnalystAgentPersona;
/// import com.pulumi.gcp.agenticapplications.AnalystAgentPersonaArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaSkillArgs;
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
///         var example = new AnalystAgentPersona("example", AnalystAgentPersonaArgs.builder()
///             .location("us")
///             .analystAgentPersonaId("basic")
///             .displayName("Test Analyst Persona")
///             .displayDescription("Sample analyst agent persona description")
///             .customerContexts(
///                 "Sample customer context for testing",
///                 "Initial additional context")
///             .modelDescription("Sample model description")
///             .role("ANALYST_ROLE_GENERIC_FINANCE_ANALYST")
///             .artifactExamples(AnalystAgentPersonaArtifactExampleArgs.builder()
///                 .resource(AnalystAgentPersonaArtifactExampleResourceArgs.builder()
///                     .displayLabel("sample_raw_file")
///                     .modelDescription("Sample artifact resource model description")
///                     .useRag(false)
///                     .rawFileResource(AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs.builder()
///                         .fileTitle("financial_summary.txt")
///                         .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                         .mimeType("text/plain")
///                         .build())
///                     .build())
///                 .build())
///             .skills(AnalystAgentPersonaSkillArgs.builder()
///                 .skillId("finance_analysis_skill")
///                 .description("Skill for finance analysis")
///                 .content("""
/// # Finance Analysis
/// Analyze financial data.                """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:agenticapplications:AnalystAgentPersona
///     properties:
///       location: us
///       analystAgentPersonaId: basic
///       displayName: Test Analyst Persona
///       displayDescription: Sample analyst agent persona description
///       customerContexts:
///         - Sample customer context for testing
///         - Initial additional context
///       modelDescription: Sample model description
///       role: ANALYST_ROLE_GENERIC_FINANCE_ANALYST
///       artifactExamples:
///         - resource:
///             displayLabel: sample_raw_file
///             modelDescription: Sample artifact resource model description
///             useRag: false
///             rawFileResource:
///               fileTitle: financial_summary.txt
///               fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///               mimeType: text/plain
///       skills:
///         - skillId: finance_analysis_skill
///           description: Skill for finance analysis
///           content: |-
///             # Finance Analysis
///             Analyze financial data.
/// ```
///
/// ### Analyst Agent Persona Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bqDs = new gcp.bigquery.Dataset("bq_ds", {
///     datasetId: "dataset_id",
///     location: "US",
/// });
/// const bqTbl = new gcp.bigquery.Table("bq_tbl", {
///     datasetId: bqDs.datasetId,
///     tableId: "table",
///     deletionProtection: false,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "example_object.txt",
///     content: "Hello World",
///     bucket: bucket.name,
/// });
/// const example = new gcp.agenticapplications.AnalystAgentPersona("example", {
///     location: "us",
///     analystAgentPersonaId: "full",
///     displayName: "Full Test Analyst Persona",
///     displayDescription: "Sample full analyst agent persona description",
///     customerContexts: ["Sample customer context for testing"],
///     modelDescription: "Sample model description",
///     role: "ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///     artifactExamples: [
///         {
///             resource: {
///                 displayLabel: "sample_raw_file",
///                 modelDescription: "Sample artifact resource model description",
///                 useRag: false,
///                 rawFileResource: {
///                     fileTitle: "example_doc.txt",
///                     fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                     mimeType: "text/plain",
///                 },
///             },
///         },
///         {
///             resource: {
///                 displayLabel: "sample_bq_ds",
///                 modelDescription: "Sample BQ dataset model description",
///                 useRag: false,
///                 bigqueryResource: {
///                     bigqueryDataset: pulumi.interpolate`projects/${bqDs.project}/datasets/${bqDs.datasetId}`,
///                 },
///             },
///         },
///         {
///             resource: {
///                 displayLabel: "sample_gcs",
///                 modelDescription: "Sample GCS model description",
///                 useRag: false,
///                 googleCloudStorageResource: {
///                     googleCloudStorageObject: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
///                     fileExtensionRestrictions: ["txt"],
///                 },
///             },
///         },
///     ],
///     artifactsConfig: {
///         documentGenerationOptions: {
///             exportFormat: "EXPORT_FORMAT_UNSPECIFIED",
///             documentExamples: [
///                 {
///                     resource: {
///                         displayLabel: "doc_example_raw",
///                         modelDescription: "Sample doc raw description",
///                         useRag: false,
///                         rawFileResource: {
///                             fileTitle: "doc.txt",
///                             fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                             mimeType: "text/plain",
///                         },
///                     },
///                 },
///                 {
///                     resource: {
///                         displayLabel: "doc_example_bq",
///                         modelDescription: "Sample doc BQ description",
///                         useRag: false,
///                         bigqueryResource: {
///                             bigqueryDataset: pulumi.interpolate`projects/${bqDs.project}/datasets/${bqDs.datasetId}`,
///                         },
///                     },
///                 },
///             ],
///         },
///         slideGenerationOptions: {
///             exportFormat: "EXPORT_FORMAT_UNSPECIFIED",
///             slideExamples: [{
///                 resource: {
///                     displayLabel: "slide_example_raw",
///                     modelDescription: "Sample slide raw description",
///                     useRag: false,
///                     rawFileResource: {
///                         fileTitle: "slide.txt",
///                         fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         mimeType: "text/plain",
///                     },
///                 },
///             }],
///         },
///         visualizationOptions: {
///             visualizationExamples: [{
///                 visualizationType: "VISUALIZATION_TYPE_UNSPECIFIED",
///                 resource: {
///                     displayLabel: "viz_example_raw",
///                     modelDescription: "Sample viz raw description",
///                     useRag: false,
///                     rawFileResource: {
///                         fileTitle: "viz.txt",
///                         fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         mimeType: "text/plain",
///                     },
///                 },
///             }],
///         },
///     },
///     externalDataSources: [{
///         enabled: true,
///     }],
///     mcpDataSources: [{
///         serverUrl: "https://mcp.example.com",
///         displayName: "Sample MCP Source",
///         description: "Sample MCP data source description",
///         enabled: true,
///         prompt: "Use this server for queries",
///         apiKeyName: "x-api-key",
///         clientId: "sample-client-id",
///         oauthTokenUrl: "https://example.com/oauth/token",
///     }],
///     resources: [
///         {
///             displayLabel: "sample_raw_file_full",
///             modelDescription: "Resource model description",
///             useRag: false,
///             rawFileResource: {
///                 fileTitle: "financial_summary.txt",
///                 fileContent: "UTEgUmV2ZW51ZTogMTAwTQ==",
///                 mimeType: "text/plain",
///             },
///         },
///         {
///             displayLabel: "sample_bq_table_resource",
///             modelDescription: "BigQuery table resource description",
///             useRag: false,
///             bigqueryResource: {
///                 bigqueryTable: pulumi.interpolate`projects/${bqDs.project}/datasets/${bqDs.datasetId}/tables/${bqTbl.tableId}`,
///             },
///         },
///         {
///             displayLabel: "sample_gcs_resource",
///             modelDescription: "GCS resource description",
///             useRag: false,
///             googleCloudStorageResource: {
///                 googleCloudStorageObject: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
///                 fileExtensionRestrictions: ["txt"],
///             },
///         },
///     ],
///     skills: [{
///         skillId: "finance_analysis_skill",
///         description: "Skill for finance analysis",
///         content: `# Finance Analysis
/// Analyze financial data.`,
///         references: [{
///             referenceId: "ref_1",
///             content: "Reference content for skill",
///         }],
///     }],
///     tables: [{
///         name: "sample_table",
///         description: "Sample table description",
///         columns: [{
///             name: "column_1",
///             description: "First column description",
///             dataType: "STRING",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bq_ds = gcp.bigquery.Dataset("bq_ds",
///     dataset_id="dataset_id",
///     location="US")
/// bq_tbl = gcp.bigquery.Table("bq_tbl",
///     dataset_id=bq_ds.dataset_id,
///     table_id="table",
///     deletion_protection=False)
/// bucket = gcp.storage.Bucket("bucket",
///     name="bucket",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// object = gcp.storage.BucketObject("object",
///     name="example_object.txt",
///     content="Hello World",
///     bucket=bucket.name)
/// example = gcp.agenticapplications.AnalystAgentPersona("example",
///     location="us",
///     analyst_agent_persona_id="full",
///     display_name="Full Test Analyst Persona",
///     display_description="Sample full analyst agent persona description",
///     customer_contexts=["Sample customer context for testing"],
///     model_description="Sample model description",
///     role="ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///     artifact_examples=[
///         {
///             "resource": {
///                 "display_label": "sample_raw_file",
///                 "model_description": "Sample artifact resource model description",
///                 "use_rag": False,
///                 "raw_file_resource": {
///                     "file_title": "example_doc.txt",
///                     "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                     "mime_type": "text/plain",
///                 },
///             },
///         },
///         {
///             "resource": {
///                 "display_label": "sample_bq_ds",
///                 "model_description": "Sample BQ dataset model description",
///                 "use_rag": False,
///                 "bigquery_resource": {
///                     "bigquery_dataset": pulumi.Output.all(
///                         project=bq_ds.project,
///                         dataset_id=bq_ds.dataset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/datasets/{resolved_outputs['dataset_id']}")
/// ,
///                 },
///             },
///         },
///         {
///             "resource": {
///                 "display_label": "sample_gcs",
///                 "model_description": "Sample GCS model description",
///                 "use_rag": False,
///                 "google_cloud_storage_resource": {
///                     "google_cloud_storage_object": pulumi.Output.all(
///                         bucketName=bucket.name,
///                         objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///                     "file_extension_restrictions": ["txt"],
///                 },
///             },
///         },
///     ],
///     artifacts_config={
///         "document_generation_options": {
///             "export_format": "EXPORT_FORMAT_UNSPECIFIED",
///             "document_examples": [
///                 {
///                     "resource": {
///                         "display_label": "doc_example_raw",
///                         "model_description": "Sample doc raw description",
///                         "use_rag": False,
///                         "raw_file_resource": {
///                             "file_title": "doc.txt",
///                             "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                             "mime_type": "text/plain",
///                         },
///                     },
///                 },
///                 {
///                     "resource": {
///                         "display_label": "doc_example_bq",
///                         "model_description": "Sample doc BQ description",
///                         "use_rag": False,
///                         "bigquery_resource": {
///                             "bigquery_dataset": pulumi.Output.all(
///                                 project=bq_ds.project,
///                                 dataset_id=bq_ds.dataset_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/datasets/{resolved_outputs['dataset_id']}")
/// ,
///                         },
///                     },
///                 },
///             ],
///         },
///         "slide_generation_options": {
///             "export_format": "EXPORT_FORMAT_UNSPECIFIED",
///             "slide_examples": [{
///                 "resource": {
///                     "display_label": "slide_example_raw",
///                     "model_description": "Sample slide raw description",
///                     "use_rag": False,
///                     "raw_file_resource": {
///                         "file_title": "slide.txt",
///                         "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         "mime_type": "text/plain",
///                     },
///                 },
///             }],
///         },
///         "visualization_options": {
///             "visualization_examples": [{
///                 "visualization_type": "VISUALIZATION_TYPE_UNSPECIFIED",
///                 "resource": {
///                     "display_label": "viz_example_raw",
///                     "model_description": "Sample viz raw description",
///                     "use_rag": False,
///                     "raw_file_resource": {
///                         "file_title": "viz.txt",
///                         "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         "mime_type": "text/plain",
///                     },
///                 },
///             }],
///         },
///     },
///     external_data_sources=[{
///         "enabled": True,
///     }],
///     mcp_data_sources=[{
///         "server_url": "https://mcp.example.com",
///         "display_name": "Sample MCP Source",
///         "description": "Sample MCP data source description",
///         "enabled": True,
///         "prompt": "Use this server for queries",
///         "api_key_name": "x-api-key",
///         "client_id": "sample-client-id",
///         "oauth_token_url": "https://example.com/oauth/token",
///     }],
///     resources=[
///         {
///             "display_label": "sample_raw_file_full",
///             "model_description": "Resource model description",
///             "use_rag": False,
///             "raw_file_resource": {
///                 "file_title": "financial_summary.txt",
///                 "file_content": "UTEgUmV2ZW51ZTogMTAwTQ==",
///                 "mime_type": "text/plain",
///             },
///         },
///         {
///             "display_label": "sample_bq_table_resource",
///             "model_description": "BigQuery table resource description",
///             "use_rag": False,
///             "bigquery_resource": {
///                 "bigquery_table": pulumi.Output.all(
///                     project=bq_ds.project,
///                     dataset_id=bq_ds.dataset_id,
///                     table_id=bq_tbl.table_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project']}/datasets/{resolved_outputs['dataset_id']}/tables/{resolved_outputs['table_id']}")
/// ,
///             },
///         },
///         {
///             "display_label": "sample_gcs_resource",
///             "model_description": "GCS resource description",
///             "use_rag": False,
///             "google_cloud_storage_resource": {
///                 "google_cloud_storage_object": pulumi.Output.all(
///                     bucketName=bucket.name,
///                     objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///                 "file_extension_restrictions": ["txt"],
///             },
///         },
///     ],
///     skills=[{
///         "skill_id": "finance_analysis_skill",
///         "description": "Skill for finance analysis",
///         "content": """# Finance Analysis
/// Analyze financial data.""",
///         "references": [{
///             "reference_id": "ref_1",
///             "content": "Reference content for skill",
///         }],
///     }],
///     tables=[{
///         "name": "sample_table",
///         "description": "Sample table description",
///         "columns": [{
///             "name": "column_1",
///             "description": "First column description",
///             "data_type": "STRING",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bqDs = new Gcp.BigQuery.Dataset("bq_ds", new()
///     {
///         DatasetId = "dataset_id",
///         Location = "US",
///     });
///
///     var bqTbl = new Gcp.BigQuery.Table("bq_tbl", new()
///     {
///         DatasetId = bqDs.DatasetId,
///         TableId = "table",
///         DeletionProtection = false,
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "example_object.txt",
///         Content = "Hello World",
///         Bucket = bucket.Name,
///     });
///
///     var example = new Gcp.AgenticApplications.AnalystAgentPersona("example", new()
///     {
///         Location = "us",
///         AnalystAgentPersonaId = "full",
///         DisplayName = "Full Test Analyst Persona",
///         DisplayDescription = "Sample full analyst agent persona description",
///         CustomerContexts = new[]
///         {
///             "Sample customer context for testing",
///         },
///         ModelDescription = "Sample model description",
///         Role = "ANALYST_ROLE_GENERIC_FINANCE_ANALYST",
///         ArtifactExamples = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleArgs
///             {
///                 Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceArgs
///                 {
///                     DisplayLabel = "sample_raw_file",
///                     ModelDescription = "Sample artifact resource model description",
///                     UseRag = false,
///                     RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs
///                     {
///                         FileTitle = "example_doc.txt",
///                         FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                         MimeType = "text/plain",
///                     },
///                 },
///             },
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleArgs
///             {
///                 Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceArgs
///                 {
///                     DisplayLabel = "sample_bq_ds",
///                     ModelDescription = "Sample BQ dataset model description",
///                     UseRag = false,
///                     BigqueryResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceBigqueryResourceArgs
///                     {
///                         BigqueryDataset = Output.Tuple(bqDs.Project, bqDs.DatasetId).Apply(values =>
///                         {
///                             var project = values.Item1;
///                             var datasetId = values.Item2;
///                             return $"projects/{project}/datasets/{datasetId}";
///                         }),
///                     },
///                 },
///             },
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleArgs
///             {
///                 Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceArgs
///                 {
///                     DisplayLabel = "sample_gcs",
///                     ModelDescription = "Sample GCS model description",
///                     UseRag = false,
///                     GoogleCloudStorageResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResourceArgs
///                     {
///                         GoogleCloudStorageObject = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                         {
///                             var bucketName = values.Item1;
///                             var objectName = values.Item2;
///                             return $"gs://{bucketName}/{objectName}";
///                         }),
///                         FileExtensionRestrictions = new[]
///                         {
///                             "txt",
///                         },
///                     },
///                 },
///             },
///         },
///         ArtifactsConfig = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigArgs
///         {
///             DocumentGenerationOptions = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsArgs
///             {
///                 ExportFormat = "EXPORT_FORMAT_UNSPECIFIED",
///                 DocumentExamples = new[]
///                 {
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs
///                     {
///                         Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs
///                         {
///                             DisplayLabel = "doc_example_raw",
///                             ModelDescription = "Sample doc raw description",
///                             UseRag = false,
///                             RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceRawFileResourceArgs
///                             {
///                                 FileTitle = "doc.txt",
///                                 FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                                 MimeType = "text/plain",
///                             },
///                         },
///                     },
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs
///                     {
///                         Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs
///                         {
///                             DisplayLabel = "doc_example_bq",
///                             ModelDescription = "Sample doc BQ description",
///                             UseRag = false,
///                             BigqueryResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceBigqueryResourceArgs
///                             {
///                                 BigqueryDataset = Output.Tuple(bqDs.Project, bqDs.DatasetId).Apply(values =>
///                                 {
///                                     var project = values.Item1;
///                                     var datasetId = values.Item2;
///                                     return $"projects/{project}/datasets/{datasetId}";
///                                 }),
///                             },
///                         },
///                     },
///                 },
///             },
///             SlideGenerationOptions = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsArgs
///             {
///                 ExportFormat = "EXPORT_FORMAT_UNSPECIFIED",
///                 SlideExamples = new[]
///                 {
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleArgs
///                     {
///                         Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceArgs
///                         {
///                             DisplayLabel = "slide_example_raw",
///                             ModelDescription = "Sample slide raw description",
///                             UseRag = false,
///                             RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResourceArgs
///                             {
///                                 FileTitle = "slide.txt",
///                                 FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                                 MimeType = "text/plain",
///                             },
///                         },
///                     },
///                 },
///             },
///             VisualizationOptions = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsArgs
///             {
///                 VisualizationExamples = new[]
///                 {
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleArgs
///                     {
///                         VisualizationType = "VISUALIZATION_TYPE_UNSPECIFIED",
///                         Resource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceArgs
///                         {
///                             DisplayLabel = "viz_example_raw",
///                             ModelDescription = "Sample viz raw description",
///                             UseRag = false,
///                             RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResourceArgs
///                             {
///                                 FileTitle = "viz.txt",
///                                 FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                                 MimeType = "text/plain",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ExternalDataSources = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaExternalDataSourceArgs
///             {
///                 Enabled = true,
///             },
///         },
///         McpDataSources = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaMcpDataSourceArgs
///             {
///                 ServerUrl = "https://mcp.example.com",
///                 DisplayName = "Sample MCP Source",
///                 Description = "Sample MCP data source description",
///                 Enabled = true,
///                 Prompt = "Use this server for queries",
///                 ApiKeyName = "x-api-key",
///                 ClientId = "sample-client-id",
///                 OauthTokenUrl = "https://example.com/oauth/token",
///             },
///         },
///         Resources = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceArgs
///             {
///                 DisplayLabel = "sample_raw_file_full",
///                 ModelDescription = "Resource model description",
///                 UseRag = false,
///                 RawFileResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceRawFileResourceArgs
///                 {
///                     FileTitle = "financial_summary.txt",
///                     FileContent = "UTEgUmV2ZW51ZTogMTAwTQ==",
///                     MimeType = "text/plain",
///                 },
///             },
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceArgs
///             {
///                 DisplayLabel = "sample_bq_table_resource",
///                 ModelDescription = "BigQuery table resource description",
///                 UseRag = false,
///                 BigqueryResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceBigqueryResourceArgs
///                 {
///                     BigqueryTable = Output.Tuple(bqDs.Project, bqDs.DatasetId, bqTbl.TableId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var datasetId = values.Item2;
///                         var tableId = values.Item3;
///                         return $"projects/{project}/datasets/{datasetId}/tables/{tableId}";
///                     }),
///                 },
///             },
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceArgs
///             {
///                 DisplayLabel = "sample_gcs_resource",
///                 ModelDescription = "GCS resource description",
///                 UseRag = false,
///                 GoogleCloudStorageResource = new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaResourceGoogleCloudStorageResourceArgs
///                 {
///                     GoogleCloudStorageObject = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                     {
///                         var bucketName = values.Item1;
///                         var objectName = values.Item2;
///                         return $"gs://{bucketName}/{objectName}";
///                     }),
///                     FileExtensionRestrictions = new[]
///                     {
///                         "txt",
///                     },
///                 },
///             },
///         },
///         Skills = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaSkillArgs
///             {
///                 SkillId = "finance_analysis_skill",
///                 Description = "Skill for finance analysis",
///                 Content = @"# Finance Analysis
/// Analyze financial data.",
///                 References = new[]
///                 {
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaSkillReferenceArgs
///                     {
///                         ReferenceId = "ref_1",
///                         Content = "Reference content for skill",
///                     },
///                 },
///             },
///         },
///         Tables = new[]
///         {
///             new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaTableArgs
///             {
///                 Name = "sample_table",
///                 Description = "Sample table description",
///                 Columns = new[]
///                 {
///                     new Gcp.AgenticApplications.Inputs.AnalystAgentPersonaTableColumnArgs
///                     {
///                         Name = "column_1",
///                         Description = "First column description",
///                         DataType = "STRING",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/agenticapplications"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bqDs, err := bigquery.NewDataset(ctx, "bq_ds", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("dataset_id"),
/// 			Location:  pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTbl, err := bigquery.NewTable(ctx, "bq_tbl", &bigquery.TableArgs{
/// 			DatasetId:          bqDs.DatasetId,
/// 			TableId:            pulumi.String("table"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("example_object.txt"),
/// 			Content: pulumi.String("Hello World"),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = agenticapplications.NewAnalystAgentPersona(ctx, "example", &agenticapplications.AnalystAgentPersonaArgs{
/// 			Location:              pulumi.String("us"),
/// 			AnalystAgentPersonaId: pulumi.String("full"),
/// 			DisplayName:           pulumi.String("Full Test Analyst Persona"),
/// 			DisplayDescription:    pulumi.String("Sample full analyst agent persona description"),
/// 			CustomerContexts: pulumi.StringArray{
/// 				pulumi.String("Sample customer context for testing"),
/// 			},
/// 			ModelDescription: pulumi.String("Sample model description"),
/// 			Role:             pulumi.String("ANALYST_ROLE_GENERIC_FINANCE_ANALYST"),
/// 			ArtifactExamples: agenticapplications.AnalystAgentPersonaArtifactExampleArray{
/// 				&agenticapplications.AnalystAgentPersonaArtifactExampleArgs{
/// 					Resource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceArgs{
/// 						DisplayLabel:     pulumi.String("sample_raw_file"),
/// 						ModelDescription: pulumi.String("Sample artifact resource model description"),
/// 						UseRag:           pulumi.Bool(false),
/// 						RawFileResource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs{
/// 							FileTitle:   pulumi.String("example_doc.txt"),
/// 							FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 							MimeType:    pulumi.String("text/plain"),
/// 						},
/// 					},
/// 				},
/// 				&agenticapplications.AnalystAgentPersonaArtifactExampleArgs{
/// 					Resource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceArgs{
/// 						DisplayLabel:     pulumi.String("sample_bq_ds"),
/// 						ModelDescription: pulumi.String("Sample BQ dataset model description"),
/// 						UseRag:           pulumi.Bool(false),
/// 						BigqueryResource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceBigqueryResourceArgs{
/// 							BigqueryDataset: pulumi.All(bqDs.Project, bqDs.DatasetId).ApplyT(func(_args []interface{}) (string, error) {
/// 								project := _args[0].(string)
/// 								datasetId := _args[1].(string)
/// 								return fmt.Sprintf("projects/%v/datasets/%v", project, datasetId), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 					},
/// 				},
/// 				&agenticapplications.AnalystAgentPersonaArtifactExampleArgs{
/// 					Resource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceArgs{
/// 						DisplayLabel:     pulumi.String("sample_gcs"),
/// 						ModelDescription: pulumi.String("Sample GCS model description"),
/// 						UseRag:           pulumi.Bool(false),
/// 						GoogleCloudStorageResource: &agenticapplications.AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResourceArgs{
/// 							GoogleCloudStorageObject: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 								bucketName := _args[0].(string)
/// 								objectName := _args[1].(string)
/// 								return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 							}).(pulumi.StringOutput),
/// 							FileExtensionRestrictions: pulumi.StringArray{
/// 								pulumi.String("txt"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ArtifactsConfig: &agenticapplications.AnalystAgentPersonaArtifactsConfigArgs{
/// 				DocumentGenerationOptions: &agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsArgs{
/// 					ExportFormat: pulumi.String("EXPORT_FORMAT_UNSPECIFIED"),
/// 					DocumentExamples: agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArray{
/// 						&agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs{
/// 							Resource: &agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs{
/// 								DisplayLabel:     pulumi.String("doc_example_raw"),
/// 								ModelDescription: pulumi.String("Sample doc raw description"),
/// 								UseRag:           pulumi.Bool(false),
/// 								RawFileResource: &agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceRawFileResourceArgs{
/// 									FileTitle:   pulumi.String("doc.txt"),
/// 									FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 									MimeType:    pulumi.String("text/plain"),
/// 								},
/// 							},
/// 						},
/// 						&agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs{
/// 							Resource: &agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs{
/// 								DisplayLabel:     pulumi.String("doc_example_bq"),
/// 								ModelDescription: pulumi.String("Sample doc BQ description"),
/// 								UseRag:           pulumi.Bool(false),
/// 								BigqueryResource: &agenticapplications.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceBigqueryResourceArgs{
/// 									BigqueryDataset: pulumi.All(bqDs.Project, bqDs.DatasetId).ApplyT(func(_args []interface{}) (string, error) {
/// 										project := _args[0].(string)
/// 										datasetId := _args[1].(string)
/// 										return fmt.Sprintf("projects/%v/datasets/%v", project, datasetId), nil
/// 									}).(pulumi.StringOutput),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				SlideGenerationOptions: &agenticapplications.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsArgs{
/// 					ExportFormat: pulumi.String("EXPORT_FORMAT_UNSPECIFIED"),
/// 					SlideExamples: agenticapplications.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleArray{
/// 						&agenticapplications.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleArgs{
/// 							Resource: &agenticapplications.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceArgs{
/// 								DisplayLabel:     pulumi.String("slide_example_raw"),
/// 								ModelDescription: pulumi.String("Sample slide raw description"),
/// 								UseRag:           pulumi.Bool(false),
/// 								RawFileResource: &agenticapplications.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResourceArgs{
/// 									FileTitle:   pulumi.String("slide.txt"),
/// 									FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 									MimeType:    pulumi.String("text/plain"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				VisualizationOptions: &agenticapplications.AnalystAgentPersonaArtifactsConfigVisualizationOptionsArgs{
/// 					VisualizationExamples: agenticapplications.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleArray{
/// 						&agenticapplications.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleArgs{
/// 							VisualizationType: pulumi.String("VISUALIZATION_TYPE_UNSPECIFIED"),
/// 							Resource: &agenticapplications.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceArgs{
/// 								DisplayLabel:     pulumi.String("viz_example_raw"),
/// 								ModelDescription: pulumi.String("Sample viz raw description"),
/// 								UseRag:           pulumi.Bool(false),
/// 								RawFileResource: &agenticapplications.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResourceArgs{
/// 									FileTitle:   pulumi.String("viz.txt"),
/// 									FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 									MimeType:    pulumi.String("text/plain"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ExternalDataSources: agenticapplications.AnalystAgentPersonaExternalDataSourceArray{
/// 				&agenticapplications.AnalystAgentPersonaExternalDataSourceArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			McpDataSources: agenticapplications.AnalystAgentPersonaMcpDataSourceArray{
/// 				&agenticapplications.AnalystAgentPersonaMcpDataSourceArgs{
/// 					ServerUrl:     pulumi.String("https://mcp.example.com"),
/// 					DisplayName:   pulumi.String("Sample MCP Source"),
/// 					Description:   pulumi.String("Sample MCP data source description"),
/// 					Enabled:       pulumi.Bool(true),
/// 					Prompt:        pulumi.String("Use this server for queries"),
/// 					ApiKeyName:    pulumi.String("x-api-key"),
/// 					ClientId:      pulumi.String("sample-client-id"),
/// 					OauthTokenUrl: pulumi.String("https://example.com/oauth/token"),
/// 				},
/// 			},
/// 			Resources: agenticapplications.AnalystAgentPersonaResourceArray{
/// 				&agenticapplications.AnalystAgentPersonaResourceArgs{
/// 					DisplayLabel:     pulumi.String("sample_raw_file_full"),
/// 					ModelDescription: pulumi.String("Resource model description"),
/// 					UseRag:           pulumi.Bool(false),
/// 					RawFileResource: &agenticapplications.AnalystAgentPersonaResourceRawFileResourceArgs{
/// 						FileTitle:   pulumi.String("financial_summary.txt"),
/// 						FileContent: pulumi.String("UTEgUmV2ZW51ZTogMTAwTQ=="),
/// 						MimeType:    pulumi.String("text/plain"),
/// 					},
/// 				},
/// 				&agenticapplications.AnalystAgentPersonaResourceArgs{
/// 					DisplayLabel:     pulumi.String("sample_bq_table_resource"),
/// 					ModelDescription: pulumi.String("BigQuery table resource description"),
/// 					UseRag:           pulumi.Bool(false),
/// 					BigqueryResource: &agenticapplications.AnalystAgentPersonaResourceBigqueryResourceArgs{
/// 						BigqueryTable: pulumi.All(bqDs.Project, bqDs.DatasetId, bqTbl.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 							project := _args[0].(string)
/// 							datasetId := _args[1].(string)
/// 							tableId := _args[2].(string)
/// 							return fmt.Sprintf("projects/%v/datasets/%v/tables/%v", project, datasetId, tableId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&agenticapplications.AnalystAgentPersonaResourceArgs{
/// 					DisplayLabel:     pulumi.String("sample_gcs_resource"),
/// 					ModelDescription: pulumi.String("GCS resource description"),
/// 					UseRag:           pulumi.Bool(false),
/// 					GoogleCloudStorageResource: &agenticapplications.AnalystAgentPersonaResourceGoogleCloudStorageResourceArgs{
/// 						GoogleCloudStorageObject: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 							bucketName := _args[0].(string)
/// 							objectName := _args[1].(string)
/// 							return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 						}).(pulumi.StringOutput),
/// 						FileExtensionRestrictions: pulumi.StringArray{
/// 							pulumi.String("txt"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Skills: agenticapplications.AnalystAgentPersonaSkillArray{
/// 				&agenticapplications.AnalystAgentPersonaSkillArgs{
/// 					SkillId:     pulumi.String("finance_analysis_skill"),
/// 					Description: pulumi.String("Skill for finance analysis"),
/// 					Content:     pulumi.String("# Finance Analysis\nAnalyze financial data."),
/// 					References: agenticapplications.AnalystAgentPersonaSkillReferenceArray{
/// 						&agenticapplications.AnalystAgentPersonaSkillReferenceArgs{
/// 							ReferenceId: pulumi.String("ref_1"),
/// 							Content:     pulumi.String("Reference content for skill"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tables: agenticapplications.AnalystAgentPersonaTableArray{
/// 				&agenticapplications.AnalystAgentPersonaTableArgs{
/// 					Name:        pulumi.String("sample_table"),
/// 					Description: pulumi.String("Sample table description"),
/// 					Columns: agenticapplications.AnalystAgentPersonaTableColumnArray{
/// 						&agenticapplications.AnalystAgentPersonaTableColumnArgs{
/// 							Name:        pulumi.String("column_1"),
/// 							Description: pulumi.String("First column description"),
/// 							DataType:    pulumi.String("STRING"),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_bigquery_dataset" "bq_ds" {
///   dataset_id = "dataset_id"
///   location   = "US"
/// }
/// resource "gcp_bigquery_table" "bq_tbl" {
///   dataset_id          = gcp_bigquery_dataset.bq_ds.dataset_id
///   table_id            = "table"
///   deletion_protection = false
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucketobject" "object" {
///   name    = "example_object.txt"
///   content = "Hello World"
///   bucket  = gcp_storage_bucket.bucket.name
/// }
/// resource "gcp_agenticapplications_analystagentpersona" "example" {
///   location                 = "us"
///   analyst_agent_persona_id = "full"
///   display_name             = "Full Test Analyst Persona"
///   display_description      = "Sample full analyst agent persona description"
///   customer_contexts        = ["Sample customer context for testing"]
///   model_description        = "Sample model description"
///   role                     = "ANALYST_ROLE_GENERIC_FINANCE_ANALYST"
///   artifact_examples {
///     resource = {
///       display_label     = "sample_raw_file"
///       model_description = "Sample artifact resource model description"
///       use_rag           = false
///       raw_file_resource = {
///         file_title   = "example_doc.txt"
///         file_content = "UTEgUmV2ZW51ZTogMTAwTQ=="
///         mime_type    = "text/plain"
///       }
///     }
///   }
///   artifact_examples {
///     resource = {
///       display_label     = "sample_bq_ds"
///       model_description = "Sample BQ dataset model description"
///       use_rag           = false
///       bigquery_resource = {
///         bigquery_dataset ="projects/${gcp_bigquery_dataset.bq_ds.project}/datasets/${gcp_bigquery_dataset.bq_ds.dataset_id}"
///       }
///     }
///   }
///   artifact_examples {
///     resource = {
///       display_label     = "sample_gcs"
///       model_description = "Sample GCS model description"
///       use_rag           = false
///       google_cloud_storage_resource = {
///         google_cloud_storage_object ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///         file_extension_restrictions = ["txt"]
///       }
///     }
///   }
///   artifacts_config = {
///     document_generation_options = {
///       export_format = "EXPORT_FORMAT_UNSPECIFIED"
///       document_examples = [{
///         "resource" = {
///           "displayLabel"     = "doc_example_raw"
///           "modelDescription" = "Sample doc raw description"
///           "useRag"           = false
///           "rawFileResource" = {
///             "fileTitle"   = "doc.txt"
///             "fileContent" = "UTEgUmV2ZW51ZTogMTAwTQ=="
///             "mimeType"    = "text/plain"
///           }
///         }
///         }, {
///         "resource" = {
///           "displayLabel"     = "doc_example_bq"
///           "modelDescription" = "Sample doc BQ description"
///           "useRag"           = false
///           "bigqueryResource" = {
///             "bigqueryDataset" ="projects/${gcp_bigquery_dataset.bq_ds.project}/datasets/${gcp_bigquery_dataset.bq_ds.dataset_id}"
///           }
///         }
///       }]
///     }
///     slide_generation_options = {
///       export_format = "EXPORT_FORMAT_UNSPECIFIED"
///       slide_examples = [{
///         "resource" = {
///           "displayLabel"     = "slide_example_raw"
///           "modelDescription" = "Sample slide raw description"
///           "useRag"           = false
///           "rawFileResource" = {
///             "fileTitle"   = "slide.txt"
///             "fileContent" = "UTEgUmV2ZW51ZTogMTAwTQ=="
///             "mimeType"    = "text/plain"
///           }
///         }
///       }]
///     }
///     visualization_options = {
///       visualization_examples = [{
///         "visualizationType" = "VISUALIZATION_TYPE_UNSPECIFIED"
///         "resource" = {
///           "displayLabel"     = "viz_example_raw"
///           "modelDescription" = "Sample viz raw description"
///           "useRag"           = false
///           "rawFileResource" = {
///             "fileTitle"   = "viz.txt"
///             "fileContent" = "UTEgUmV2ZW51ZTogMTAwTQ=="
///             "mimeType"    = "text/plain"
///           }
///         }
///       }]
///     }
///   }
///   external_data_sources {
///     enabled = true
///   }
///   mcp_data_sources {
///     server_url      = "https://mcp.example.com"
///     display_name    = "Sample MCP Source"
///     description     = "Sample MCP data source description"
///     enabled         = true
///     prompt          = "Use this server for queries"
///     api_key_name    = "x-api-key"
///     client_id       = "sample-client-id"
///     oauth_token_url = "https://example.com/oauth/token"
///   }
///   resources {
///     display_label     = "sample_raw_file_full"
///     model_description = "Resource model description"
///     use_rag           = false
///     raw_file_resource = {
///       file_title   = "financial_summary.txt"
///       file_content = "UTEgUmV2ZW51ZTogMTAwTQ=="
///       mime_type    = "text/plain"
///     }
///   }
///   resources {
///     display_label     = "sample_bq_table_resource"
///     model_description = "BigQuery table resource description"
///     use_rag           = false
///     bigquery_resource = {
///       bigquery_table ="projects/${gcp_bigquery_dataset.bq_ds.project}/datasets/${gcp_bigquery_dataset.bq_ds.dataset_id}/tables/${gcp_bigquery_table.bq_tbl.table_id}"
///     }
///   }
///   resources {
///     display_label     = "sample_gcs_resource"
///     model_description = "GCS resource description"
///     use_rag           = false
///     google_cloud_storage_resource = {
///       google_cloud_storage_object ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///       file_extension_restrictions = ["txt"]
///     }
///   }
///   skills {
///     skill_id    = "finance_analysis_skill"
///     description = "Skill for finance analysis"
///     content     = "# Finance Analysis\nAnalyze financial data."
///     references {
///       reference_id = "ref_1"
///       content      = "Reference content for skill"
///     }
///   }
///   tables {
///     name        = "sample_table"
///     description = "Sample table description"
///     columns {
///       name        = "column_1"
///       description = "First column description"
///       data_type   = "STRING"
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.agenticapplications.AnalystAgentPersona;
/// import com.pulumi.gcp.agenticapplications.AnalystAgentPersonaArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceBigqueryResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceBigqueryResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaExternalDataSourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaMcpDataSourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaResourceRawFileResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaResourceBigqueryResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaResourceGoogleCloudStorageResourceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaSkillArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaSkillReferenceArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaTableArgs;
/// import com.pulumi.gcp.agenticapplications.inputs.AnalystAgentPersonaTableColumnArgs;
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
///         var bqDs = new Dataset("bqDs", DatasetArgs.builder()
///             .datasetId("dataset_id")
///             .location("US")
///             .build());
///
///         var bqTbl = new Table("bqTbl", TableArgs.builder()
///             .datasetId(bqDs.datasetId())
///             .tableId("table")
///             .deletionProtection(false)
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("example_object.txt")
///             .content("Hello World")
///             .bucket(bucket.name())
///             .build());
///
///         var example = new AnalystAgentPersona("example", AnalystAgentPersonaArgs.builder()
///             .location("us")
///             .analystAgentPersonaId("full")
///             .displayName("Full Test Analyst Persona")
///             .displayDescription("Sample full analyst agent persona description")
///             .customerContexts("Sample customer context for testing")
///             .modelDescription("Sample model description")
///             .role("ANALYST_ROLE_GENERIC_FINANCE_ANALYST")
///             .artifactExamples(
///                 AnalystAgentPersonaArtifactExampleArgs.builder()
///                     .resource(AnalystAgentPersonaArtifactExampleResourceArgs.builder()
///                         .displayLabel("sample_raw_file")
///                         .modelDescription("Sample artifact resource model description")
///                         .useRag(false)
///                         .rawFileResource(AnalystAgentPersonaArtifactExampleResourceRawFileResourceArgs.builder()
///                             .fileTitle("example_doc.txt")
///                             .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                             .mimeType("text/plain")
///                             .build())
///                         .build())
///                     .build(),
///                 AnalystAgentPersonaArtifactExampleArgs.builder()
///                     .resource(AnalystAgentPersonaArtifactExampleResourceArgs.builder()
///                         .displayLabel("sample_bq_ds")
///                         .modelDescription("Sample BQ dataset model description")
///                         .useRag(false)
///                         .bigqueryResource(AnalystAgentPersonaArtifactExampleResourceBigqueryResourceArgs.builder()
///                             .bigqueryDataset(Output.tuple(bqDs.project(), bqDs.datasetId()).applyValue(values -> {
///                                 var project = values.t1;
///                                 var datasetId = values.t2;
///                                 return String.format("projects/%s/datasets/%s", project,datasetId);
///                             }))
///                             .build())
///                         .build())
///                     .build(),
///                 AnalystAgentPersonaArtifactExampleArgs.builder()
///                     .resource(AnalystAgentPersonaArtifactExampleResourceArgs.builder()
///                         .displayLabel("sample_gcs")
///                         .modelDescription("Sample GCS model description")
///                         .useRag(false)
///                         .googleCloudStorageResource(AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResourceArgs.builder()
///                             .googleCloudStorageObject(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                                 var bucketName = values.t1;
///                                 var objectName = values.t2;
///                                 return String.format("gs://%s/%s", bucketName,objectName);
///                             }))
///                             .fileExtensionRestrictions("txt")
///                             .build())
///                         .build())
///                     .build())
///             .artifactsConfig(AnalystAgentPersonaArtifactsConfigArgs.builder()
///                 .documentGenerationOptions(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsArgs.builder()
///                     .exportFormat("EXPORT_FORMAT_UNSPECIFIED")
///                     .documentExamples(
///                         AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs.builder()
///                             .resource(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs.builder()
///                                 .displayLabel("doc_example_raw")
///                                 .modelDescription("Sample doc raw description")
///                                 .useRag(false)
///                                 .rawFileResource(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceRawFileResourceArgs.builder()
///                                     .fileTitle("doc.txt")
///                                     .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                                     .mimeType("text/plain")
///                                     .build())
///                                 .build())
///                             .build(),
///                         AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleArgs.builder()
///                             .resource(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceArgs.builder()
///                                 .displayLabel("doc_example_bq")
///                                 .modelDescription("Sample doc BQ description")
///                                 .useRag(false)
///                                 .bigqueryResource(AnalystAgentPersonaArtifactsConfigDocumentGenerationOptionsDocumentExampleResourceBigqueryResourceArgs.builder()
///                                     .bigqueryDataset(Output.tuple(bqDs.project(), bqDs.datasetId()).applyValue(values -> {
///                                         var project = values.t1;
///                                         var datasetId = values.t2;
///                                         return String.format("projects/%s/datasets/%s", project,datasetId);
///                                     }))
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .slideGenerationOptions(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsArgs.builder()
///                     .exportFormat("EXPORT_FORMAT_UNSPECIFIED")
///                     .slideExamples(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleArgs.builder()
///                         .resource(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceArgs.builder()
///                             .displayLabel("slide_example_raw")
///                             .modelDescription("Sample slide raw description")
///                             .useRag(false)
///                             .rawFileResource(AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceRawFileResourceArgs.builder()
///                                 .fileTitle("slide.txt")
///                                 .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                                 .mimeType("text/plain")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .visualizationOptions(AnalystAgentPersonaArtifactsConfigVisualizationOptionsArgs.builder()
///                     .visualizationExamples(AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleArgs.builder()
///                         .visualizationType("VISUALIZATION_TYPE_UNSPECIFIED")
///                         .resource(AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceArgs.builder()
///                             .displayLabel("viz_example_raw")
///                             .modelDescription("Sample viz raw description")
///                             .useRag(false)
///                             .rawFileResource(AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResourceArgs.builder()
///                                 .fileTitle("viz.txt")
///                                 .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                                 .mimeType("text/plain")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .externalDataSources(AnalystAgentPersonaExternalDataSourceArgs.builder()
///                 .enabled(true)
///                 .build())
///             .mcpDataSources(AnalystAgentPersonaMcpDataSourceArgs.builder()
///                 .serverUrl("https://mcp.example.com")
///                 .displayName("Sample MCP Source")
///                 .description("Sample MCP data source description")
///                 .enabled(true)
///                 .prompt("Use this server for queries")
///                 .apiKeyName("x-api-key")
///                 .clientId("sample-client-id")
///                 .oauthTokenUrl("https://example.com/oauth/token")
///                 .build())
///             .resources(
///                 AnalystAgentPersonaResourceArgs.builder()
///                     .displayLabel("sample_raw_file_full")
///                     .modelDescription("Resource model description")
///                     .useRag(false)
///                     .rawFileResource(AnalystAgentPersonaResourceRawFileResourceArgs.builder()
///                         .fileTitle("financial_summary.txt")
///                         .fileContent("UTEgUmV2ZW51ZTogMTAwTQ==")
///                         .mimeType("text/plain")
///                         .build())
///                     .build(),
///                 AnalystAgentPersonaResourceArgs.builder()
///                     .displayLabel("sample_bq_table_resource")
///                     .modelDescription("BigQuery table resource description")
///                     .useRag(false)
///                     .bigqueryResource(AnalystAgentPersonaResourceBigqueryResourceArgs.builder()
///                         .bigqueryTable(Output.tuple(bqDs.project(), bqDs.datasetId(), bqTbl.tableId()).applyValue(values -> {
///                             var project = values.t1;
///                             var datasetId = values.t2;
///                             var tableId = values.t3;
///                             return String.format("projects/%s/datasets/%s/tables/%s", project,datasetId,tableId);
///                         }))
///                         .build())
///                     .build(),
///                 AnalystAgentPersonaResourceArgs.builder()
///                     .displayLabel("sample_gcs_resource")
///                     .modelDescription("GCS resource description")
///                     .useRag(false)
///                     .googleCloudStorageResource(AnalystAgentPersonaResourceGoogleCloudStorageResourceArgs.builder()
///                         .googleCloudStorageObject(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                             var bucketName = values.t1;
///                             var objectName = values.t2;
///                             return String.format("gs://%s/%s", bucketName,objectName);
///                         }))
///                         .fileExtensionRestrictions("txt")
///                         .build())
///                     .build())
///             .skills(AnalystAgentPersonaSkillArgs.builder()
///                 .skillId("finance_analysis_skill")
///                 .description("Skill for finance analysis")
///                 .content("""
/// # Finance Analysis
/// Analyze financial data.                """)
///                 .references(AnalystAgentPersonaSkillReferenceArgs.builder()
///                     .referenceId("ref_1")
///                     .content("Reference content for skill")
///                     .build())
///                 .build())
///             .tables(AnalystAgentPersonaTableArgs.builder()
///                 .name("sample_table")
///                 .description("Sample table description")
///                 .columns(AnalystAgentPersonaTableColumnArgs.builder()
///                     .name("column_1")
///                     .description("First column description")
///                     .dataType("STRING")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bqDs:
///     type: gcp:bigquery:Dataset
///     name: bq_ds
///     properties:
///       datasetId: dataset_id
///       location: US
///   bqTbl:
///     type: gcp:bigquery:Table
///     name: bq_tbl
///     properties:
///       datasetId: ${bqDs.datasetId}
///       tableId: table
///       deletionProtection: false
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: bucket
///       location: US
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: example_object.txt
///       content: Hello World
///       bucket: ${bucket.name}
///   example:
///     type: gcp:agenticapplications:AnalystAgentPersona
///     properties:
///       location: us
///       analystAgentPersonaId: full
///       displayName: Full Test Analyst Persona
///       displayDescription: Sample full analyst agent persona description
///       customerContexts:
///         - Sample customer context for testing
///       modelDescription: Sample model description
///       role: ANALYST_ROLE_GENERIC_FINANCE_ANALYST
///       artifactExamples:
///         - resource:
///             displayLabel: sample_raw_file
///             modelDescription: Sample artifact resource model description
///             useRag: false
///             rawFileResource:
///               fileTitle: example_doc.txt
///               fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///               mimeType: text/plain
///         - resource:
///             displayLabel: sample_bq_ds
///             modelDescription: Sample BQ dataset model description
///             useRag: false
///             bigqueryResource:
///               bigqueryDataset: projects/${bqDs.project}/datasets/${bqDs.datasetId}
///         - resource:
///             displayLabel: sample_gcs
///             modelDescription: Sample GCS model description
///             useRag: false
///             googleCloudStorageResource:
///               googleCloudStorageObject: gs://${bucket.name}/${object.name}
///               fileExtensionRestrictions:
///                 - txt
///       artifactsConfig:
///         documentGenerationOptions:
///           exportFormat: EXPORT_FORMAT_UNSPECIFIED
///           documentExamples:
///             - resource:
///                 displayLabel: doc_example_raw
///                 modelDescription: Sample doc raw description
///                 useRag: false
///                 rawFileResource:
///                   fileTitle: doc.txt
///                   fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///                   mimeType: text/plain
///             - resource:
///                 displayLabel: doc_example_bq
///                 modelDescription: Sample doc BQ description
///                 useRag: false
///                 bigqueryResource:
///                   bigqueryDataset: projects/${bqDs.project}/datasets/${bqDs.datasetId}
///         slideGenerationOptions:
///           exportFormat: EXPORT_FORMAT_UNSPECIFIED
///           slideExamples:
///             - resource:
///                 displayLabel: slide_example_raw
///                 modelDescription: Sample slide raw description
///                 useRag: false
///                 rawFileResource:
///                   fileTitle: slide.txt
///                   fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///                   mimeType: text/plain
///         visualizationOptions:
///           visualizationExamples:
///             - visualizationType: VISUALIZATION_TYPE_UNSPECIFIED
///               resource:
///                 displayLabel: viz_example_raw
///                 modelDescription: Sample viz raw description
///                 useRag: false
///                 rawFileResource:
///                   fileTitle: viz.txt
///                   fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///                   mimeType: text/plain
///       externalDataSources:
///         - enabled: true
///       mcpDataSources:
///         - serverUrl: https://mcp.example.com
///           displayName: Sample MCP Source
///           description: Sample MCP data source description
///           enabled: true
///           prompt: Use this server for queries
///           apiKeyName: x-api-key
///           clientId: sample-client-id
///           oauthTokenUrl: https://example.com/oauth/token
///       resources:
///         - displayLabel: sample_raw_file_full
///           modelDescription: Resource model description
///           useRag: false
///           rawFileResource:
///             fileTitle: financial_summary.txt
///             fileContent: UTEgUmV2ZW51ZTogMTAwTQ==
///             mimeType: text/plain
///         - displayLabel: sample_bq_table_resource
///           modelDescription: BigQuery table resource description
///           useRag: false
///           bigqueryResource:
///             bigqueryTable: projects/${bqDs.project}/datasets/${bqDs.datasetId}/tables/${bqTbl.tableId}
///         - displayLabel: sample_gcs_resource
///           modelDescription: GCS resource description
///           useRag: false
///           googleCloudStorageResource:
///             googleCloudStorageObject: gs://${bucket.name}/${object.name}
///             fileExtensionRestrictions:
///               - txt
///       skills:
///         - skillId: finance_analysis_skill
///           description: Skill for finance analysis
///           content: |-
///             # Finance Analysis
///             Analyze financial data.
///           references:
///             - referenceId: ref_1
///               content: Reference content for skill
///       tables:
///         - name: sample_table
///           description: Sample table description
///           columns:
///             - name: column_1
///               description: First column description
///               dataType: STRING
/// ```
///
///
/// ##   ## - Points to an f1 table to use.
///
/// - Expected Format:
/// - {group}.{table_name}
///
/// &lt;a name="nestedArtifactExamplesResourceGoogleCloudStorageResource"&gt;&lt;/a&gt;The `googleCloudStorageResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `googleCloudStorageObject` -
/// (Required)
/// The Google Cloud Storage object or folder.
/// Format: /
/// or: //
/// Note that to refer to a folder, it _must_ end in a slash.
///
/// &lt;a name="nestedArtifactExamplesResourceGoogleDriveResource"&gt;&lt;/a&gt;The `googleDriveResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `fileReference` -
/// (Optional)
/// Points to a drive file to use. May refer to workspace files or folders
/// as well.  If folder is specifically, all files in the folder
/// (recursively) are used.
/// Expected Format:
/// files/{file_id}
///
/// &lt;a name="nestedArtifactExamplesResourceRawFileResource"&gt;&lt;/a&gt;The `rawFileResource` block supports:
///
/// * `fileContent` -
/// (Required)
/// The raw file content.
///
/// * `fileTitle` -
/// (Required)
/// The title of the file.
///
/// * `mimeType` -
/// (Required)
/// The mime type of the file.
///
/// &lt;a name="nestedArtifactsConfig"&gt;&lt;/a&gt;The `artifactsConfig` block supports:
///
/// * `documentGenerationOptions` -
/// (Optional)
/// Options for document generation.
/// Structure is documented below.
///
/// * `slideGenerationOptions` -
/// (Optional)
/// Options for slide generation.
/// Structure is documented below.
///
/// * `visualizationOptions` -
/// (Optional)
/// Options for visualizations.
/// Structure is documented below.
///
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptions"&gt;&lt;/a&gt;The `documentGenerationOptions` block supports:
///
/// * `documentExamples` -
/// (Optional)
/// Examples for document generation.
/// Structure is documented below.
///
/// * `exportFormat` -
/// (Optional)
/// Format for document export.
/// Possible values:
/// PDF
/// DOCX
/// GOOGLE_DOCS
///
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamples"&gt;&lt;/a&gt;The `documentExamples` block supports:
///
/// * `resource` -
/// (Required)
/// Represents a resource that can be used by the Analyst Agent.
/// Structure is documented below.
///
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResource"&gt;&lt;/a&gt;The `resource` block supports:
///
/// * `bigqueryResource` -
/// (Optional)
/// Represents a BigQuery resource.
/// Structure is documented below.
///
/// * `displayLabel` -
/// (Optional)
/// A user-friendly name for this resource. This can be shown to the user
/// and used by the model.
///
/// * `f1Resource` -
/// (Optional)
/// - Represents an F1 resource.
/// Structure is documented below.
///
/// * `googleCloudStorageResource` -
/// (Optional)
/// Represents a Google Cloud Storage resource.
/// Structure is documented below.
///
/// * `googleDriveResource` -
/// (Optional)
/// Represents a Google Drive resource.
/// Structure is documented below.
///
/// * `modelDescription` -
/// (Optional)
/// A description of the resource. The model may use this, it will not be
/// shown to users.
///
/// * `rawFileResource` -
/// (Optional)
/// Represents a raw file resource.
/// Structure is documented below.
///
/// * `useRag` -
/// (Optional)
/// If true, use RAG to retrieve relevant information from the resources.
/// Must only be set for file-based resources.
///
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceBigqueryResource"&gt;&lt;/a&gt;The `bigqueryResource` block supports:
///
/// * `bigqueryDataset` -
/// (Optional)
/// Points to a bigquery dataset to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}
///
/// * `bigqueryTable` -
/// (Optional)
/// Points to a bigquery table to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
///
/// * `columnDescriptions` -
/// (Optional)
/// A map of column names to column descriptions for the bigquery_table.
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceF1Resource"&gt;&lt;/a&gt;The `f1Resource` block supports:
///
/// * `f1Table` -
/// (Optional)
/// ##   ## - Points to an f1 table to use.
///
/// - Expected Format:
/// - {group}.{table_name}
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleCloudStorageResource"&gt;&lt;/a&gt;The `googleCloudStorageResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `googleCloudStorageObject` -
/// (Required)
/// The Google Cloud Storage object or folder.
/// Format: /
/// or: //
/// Note that to refer to a folder, it _must_ end in a slash.
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceGoogleDriveResource"&gt;&lt;/a&gt;The `googleDriveResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `fileReference` -
/// (Optional)
/// Points to a drive file to use. May refer to workspace files or folders
/// as well.  If folder is specifically, all files in the folder
/// (recursively) are used.
/// Expected Format:
/// files/{file_id}
///
/// &lt;a name="nestedArtifactsConfigDocumentGenerationOptionsDocumentExamplesResourceRawFileResource"&gt;&lt;/a&gt;The `rawFileResource` block supports:
///
/// * `fileContent` -
/// (Required)
/// The raw file content.
///
/// * `fileTitle` -
/// (Required)
/// The title of the file.
///
/// * `mimeType` -
/// (Required)
/// The mime type of the file.
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptions"&gt;&lt;/a&gt;The `slideGenerationOptions` block supports:
///
/// * `exportFormat` -
/// (Optional)
/// Format for slide export.
/// Possible values:
/// PDF
/// PNG
/// PPTX
/// GOOGLE_SLIDES
///
/// * `slideExamples` -
/// (Optional)
/// Examples for slide generation.
/// Structure is documented below.
///
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamples"&gt;&lt;/a&gt;The `slideExamples` block supports:
///
/// * `resource` -
/// (Required)
/// Represents a resource that can be used by the Analyst Agent.
/// Structure is documented below.
///
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResource"&gt;&lt;/a&gt;The `resource` block supports:
///
/// * `bigqueryResource` -
/// (Optional)
/// Represents a BigQuery resource.
/// Structure is documented below.
///
/// * `displayLabel` -
/// (Optional)
/// A user-friendly name for this resource. This can be shown to the user
/// and used by the model.
///
/// * `f1Resource` -
/// (Optional)
/// - Represents an F1 resource.
/// Structure is documented below.
///
/// * `googleCloudStorageResource` -
/// (Optional)
/// Represents a Google Cloud Storage resource.
/// Structure is documented below.
///
/// * `googleDriveResource` -
/// (Optional)
/// Represents a Google Drive resource.
/// Structure is documented below.
///
/// * `modelDescription` -
/// (Optional)
/// A description of the resource. The model may use this, it will not be
/// shown to users.
///
/// * `rawFileResource` -
/// (Optional)
/// Represents a raw file resource.
/// Structure is documented below.
///
/// * `useRag` -
/// (Optional)
/// If true, use RAG to retrieve relevant information from the resources.
/// Must only be set for file-based resources.
///
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResourceBigqueryResource"&gt;&lt;/a&gt;The `bigqueryResource` block supports:
///
/// * `bigqueryDataset` -
/// (Optional)
/// Points to a bigquery dataset to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}
///
/// * `bigqueryTable` -
/// (Optional)
/// Points to a bigquery table to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
///
/// * `columnDescriptions` -
/// (Optional)
/// A map of column names to column descriptions for the bigquery_table.
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResourceF1Resource"&gt;&lt;/a&gt;The `f1Resource` block supports:
///
/// * `f1Table` -
/// (Optional)
/// ##   ## - Points to an f1 table to use.
///
/// - Expected Format:
/// - {group}.{table_name}
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleCloudStorageResource"&gt;&lt;/a&gt;The `googleCloudStorageResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `googleCloudStorageObject` -
/// (Required)
/// The Google Cloud Storage object or folder.
/// Format: /
/// or: //
/// Note that to refer to a folder, it _must_ end in a slash.
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResourceGoogleDriveResource"&gt;&lt;/a&gt;The `googleDriveResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `fileReference` -
/// (Optional)
/// Points to a drive file to use. May refer to workspace files or folders
/// as well.  If folder is specifically, all files in the folder
/// (recursively) are used.
/// Expected Format:
/// files/{file_id}
///
/// &lt;a name="nestedArtifactsConfigSlideGenerationOptionsSlideExamplesResourceRawFileResource"&gt;&lt;/a&gt;The `rawFileResource` block supports:
///
/// * `fileContent` -
/// (Required)
/// The raw file content.
///
/// * `fileTitle` -
/// (Required)
/// The title of the file.
///
/// * `mimeType` -
/// (Required)
/// The mime type of the file.
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptions"&gt;&lt;/a&gt;The `visualizationOptions` block supports:
///
/// * `visualizationExamples` -
/// (Optional)
/// Examples for visualizations.
/// Structure is documented below.
///
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamples"&gt;&lt;/a&gt;The `visualizationExamples` block supports:
///
/// * `resource` -
/// (Required)
/// Represents a resource that can be used by the Analyst Agent.
/// Structure is documented below.
///
/// * `visualizationType` -
/// (Required)
/// The type of the visualization (e.g. "Bar Chart", "Line Chart").
///
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResource"&gt;&lt;/a&gt;The `resource` block supports:
///
/// * `bigqueryResource` -
/// (Optional)
/// Represents a BigQuery resource.
/// Structure is documented below.
///
/// * `displayLabel` -
/// (Optional)
/// A user-friendly name for this resource. This can be shown to the user
/// and used by the model.
///
/// * `f1Resource` -
/// (Optional)
/// - Represents an F1 resource.
/// Structure is documented below.
///
/// * `googleCloudStorageResource` -
/// (Optional)
/// Represents a Google Cloud Storage resource.
/// Structure is documented below.
///
/// * `googleDriveResource` -
/// (Optional)
/// Represents a Google Drive resource.
/// Structure is documented below.
///
/// * `modelDescription` -
/// (Optional)
/// A description of the resource. The model may use this, it will not be
/// shown to users.
///
/// * `rawFileResource` -
/// (Optional)
/// Represents a raw file resource.
/// Structure is documented below.
///
/// * `useRag` -
/// (Optional)
/// If true, use RAG to retrieve relevant information from the resources.
/// Must only be set for file-based resources.
///
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResourceBigqueryResource"&gt;&lt;/a&gt;The `bigqueryResource` block supports:
///
/// * `bigqueryDataset` -
/// (Optional)
/// Points to a bigquery dataset to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}
///
/// * `bigqueryTable` -
/// (Optional)
/// Points to a bigquery table to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
///
/// * `columnDescriptions` -
/// (Optional)
/// A map of column names to column descriptions for the bigquery_table.
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResourceF1Resource"&gt;&lt;/a&gt;The `f1Resource` block supports:
///
/// * `f1Table` -
/// (Optional)
/// ##   ## - Points to an f1 table to use.
///
/// - Expected Format:
/// - {group}.{table_name}
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleCloudStorageResource"&gt;&lt;/a&gt;The `googleCloudStorageResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `googleCloudStorageObject` -
/// (Required)
/// The Google Cloud Storage object or folder.
/// Format: /
/// or: //
/// Note that to refer to a folder, it _must_ end in a slash.
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResourceGoogleDriveResource"&gt;&lt;/a&gt;The `googleDriveResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `fileReference` -
/// (Optional)
/// Points to a drive file to use. May refer to workspace files or folders
/// as well.  If folder is specifically, all files in the folder
/// (recursively) are used.
/// Expected Format:
/// files/{file_id}
///
/// &lt;a name="nestedArtifactsConfigVisualizationOptionsVisualizationExamplesResourceRawFileResource"&gt;&lt;/a&gt;The `rawFileResource` block supports:
///
/// * `fileContent` -
/// (Required)
/// The raw file content.
///
/// * `fileTitle` -
/// (Required)
/// The title of the file.
///
/// * `mimeType` -
/// (Required)
/// The mime type of the file.
///
/// &lt;a name="nestedExternalDataSources"&gt;&lt;/a&gt;The `externalDataSources` block supports:
///
/// * `airQuality` -
/// (Optional)
/// Configurations for the AirQuality external data source.
///
/// * `bureauLaborStatistics` -
/// (Optional)
/// Configurations for the BureauLaborStatistics external data source.
///
/// * `coindesk` -
/// (Optional)
/// Configurations for the Coindesk external data source.
///
/// * `enabled` -
/// (Required)
/// Whether this external data source is enabled for the current analysis.
///
/// * `finnhub` -
/// (Optional)
/// Configurations for the Finnhub external data source.
///
/// * `fred` -
/// (Optional)
/// Configurations for the Fred external data source.
///
/// * `secEdgar` -
/// (Optional)
/// Configurations for the SecEdgar external data source.
///
/// * `selectionName` -
/// (Output)
/// The name of the external data source, used for custom org policy
/// evaluation. Output-only (populated automatically with the selection case
/// name).
///
/// * `treasurySecuritiesAuctions` -
/// (Optional)
/// Configurations for the TreasurySecuritiesAuctions external data source.
///
/// * `usda` -
/// (Optional)
/// Configurations for the USDA external data source.
///
/// &lt;a name="nestedMcpDataSources"&gt;&lt;/a&gt;The `mcpDataSources` block supports:
///
/// * `apiKey` -
/// (Optional)
/// Input only. The API key of the MCP server.
/// **Note**: This property is sensitive and will not be displayed in the plan.
///
/// * `apiKeyName` -
/// (Optional)
/// The API key parameter name.
///
/// * `clientId` -
/// (Optional)
/// The client ID for authentication.
///
/// * `clientSecret` -
/// (Optional)
/// Input only. The client secret for authentication.
/// **Note**: This property is sensitive and will not be displayed in the plan.
///
/// * `description` -
/// (Required)
/// The description of the MCP agent.
///
/// * `displayName` -
/// (Required)
/// The display name of the MCP server. Must be no longer than 63 characters
/// and can only contain letters, numbers, spaces, underscores, and hyphens.
///
/// * `enabled` -
/// (Required)
/// Whether this external data source is enabled for the current analysis.
///
/// * `oauthTokenUrl` -
/// (Optional)
/// The URL to use for retrieving the OAuth token.
///
/// * `prompt` -
/// (Optional)
/// The custom prompt for the MCP agent.
///
/// * `serverUrl` -
/// (Required)
/// The URL of the MCP server.
///
/// &lt;a name="nestedResources"&gt;&lt;/a&gt;The `resources` block supports:
///
/// * `bigqueryResource` -
/// (Optional)
/// Represents a BigQuery resource.
/// Structure is documented below.
///
/// * `displayLabel` -
/// (Optional)
/// A user-friendly name for this resource. This can be shown to the user
/// and used by the model.
///
/// * `f1Resource` -
/// (Optional)
/// - Represents an F1 resource.
/// Structure is documented below.
///
/// * `googleCloudStorageResource` -
/// (Optional)
/// Represents a Google Cloud Storage resource.
/// Structure is documented below.
///
/// * `googleDriveResource` -
/// (Optional)
/// Represents a Google Drive resource.
/// Structure is documented below.
///
/// * `modelDescription` -
/// (Optional)
/// A description of the resource. The model may use this, it will not be
/// shown to users.
///
/// * `rawFileResource` -
/// (Optional)
/// Represents a raw file resource.
/// Structure is documented below.
///
/// * `useRag` -
/// (Optional)
/// If true, use RAG to retrieve relevant information from the resources.
/// Must only be set for file-based resources.
///
///
/// &lt;a name="nestedResourcesBigqueryResource"&gt;&lt;/a&gt;The `bigqueryResource` block supports:
///
/// * `bigqueryDataset` -
/// (Optional)
/// Points to a bigquery dataset to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}
///
/// * `bigqueryTable` -
/// (Optional)
/// Points to a bigquery table to use.
/// Expected Format:
/// projects/{project_id_or_number}/datasets/{dataset_id}/tables/{table_id}
///
/// * `columnDescriptions` -
/// (Optional)
/// A map of column names to column descriptions for the bigquery_table.
///
/// &lt;a name="nestedResourcesF1Resource"&gt;&lt;/a&gt;The `f1Resource` block supports:
///
/// * `f1Table` -
/// (Optional)
/// ##   ## - Points to an f1 table to use.
///
/// - Expected Format:
/// - {group}.{table_name}
///
/// &lt;a name="nestedResourcesGoogleCloudStorageResource"&gt;&lt;/a&gt;The `googleCloudStorageResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `googleCloudStorageObject` -
/// (Required)
/// The Google Cloud Storage object or folder.
/// Format: /
/// or: //
/// Note that to refer to a folder, it _must_ end in a slash.
///
/// &lt;a name="nestedResourcesGoogleDriveResource"&gt;&lt;/a&gt;The `googleDriveResource` block supports:
///
/// * `fileExtensionRestrictions` -
/// (Optional)
/// If non-empty, only files with these extensions are included when
/// expanding the resource.  If empty, all files are included.
///
/// * `fileReference` -
/// (Optional)
/// Points to a drive file to use. May refer to workspace files or folders
/// as well.  If folder is specifically, all files in the folder
/// (recursively) are used.
/// Expected Format:
/// files/{file_id}
///
/// &lt;a name="nestedResourcesRawFileResource"&gt;&lt;/a&gt;The `rawFileResource` block supports:
///
/// * `fileContent` -
/// (Required)
/// The raw file content.
///
/// * `fileTitle` -
/// (Required)
/// The title of the file.
///
/// * `mimeType` -
/// (Required)
/// The mime type of the file.
///
/// &lt;a name="nestedSkills"&gt;&lt;/a&gt;The `skills` block supports:
///
/// * `content` -
/// (Required)
/// The markdown text content of the skill.
///
/// * `description` -
/// (Optional)
/// The description of the skill.
///
/// * `references` -
/// (Optional)
/// References for the skill.
/// Structure is documented below.
///
/// * `skillId` -
/// (Required)
/// The identifier of the skill. Use a descriptive string that reflects the
/// skill's function.
///
///
/// &lt;a name="nestedSkillsReferences"&gt;&lt;/a&gt;The `references` block supports:
///
/// * `content` -
/// (Required)
/// The content of the reference.
///
/// * `referenceId` -
/// (Required)
/// The identifier of the reference within the skill. Use a descriptive
/// string that reflects the reference's function.
///
/// &lt;a name="nestedTables"&gt;&lt;/a&gt;The `tables` block supports:
///
/// * `columns` -
/// (Optional)
/// The columns in the table.
/// Structure is documented below.
///
/// * `description` -
/// (Optional)
/// The description of the table.
///
/// * `name` -
/// (Required)
/// The name of the table.
///
///
/// &lt;a name="nestedTablesColumns"&gt;&lt;/a&gt;The `columns` block supports:
///
/// * `dataType` -
/// (Required)
/// The data type of the column. This should be a GoogleSQL data type.
/// Parameterized types such as PROTO, ENUM, ARRAY, STRUCT&lt;...&gt;, and
/// RANGE are not supported.
///
/// * `description` -
/// (Optional)
/// The description of the column.
///
/// * `name` -
/// (Required)
/// The name of the column.
///
/// ## Import
///
/// AnalystAgentPersona can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/analystAgentPersonas/{{analyst_agent_persona_id}}`
/// * `{{project}}/{{location}}/{{analyst_agent_persona_id}}`
/// * `{{location}}/{{analyst_agent_persona_id}}`
///
///
/// When using the `pulumi import` command, AnalystAgentPersona can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:agenticapplications/analystAgentPersona:AnalystAgentPersona default projects/{{project}}/locations/{{location}}/analystAgentPersonas/{{analyst_agent_persona_id}}
/// $ pulumi import gcp:agenticapplications/analystAgentPersona:AnalystAgentPersona default {{project}}/{{location}}/{{analyst_agent_persona_id}}
/// $ pulumi import gcp:agenticapplications/analystAgentPersona:AnalystAgentPersona default {{location}}/{{analyst_agent_persona_id}}
/// ```
class AnalystAgentPersona extends pulumi.CustomResource {
  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// analystAgentPersonaId from the methodSignature of Create RPC
  late final pulumi.Output<String> analystAgentPersonaId;
  /// The output artifact examples to be used by the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> artifactExamples;
  /// Configuration for artifacts generated by the analyst agent.
  /// Structure is documented below.
  late final pulumi.Output<AnalystAgentPersonaArtifactsConfig?> artifactsConfig;
  /// Create time stamp.
  late final pulumi.Output<String> createTime;
  /// The customer-specific context to be used by the agent.
  late final pulumi.Output<List<String>?> customerContexts;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the persona, shown to users.
  late final pulumi.Output<String?> displayDescription;
  /// The display name of the persona, shown to users.
  late final pulumi.Output<String> displayName;
  /// The external data source selections to be used by the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> externalDataSources;
  /// The Gemini Enterprise Engine ID associated with this persona.
  /// If set, any requests coming from this GE Engine will be routed to this
  /// persona.
  /// If not set, requests from GE will only be routed to this persona if its
  /// name ends in "/default".
  late final pulumi.Output<String?> geminiEnterpriseEngine;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The MCP data source selections to be used by the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> mcpDataSources;
  /// The description of the persona review, used by the model.
  late final pulumi.Output<String?> modelDescription;
  /// Identifier. The resource name of the analyst agent persona.
  /// Format:
  /// projects/{project}/locations/{location}/analystAgentPersonas/{analyst_agent_persona}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resources to be used by the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> resources;
  /// Possible values:
  /// ANALYST_ROLE_GENERIC_FINANCE_ANALYST
  /// ANALYST_ROLE_CORPORATE_FINANCE_ANALYST
  /// ANALYST_ROLE_CROSS_ASSET_DERIVATIVES_STRATEGIST
  /// ANALYST_ROLE_KYC_ANALYST
  /// ANALYST_ROLE_SALES_TRADER
  /// ANALYST_ROLE_QUANT_ANALYST
  /// ANALYST_ROLE_EXCHANGE_MANAGER
  /// ANALYST_ROLE_PORTFOLIO_MANAGER
  /// ANALYST_ROLE_WEALTH_MANAGER
  /// ANALYST_ROLE_INSTITUTIONAL_PORTFOLIO_STRATEGIST
  /// ANALYST_ROLE_MNA_EXECUTION_ANALYST
  /// ANALYST_ROLE_ECM_ORIGINATION_STRATEGIST
  /// ANALYST_ROLE_LEVERAGED_FINANCE_SPECIALIST
  /// ANALYST_ROLE_INVESTMENT_RESEARCH_ANALYST
  /// ANALYST_ROLE_CORPORATE_BANKING_ANALYST
  /// ANALYST_ROLE_CREDIT_RISK_STRATEGIST
  /// ANALYST_ROLE_BEHAVIORAL_FINANCIAL_STRATEGIST
  /// ANALYST_ROLE_FUND_ACCOUNTANT
  /// ANALYST_ROLE_MODEL_VALIDATION_AUDITOR
  /// ANALYST_ROLE_PRIVATE_EQUITY_SPECIALIST
  /// ANALYST_ROLE_TREASURY_ANALYST
  /// ANALYST_ROLE_VENTURE_CAPITAL_ANALYST
  /// ANALYST_ROLE_AML_INVESTIGATOR
  /// ANALYST_ROLE_DUE_DILIGENCE_ANALYST
  /// ANALYST_ROLE_INSURANCE_CLAIMS_ANALYST
  /// ANALYST_ROLE_SPECIALTY_LIABILITY_UNDERWRITER
  /// ANALYST_ROLE_CATASTROPHE_EXPOSURE_MODELER
  late final pulumi.Output<String?> role;
  /// Skills for the agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> skills;
  /// Schema overrides for bigquery tables. Used to override the schema of a
  /// table in the customer's database, e.g. to provide additional context to the
  /// agent.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> tables;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AnalystAgentPersona].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalystAgentPersona]. {@macro pulumi_agenticapplications_analyst_agent_persona_analyst_agent_persona_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalystAgentPersona(
    String name, {
    AnalystAgentPersonaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agenticapplications/analystAgentPersona:AnalystAgentPersona',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analystAgentPersonaId = registerOutput<String>('analystAgentPersonaId');
    artifactExamples = registerOutput<List<Map<String, dynamic>>?>('artifactExamples');
    artifactsConfig = registerOutput<AnalystAgentPersonaArtifactsConfig?>('artifactsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalystAgentPersonaArtifactsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    customerContexts = registerOutput<List<String>?>('customerContexts');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayDescription = registerOutput<String?>('displayDescription');
    displayName = registerOutput<String>('displayName');
    externalDataSources = registerOutput<List<Map<String, dynamic>>?>('externalDataSources');
    geminiEnterpriseEngine = registerOutput<String?>('geminiEnterpriseEngine');
    location = registerOutput<String>('location');
    mcpDataSources = registerOutput<List<Map<String, dynamic>>?>('mcpDataSources');
    modelDescription = registerOutput<String?>('modelDescription');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resources = registerOutput<List<Map<String, dynamic>>?>('resources');
    role = registerOutput<String?>('role');
    skills = registerOutput<List<Map<String, dynamic>>?>('skills');
    tables = registerOutput<List<Map<String, dynamic>>?>('tables');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AnalystAgentPersona] resource's state with the given [name] and [id].
  static AnalystAgentPersona get(
    String name,
    pulumi.Input<String> id, {
    AnalystAgentPersonaState? state,
  }) {
    return AnalystAgentPersona._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalystAgentPersona._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:agenticapplications/analystAgentPersona:AnalystAgentPersona',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analystAgentPersonaId = registerOutput<String>('analystAgentPersonaId');
    artifactExamples = registerOutput<List<Map<String, dynamic>>?>('artifactExamples');
    artifactsConfig = registerOutput<AnalystAgentPersonaArtifactsConfig?>('artifactsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalystAgentPersonaArtifactsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    customerContexts = registerOutput<List<String>?>('customerContexts');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayDescription = registerOutput<String?>('displayDescription');
    displayName = registerOutput<String>('displayName');
    externalDataSources = registerOutput<List<Map<String, dynamic>>?>('externalDataSources');
    geminiEnterpriseEngine = registerOutput<String?>('geminiEnterpriseEngine');
    location = registerOutput<String>('location');
    mcpDataSources = registerOutput<List<Map<String, dynamic>>?>('mcpDataSources');
    modelDescription = registerOutput<String?>('modelDescription');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resources = registerOutput<List<Map<String, dynamic>>?>('resources');
    role = registerOutput<String?>('role');
    skills = registerOutput<List<Map<String, dynamic>>?>('skills');
    tables = registerOutput<List<Map<String, dynamic>>?>('tables');
    updateTime = registerOutput<String>('updateTime');
  }
}
