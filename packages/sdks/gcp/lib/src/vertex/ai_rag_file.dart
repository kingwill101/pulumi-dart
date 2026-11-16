import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_args.dart';
import 'ai_rag_file_file_status.dart';
import 'ai_rag_file_gcs_source.dart';
import 'ai_rag_file_google_drive_source.dart';
import 'ai_rag_file_rag_file_parsing_config.dart';
import 'ai_rag_file_rag_file_transformation_config.dart';
import 'ai_rag_file_state.dart';

/// A RagFile is a single file that has been imported into a Vertex AI RAG Engine
/// RagCorpus, where it is parsed, chunked, embedded, and indexed.
///
/// Each `gcp.vertex.AiRagFile` imports exactly one file from either
/// Cloud Storage or Google Drive using the `ragFiles:import` method.
///
/// &gt; **Note:** The RAG Engine service agent
/// (`service-PROJECT_NUMBER@gcp-sa-vertex-rag.iam.gserviceaccount.com`) must be
/// able to read the source file. If the source file content already exists in the
/// RagCorpus, the import is skipped by the API and resource creation fails.
///
///
/// To get more information about RagFile, see:
///
/// * [API documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/reference/rest/v1/projects.locations.ragCorpora.ragFiles)
/// * How-to Guides
/// * [Manage your RAG files](https://docs.cloud.google.com/gemini-enterprise-agent-platform/build/rag-engine/manage-your-rag-corpus)
///
///
/// ## Example Usage
///
/// ### Vertex Ai Rag File Gcs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const ragCorpus = new gcp.vertex.AiRagCorpus("rag_corpus", {
///     displayName: "rag-corpus-file",
///     region: "europe-west4",
///     vectorDbConfig: {
///         ragManagedDb: {
///             knn: {},
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-test-rag-file",
///     location: "EUROPE-WEST4",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const file = new gcp.storage.BucketObject("file", {
///     name: "example.txt",
///     bucket: bucket.name,
///     content: "Vertex AI RAG Engine lets large language models retrieve information from your own documents.",
/// });
/// // The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// // access after the RagCorpus exists.
/// const ragServiceAgent = new gcp.storage.BucketIAMMember("rag_service_agent", {
///     bucket: bucket.name,
///     role: "roles/storage.objectViewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [ragCorpus],
/// });
/// const example = new gcp.vertex.AiRagFile("example", {
///     region: "europe-west4",
///     ragCorpus: ragCorpus.name,
///     gcsSource: {
///         uris: pulumi.interpolate`gs://${bucket.name}/${file.name}`,
///     },
/// }, {
///     dependsOn: [ragServiceAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// rag_corpus = gcp.vertex.AiRagCorpus("rag_corpus",
///     display_name="rag-corpus-file",
///     region="europe-west4",
///     vector_db_config={
///         "rag_managed_db": {
///             "knn": {},
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-test-rag-file",
///     location="EUROPE-WEST4",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// file = gcp.storage.BucketObject("file",
///     name="example.txt",
///     bucket=bucket.name,
///     content="Vertex AI RAG Engine lets large language models retrieve information from your own documents.")
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// rag_service_agent = gcp.storage.BucketIAMMember("rag_service_agent",
///     bucket=bucket.name,
///     role="roles/storage.objectViewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[rag_corpus]))
/// example = gcp.vertex.AiRagFile("example",
///     region="europe-west4",
///     rag_corpus=rag_corpus.name,
///     gcs_source={
///         "uris": pulumi.Output.all(
///             bucketName=bucket.name,
///             fileName=file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['fileName']}")
/// ,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[rag_service_agent]))
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
///     var ragCorpus = new Gcp.Vertex.AiRagCorpus("rag_corpus", new()
///     {
///         DisplayName = "rag-corpus-file",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             RagManagedDb = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs
///             {
///                 Knn = null,
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-test-rag-file",
///         Location = "EUROPE-WEST4",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var file = new Gcp.Storage.BucketObject("file", new()
///     {
///         Name = "example.txt",
///         Bucket = bucket.Name,
///         Content = "Vertex AI RAG Engine lets large language models retrieve information from your own documents.",
///     });
///
///     // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///     // access after the RagCorpus exists.
///     var ragServiceAgent = new Gcp.Storage.BucketIAMMember("rag_service_agent", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectViewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragCorpus,
///         },
///     });
///
///     var example = new Gcp.Vertex.AiRagFile("example", new()
///     {
///         Region = "europe-west4",
///         RagCorpus = ragCorpus.Name,
///         GcsSource = new Gcp.Vertex.Inputs.AiRagFileGcsSourceArgs
///         {
///             Uris = Output.Tuple(bucket.Name, file.Name).Apply(values =>
///             {
///                 var bucketName = values.Item1;
///                 var fileName = values.Item2;
///                 return $"gs://{bucketName}/{fileName}";
///             }),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragServiceAgent,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ragCorpus, err := vertex.NewAiRagCorpus(ctx, "rag_corpus", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-file"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				RagManagedDb: &vertex.AiRagCorpusVectorDbConfigRagManagedDbArgs{
/// 					Knn: &vertex.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs{},
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-rag-file"),
/// 			Location:                 pulumi.String("EUROPE-WEST4"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		file, err := storage.NewBucketObject(ctx, "file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("example.txt"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("Vertex AI RAG Engine lets large language models retrieve information from your own documents."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// 		// access after the RagCorpus exists.
/// 		ragServiceAgent, err := storage.NewBucketIAMMember(ctx, "rag_service_agent", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectViewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragCorpus,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagFile(ctx, "example", &vertex.AiRagFileArgs{
/// 			Region:    pulumi.String("europe-west4"),
/// 			RagCorpus: ragCorpus.Name,
/// 			GcsSource: &vertex.AiRagFileGcsSourceArgs{
/// 				Uris: pulumi.All(bucket.Name, file.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucketName := _args[0].(string)
/// 					fileName := _args[1].(string)
/// 					return fmt.Sprintf("gs://%v/%v", bucketName, fileName), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragServiceAgent,
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
/// resource "gcp_vertex_ai_rag_file" "example" {
///   depends_on = [gcp_storage_bucket_i_a_m_member.rag_service_agent]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region     = "europe-west4"
///   rag_corpus = gcp_vertex_ai_rag_corpus.rag_corpus.name
///   gcs_source = {
///     uris ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.file.name}"
///   }
/// }
/// resource "gcp_vertex_ai_rag_corpus" "rag_corpus" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-file"
///   region       = "europe-west4"
///   vector_db_config = {
///     rag_managed_db = {
///       knn = {}
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "tf-test-rag-file"
///   location                    = "EUROPE-WEST4"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucket_object" "file" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name    = "example.txt"
///   bucket  = gcp_storage_bucket.bucket.name
///   content = "Vertex AI RAG Engine lets large language models retrieve information from your own documents."
/// }
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// resource "gcp_storage_bucket_i_a_m_member" "rag_service_agent" {
///   depends_on = [gcp_vertex_ai_rag_corpus.rag_corpus]
///   lifecycle {
///     create_before_destroy = true
///   }
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectViewer"
///   member ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiRagFile;
/// import com.pulumi.gcp.vertex.AiRagFileArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileGcsSourceArgs;
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
///         var ragCorpus = new AiRagCorpus("ragCorpus", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-file")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .ragManagedDb(AiRagCorpusVectorDbConfigRagManagedDbArgs.builder()
///                     .knn(AiRagCorpusVectorDbConfigRagManagedDbKnnArgs.builder()
///                         .build())
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("tf-test-rag-file")
///             .location("EUROPE-WEST4")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var file = new BucketObject("file", BucketObjectArgs.builder()
///             .name("example.txt")
///             .bucket(bucket.name())
///             .content("Vertex AI RAG Engine lets large language models retrieve information from your own documents.")
///             .build());
///
///         // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///         // access after the RagCorpus exists.
///         var ragServiceAgent = new BucketIAMMember("ragServiceAgent", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectViewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragCorpus)
///                 .build());
///
///         var example = new AiRagFile("example", AiRagFileArgs.builder()
///             .region("europe-west4")
///             .ragCorpus(ragCorpus.name())
///             .gcsSource(AiRagFileGcsSourceArgs.builder()
///                 .uris(Output.tuple(bucket.name(), file.name()).applyValue(values -> {
///                     var bucketName = values.t1;
///                     var fileName = values.t2;
///                     return String.format("gs://%s/%s", bucketName,fileName);
///                 }))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragServiceAgent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagFile
///     properties:
///       region: europe-west4
///       ragCorpus: ${ragCorpus.name}
///       gcsSource:
///         uris: gs://${bucket.name}/${file.name}
///     options:
///       dependsOn:
///         - ${ragServiceAgent}
///   ragCorpus:
///     type: gcp:vertex:AiRagCorpus
///     name: rag_corpus
///     properties:
///       displayName: rag-corpus-file
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           knn: {}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-rag-file
///       location: EUROPE-WEST4
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   file:
///     type: gcp:storage:BucketObject
///     properties:
///       name: example.txt
///       bucket: ${bucket.name}
///       content: Vertex AI RAG Engine lets large language models retrieve information from your own documents.
///   # The RAG Engine service agent is created on first use of RAG Engine, so grant it
///   # access after the RagCorpus exists.
///   ragServiceAgent:
///     type: gcp:storage:BucketIAMMember
///     name: rag_service_agent
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${ragCorpus}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Rag File Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const ragCorpus = new gcp.vertex.AiRagCorpus("rag_corpus", {
///     displayName: "rag-corpus-file-full",
///     region: "europe-west4",
///     vectorDbConfig: {
///         ragManagedDb: {
///             knn: {},
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-test-rag-file-full",
///     location: "EUROPE-WEST4",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const file = new gcp.storage.BucketObject("file", {
///     name: "example.txt",
///     bucket: bucket.name,
///     content: "Vertex AI RAG Engine lets large language models retrieve information from your own documents.",
/// });
/// // The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// // access after the RagCorpus exists.
/// const ragServiceAgent = new gcp.storage.BucketIAMMember("rag_service_agent", {
///     bucket: bucket.name,
///     role: "roles/storage.objectViewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [ragCorpus],
/// });
/// const example = new gcp.vertex.AiRagFile("example", {
///     region: "europe-west4",
///     ragCorpus: ragCorpus.name,
///     gcsSource: {
///         uris: pulumi.interpolate`gs://${bucket.name}/${file.name}`,
///     },
///     ragFileParsingConfig: {
///         llmParser: {
///             modelName: project.then(project => `projects/${project.projectId}/locations/europe-west4/publishers/google/models/gemini-2.5-flash`),
///             maxParsingRequestsPerMin: 100,
///             customParsingPrompt: "Extract the text content of the document.",
///         },
///     },
///     ragFileTransformationConfig: {
///         ragFileChunkingConfig: {
///             fixedLengthChunking: {
///                 chunkSize: 512,
///                 chunkOverlap: 100,
///             },
///         },
///     },
///     maxEmbeddingRequestsPerMin: 500,
/// }, {
///     dependsOn: [ragServiceAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// rag_corpus = gcp.vertex.AiRagCorpus("rag_corpus",
///     display_name="rag-corpus-file-full",
///     region="europe-west4",
///     vector_db_config={
///         "rag_managed_db": {
///             "knn": {},
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-test-rag-file-full",
///     location="EUROPE-WEST4",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// file = gcp.storage.BucketObject("file",
///     name="example.txt",
///     bucket=bucket.name,
///     content="Vertex AI RAG Engine lets large language models retrieve information from your own documents.")
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// rag_service_agent = gcp.storage.BucketIAMMember("rag_service_agent",
///     bucket=bucket.name,
///     role="roles/storage.objectViewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[rag_corpus]))
/// example = gcp.vertex.AiRagFile("example",
///     region="europe-west4",
///     rag_corpus=rag_corpus.name,
///     gcs_source={
///         "uris": pulumi.Output.all(
///             bucketName=bucket.name,
///             fileName=file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['fileName']}")
/// ,
///     },
///     rag_file_parsing_config={
///         "llm_parser": {
///             "model_name": f"projects/{project.project_id}/locations/europe-west4/publishers/google/models/gemini-2.5-flash",
///             "max_parsing_requests_per_min": 100,
///             "custom_parsing_prompt": "Extract the text content of the document.",
///         },
///     },
///     rag_file_transformation_config={
///         "rag_file_chunking_config": {
///             "fixed_length_chunking": {
///                 "chunk_size": 512,
///                 "chunk_overlap": 100,
///             },
///         },
///     },
///     max_embedding_requests_per_min=500,
///     opts = pulumi.ResourceOptions(depends_on=[rag_service_agent]))
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
///     var ragCorpus = new Gcp.Vertex.AiRagCorpus("rag_corpus", new()
///     {
///         DisplayName = "rag-corpus-file-full",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             RagManagedDb = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs
///             {
///                 Knn = null,
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-test-rag-file-full",
///         Location = "EUROPE-WEST4",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var file = new Gcp.Storage.BucketObject("file", new()
///     {
///         Name = "example.txt",
///         Bucket = bucket.Name,
///         Content = "Vertex AI RAG Engine lets large language models retrieve information from your own documents.",
///     });
///
///     // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///     // access after the RagCorpus exists.
///     var ragServiceAgent = new Gcp.Storage.BucketIAMMember("rag_service_agent", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectViewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragCorpus,
///         },
///     });
///
///     var example = new Gcp.Vertex.AiRagFile("example", new()
///     {
///         Region = "europe-west4",
///         RagCorpus = ragCorpus.Name,
///         GcsSource = new Gcp.Vertex.Inputs.AiRagFileGcsSourceArgs
///         {
///             Uris = Output.Tuple(bucket.Name, file.Name).Apply(values =>
///             {
///                 var bucketName = values.Item1;
///                 var fileName = values.Item2;
///                 return $"gs://{bucketName}/{fileName}";
///             }),
///         },
///         RagFileParsingConfig = new Gcp.Vertex.Inputs.AiRagFileRagFileParsingConfigArgs
///         {
///             LlmParser = new Gcp.Vertex.Inputs.AiRagFileRagFileParsingConfigLlmParserArgs
///             {
///                 ModelName = $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/europe-west4/publishers/google/models/gemini-2.5-flash",
///                 MaxParsingRequestsPerMin = 100,
///                 CustomParsingPrompt = "Extract the text content of the document.",
///             },
///         },
///         RagFileTransformationConfig = new Gcp.Vertex.Inputs.AiRagFileRagFileTransformationConfigArgs
///         {
///             RagFileChunkingConfig = new Gcp.Vertex.Inputs.AiRagFileRagFileTransformationConfigRagFileChunkingConfigArgs
///             {
///                 FixedLengthChunking = new Gcp.Vertex.Inputs.AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunkingArgs
///                 {
///                     ChunkSize = 512,
///                     ChunkOverlap = 100,
///                 },
///             },
///         },
///         MaxEmbeddingRequestsPerMin = 500,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragServiceAgent,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ragCorpus, err := vertex.NewAiRagCorpus(ctx, "rag_corpus", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-file-full"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				RagManagedDb: &vertex.AiRagCorpusVectorDbConfigRagManagedDbArgs{
/// 					Knn: &vertex.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs{},
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-rag-file-full"),
/// 			Location:                 pulumi.String("EUROPE-WEST4"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		file, err := storage.NewBucketObject(ctx, "file", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("example.txt"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("Vertex AI RAG Engine lets large language models retrieve information from your own documents."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// 		// access after the RagCorpus exists.
/// 		ragServiceAgent, err := storage.NewBucketIAMMember(ctx, "rag_service_agent", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectViewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragCorpus,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagFile(ctx, "example", &vertex.AiRagFileArgs{
/// 			Region:    pulumi.String("europe-west4"),
/// 			RagCorpus: ragCorpus.Name,
/// 			GcsSource: &vertex.AiRagFileGcsSourceArgs{
/// 				Uris: pulumi.All(bucket.Name, file.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucketName := _args[0].(string)
/// 					fileName := _args[1].(string)
/// 					return fmt.Sprintf("gs://%v/%v", bucketName, fileName), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			RagFileParsingConfig: &vertex.AiRagFileRagFileParsingConfigArgs{
/// 				LlmParser: &vertex.AiRagFileRagFileParsingConfigLlmParserArgs{
/// 					ModelName:                pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/gemini-2.5-flash", project.ProjectId),
/// 					MaxParsingRequestsPerMin: pulumi.Int(100),
/// 					CustomParsingPrompt:      pulumi.String("Extract the text content of the document."),
/// 				},
/// 			},
/// 			RagFileTransformationConfig: &vertex.AiRagFileRagFileTransformationConfigArgs{
/// 				RagFileChunkingConfig: &vertex.AiRagFileRagFileTransformationConfigRagFileChunkingConfigArgs{
/// 					FixedLengthChunking: &vertex.AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunkingArgs{
/// 						ChunkSize:    pulumi.Int(512),
/// 						ChunkOverlap: pulumi.Int(100),
/// 					},
/// 				},
/// 			},
/// 			MaxEmbeddingRequestsPerMin: pulumi.Int(500),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragServiceAgent,
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
/// resource "gcp_vertex_ai_rag_file" "example" {
///   depends_on = [gcp_storage_bucket_i_a_m_member.rag_service_agent]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region     = "europe-west4"
///   rag_corpus = gcp_vertex_ai_rag_corpus.rag_corpus.name
///   gcs_source = {
///     uris ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.file.name}"
///   }
///   rag_file_parsing_config = {
///     llm_parser = {
///       model_name                   ="projects/${data.gcp_organizations_project.project.project_id}/locations/europe-west4/publishers/google/models/gemini-2.5-flash"
///       max_parsing_requests_per_min = 100
///       custom_parsing_prompt        = "Extract the text content of the document."
///     }
///   }
///   rag_file_transformation_config = {
///     rag_file_chunking_config = {
///       fixed_length_chunking = {
///         chunk_size    = 512
///         chunk_overlap = 100
///       }
///     }
///   }
///   max_embedding_requests_per_min = 500
/// }
/// resource "gcp_vertex_ai_rag_corpus" "rag_corpus" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-file-full"
///   region       = "europe-west4"
///   vector_db_config = {
///     rag_managed_db = {
///       knn = {}
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "tf-test-rag-file-full"
///   location                    = "EUROPE-WEST4"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucket_object" "file" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name    = "example.txt"
///   bucket  = gcp_storage_bucket.bucket.name
///   content = "Vertex AI RAG Engine lets large language models retrieve information from your own documents."
/// }
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// resource "gcp_storage_bucket_i_a_m_member" "rag_service_agent" {
///   depends_on = [gcp_vertex_ai_rag_corpus.rag_corpus]
///   lifecycle {
///     create_before_destroy = true
///   }
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectViewer"
///   member ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com"
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
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiRagFile;
/// import com.pulumi.gcp.vertex.AiRagFileArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileGcsSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileParsingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileParsingConfigLlmParserArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileTransformationConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileTransformationConfigRagFileChunkingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunkingArgs;
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
///         var ragCorpus = new AiRagCorpus("ragCorpus", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-file-full")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .ragManagedDb(AiRagCorpusVectorDbConfigRagManagedDbArgs.builder()
///                     .knn(AiRagCorpusVectorDbConfigRagManagedDbKnnArgs.builder()
///                         .build())
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("tf-test-rag-file-full")
///             .location("EUROPE-WEST4")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var file = new BucketObject("file", BucketObjectArgs.builder()
///             .name("example.txt")
///             .bucket(bucket.name())
///             .content("Vertex AI RAG Engine lets large language models retrieve information from your own documents.")
///             .build());
///
///         // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///         // access after the RagCorpus exists.
///         var ragServiceAgent = new BucketIAMMember("ragServiceAgent", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectViewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragCorpus)
///                 .build());
///
///         var example = new AiRagFile("example", AiRagFileArgs.builder()
///             .region("europe-west4")
///             .ragCorpus(ragCorpus.name())
///             .gcsSource(AiRagFileGcsSourceArgs.builder()
///                 .uris(Output.tuple(bucket.name(), file.name()).applyValue(values -> {
///                     var bucketName = values.t1;
///                     var fileName = values.t2;
///                     return String.format("gs://%s/%s", bucketName,fileName);
///                 }))
///                 .build())
///             .ragFileParsingConfig(AiRagFileRagFileParsingConfigArgs.builder()
///                 .llmParser(AiRagFileRagFileParsingConfigLlmParserArgs.builder()
///                     .modelName(String.format("projects/%s/locations/europe-west4/publishers/google/models/gemini-2.5-flash", project.projectId()))
///                     .maxParsingRequestsPerMin(100)
///                     .customParsingPrompt("Extract the text content of the document.")
///                     .build())
///                 .build())
///             .ragFileTransformationConfig(AiRagFileRagFileTransformationConfigArgs.builder()
///                 .ragFileChunkingConfig(AiRagFileRagFileTransformationConfigRagFileChunkingConfigArgs.builder()
///                     .fixedLengthChunking(AiRagFileRagFileTransformationConfigRagFileChunkingConfigFixedLengthChunkingArgs.builder()
///                         .chunkSize(512)
///                         .chunkOverlap(100)
///                         .build())
///                     .build())
///                 .build())
///             .maxEmbeddingRequestsPerMin(500)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragServiceAgent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagFile
///     properties:
///       region: europe-west4
///       ragCorpus: ${ragCorpus.name}
///       gcsSource:
///         uris: gs://${bucket.name}/${file.name}
///       ragFileParsingConfig:
///         llmParser:
///           modelName: projects/${project.projectId}/locations/europe-west4/publishers/google/models/gemini-2.5-flash
///           maxParsingRequestsPerMin: 100
///           customParsingPrompt: Extract the text content of the document.
///       ragFileTransformationConfig:
///         ragFileChunkingConfig:
///           fixedLengthChunking:
///             chunkSize: 512
///             chunkOverlap: 100
///       maxEmbeddingRequestsPerMin: 500
///     options:
///       dependsOn:
///         - ${ragServiceAgent}
///   ragCorpus:
///     type: gcp:vertex:AiRagCorpus
///     name: rag_corpus
///     properties:
///       displayName: rag-corpus-file-full
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           knn: {}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-rag-file-full
///       location: EUROPE-WEST4
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   file:
///     type: gcp:storage:BucketObject
///     properties:
///       name: example.txt
///       bucket: ${bucket.name}
///       content: Vertex AI RAG Engine lets large language models retrieve information from your own documents.
///   # The RAG Engine service agent is created on first use of RAG Engine, so grant it
///   # access after the RagCorpus exists.
///   ragServiceAgent:
///     type: gcp:storage:BucketIAMMember
///     name: rag_service_agent
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${ragCorpus}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Rag File Layout Parser
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const layoutParser = new gcp.essentialcontacts.DocumentAiProcessor("layout_parser", {
///     location: "eu",
///     displayName: "rag-layout-parser",
///     type: "LAYOUT_PARSER_PROCESSOR",
/// });
/// const project = gcp.organizations.getProject({});
/// const ragCorpus = new gcp.vertex.AiRagCorpus("rag_corpus", {
///     displayName: "rag-corpus-file-layout",
///     region: "europe-west4",
///     vectorDbConfig: {
///         ragManagedDb: {
///             knn: {},
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-test-rag-file-layout",
///     location: "EUROPE-WEST4",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const file = new gcp.storage.BucketObject("file", {
///     name: "example.html",
///     bucket: bucket.name,
///     contentType: "text/html",
///     content: "<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>",
/// });
/// // The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// // access after the RagCorpus exists.
/// const ragServiceAgent = new gcp.storage.BucketIAMMember("rag_service_agent", {
///     bucket: bucket.name,
///     role: "roles/storage.objectViewer",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [ragCorpus],
/// });
/// const ragServiceAgentDocumentAi = new gcp.projects.IAMMember("rag_service_agent_document_ai", {
///     project: project.then(project => project.projectId),
///     role: "roles/documentai.apiUser",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com`),
/// }, {
///     dependsOn: [ragCorpus],
/// });
/// const example = new gcp.vertex.AiRagFile("example", {
///     region: "europe-west4",
///     ragCorpus: ragCorpus.name,
///     gcsSource: {
///         uris: pulumi.interpolate`gs://${bucket.name}/${file.name}`,
///     },
///     ragFileParsingConfig: {
///         layoutParser: {
///             processorName: layoutParser.id,
///             maxParsingRequestsPerMin: 100,
///         },
///     },
/// }, {
///     dependsOn: [
///         ragServiceAgent,
///         ragServiceAgentDocumentAi,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// layout_parser = gcp.essentialcontacts.DocumentAiProcessor("layout_parser",
///     location="eu",
///     display_name="rag-layout-parser",
///     type="LAYOUT_PARSER_PROCESSOR")
/// project = gcp.organizations.get_project()
/// rag_corpus = gcp.vertex.AiRagCorpus("rag_corpus",
///     display_name="rag-corpus-file-layout",
///     region="europe-west4",
///     vector_db_config={
///         "rag_managed_db": {
///             "knn": {},
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     })
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-test-rag-file-layout",
///     location="EUROPE-WEST4",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// file = gcp.storage.BucketObject("file",
///     name="example.html",
///     bucket=bucket.name,
///     content_type="text/html",
///     content="<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>")
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// rag_service_agent = gcp.storage.BucketIAMMember("rag_service_agent",
///     bucket=bucket.name,
///     role="roles/storage.objectViewer",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[rag_corpus]))
/// rag_service_agent_document_ai = gcp.projects.IAMMember("rag_service_agent_document_ai",
///     project=project.project_id,
///     role="roles/documentai.apiUser",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     opts = pulumi.ResourceOptions(depends_on=[rag_corpus]))
/// example = gcp.vertex.AiRagFile("example",
///     region="europe-west4",
///     rag_corpus=rag_corpus.name,
///     gcs_source={
///         "uris": pulumi.Output.all(
///             bucketName=bucket.name,
///             fileName=file.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['fileName']}")
/// ,
///     },
///     rag_file_parsing_config={
///         "layout_parser": {
///             "processor_name": layout_parser.id,
///             "max_parsing_requests_per_min": 100,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             rag_service_agent,
///             rag_service_agent_document_ai,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var layoutParser = new Gcp.EssentialContacts.DocumentAiProcessor("layout_parser", new()
///     {
///         Location = "eu",
///         DisplayName = "rag-layout-parser",
///         Type = "LAYOUT_PARSER_PROCESSOR",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var ragCorpus = new Gcp.Vertex.AiRagCorpus("rag_corpus", new()
///     {
///         DisplayName = "rag-corpus-file-layout",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             RagManagedDb = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs
///             {
///                 Knn = null,
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-test-rag-file-layout",
///         Location = "EUROPE-WEST4",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var file = new Gcp.Storage.BucketObject("file", new()
///     {
///         Name = "example.html",
///         Bucket = bucket.Name,
///         ContentType = "text/html",
///         Content = "<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>",
///     });
///
///     // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///     // access after the RagCorpus exists.
///     var ragServiceAgent = new Gcp.Storage.BucketIAMMember("rag_service_agent", new()
///     {
///         Bucket = bucket.Name,
///         Role = "roles/storage.objectViewer",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragCorpus,
///         },
///     });
///
///     var ragServiceAgentDocumentAi = new Gcp.Projects.IAMMember("rag_service_agent_document_ai", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/documentai.apiUser",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragCorpus,
///         },
///     });
///
///     var example = new Gcp.Vertex.AiRagFile("example", new()
///     {
///         Region = "europe-west4",
///         RagCorpus = ragCorpus.Name,
///         GcsSource = new Gcp.Vertex.Inputs.AiRagFileGcsSourceArgs
///         {
///             Uris = Output.Tuple(bucket.Name, file.Name).Apply(values =>
///             {
///                 var bucketName = values.Item1;
///                 var fileName = values.Item2;
///                 return $"gs://{bucketName}/{fileName}";
///             }),
///         },
///         RagFileParsingConfig = new Gcp.Vertex.Inputs.AiRagFileRagFileParsingConfigArgs
///         {
///             LayoutParser = new Gcp.Vertex.Inputs.AiRagFileRagFileParsingConfigLayoutParserArgs
///             {
///                 ProcessorName = layoutParser.Id,
///                 MaxParsingRequestsPerMin = 100,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ragServiceAgent,
///             ragServiceAgentDocumentAi,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/essentialcontacts"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		layoutParser, err := essentialcontacts.NewDocumentAiProcessor(ctx, "layout_parser", &essentialcontacts.DocumentAiProcessorArgs{
/// 			Location:    pulumi.String("eu"),
/// 			DisplayName: pulumi.String("rag-layout-parser"),
/// 			Type:        pulumi.String("LAYOUT_PARSER_PROCESSOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ragCorpus, err := vertex.NewAiRagCorpus(ctx, "rag_corpus", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-file-layout"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				RagManagedDb: &vertex.AiRagCorpusVectorDbConfigRagManagedDbArgs{
/// 					Knn: &vertex.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs{},
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("tf-test-rag-file-layout"),
/// 			Location:                 pulumi.String("EUROPE-WEST4"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		file, err := storage.NewBucketObject(ctx, "file", &storage.BucketObjectArgs{
/// 			Name:        pulumi.String("example.html"),
/// 			Bucket:      bucket.Name,
/// 			ContentType: pulumi.String("text/html"),
/// 			Content:     pulumi.String("<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// 		// access after the RagCorpus exists.
/// 		ragServiceAgent, err := storage.NewBucketIAMMember(ctx, "rag_service_agent", &storage.BucketIAMMemberArgs{
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("roles/storage.objectViewer"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragCorpus,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ragServiceAgentDocumentAi, err := projects.NewIAMMember(ctx, "rag_service_agent_document_ai", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/documentai.apiUser"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.Number),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragCorpus,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagFile(ctx, "example", &vertex.AiRagFileArgs{
/// 			Region:    pulumi.String("europe-west4"),
/// 			RagCorpus: ragCorpus.Name,
/// 			GcsSource: &vertex.AiRagFileGcsSourceArgs{
/// 				Uris: pulumi.All(bucket.Name, file.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucketName := _args[0].(string)
/// 					fileName := _args[1].(string)
/// 					return fmt.Sprintf("gs://%v/%v", bucketName, fileName), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			RagFileParsingConfig: &vertex.AiRagFileRagFileParsingConfigArgs{
/// 				LayoutParser: &vertex.AiRagFileRagFileParsingConfigLayoutParserArgs{
/// 					ProcessorName:            layoutParser.ID(),
/// 					MaxParsingRequestsPerMin: pulumi.Int(100),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ragServiceAgent,
/// 			ragServiceAgentDocumentAi,
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
/// resource "gcp_vertex_ai_rag_file" "example" {
///   depends_on = [gcp_storage_bucket_i_a_m_member.rag_service_agent, gcp_projects_i_a_m_member.rag_service_agent_document_ai]
///   lifecycle {
///     create_before_destroy = true
///   }
///   region     = "europe-west4"
///   rag_corpus = gcp_vertex_ai_rag_corpus.rag_corpus.name
///   gcs_source = {
///     uris ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucket_object.file.name}"
///   }
///   rag_file_parsing_config = {
///     layout_parser = {
///       processor_name               = gcp_essentialcontacts_document_ai_processor.layout_parser.id
///       max_parsing_requests_per_min = 100
///     }
///   }
/// }
/// resource "gcp_essentialcontacts_document_ai_processor" "layout_parser" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location     = "eu"
///   display_name = "rag-layout-parser"
///   type         = "LAYOUT_PARSER_PROCESSOR"
/// }
/// resource "gcp_vertex_ai_rag_corpus" "rag_corpus" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-file-layout"
///   region       = "europe-west4"
///   vector_db_config = {
///     rag_managed_db = {
///       knn = {}
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "tf-test-rag-file-layout"
///   location                    = "EUROPE-WEST4"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_bucket_object" "file" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name         = "example.html"
///   bucket       = gcp_storage_bucket.bucket.name
///   content_type = "text/html"
///   content      = "<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>"
/// }
/// # The RAG Engine service agent is created on first use of RAG Engine, so grant it
/// # access after the RagCorpus exists.
/// resource "gcp_storage_bucket_i_a_m_member" "rag_service_agent" {
///   depends_on = [gcp_vertex_ai_rag_corpus.rag_corpus]
///   lifecycle {
///     create_before_destroy = true
///   }
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "roles/storage.objectViewer"
///   member ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com"
/// }
/// resource "gcp_projects_i_a_m_member" "rag_service_agent_document_ai" {
///   depends_on = [gcp_vertex_ai_rag_corpus.rag_corpus]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   role    = "roles/documentai.apiUser"
///   member  ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessor;
/// import com.pulumi.gcp.essentialcontacts.DocumentAiProcessorArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.vertex.AiRagFile;
/// import com.pulumi.gcp.vertex.AiRagFileArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileGcsSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileParsingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileRagFileParsingConfigLayoutParserArgs;
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
///         var layoutParser = new DocumentAiProcessor("layoutParser", DocumentAiProcessorArgs.builder()
///             .location("eu")
///             .displayName("rag-layout-parser")
///             .type("LAYOUT_PARSER_PROCESSOR")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var ragCorpus = new AiRagCorpus("ragCorpus", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-file-layout")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .ragManagedDb(AiRagCorpusVectorDbConfigRagManagedDbArgs.builder()
///                     .knn(AiRagCorpusVectorDbConfigRagManagedDbKnnArgs.builder()
///                         .build())
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("tf-test-rag-file-layout")
///             .location("EUROPE-WEST4")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var file = new BucketObject("file", BucketObjectArgs.builder()
///             .name("example.html")
///             .bucket(bucket.name())
///             .contentType("text/html")
///             .content("<html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>")
///             .build());
///
///         // The RAG Engine service agent is created on first use of RAG Engine, so grant it
///         // access after the RagCorpus exists.
///         var ragServiceAgent = new BucketIAMMember("ragServiceAgent", BucketIAMMemberArgs.builder()
///             .bucket(bucket.name())
///             .role("roles/storage.objectViewer")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragCorpus)
///                 .build());
///
///         var ragServiceAgentDocumentAi = new IAMMember("ragServiceAgentDocumentAi", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/documentai.apiUser")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.number()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ragCorpus)
///                 .build());
///
///         var example = new AiRagFile("example", AiRagFileArgs.builder()
///             .region("europe-west4")
///             .ragCorpus(ragCorpus.name())
///             .gcsSource(AiRagFileGcsSourceArgs.builder()
///                 .uris(Output.tuple(bucket.name(), file.name()).applyValue(values -> {
///                     var bucketName = values.t1;
///                     var fileName = values.t2;
///                     return String.format("gs://%s/%s", bucketName,fileName);
///                 }))
///                 .build())
///             .ragFileParsingConfig(AiRagFileRagFileParsingConfigArgs.builder()
///                 .layoutParser(AiRagFileRagFileParsingConfigLayoutParserArgs.builder()
///                     .processorName(layoutParser.id())
///                     .maxParsingRequestsPerMin(100)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     ragServiceAgent,
///                     ragServiceAgentDocumentAi)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagFile
///     properties:
///       region: europe-west4
///       ragCorpus: ${ragCorpus.name}
///       gcsSource:
///         uris: gs://${bucket.name}/${file.name}
///       ragFileParsingConfig:
///         layoutParser:
///           processorName: ${layoutParser.id}
///           maxParsingRequestsPerMin: 100
///     options:
///       dependsOn:
///         - ${ragServiceAgent}
///         - ${ragServiceAgentDocumentAi}
///   layoutParser:
///     type: gcp:essentialcontacts:DocumentAiProcessor
///     name: layout_parser
///     properties:
///       location: eu
///       displayName: rag-layout-parser
///       type: LAYOUT_PARSER_PROCESSOR
///   ragCorpus:
///     type: gcp:vertex:AiRagCorpus
///     name: rag_corpus
///     properties:
///       displayName: rag-corpus-file-layout
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           knn: {}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-rag-file-layout
///       location: EUROPE-WEST4
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   file:
///     type: gcp:storage:BucketObject
///     properties:
///       name: example.html
///       bucket: ${bucket.name}
///       contentType: text/html
///       content: <html><body><h1>Vertex AI RAG Engine</h1><p>RAG Engine lets large language models retrieve information from your own documents.</p></body></html>
///   # The RAG Engine service agent is created on first use of RAG Engine, so grant it
///   # access after the RagCorpus exists.
///   ragServiceAgent:
///     type: gcp:storage:BucketIAMMember
///     name: rag_service_agent
///     properties:
///       bucket: ${bucket.name}
///       role: roles/storage.objectViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${ragCorpus}
///   ragServiceAgentDocumentAi:
///     type: gcp:projects:IAMMember
///     name: rag_service_agent_document_ai
///     properties:
///       project: ${project.projectId}
///       role: roles/documentai.apiUser
///       member: serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${ragCorpus}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Vertex Ai Rag File Google Drive
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ragCorpus = new gcp.vertex.AiRagCorpus("rag_corpus", {
///     displayName: "rag-corpus-drive",
///     region: "europe-west4",
/// });
/// const example = new gcp.vertex.AiRagFile("example", {
///     region: "europe-west4",
///     ragCorpus: ragCorpus.name,
///     googleDriveSource: {
///         resourceIds: {
///             resourceId: "GOOGLE_DRIVE_FILE_ID",
///             resourceType: "RESOURCE_TYPE_FILE",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rag_corpus = gcp.vertex.AiRagCorpus("rag_corpus",
///     display_name="rag-corpus-drive",
///     region="europe-west4")
/// example = gcp.vertex.AiRagFile("example",
///     region="europe-west4",
///     rag_corpus=rag_corpus.name,
///     google_drive_source={
///         "resource_ids": {
///             "resource_id": "GOOGLE_DRIVE_FILE_ID",
///             "resource_type": "RESOURCE_TYPE_FILE",
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
///     var ragCorpus = new Gcp.Vertex.AiRagCorpus("rag_corpus", new()
///     {
///         DisplayName = "rag-corpus-drive",
///         Region = "europe-west4",
///     });
///
///     var example = new Gcp.Vertex.AiRagFile("example", new()
///     {
///         Region = "europe-west4",
///         RagCorpus = ragCorpus.Name,
///         GoogleDriveSource = new Gcp.Vertex.Inputs.AiRagFileGoogleDriveSourceArgs
///         {
///             ResourceIds = new Gcp.Vertex.Inputs.AiRagFileGoogleDriveSourceResourceIdsArgs
///             {
///                 ResourceId = "GOOGLE_DRIVE_FILE_ID",
///                 ResourceType = "RESOURCE_TYPE_FILE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ragCorpus, err := vertex.NewAiRagCorpus(ctx, "rag_corpus", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-drive"),
/// 			Region:      pulumi.String("europe-west4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagFile(ctx, "example", &vertex.AiRagFileArgs{
/// 			Region:    pulumi.String("europe-west4"),
/// 			RagCorpus: ragCorpus.Name,
/// 			GoogleDriveSource: &vertex.AiRagFileGoogleDriveSourceArgs{
/// 				ResourceIds: &vertex.AiRagFileGoogleDriveSourceResourceIdsArgs{
/// 					ResourceId:   pulumi.String("GOOGLE_DRIVE_FILE_ID"),
/// 					ResourceType: pulumi.String("RESOURCE_TYPE_FILE"),
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
/// resource "gcp_vertex_ai_rag_file" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region     = "europe-west4"
///   rag_corpus = gcp_vertex_ai_rag_corpus.rag_corpus.name
///   google_drive_source = {
///     resource_ids = {
///       resource_id   = "GOOGLE_DRIVE_FILE_ID"
///       resource_type = "RESOURCE_TYPE_FILE"
///     }
///   }
/// }
/// resource "gcp_vertex_ai_rag_corpus" "rag_corpus" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-drive"
///   region       = "europe-west4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.AiRagFile;
/// import com.pulumi.gcp.vertex.AiRagFileArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileGoogleDriveSourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagFileGoogleDriveSourceResourceIdsArgs;
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
///         var ragCorpus = new AiRagCorpus("ragCorpus", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-drive")
///             .region("europe-west4")
///             .build());
///
///         var example = new AiRagFile("example", AiRagFileArgs.builder()
///             .region("europe-west4")
///             .ragCorpus(ragCorpus.name())
///             .googleDriveSource(AiRagFileGoogleDriveSourceArgs.builder()
///                 .resourceIds(AiRagFileGoogleDriveSourceResourceIdsArgs.builder()
///                     .resourceId("GOOGLE_DRIVE_FILE_ID")
///                     .resourceType("RESOURCE_TYPE_FILE")
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
///     type: gcp:vertex:AiRagFile
///     properties:
///       region: europe-west4
///       ragCorpus: ${ragCorpus.name}
///       googleDriveSource:
///         resourceIds:
///           resourceId: GOOGLE_DRIVE_FILE_ID
///           resourceType: RESOURCE_TYPE_FILE
///   ragCorpus:
///     type: gcp:vertex:AiRagCorpus
///     name: rag_corpus
///     properties:
///       displayName: rag-corpus-drive
///       region: europe-west4
/// ```
///
///
/// ## Import
///
/// RagFile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/ragCorpora/{{rag_corpus}}/ragFiles/{{name}}`
/// * `{{project}}/{{region}}/{{rag_corpus}}/{{name}}`
/// * `{{region}}/{{rag_corpus}}/{{name}}`
/// * `{{rag_corpus}}/{{name}}`
///
///
/// When using the `pulumi import` command, RagFile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagFile:AiRagFile default projects/{{project}}/locations/{{region}}/ragCorpora/{{rag_corpus}}/ragFiles/{{name}}
/// $ pulumi import gcp:vertex/aiRagFile:AiRagFile default {{project}}/{{region}}/{{rag_corpus}}/{{name}}
/// $ pulumi import gcp:vertex/aiRagFile:AiRagFile default {{region}}/{{rag_corpus}}/{{name}}
/// $ pulumi import gcp:vertex/aiRagFile:AiRagFile default {{rag_corpus}}/{{name}}
/// ```
class AiRagFile extends pulumi.CustomResource {
  /// Timestamp when this RagFile was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the RagFile.
  late final pulumi.Output<String> description;
  /// The display name of the RagFile, derived by the API from the source file.
  late final pulumi.Output<String> displayName;
  /// State of the RagFile.
  /// Structure is documented below.
  late final pulumi.Output<List<AiRagFileFileStatus>> fileStatuses;
  /// The Cloud Storage location of the file to import.
  /// Structure is documented below.
  late final pulumi.Output<AiRagFileGcsSource?> gcsSource;
  /// The Google Drive location of the file to import.
  /// Structure is documented below.
  late final pulumi.Output<AiRagFileGoogleDriveSource?> googleDriveSource;
  /// The maximum number of queries per minute that the import is allowed to make
  /// to the embedding model specified on the RagCorpus.
  late final pulumi.Output<int?> maxEmbeddingRequestsPerMin;
  /// The generated ID of the RagFile.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID of the RagCorpus to import the file into, for example the `name`
  /// attribute of a `gcp.vertex.AiRagCorpus` resource.
  late final pulumi.Output<String> ragCorpus;
  /// The parsing config used when importing the file. The default parser is used
  /// if this field is not set.
  /// Structure is documented below.
  late final pulumi.Output<AiRagFileRagFileParsingConfig?> ragFileParsingConfig;
  /// The transformation config used when importing the file.
  /// Structure is documented below.
  late final pulumi.Output<AiRagFileRagFileTransformationConfig?> ragFileTransformationConfig;
  /// The region of the RagCorpus. eg europe-west4
  late final pulumi.Output<String> region;
  /// Timestamp when this RagFile was last updated.
  late final pulumi.Output<String> updateTime;
  /// The metadata for metadata search, in JSON format.
  late final pulumi.Output<String> userMetadata;

  /// Creates a new [AiRagFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiRagFile]. {@macro pulumi_vertex_ai_rag_file_ai_rag_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiRagFile(
    String name, {
    AiRagFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiRagFile:AiRagFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    fileStatuses = registerOutput<List<AiRagFileFileStatus>>('fileStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagFileFileStatus>(guardedValue, (value) => AiRagFileFileStatus.fromMap((value as Map).cast<String, dynamic>())); });
    gcsSource = registerOutput<AiRagFileGcsSource?>('gcsSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleDriveSource = registerOutput<AiRagFileGoogleDriveSource?>('googleDriveSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGoogleDriveSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxEmbeddingRequestsPerMin = registerOutput<int?>('maxEmbeddingRequestsPerMin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    ragCorpus = registerOutput<String>('ragCorpus');
    ragFileParsingConfig = registerOutput<AiRagFileRagFileParsingConfig?>('ragFileParsingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ragFileTransformationConfig = registerOutput<AiRagFileRagFileTransformationConfig?>('ragFileTransformationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileTransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    userMetadata = registerOutput<String>('userMetadata');
  }

  /// Gets an existing [AiRagFile] resource's state with the given [name] and [id].
  static AiRagFile get(
    String name,
    pulumi.Input<String> id, {
    AiRagFileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiRagFile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiRagFile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiRagFile:AiRagFile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    fileStatuses = registerOutput<List<AiRagFileFileStatus>>('fileStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagFileFileStatus>(guardedValue, (value) => AiRagFileFileStatus.fromMap((value as Map).cast<String, dynamic>())); });
    gcsSource = registerOutput<AiRagFileGcsSource?>('gcsSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleDriveSource = registerOutput<AiRagFileGoogleDriveSource?>('googleDriveSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGoogleDriveSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxEmbeddingRequestsPerMin = registerOutput<int?>('maxEmbeddingRequestsPerMin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    ragCorpus = registerOutput<String>('ragCorpus');
    ragFileParsingConfig = registerOutput<AiRagFileRagFileParsingConfig?>('ragFileParsingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ragFileTransformationConfig = registerOutput<AiRagFileRagFileTransformationConfig?>('ragFileTransformationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileTransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    userMetadata = registerOutput<String>('userMetadata');
  }

  /// Creates a typed reference to an existing [AiRagFile] resource.
  AiRagFile.reference(String urn)
    : super(
        'gcp:vertex/aiRagFile:AiRagFile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    fileStatuses = registerOutput<List<AiRagFileFileStatus>>('fileStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagFileFileStatus>(guardedValue, (value) => AiRagFileFileStatus.fromMap((value as Map).cast<String, dynamic>())); });
    gcsSource = registerOutput<AiRagFileGcsSource?>('gcsSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleDriveSource = registerOutput<AiRagFileGoogleDriveSource?>('googleDriveSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileGoogleDriveSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxEmbeddingRequestsPerMin = registerOutput<int?>('maxEmbeddingRequestsPerMin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    ragCorpus = registerOutput<String>('ragCorpus');
    ragFileParsingConfig = registerOutput<AiRagFileRagFileParsingConfig?>('ragFileParsingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ragFileTransformationConfig = registerOutput<AiRagFileRagFileTransformationConfig?>('ragFileTransformationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagFileRagFileTransformationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    userMetadata = registerOutput<String>('userMetadata');
  }
}
