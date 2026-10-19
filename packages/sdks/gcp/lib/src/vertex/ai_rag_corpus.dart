import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_corpus_args.dart';
import 'ai_rag_corpus_corpus_status.dart';
import 'ai_rag_corpus_encryption_spec.dart';
import 'ai_rag_corpus_state.dart';
import 'ai_rag_corpus_vector_db_config.dart';
import 'ai_rag_corpus_vertex_ai_search_config.dart';

/// A RAG corpus is a container for user data uploaded to Vertex AI RAG Engine for chunking, embedding, and indexing.
///
///
/// To get more information about RagCorpus, see:
///
/// * [API documentation](https://docs.cloud.google.com/gemini-enterprise-agent-platform/reference/rest/v1/projects.locations.ragCorpora)
/// * How-to Guides
/// * [Manage your RAG corpus](https://docs.cloud.google.com/gemini-enterprise-agent-platform/build/rag-engine/manage-your-rag-corpus)
///
///
///
/// ## Example Usage
///
/// ### Vertex Ai Rag Corpus Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus",
///     description: "A basic RAG corpus",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus",
///     description="A basic RAG corpus",
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
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus",
///         Description = "A basic RAG corpus",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus"),
/// 			Description: pulumi.String("A basic RAG corpus"),
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
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus"
///   description  = "A basic RAG corpus"
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
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus")
///             .description("A basic RAG corpus")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus
///       description: A basic RAG corpus
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           knn: {}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Rag Corpus Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus-full",
///     description: "A RAG corpus with a customer-managed encryption key",
///     region: "europe-west4",
///     vectorDbConfig: {
///         ragManagedDb: {
///             ann: {
///                 treeDepth: 2,
///                 leafCount: 500,
///             },
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus-full",
///     description="A RAG corpus with a customer-managed encryption key",
///     region="europe-west4",
///     vector_db_config={
///         "rag_managed_db": {
///             "ann": {
///                 "tree_depth": 2,
///                 "leaf_count": 500,
///             },
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     },
///     encryption_spec={
///         "kms_key_name": "kms-key",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus-full",
///         Description = "A RAG corpus with a customer-managed encryption key",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             RagManagedDb = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs
///             {
///                 Ann = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbAnnArgs
///                 {
///                     TreeDepth = 2,
///                     LeafCount = 500,
///                 },
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiRagCorpusEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-key",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-full"),
/// 			Description: pulumi.String("A RAG corpus with a customer-managed encryption key"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				RagManagedDb: &vertex.AiRagCorpusVectorDbConfigRagManagedDbArgs{
/// 					Ann: &vertex.AiRagCorpusVectorDbConfigRagManagedDbAnnArgs{
/// 						TreeDepth: pulumi.Int(2),
/// 						LeafCount: pulumi.Int(500),
/// 					},
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 			EncryptionSpec: &vertex.AiRagCorpusEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-key"),
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-full"
///   description  = "A RAG corpus with a customer-managed encryption key"
///   region       = "europe-west4"
///   vector_db_config = {
///     rag_managed_db = {
///       ann = {
///         tree_depth = 2
///         leaf_count = 500
///       }
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
///   encryption_spec = {
///     kms_key_name = "kms-key"
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
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbAnnArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusEncryptionSpecArgs;
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
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-full")
///             .description("A RAG corpus with a customer-managed encryption key")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .ragManagedDb(AiRagCorpusVectorDbConfigRagManagedDbArgs.builder()
///                     .ann(AiRagCorpusVectorDbConfigRagManagedDbAnnArgs.builder()
///                         .treeDepth(2)
///                         .leafCount(500)
///                         .build())
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .encryptionSpec(AiRagCorpusEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-key")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus-full
///       description: A RAG corpus with a customer-managed encryption key
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           ann:
///             treeDepth: 2
///             leafCount: 500
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///       encryptionSpec:
///         kmsKeyName: kms-key
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Rag Corpus Search
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus-search",
///     description: "A RAG corpus with Vertex AI Search",
///     region: "europe-west4",
///     vertexAiSearchConfig: {
///         servingConfig: project.then(project => `projects/${project.number}/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config`),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus-search",
///     description="A RAG corpus with Vertex AI Search",
///     region="europe-west4",
///     vertex_ai_search_config={
///         "serving_config": f"projects/{project.number}/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus-search",
///         Description = "A RAG corpus with Vertex AI Search",
///         Region = "europe-west4",
///         VertexAiSearchConfig = new Gcp.Vertex.Inputs.AiRagCorpusVertexAiSearchConfigArgs
///         {
///             ServingConfig = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-search"),
/// 			Description: pulumi.String("A RAG corpus with Vertex AI Search"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VertexAiSearchConfig: &vertex.AiRagCorpusVertexAiSearchConfigArgs{
/// 				ServingConfig: pulumi.Sprintf("projects/%v/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config", project.Number),
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-search"
///   description  = "A RAG corpus with Vertex AI Search"
///   region       = "europe-west4"
///   vertex_ai_search_config = {
///     serving_config ="projects/${data.gcp_organizations_project.project.number}/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config"
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
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVertexAiSearchConfigArgs;
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
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-search")
///             .description("A RAG corpus with Vertex AI Search")
///             .region("europe-west4")
///             .vertexAiSearchConfig(AiRagCorpusVertexAiSearchConfigArgs.builder()
///                 .servingConfig(String.format("projects/%s/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config", project.number()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus-search
///       description: A RAG corpus with Vertex AI Search
///       region: europe-west4
///       vertexAiSearchConfig:
///         servingConfig: projects/${project.number}/locations/global/collections/default_collection/engines/test/servingConfigs/default_serving_config
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Rag Corpus Pinecone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus-pinecone",
///     description: "A RAG corpus with Pinecone",
///     region: "europe-west4",
///     vectorDbConfig: {
///         pinecone: {
///             indexName: "test-index",
///         },
///         apiAuth: {
///             apiKeyConfig: {
///                 apiKeyString: "secret-api-key",
///             },
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus-pinecone",
///     description="A RAG corpus with Pinecone",
///     region="europe-west4",
///     vector_db_config={
///         "pinecone": {
///             "index_name": "test-index",
///         },
///         "api_auth": {
///             "api_key_config": {
///                 "api_key_string": "secret-api-key",
///             },
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus-pinecone",
///         Description = "A RAG corpus with Pinecone",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             Pinecone = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigPineconeArgs
///             {
///                 IndexName = "test-index",
///             },
///             ApiAuth = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigApiAuthArgs
///             {
///                 ApiKeyConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs
///                 {
///                     ApiKeyString = "secret-api-key",
///                 },
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-pinecone"),
/// 			Description: pulumi.String("A RAG corpus with Pinecone"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				Pinecone: &vertex.AiRagCorpusVectorDbConfigPineconeArgs{
/// 					IndexName: pulumi.String("test-index"),
/// 				},
/// 				ApiAuth: &vertex.AiRagCorpusVectorDbConfigApiAuthArgs{
/// 					ApiKeyConfig: &vertex.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs{
/// 						ApiKeyString: pulumi.String("secret-api-key"),
/// 					},
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
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-pinecone"
///   description  = "A RAG corpus with Pinecone"
///   region       = "europe-west4"
///   vector_db_config = {
///     pinecone = {
///       index_name = "test-index"
///     }
///     api_auth = {
///       api_key_config = {
///         api_key_string = "secret-api-key"
///       }
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
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
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigPineconeArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigApiAuthArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
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
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-pinecone")
///             .description("A RAG corpus with Pinecone")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .pinecone(AiRagCorpusVectorDbConfigPineconeArgs.builder()
///                     .indexName("test-index")
///                     .build())
///                 .apiAuth(AiRagCorpusVectorDbConfigApiAuthArgs.builder()
///                     .apiKeyConfig(AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs.builder()
///                         .apiKeyString("secret-api-key")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus-pinecone
///       description: A RAG corpus with Pinecone
///       region: europe-west4
///       vectorDbConfig:
///         pinecone:
///           indexName: test-index
///         apiAuth:
///           apiKeyConfig:
///             apiKeyString: secret-api-key
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Rag Corpus Vertex Vector Search
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const index = new gcp.vertex.AiIndex("index", {
///     region: "europe-west4",
///     displayName: "index-test",
///     description: "test index",
///     indexUpdateMethod: "STREAM_UPDATE",
///     metadata: {
///         config: {
///             dimensions: 768,
///             distanceMeasureType: "COSINE_DISTANCE",
///             featureNormType: "UNIT_L2_NORM",
///             algorithmConfig: {
///                 bruteForceConfig: {},
///             },
///         },
///     },
/// });
/// const indexEndpoint = new gcp.vertex.AiIndexEndpoint("index_endpoint", {
///     displayName: "endpoint-test",
///     description: "test endpoint",
///     region: "europe-west4",
///     publicEndpointEnabled: true,
/// });
/// const deployedIndex = new gcp.vertex.AiIndexEndpointDeployedIndex("deployed_index", {
///     deployedIndexId: "deployed_index",
///     displayName: "deployed_index",
///     region: "europe-west4",
///     index: index.id,
///     indexEndpoint: indexEndpoint.id,
///     automaticResources: {
///         minReplicaCount: 1,
///         maxReplicaCount: 1,
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus-vector-search",
///     description: "A RAG corpus with Vertex Vector Search",
///     region: "europe-west4",
///     vectorDbConfig: {
///         vertexVectorSearch: {
///             indexEndpoint: pulumi.all([project, indexEndpoint.name]).apply(([project, name]) => `projects/${project.number}/locations/europe-west4/indexEndpoints/${name}`),
///             index: pulumi.all([project, index.name]).apply(([project, name]) => `projects/${project.number}/locations/europe-west4/indexes/${name}`),
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// }, {
///     dependsOn: [deployedIndex],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// index = gcp.vertex.AiIndex("index",
///     region="europe-west4",
///     display_name="index-test",
///     description="test index",
///     index_update_method="STREAM_UPDATE",
///     metadata={
///         "config": {
///             "dimensions": 768,
///             "distance_measure_type": "COSINE_DISTANCE",
///             "feature_norm_type": "UNIT_L2_NORM",
///             "algorithm_config": {
///                 "brute_force_config": {},
///             },
///         },
///     })
/// index_endpoint = gcp.vertex.AiIndexEndpoint("index_endpoint",
///     display_name="endpoint-test",
///     description="test endpoint",
///     region="europe-west4",
///     public_endpoint_enabled=True)
/// deployed_index = gcp.vertex.AiIndexEndpointDeployedIndex("deployed_index",
///     deployed_index_id="deployed_index",
///     display_name="deployed_index",
///     region="europe-west4",
///     index=index.id,
///     index_endpoint=index_endpoint.id,
///     automatic_resources={
///         "min_replica_count": 1,
///         "max_replica_count": 1,
///     })
/// project = gcp.organizations.get_project()
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus-vector-search",
///     description="A RAG corpus with Vertex Vector Search",
///     region="europe-west4",
///     vector_db_config={
///         "vertex_vector_search": {
///             "index_endpoint": index_endpoint.name.apply(lambda name: f"projects/{project.number}/locations/europe-west4/indexEndpoints/{name}"),
///             "index": index.name.apply(lambda name: f"projects/{project.number}/locations/europe-west4/indexes/{name}"),
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[deployed_index]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var index = new Gcp.Vertex.AiIndex("index", new()
///     {
///         Region = "europe-west4",
///         DisplayName = "index-test",
///         Description = "test index",
///         IndexUpdateMethod = "STREAM_UPDATE",
///         Metadata = new Gcp.Vertex.Inputs.AiIndexMetadataArgs
///         {
///             Config = new Gcp.Vertex.Inputs.AiIndexMetadataConfigArgs
///             {
///                 Dimensions = 768,
///                 DistanceMeasureType = "COSINE_DISTANCE",
///                 FeatureNormType = "UNIT_L2_NORM",
///                 AlgorithmConfig = new Gcp.Vertex.Inputs.AiIndexMetadataConfigAlgorithmConfigArgs
///                 {
///                     BruteForceConfig = null,
///                 },
///             },
///         },
///     });
///
///     var indexEndpoint = new Gcp.Vertex.AiIndexEndpoint("index_endpoint", new()
///     {
///         DisplayName = "endpoint-test",
///         Description = "test endpoint",
///         Region = "europe-west4",
///         PublicEndpointEnabled = true,
///     });
///
///     var deployedIndex = new Gcp.Vertex.AiIndexEndpointDeployedIndex("deployed_index", new()
///     {
///         DeployedIndexId = "deployed_index",
///         DisplayName = "deployed_index",
///         Region = "europe-west4",
///         Index = index.Id,
///         IndexEndpoint = indexEndpoint.Id,
///         AutomaticResources = new Gcp.Vertex.Inputs.AiIndexEndpointDeployedIndexAutomaticResourcesArgs
///         {
///             MinReplicaCount = 1,
///             MaxReplicaCount = 1,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus-vector-search",
///         Description = "A RAG corpus with Vertex Vector Search",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             VertexVectorSearch = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigVertexVectorSearchArgs
///             {
///                 IndexEndpoint = Output.Tuple(project, indexEndpoint.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var name = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/indexEndpoints/{name}";
///                 }),
///                 Index = Output.Tuple(project, index.Name).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var name = values.Item2;
///                     return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/indexes/{name}";
///                 }),
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             deployedIndex,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		index, err := vertex.NewAiIndex(ctx, "index", &vertex.AiIndexArgs{
/// 			Region:            pulumi.String("europe-west4"),
/// 			DisplayName:       pulumi.String("index-test"),
/// 			Description:       pulumi.String("test index"),
/// 			IndexUpdateMethod: pulumi.String("STREAM_UPDATE"),
/// 			Metadata: &vertex.AiIndexMetadataArgs{
/// 				Config: &vertex.AiIndexMetadataConfigArgs{
/// 					Dimensions:          pulumi.Int(768),
/// 					DistanceMeasureType: pulumi.String("COSINE_DISTANCE"),
/// 					FeatureNormType:     pulumi.String("UNIT_L2_NORM"),
/// 					AlgorithmConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigArgs{
/// 						BruteForceConfig: &vertex.AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs{},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		indexEndpoint, err := vertex.NewAiIndexEndpoint(ctx, "index_endpoint", &vertex.AiIndexEndpointArgs{
/// 			DisplayName:           pulumi.String("endpoint-test"),
/// 			Description:           pulumi.String("test endpoint"),
/// 			Region:                pulumi.String("europe-west4"),
/// 			PublicEndpointEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployedIndex, err := vertex.NewAiIndexEndpointDeployedIndex(ctx, "deployed_index", &vertex.AiIndexEndpointDeployedIndexArgs{
/// 			DeployedIndexId: pulumi.String("deployed_index"),
/// 			DisplayName:     pulumi.String("deployed_index"),
/// 			Region:          pulumi.String("europe-west4"),
/// 			Index:           index.ID().ToIDOutput().ToStringOutput(),
/// 			IndexEndpoint:   indexEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 			AutomaticResources: &vertex.AiIndexEndpointDeployedIndexAutomaticResourcesArgs{
/// 				MinReplicaCount: pulumi.Int(1),
/// 				MaxReplicaCount: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-vector-search"),
/// 			Description: pulumi.String("A RAG corpus with Vertex Vector Search"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				VertexVectorSearch: &vertex.AiRagCorpusVectorDbConfigVertexVectorSearchArgs{
/// 					IndexEndpoint: indexEndpoint.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/europe-west4/indexEndpoints/%v", project.Number, name), nil
/// 					}).(pulumi.StringOutput),
/// 					Index: index.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("projects/%v/locations/europe-west4/indexes/%v", project.Number, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deployedIndex,
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
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   depends_on = [gcp_vertex_ai_index_endpoint_deployed_index.deployed_index]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-vector-search"
///   description  = "A RAG corpus with Vertex Vector Search"
///   region       = "europe-west4"
///   vector_db_config = {
///     vertex_vector_search = {
///       index_endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/indexEndpoints/${gcp_vertex_ai_index_endpoint.index_endpoint.name}"
///       index          ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/indexes/${gcp_vertex_ai_index.index.name}"
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
/// }
/// resource "gcp_vertex_ai_index" "index" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   region              = "europe-west4"
///   display_name        = "index-test"
///   description         = "test index"
///   index_update_method = "STREAM_UPDATE"
///   metadata = {
///     config = {
///       dimensions            = 768
///       distance_measure_type = "COSINE_DISTANCE"
///       feature_norm_type     = "UNIT_L2_NORM"
///       algorithm_config = {
///         brute_force_config = {}
///       }
///     }
///   }
/// }
/// resource "gcp_vertex_ai_index_endpoint" "index_endpoint" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name            = "endpoint-test"
///   description             = "test endpoint"
///   region                  = "europe-west4"
///   public_endpoint_enabled = true
/// }
/// resource "gcp_vertex_ai_index_endpoint_deployed_index" "deployed_index" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   deployed_index_id = "deployed_index"
///   display_name      = "deployed_index"
///   region            = "europe-west4"
///   index             = gcp_vertex_ai_index.index.id
///   index_endpoint    = gcp_vertex_ai_index_endpoint.index_endpoint.id
///   automatic_resources = {
///     min_replica_count = 1
///     max_replica_count = 1
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiIndex;
/// import com.pulumi.gcp.vertex.AiIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpoint;
/// import com.pulumi.gcp.vertex.AiIndexEndpointArgs;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndex;
/// import com.pulumi.gcp.vertex.AiIndexEndpointDeployedIndexArgs;
/// import com.pulumi.gcp.vertex.inputs.AiIndexEndpointDeployedIndexAutomaticResourcesArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigVertexVectorSearchArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
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
///         var index = new AiIndex("index", AiIndexArgs.builder()
///             .region("europe-west4")
///             .displayName("index-test")
///             .description("test index")
///             .indexUpdateMethod("STREAM_UPDATE")
///             .metadata(AiIndexMetadataArgs.builder()
///                 .config(AiIndexMetadataConfigArgs.builder()
///                     .dimensions(768)
///                     .distanceMeasureType("COSINE_DISTANCE")
///                     .featureNormType("UNIT_L2_NORM")
///                     .algorithmConfig(AiIndexMetadataConfigAlgorithmConfigArgs.builder()
///                         .bruteForceConfig(AiIndexMetadataConfigAlgorithmConfigBruteForceConfigArgs.builder()
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var indexEndpoint = new AiIndexEndpoint("indexEndpoint", AiIndexEndpointArgs.builder()
///             .displayName("endpoint-test")
///             .description("test endpoint")
///             .region("europe-west4")
///             .publicEndpointEnabled(true)
///             .build());
///
///         var deployedIndex = new AiIndexEndpointDeployedIndex("deployedIndex", AiIndexEndpointDeployedIndexArgs.builder()
///             .deployedIndexId("deployed_index")
///             .displayName("deployed_index")
///             .region("europe-west4")
///             .index(index.id())
///             .indexEndpoint(indexEndpoint.id())
///             .automaticResources(AiIndexEndpointDeployedIndexAutomaticResourcesArgs.builder()
///                 .minReplicaCount(1)
///                 .maxReplicaCount(1)
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-vector-search")
///             .description("A RAG corpus with Vertex Vector Search")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .vertexVectorSearch(AiRagCorpusVectorDbConfigVertexVectorSearchArgs.builder()
///                     .indexEndpoint(indexEndpoint.name().applyValue(_name -> String.format("projects/%s/locations/europe-west4/indexEndpoints/%s", project.number(),_name)))
///                     .index(index.name().applyValue(_name -> String.format("projects/%s/locations/europe-west4/indexes/%s", project.number(),_name)))
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deployedIndex)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus-vector-search
///       description: A RAG corpus with Vertex Vector Search
///       region: europe-west4
///       vectorDbConfig:
///         vertexVectorSearch:
///           indexEndpoint: projects/${project.number}/locations/europe-west4/indexEndpoints/${indexEndpoint.name}
///           index: projects/${project.number}/locations/europe-west4/indexes/${index.name}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///     options:
///       dependsOn:
///         - ${deployedIndex}
///   index:
///     type: gcp:vertex:AiIndex
///     properties:
///       region: europe-west4
///       displayName: index-test
///       description: test index
///       indexUpdateMethod: STREAM_UPDATE
///       metadata:
///         config:
///           dimensions: 768
///           distanceMeasureType: COSINE_DISTANCE
///           featureNormType: UNIT_L2_NORM
///           algorithmConfig:
///             bruteForceConfig: {}
///   indexEndpoint:
///     type: gcp:vertex:AiIndexEndpoint
///     name: index_endpoint
///     properties:
///       displayName: endpoint-test
///       description: test endpoint
///       region: europe-west4
///       publicEndpointEnabled: true
///   deployedIndex:
///     type: gcp:vertex:AiIndexEndpointDeployedIndex
///     name: deployed_index
///     properties:
///       deployedIndexId: deployed_index
///       displayName: deployed_index
///       region: europe-west4
///       index: ${index.id}
///       indexEndpoint: ${indexEndpoint.id}
///       automaticResources:
///         minReplicaCount: 1
///         maxReplicaCount: 1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Rag Corpus Secret Manager
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "secret-key",
///     replication: {
///         auto: {},
///     },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
///     secret: secret.id,
///     secretData: "secret-api-key",
/// });
/// const project = gcp.organizations.getProject({});
/// const secretAccessor = new gcp.secretmanager.SecretIamMember("secret_accessor", {
///     secretId: secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com`),
/// });
/// const example = new gcp.vertex.AiRagCorpus("example", {
///     displayName: "rag-corpus-secret",
///     description: "A RAG corpus with Secret Manager",
///     region: "europe-west4",
///     vectorDbConfig: {
///         ragManagedDb: {
///             knn: {},
///         },
///         apiAuth: {
///             apiKeyConfig: {
///                 apiKeySecretVersion: secretVersion.name,
///             },
///         },
///         ragEmbeddingModelConfig: {
///             vertexPredictionEndpoint: {
///                 endpoint: project.then(project => `projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005`),
///             },
///         },
///     },
/// }, {
///     dependsOn: [secretAccessor],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="secret-key",
///     replication={
///         "auto": {},
///     })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
///     secret=secret.id,
///     secret_data="secret-api-key")
/// project = gcp.organizations.get_project()
/// secret_accessor = gcp.secretmanager.SecretIamMember("secret_accessor",
///     secret_id=secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com")
/// example = gcp.vertex.AiRagCorpus("example",
///     display_name="rag-corpus-secret",
///     description="A RAG corpus with Secret Manager",
///     region="europe-west4",
///     vector_db_config={
///         "rag_managed_db": {
///             "knn": {},
///         },
///         "api_auth": {
///             "api_key_config": {
///                 "api_key_secret_version": secret_version.name,
///             },
///         },
///         "rag_embedding_model_config": {
///             "vertex_prediction_endpoint": {
///                 "endpoint": f"projects/{project.number}/locations/europe-west4/publishers/google/models/text-embedding-005",
///             },
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secret_accessor]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "secret-key",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
///     {
///         Secret = secret.Id,
///         SecretData = "secret-api-key",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var secretAccessor = new Gcp.SecretManager.SecretIamMember("secret_accessor", new()
///     {
///         SecretId = secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vertex-rag.iam.gserviceaccount.com",
///     });
///
///     var example = new Gcp.Vertex.AiRagCorpus("example", new()
///     {
///         DisplayName = "rag-corpus-secret",
///         Description = "A RAG corpus with Secret Manager",
///         Region = "europe-west4",
///         VectorDbConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigArgs
///         {
///             RagManagedDb = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs
///             {
///                 Knn = null,
///             },
///             ApiAuth = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigApiAuthArgs
///             {
///                 ApiKeyConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs
///                 {
///                     ApiKeySecretVersion = secretVersion.Name,
///                 },
///             },
///             RagEmbeddingModelConfig = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs
///             {
///                 VertexPredictionEndpoint = new Gcp.Vertex.Inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs
///                 {
///                     Endpoint = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/europe-west4/publishers/google/models/text-embedding-005",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secretAccessor,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-key"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.ID().ToIDOutput().ToStringOutput(),
/// 			SecretData: pulumi.String("secret-api-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretAccessor, err := secretmanager.NewSecretIamMember(ctx, "secret_accessor", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: secret.ID().ToIDOutput().ToStringOutput(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiRagCorpus(ctx, "example", &vertex.AiRagCorpusArgs{
/// 			DisplayName: pulumi.String("rag-corpus-secret"),
/// 			Description: pulumi.String("A RAG corpus with Secret Manager"),
/// 			Region:      pulumi.String("europe-west4"),
/// 			VectorDbConfig: &vertex.AiRagCorpusVectorDbConfigArgs{
/// 				RagManagedDb: &vertex.AiRagCorpusVectorDbConfigRagManagedDbArgs{
/// 					Knn: &vertex.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs{},
/// 				},
/// 				ApiAuth: &vertex.AiRagCorpusVectorDbConfigApiAuthArgs{
/// 					ApiKeyConfig: &vertex.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs{
/// 						ApiKeySecretVersion: secretVersion.Name,
/// 					},
/// 				},
/// 				RagEmbeddingModelConfig: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs{
/// 					VertexPredictionEndpoint: &vertex.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs{
/// 						Endpoint: pulumi.Sprintf("projects/%v/locations/europe-west4/publishers/google/models/text-embedding-005", project.Number),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secretAccessor,
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
/// resource "gcp_vertex_ai_rag_corpus" "example" {
///   depends_on = [gcp_secretmanager_secret_iam_member.secret_accessor]
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name = "rag-corpus-secret"
///   description  = "A RAG corpus with Secret Manager"
///   region       = "europe-west4"
///   vector_db_config = {
///     rag_managed_db = {
///       knn = {}
///     }
///     api_auth = {
///       api_key_config = {
///         api_key_secret_version = gcp_secretmanager_secret_version.secret_version.name
///       }
///     }
///     rag_embedding_model_config = {
///       vertex_prediction_endpoint = {
///         endpoint ="projects/${data.gcp_organizations_project.project.number}/locations/europe-west4/publishers/google/models/text-embedding-005"
///       }
///     }
///   }
/// }
/// resource "gcp_secretmanager_secret" "secret" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = "secret-key"
///   replication = {
///     auto = {}
///   }
/// }
/// resource "gcp_secretmanager_secret_version" "secret_version" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret      = gcp_secretmanager_secret.secret.id
///   secret_data = "secret-api-key"
/// }
/// resource "gcp_secretmanager_secret_iam_member" "secret_accessor" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   secret_id = gcp_secretmanager_secret.secret.id
///   role      = "roles/secretmanager.secretAccessor"
///   member    ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.vertex.AiRagCorpus;
/// import com.pulumi.gcp.vertex.AiRagCorpusArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagManagedDbKnnArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigApiAuthArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("secret-key")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
///             .secret(secret.id())
///             .secretData("secret-api-key")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var secretAccessor = new SecretIamMember("secretAccessor", SecretIamMemberArgs.builder()
///             .secretId(secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vertex-rag.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var example = new AiRagCorpus("example", AiRagCorpusArgs.builder()
///             .displayName("rag-corpus-secret")
///             .description("A RAG corpus with Secret Manager")
///             .region("europe-west4")
///             .vectorDbConfig(AiRagCorpusVectorDbConfigArgs.builder()
///                 .ragManagedDb(AiRagCorpusVectorDbConfigRagManagedDbArgs.builder()
///                     .knn(AiRagCorpusVectorDbConfigRagManagedDbKnnArgs.builder()
///                         .build())
///                     .build())
///                 .apiAuth(AiRagCorpusVectorDbConfigApiAuthArgs.builder()
///                     .apiKeyConfig(AiRagCorpusVectorDbConfigApiAuthApiKeyConfigArgs.builder()
///                         .apiKeySecretVersion(secretVersion.name())
///                         .build())
///                     .build())
///                 .ragEmbeddingModelConfig(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigArgs.builder()
///                     .vertexPredictionEndpoint(AiRagCorpusVectorDbConfigRagEmbeddingModelConfigVertexPredictionEndpointArgs.builder()
///                         .endpoint(String.format("projects/%s/locations/europe-west4/publishers/google/models/text-embedding-005", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secretAccessor)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:vertex:AiRagCorpus
///     properties:
///       displayName: rag-corpus-secret
///       description: A RAG corpus with Secret Manager
///       region: europe-west4
///       vectorDbConfig:
///         ragManagedDb:
///           knn: {}
///         apiAuth:
///           apiKeyConfig:
///             apiKeySecretVersion: ${secretVersion.name}
///         ragEmbeddingModelConfig:
///           vertexPredictionEndpoint:
///             endpoint: projects/${project.number}/locations/europe-west4/publishers/google/models/text-embedding-005
///     options:
///       dependsOn:
///         - ${secretAccessor}
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-key
///       replication:
///         auto: {}
///   secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret_version
///     properties:
///       secret: ${secret.id}
///       secretData: secret-api-key
///   secretAccessor:
///     type: gcp:secretmanager:SecretIamMember
///     name: secret_accessor
///     properties:
///       secretId: ${secret.id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-vertex-rag.iam.gserviceaccount.com
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
/// RagCorpus can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/ragCorpora/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RagCorpus can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiRagCorpus:AiRagCorpus default projects/{{project}}/locations/{{region}}/ragCorpora/{{name}}
/// $ pulumi import gcp:vertex/aiRagCorpus:AiRagCorpus default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiRagCorpus:AiRagCorpus default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiRagCorpus:AiRagCorpus default {{name}}
/// ```
class AiRagCorpus extends pulumi.CustomResource {
  /// Output only. RagCorpus state.
  /// Structure is documented below.
  late final pulumi.Output<List<AiRagCorpusCorpusStatus>> corpusStatuses;
  /// Output only. Timestamp when this RagCorpus was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. The description of the RagCorpus.
  late final pulumi.Output<String?> description;
  /// Required. The display name of the RagCorpus. The name can be up to 128
  /// characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;
  /// Optional. Immutable. The CMEK key name used to encrypt at-rest data
  /// related to this corpus. Only applicable to RagManagedDb option for Vector
  /// DB. This field can only be set at corpus creation time, and cannot be
  /// updated or deleted.
  /// Structure is documented below.
  late final pulumi.Output<AiRagCorpusEncryptionSpec?> encryptionSpec;
  /// The generated name of the RagCorpus, in the format
  /// projects/{project}/locations/{location}/ragCorpora/{rag_corpus}.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the RagCorpus. eg europe-west4
  late final pulumi.Output<String> region;
  /// Output only. Timestamp when this RagCorpus was last updated.
  late final pulumi.Output<String> updateTime;
  /// Optional. Immutable. The config for the RAG-managed Vector DB.
  /// Structure is documented below.
  late final pulumi.Output<AiRagCorpusVectorDbConfig?> vectorDbConfig;
  /// Optional. Immutable. The config for the Vertex AI Search.
  /// Structure is documented below.
  late final pulumi.Output<AiRagCorpusVertexAiSearchConfig?> vertexAiSearchConfig;

  /// Creates a new [AiRagCorpus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiRagCorpus]. {@macro pulumi_vertex_ai_rag_corpus_ai_rag_corpus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiRagCorpus(
    String name, {
    AiRagCorpusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiRagCorpus:AiRagCorpus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    corpusStatuses = registerOutput<List<AiRagCorpusCorpusStatus>>('corpusStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagCorpusCorpusStatus>(guardedValue, (value) => AiRagCorpusCorpusStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    encryptionSpec = registerOutput<AiRagCorpusEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    vectorDbConfig = registerOutput<AiRagCorpusVectorDbConfig?>('vectorDbConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVectorDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vertexAiSearchConfig = registerOutput<AiRagCorpusVertexAiSearchConfig?>('vertexAiSearchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVertexAiSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AiRagCorpus] resource's state with the given [name] and [id].
  static AiRagCorpus get(
    String name,
    pulumi.Input<String> id, {
    AiRagCorpusState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiRagCorpus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiRagCorpus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiRagCorpus:AiRagCorpus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    corpusStatuses = registerOutput<List<AiRagCorpusCorpusStatus>>('corpusStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagCorpusCorpusStatus>(guardedValue, (value) => AiRagCorpusCorpusStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    encryptionSpec = registerOutput<AiRagCorpusEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    vectorDbConfig = registerOutput<AiRagCorpusVectorDbConfig?>('vectorDbConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVectorDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vertexAiSearchConfig = registerOutput<AiRagCorpusVertexAiSearchConfig?>('vertexAiSearchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVertexAiSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AiRagCorpus] resource.
  AiRagCorpus.reference(String urn)
    : super(
        'gcp:vertex/aiRagCorpus:AiRagCorpus',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    corpusStatuses = registerOutput<List<AiRagCorpusCorpusStatus>>('corpusStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AiRagCorpusCorpusStatus>(guardedValue, (value) => AiRagCorpusCorpusStatus.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    encryptionSpec = registerOutput<AiRagCorpusEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
    vectorDbConfig = registerOutput<AiRagCorpusVectorDbConfig?>('vectorDbConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVectorDbConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vertexAiSearchConfig = registerOutput<AiRagCorpusVertexAiSearchConfig?>('vertexAiSearchConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiRagCorpusVertexAiSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
