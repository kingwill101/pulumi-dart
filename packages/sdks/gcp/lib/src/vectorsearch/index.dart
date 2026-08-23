import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_args.dart';
import 'index_dedicated_infrastructure.dart';
import 'index_dense_scann.dart';
import 'index_state.dart';

/// An Index defines an approximate nearest-neighbor search structure over a
/// field of a Vector Search Collection.
///
///
///
/// ## Example Usage
///
/// ### Vectorsearch Index Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // NOTE: For most workloads we recommend creating the Collection and the Index
/// // in *separate* Terraform configurations (i.e. create and apply the Collection
/// // first, ingest data via importDataObjects, and only then create the Index in a
/// // second configuration). Once an Index exists on a Collection you can no longer
/// // run importDataObjects for bulk ingestion of data objects on that Collection --
/// // you are limited to creating data objects one at a time or in small online
/// // batches. Defining both resources in the same Terraform file (as shown below)
/// // is convenient for a quick start, but locks you into the online / batched
/// // create path for any subsequent data ingestion.
/// const parent = new gcp.vectorsearch.Collection("parent", {
///     location: "us-central1",
///     collectionId: "example-collection",
///     displayName: "My Awesome Collection",
///     description: "This collection stores important data.",
///     dataSchema: `{
///   \\"type\\": \\"object\\",
///   \\"properties\\": {
///     \\"title\\": {
///       \\"type\\": \\"string\\"
///     },
///     \\"plot\\": {
///       \\"type\\": \\"string\\"
///     }
///   }
/// }
/// `,
///     vectorSchemas: [{
///         fieldName: "text_embedding",
///         denseVector: {
///             dimensions: 768,
///             vertexEmbeddingConfig: {
///                 modelId: "textembedding-gecko@003",
///                 taskType: "RETRIEVAL_DOCUMENT",
///                 textTemplate: "Title: {title} ---- Plot: {plot}",
///             },
///         },
///     }],
/// });
/// const example_index = new gcp.vectorsearch.Index("example-index", {
///     location: "us-central1",
///     collectionId: parent.collectionId,
///     indexId: "example-index",
///     displayName: "My Awesome Index",
///     description: "ScaNN index over text_embedding.",
///     indexField: "text_embedding",
///     distanceMetric: "DOT_PRODUCT",
///     denseScann: {
///         featureNormType: "UNIT_L2_NORM",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # NOTE: For most workloads we recommend creating the Collection and the Index
/// # in *separate* Terraform configurations (i.e. create and apply the Collection
/// # first, ingest data via importDataObjects, and only then create the Index in a
/// # second configuration). Once an Index exists on a Collection you can no longer
/// # run importDataObjects for bulk ingestion of data objects on that Collection --
/// # you are limited to creating data objects one at a time or in small online
/// # batches. Defining both resources in the same Terraform file (as shown below)
/// # is convenient for a quick start, but locks you into the online / batched
/// # create path for any subsequent data ingestion.
/// parent = gcp.vectorsearch.Collection("parent",
///     location="us-central1",
///     collection_id="example-collection",
///     display_name="My Awesome Collection",
///     description="This collection stores important data.",
///     data_schema="""{
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"plot\": {
///       \"type\": \"string\"
///     }
///   }
/// }
/// """,
///     vector_schemas=[{
///         "field_name": "text_embedding",
///         "dense_vector": {
///             "dimensions": 768,
///             "vertex_embedding_config": {
///                 "model_id": "textembedding-gecko@003",
///                 "task_type": "RETRIEVAL_DOCUMENT",
///                 "text_template": "Title: {title} ---- Plot: {plot}",
///             },
///         },
///     }])
/// example_index = gcp.vectorsearch.Index("example-index",
///     location="us-central1",
///     collection_id=parent.collection_id,
///     index_id="example-index",
///     display_name="My Awesome Index",
///     description="ScaNN index over text_embedding.",
///     index_field="text_embedding",
///     distance_metric="DOT_PRODUCT",
///     dense_scann={
///         "feature_norm_type": "UNIT_L2_NORM",
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
///     // NOTE: For most workloads we recommend creating the Collection and the Index
///     // in *separate* Terraform configurations (i.e. create and apply the Collection
///     // first, ingest data via importDataObjects, and only then create the Index in a
///     // second configuration). Once an Index exists on a Collection you can no longer
///     // run importDataObjects for bulk ingestion of data objects on that Collection --
///     // you are limited to creating data objects one at a time or in small online
///     // batches. Defining both resources in the same Terraform file (as shown below)
///     // is convenient for a quick start, but locks you into the online / batched
///     // create path for any subsequent data ingestion.
///     var parent = new Gcp.VectorSearch.Collection("parent", new()
///     {
///         Location = "us-central1",
///         CollectionId = "example-collection",
///         DisplayName = "My Awesome Collection",
///         Description = "This collection stores important data.",
///         DataSchema = @"{
///   \""type\"": \""object\"",
///   \""properties\"": {
///     \""title\"": {
///       \""type\"": \""string\""
///     },
///     \""plot\"": {
///       \""type\"": \""string\""
///     }
///   }
/// }
/// ",
///         VectorSchemas = new[]
///         {
///             new Gcp.VectorSearch.Inputs.CollectionVectorSchemaArgs
///             {
///                 FieldName = "text_embedding",
///                 DenseVector = new Gcp.VectorSearch.Inputs.CollectionVectorSchemaDenseVectorArgs
///                 {
///                     Dimensions = 768,
///                     VertexEmbeddingConfig = new Gcp.VectorSearch.Inputs.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs
///                     {
///                         ModelId = "textembedding-gecko@003",
///                         TaskType = "RETRIEVAL_DOCUMENT",
///                         TextTemplate = "Title: {title} ---- Plot: {plot}",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example_index = new Gcp.VectorSearch.Index("example-index", new()
///     {
///         Location = "us-central1",
///         CollectionId = parent.CollectionId,
///         IndexId = "example-index",
///         DisplayName = "My Awesome Index",
///         Description = "ScaNN index over text_embedding.",
///         IndexField = "text_embedding",
///         DistanceMetric = "DOT_PRODUCT",
///         DenseScann = new Gcp.VectorSearch.Inputs.IndexDenseScannArgs
///         {
///             FeatureNormType = "UNIT_L2_NORM",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vectorsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// NOTE: For most workloads we recommend creating the Collection and the Index
/// 		// in *separate* Terraform configurations (i.e. create and apply the Collection
/// 		// first, ingest data via importDataObjects, and only then create the Index in a
/// 		// second configuration). Once an Index exists on a Collection you can no longer
/// 		// run importDataObjects for bulk ingestion of data objects on that Collection --
/// 		// you are limited to creating data objects one at a time or in small online
/// 		// batches. Defining both resources in the same Terraform file (as shown below)
/// 		// is convenient for a quick start, but locks you into the online / batched
/// 		// create path for any subsequent data ingestion.
/// 		parent, err := vectorsearch.NewCollection(ctx, "parent", &vectorsearch.CollectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: pulumi.String("example-collection"),
/// 			DisplayName:  pulumi.String("My Awesome Collection"),
/// 			Description:  pulumi.String("This collection stores important data."),
/// 			DataSchema: pulumi.String(`{
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"plot\": {
///       \"type\": \"string\"
///     }
///   }
/// }
/// `),
/// 			VectorSchemas: vectorsearch.CollectionVectorSchemaArray{
/// 				&vectorsearch.CollectionVectorSchemaArgs{
/// 					FieldName: pulumi.String("text_embedding"),
/// 					DenseVector: &vectorsearch.CollectionVectorSchemaDenseVectorArgs{
/// 						Dimensions: pulumi.Int(768),
/// 						VertexEmbeddingConfig: &vectorsearch.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs{
/// 							ModelId:      pulumi.String("textembedding-gecko@003"),
/// 							TaskType:     pulumi.String("RETRIEVAL_DOCUMENT"),
/// 							TextTemplate: pulumi.String("Title: {title} ---- Plot: {plot}"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vectorsearch.NewIndex(ctx, "example-index", &vectorsearch.IndexArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			CollectionId:   parent.CollectionId,
/// 			IndexId:        pulumi.String("example-index"),
/// 			DisplayName:    pulumi.String("My Awesome Index"),
/// 			Description:    pulumi.String("ScaNN index over text_embedding."),
/// 			IndexField:     pulumi.String("text_embedding"),
/// 			DistanceMetric: pulumi.String("DOT_PRODUCT"),
/// 			DenseScann: &vectorsearch.IndexDenseScannArgs{
/// 				FeatureNormType: pulumi.String("UNIT_L2_NORM"),
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
/// # NOTE: For most workloads we recommend creating the Collection and the Index
/// # in *separate* Terraform configurations (i.e. create and apply the Collection
/// # first, ingest data via importDataObjects, and only then create the Index in a
/// # second configuration). Once an Index exists on a Collection you can no longer
/// # run importDataObjects for bulk ingestion of data objects on that Collection --
/// # you are limited to creating data objects one at a time or in small online
/// # batches. Defining both resources in the same Terraform file (as shown below)
/// # is convenient for a quick start, but locks you into the online / batched
/// # create path for any subsequent data ingestion.
/// resource "gcp_vectorsearch_collection" "parent" {
///   location      = "us-central1"
///   collection_id = "example-collection"
///   display_name  = "My Awesome Collection"
///   description   = "This collection stores important data."
///   data_schema   = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"title\\\": {\n      \\\"type\\\": \\\"string\\\"\n    },\n    \\\"plot\\\": {\n      \\\"type\\\": \\\"string\\\"\n    }\n  }\n}\n"
///   vector_schemas {
///     field_name = "text_embedding"
///     dense_vector = {
///       dimensions = 768
///       vertex_embedding_config = {
///         model_id      = "textembedding-gecko@003"
///         task_type     = "RETRIEVAL_DOCUMENT"
///         text_template = "Title: {title} ---- Plot: {plot}"
///       }
///     }
///   }
/// }
/// resource "gcp_vectorsearch_index" "example-index" {
///   location        = "us-central1"
///   collection_id   = gcp_vectorsearch_collection.parent.collection_id
///   index_id        = "example-index"
///   display_name    = "My Awesome Index"
///   description     = "ScaNN index over text_embedding."
///   index_field     = "text_embedding"
///   distance_metric = "DOT_PRODUCT"
///   dense_scann = {
///     feature_norm_type = "UNIT_L2_NORM"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vectorsearch.Collection;
/// import com.pulumi.gcp.vectorsearch.CollectionArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs;
/// import com.pulumi.gcp.vectorsearch.Index;
/// import com.pulumi.gcp.vectorsearch.IndexArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.IndexDenseScannArgs;
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
///         // NOTE: For most workloads we recommend creating the Collection and the Index
///         // in *separate* Terraform configurations (i.e. create and apply the Collection
///         // first, ingest data via importDataObjects, and only then create the Index in a
///         // second configuration). Once an Index exists on a Collection you can no longer
///         // run importDataObjects for bulk ingestion of data objects on that Collection --
///         // you are limited to creating data objects one at a time or in small online
///         // batches. Defining both resources in the same Terraform file (as shown below)
///         // is convenient for a quick start, but locks you into the online / batched
///         // create path for any subsequent data ingestion.
///         var parent = new Collection("parent", CollectionArgs.builder()
///             .location("us-central1")
///             .collectionId("example-collection")
///             .displayName("My Awesome Collection")
///             .description("This collection stores important data.")
///             .dataSchema("""
/// {
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"plot\": {
///       \"type\": \"string\"
///     }
///   }
/// }
///             """)
///             .vectorSchemas(CollectionVectorSchemaArgs.builder()
///                 .fieldName("text_embedding")
///                 .denseVector(CollectionVectorSchemaDenseVectorArgs.builder()
///                     .dimensions(768)
///                     .vertexEmbeddingConfig(CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs.builder()
///                         .modelId("textembedding-gecko@003")
///                         .taskType("RETRIEVAL_DOCUMENT")
///                         .textTemplate("Title: {title} ---- Plot: {plot}")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var example_index = new Index("example-index", IndexArgs.builder()
///             .location("us-central1")
///             .collectionId(parent.collectionId())
///             .indexId("example-index")
///             .displayName("My Awesome Index")
///             .description("ScaNN index over text_embedding.")
///             .indexField("text_embedding")
///             .distanceMetric("DOT_PRODUCT")
///             .denseScann(IndexDenseScannArgs.builder()
///                 .featureNormType("UNIT_L2_NORM")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: For most workloads we recommend creating the Collection and the Index
///   # in *separate* Terraform configurations (i.e. create and apply the Collection
///   # first, ingest data via importDataObjects, and only then create the Index in a
///   # second configuration). Once an Index exists on a Collection you can no longer
///   # run importDataObjects for bulk ingestion of data objects on that Collection --
///   # you are limited to creating data objects one at a time or in small online
///   # batches. Defining both resources in the same Terraform file (as shown below)
///   # is convenient for a quick start, but locks you into the online / batched
///   # create path for any subsequent data ingestion.
///   parent:
///     type: gcp:vectorsearch:Collection
///     properties:
///       location: us-central1
///       collectionId: example-collection
///       displayName: My Awesome Collection
///       description: This collection stores important data.
///       dataSchema: |
///         {
///           \"type\": \"object\",
///           \"properties\": {
///             \"title\": {
///               \"type\": \"string\"
///             },
///             \"plot\": {
///               \"type\": \"string\"
///             }
///           }
///         }
///       vectorSchemas:
///         - fieldName: text_embedding
///           denseVector:
///             dimensions: 768
///             vertexEmbeddingConfig:
///               modelId: textembedding-gecko@003
///               taskType: RETRIEVAL_DOCUMENT
///               textTemplate: 'Title: {title} ---- Plot: {plot}'
///   example-index:
///     type: gcp:vectorsearch:Index
///     properties:
///       location: us-central1
///       collectionId: ${parent.collectionId}
///       indexId: example-index
///       displayName: My Awesome Index
///       description: ScaNN index over text_embedding.
///       indexField: text_embedding
///       distanceMetric: DOT_PRODUCT
///       denseScann:
///         featureNormType: UNIT_L2_NORM
/// ```
///
/// ### Vectorsearch Index Dedicated
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // NOTE: For most workloads we recommend creating the Collection and the Index
/// // in *separate* Terraform configurations (i.e. create and apply the Collection
/// // first, ingest data via importDataObjects, and only then create the Index in a
/// // second configuration). Once an Index exists on a Collection you can no longer
/// // run importDataObjects for bulk ingestion of data objects on that Collection --
/// // you are limited to creating data objects one at a time or in small online
/// // batches. Defining both resources in the same Terraform file (as shown below)
/// // is convenient for a quick start, but locks you into the online / batched
/// // create path for any subsequent data ingestion.
/// const parent = new gcp.vectorsearch.Collection("parent", {
///     location: "us-central1",
///     collectionId: "example-dedicated-collection",
///     displayName: "My Awesome Collection",
///     description: "Parent collection for a dedicated-infrastructure index.",
///     dataSchema: `{
///   \\"type\\": \\"object\\",
///   \\"properties\\": {
///     \\"title\\": {
///       \\"type\\": \\"string\\"
///     },
///     \\"category\\": {
///       \\"type\\": \\"string\\"
///     }
///   }
/// }
/// `,
///     vectorSchemas: [{
///         fieldName: "text_embedding",
///         denseVector: {
///             dimensions: 768,
///             vertexEmbeddingConfig: {
///                 modelId: "textembedding-gecko@003",
///                 taskType: "RETRIEVAL_DOCUMENT",
///                 textTemplate: "Title: {title}",
///             },
///         },
///     }],
/// });
/// const example_dedicated_index = new gcp.vectorsearch.Index("example-dedicated-index", {
///     location: "us-central1",
///     collectionId: parent.collectionId,
///     indexId: "example-dedicated-index",
///     displayName: "My Dedicated Index",
///     description: "Index served on dedicated infrastructure with autoscaling.",
///     indexField: "text_embedding",
///     distanceMetric: "COSINE_DISTANCE",
///     filterFields: ["category"],
///     storeFields: ["title"],
///     denseScann: {
///         featureNormType: "UNIT_L2_NORM",
///     },
///     dedicatedInfrastructure: {
///         mode: "PERFORMANCE_OPTIMIZED",
///         autoscalingSpec: {
///             minReplicaCount: 2,
///             maxReplicaCount: 5,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # NOTE: For most workloads we recommend creating the Collection and the Index
/// # in *separate* Terraform configurations (i.e. create and apply the Collection
/// # first, ingest data via importDataObjects, and only then create the Index in a
/// # second configuration). Once an Index exists on a Collection you can no longer
/// # run importDataObjects for bulk ingestion of data objects on that Collection --
/// # you are limited to creating data objects one at a time or in small online
/// # batches. Defining both resources in the same Terraform file (as shown below)
/// # is convenient for a quick start, but locks you into the online / batched
/// # create path for any subsequent data ingestion.
/// parent = gcp.vectorsearch.Collection("parent",
///     location="us-central1",
///     collection_id="example-dedicated-collection",
///     display_name="My Awesome Collection",
///     description="Parent collection for a dedicated-infrastructure index.",
///     data_schema="""{
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"category\": {
///       \"type\": \"string\"
///     }
///   }
/// }
/// """,
///     vector_schemas=[{
///         "field_name": "text_embedding",
///         "dense_vector": {
///             "dimensions": 768,
///             "vertex_embedding_config": {
///                 "model_id": "textembedding-gecko@003",
///                 "task_type": "RETRIEVAL_DOCUMENT",
///                 "text_template": "Title: {title}",
///             },
///         },
///     }])
/// example_dedicated_index = gcp.vectorsearch.Index("example-dedicated-index",
///     location="us-central1",
///     collection_id=parent.collection_id,
///     index_id="example-dedicated-index",
///     display_name="My Dedicated Index",
///     description="Index served on dedicated infrastructure with autoscaling.",
///     index_field="text_embedding",
///     distance_metric="COSINE_DISTANCE",
///     filter_fields=["category"],
///     store_fields=["title"],
///     dense_scann={
///         "feature_norm_type": "UNIT_L2_NORM",
///     },
///     dedicated_infrastructure={
///         "mode": "PERFORMANCE_OPTIMIZED",
///         "autoscaling_spec": {
///             "min_replica_count": 2,
///             "max_replica_count": 5,
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
///     // NOTE: For most workloads we recommend creating the Collection and the Index
///     // in *separate* Terraform configurations (i.e. create and apply the Collection
///     // first, ingest data via importDataObjects, and only then create the Index in a
///     // second configuration). Once an Index exists on a Collection you can no longer
///     // run importDataObjects for bulk ingestion of data objects on that Collection --
///     // you are limited to creating data objects one at a time or in small online
///     // batches. Defining both resources in the same Terraform file (as shown below)
///     // is convenient for a quick start, but locks you into the online / batched
///     // create path for any subsequent data ingestion.
///     var parent = new Gcp.VectorSearch.Collection("parent", new()
///     {
///         Location = "us-central1",
///         CollectionId = "example-dedicated-collection",
///         DisplayName = "My Awesome Collection",
///         Description = "Parent collection for a dedicated-infrastructure index.",
///         DataSchema = @"{
///   \""type\"": \""object\"",
///   \""properties\"": {
///     \""title\"": {
///       \""type\"": \""string\""
///     },
///     \""category\"": {
///       \""type\"": \""string\""
///     }
///   }
/// }
/// ",
///         VectorSchemas = new[]
///         {
///             new Gcp.VectorSearch.Inputs.CollectionVectorSchemaArgs
///             {
///                 FieldName = "text_embedding",
///                 DenseVector = new Gcp.VectorSearch.Inputs.CollectionVectorSchemaDenseVectorArgs
///                 {
///                     Dimensions = 768,
///                     VertexEmbeddingConfig = new Gcp.VectorSearch.Inputs.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs
///                     {
///                         ModelId = "textembedding-gecko@003",
///                         TaskType = "RETRIEVAL_DOCUMENT",
///                         TextTemplate = "Title: {title}",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example_dedicated_index = new Gcp.VectorSearch.Index("example-dedicated-index", new()
///     {
///         Location = "us-central1",
///         CollectionId = parent.CollectionId,
///         IndexId = "example-dedicated-index",
///         DisplayName = "My Dedicated Index",
///         Description = "Index served on dedicated infrastructure with autoscaling.",
///         IndexField = "text_embedding",
///         DistanceMetric = "COSINE_DISTANCE",
///         FilterFields = new[]
///         {
///             "category",
///         },
///         StoreFields = new[]
///         {
///             "title",
///         },
///         DenseScann = new Gcp.VectorSearch.Inputs.IndexDenseScannArgs
///         {
///             FeatureNormType = "UNIT_L2_NORM",
///         },
///         DedicatedInfrastructure = new Gcp.VectorSearch.Inputs.IndexDedicatedInfrastructureArgs
///         {
///             Mode = "PERFORMANCE_OPTIMIZED",
///             AutoscalingSpec = new Gcp.VectorSearch.Inputs.IndexDedicatedInfrastructureAutoscalingSpecArgs
///             {
///                 MinReplicaCount = 2,
///                 MaxReplicaCount = 5,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vectorsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// NOTE: For most workloads we recommend creating the Collection and the Index
/// 		// in *separate* Terraform configurations (i.e. create and apply the Collection
/// 		// first, ingest data via importDataObjects, and only then create the Index in a
/// 		// second configuration). Once an Index exists on a Collection you can no longer
/// 		// run importDataObjects for bulk ingestion of data objects on that Collection --
/// 		// you are limited to creating data objects one at a time or in small online
/// 		// batches. Defining both resources in the same Terraform file (as shown below)
/// 		// is convenient for a quick start, but locks you into the online / batched
/// 		// create path for any subsequent data ingestion.
/// 		parent, err := vectorsearch.NewCollection(ctx, "parent", &vectorsearch.CollectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: pulumi.String("example-dedicated-collection"),
/// 			DisplayName:  pulumi.String("My Awesome Collection"),
/// 			Description:  pulumi.String("Parent collection for a dedicated-infrastructure index."),
/// 			DataSchema: pulumi.String(`{
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"category\": {
///       \"type\": \"string\"
///     }
///   }
/// }
/// `),
/// 			VectorSchemas: vectorsearch.CollectionVectorSchemaArray{
/// 				&vectorsearch.CollectionVectorSchemaArgs{
/// 					FieldName: pulumi.String("text_embedding"),
/// 					DenseVector: &vectorsearch.CollectionVectorSchemaDenseVectorArgs{
/// 						Dimensions: pulumi.Int(768),
/// 						VertexEmbeddingConfig: &vectorsearch.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs{
/// 							ModelId:      pulumi.String("textembedding-gecko@003"),
/// 							TaskType:     pulumi.String("RETRIEVAL_DOCUMENT"),
/// 							TextTemplate: pulumi.String("Title: {title}"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vectorsearch.NewIndex(ctx, "example-dedicated-index", &vectorsearch.IndexArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			CollectionId:   parent.CollectionId,
/// 			IndexId:        pulumi.String("example-dedicated-index"),
/// 			DisplayName:    pulumi.String("My Dedicated Index"),
/// 			Description:    pulumi.String("Index served on dedicated infrastructure with autoscaling."),
/// 			IndexField:     pulumi.String("text_embedding"),
/// 			DistanceMetric: pulumi.String("COSINE_DISTANCE"),
/// 			FilterFields: pulumi.StringArray{
/// 				pulumi.String("category"),
/// 			},
/// 			StoreFields: pulumi.StringArray{
/// 				pulumi.String("title"),
/// 			},
/// 			DenseScann: &vectorsearch.IndexDenseScannArgs{
/// 				FeatureNormType: pulumi.String("UNIT_L2_NORM"),
/// 			},
/// 			DedicatedInfrastructure: &vectorsearch.IndexDedicatedInfrastructureArgs{
/// 				Mode: pulumi.String("PERFORMANCE_OPTIMIZED"),
/// 				AutoscalingSpec: &vectorsearch.IndexDedicatedInfrastructureAutoscalingSpecArgs{
/// 					MinReplicaCount: pulumi.Int(2),
/// 					MaxReplicaCount: pulumi.Int(5),
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
/// # NOTE: For most workloads we recommend creating the Collection and the Index
/// # in *separate* Terraform configurations (i.e. create and apply the Collection
/// # first, ingest data via importDataObjects, and only then create the Index in a
/// # second configuration). Once an Index exists on a Collection you can no longer
/// # run importDataObjects for bulk ingestion of data objects on that Collection --
/// # you are limited to creating data objects one at a time or in small online
/// # batches. Defining both resources in the same Terraform file (as shown below)
/// # is convenient for a quick start, but locks you into the online / batched
/// # create path for any subsequent data ingestion.
/// resource "gcp_vectorsearch_collection" "parent" {
///   location      = "us-central1"
///   collection_id = "example-dedicated-collection"
///   display_name  = "My Awesome Collection"
///   description   = "Parent collection for a dedicated-infrastructure index."
///   data_schema   = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"title\\\": {\n      \\\"type\\\": \\\"string\\\"\n    },\n    \\\"category\\\": {\n      \\\"type\\\": \\\"string\\\"\n    }\n  }\n}\n"
///   vector_schemas {
///     field_name = "text_embedding"
///     dense_vector = {
///       dimensions = 768
///       vertex_embedding_config = {
///         model_id      = "textembedding-gecko@003"
///         task_type     = "RETRIEVAL_DOCUMENT"
///         text_template = "Title: {title}"
///       }
///     }
///   }
/// }
/// resource "gcp_vectorsearch_index" "example-dedicated-index" {
///   location        = "us-central1"
///   collection_id   = gcp_vectorsearch_collection.parent.collection_id
///   index_id        = "example-dedicated-index"
///   display_name    = "My Dedicated Index"
///   description     = "Index served on dedicated infrastructure with autoscaling."
///   index_field     = "text_embedding"
///   distance_metric = "COSINE_DISTANCE"
///   filter_fields   = ["category"]
///   store_fields    = ["title"]
///   dense_scann = {
///     feature_norm_type = "UNIT_L2_NORM"
///   }
///   dedicated_infrastructure = {
///     mode = "PERFORMANCE_OPTIMIZED"
///     autoscaling_spec = {
///       min_replica_count = 2
///       max_replica_count = 5
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
/// import com.pulumi.gcp.vectorsearch.Collection;
/// import com.pulumi.gcp.vectorsearch.CollectionArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs;
/// import com.pulumi.gcp.vectorsearch.Index;
/// import com.pulumi.gcp.vectorsearch.IndexArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.IndexDenseScannArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.IndexDedicatedInfrastructureArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.IndexDedicatedInfrastructureAutoscalingSpecArgs;
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
///         // NOTE: For most workloads we recommend creating the Collection and the Index
///         // in *separate* Terraform configurations (i.e. create and apply the Collection
///         // first, ingest data via importDataObjects, and only then create the Index in a
///         // second configuration). Once an Index exists on a Collection you can no longer
///         // run importDataObjects for bulk ingestion of data objects on that Collection --
///         // you are limited to creating data objects one at a time or in small online
///         // batches. Defining both resources in the same Terraform file (as shown below)
///         // is convenient for a quick start, but locks you into the online / batched
///         // create path for any subsequent data ingestion.
///         var parent = new Collection("parent", CollectionArgs.builder()
///             .location("us-central1")
///             .collectionId("example-dedicated-collection")
///             .displayName("My Awesome Collection")
///             .description("Parent collection for a dedicated-infrastructure index.")
///             .dataSchema("""
/// {
///   \"type\": \"object\",
///   \"properties\": {
///     \"title\": {
///       \"type\": \"string\"
///     },
///     \"category\": {
///       \"type\": \"string\"
///     }
///   }
/// }
///             """)
///             .vectorSchemas(CollectionVectorSchemaArgs.builder()
///                 .fieldName("text_embedding")
///                 .denseVector(CollectionVectorSchemaDenseVectorArgs.builder()
///                     .dimensions(768)
///                     .vertexEmbeddingConfig(CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs.builder()
///                         .modelId("textembedding-gecko@003")
///                         .taskType("RETRIEVAL_DOCUMENT")
///                         .textTemplate("Title: {title}")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var example_dedicated_index = new Index("example-dedicated-index", IndexArgs.builder()
///             .location("us-central1")
///             .collectionId(parent.collectionId())
///             .indexId("example-dedicated-index")
///             .displayName("My Dedicated Index")
///             .description("Index served on dedicated infrastructure with autoscaling.")
///             .indexField("text_embedding")
///             .distanceMetric("COSINE_DISTANCE")
///             .filterFields("category")
///             .storeFields("title")
///             .denseScann(IndexDenseScannArgs.builder()
///                 .featureNormType("UNIT_L2_NORM")
///                 .build())
///             .dedicatedInfrastructure(IndexDedicatedInfrastructureArgs.builder()
///                 .mode("PERFORMANCE_OPTIMIZED")
///                 .autoscalingSpec(IndexDedicatedInfrastructureAutoscalingSpecArgs.builder()
///                     .minReplicaCount(2)
///                     .maxReplicaCount(5)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: For most workloads we recommend creating the Collection and the Index
///   # in *separate* Terraform configurations (i.e. create and apply the Collection
///   # first, ingest data via importDataObjects, and only then create the Index in a
///   # second configuration). Once an Index exists on a Collection you can no longer
///   # run importDataObjects for bulk ingestion of data objects on that Collection --
///   # you are limited to creating data objects one at a time or in small online
///   # batches. Defining both resources in the same Terraform file (as shown below)
///   # is convenient for a quick start, but locks you into the online / batched
///   # create path for any subsequent data ingestion.
///   parent:
///     type: gcp:vectorsearch:Collection
///     properties:
///       location: us-central1
///       collectionId: example-dedicated-collection
///       displayName: My Awesome Collection
///       description: Parent collection for a dedicated-infrastructure index.
///       dataSchema: |
///         {
///           \"type\": \"object\",
///           \"properties\": {
///             \"title\": {
///               \"type\": \"string\"
///             },
///             \"category\": {
///               \"type\": \"string\"
///             }
///           }
///         }
///       vectorSchemas:
///         - fieldName: text_embedding
///           denseVector:
///             dimensions: 768
///             vertexEmbeddingConfig:
///               modelId: textembedding-gecko@003
///               taskType: RETRIEVAL_DOCUMENT
///               textTemplate: 'Title: {title}'
///   example-dedicated-index:
///     type: gcp:vectorsearch:Index
///     properties:
///       location: us-central1
///       collectionId: ${parent.collectionId}
///       indexId: example-dedicated-index
///       displayName: My Dedicated Index
///       description: Index served on dedicated infrastructure with autoscaling.
///       indexField: text_embedding
///       distanceMetric: COSINE_DISTANCE
///       filterFields:
///         - category
///       storeFields:
///         - title
///       denseScann:
///         featureNormType: UNIT_L2_NORM
///       dedicatedInfrastructure:
///         mode: PERFORMANCE_OPTIMIZED
///         autoscalingSpec:
///           minReplicaCount: 2
///           maxReplicaCount: 5
/// ```
///
///
/// ## Import
///
/// Index can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/indexes/{{index_id}}`
/// * `{{project}}/{{location}}/{{collection_id}}/{{index_id}}`
/// * `{{location}}/{{collection_id}}/{{index_id}}`
///
///
/// When using the `pulumi import` command, Index can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vectorsearch/index:Index default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/indexes/{{index_id}}
/// $ pulumi import gcp:vectorsearch/index:Index default {{project}}/{{location}}/{{collection_id}}/{{index_id}}
/// $ pulumi import gcp:vectorsearch/index:Index default {{location}}/{{collection_id}}/{{index_id}}
/// ```
class Index extends pulumi.CustomResource {
  /// The ID of the parent Collection.
  late final pulumi.Output<String> collectionId;
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// Dedicated infrastructure for the index. This field belongs to the
  /// `infraType` oneof; if omitted, the server populates it with the
  /// default `PERFORMANCE_OPTIMIZED` mode and an autoscaling spec of
  /// `min_replica_count=2`, `max_replica_count=2`.
  /// Structure is documented below.
  late final pulumi.Output<IndexDedicatedInfrastructure> dedicatedInfrastructure;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Dense ScaNN index configuration. This field belongs to the
  /// `indexType` oneof; if omitted, the server populates it with default
  /// ScaNN settings.
  /// Structure is documented below.
  late final pulumi.Output<IndexDenseScann> denseScann;
  /// User-specified description of the index
  late final pulumi.Output<String?> description;
  /// User-specified display name of the index
  late final pulumi.Output<String?> displayName;
  /// Distance metric used for indexing. If not specified, will default to
  /// `DOT_PRODUCT`.
  /// Possible values are: `DOT_PRODUCT`, `COSINE_DISTANCE`.
  late final pulumi.Output<String> distanceMetric;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The fields to push into the index to enable fast ANN inline filtering.
  late final pulumi.Output<List<String>?> filterFields;
  /// The collection schema field to index.
  late final pulumi.Output<String> indexField;
  /// ID of the Index to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  late final pulumi.Output<String> indexId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. name of resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The fields to push into the index to enable inline data retrieval.
  late final pulumi.Output<List<String>?> storeFields;
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_vectorsearch_index_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/index:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    dedicatedInfrastructure = registerOutput<IndexDedicatedInfrastructure>('dedicatedInfrastructure', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexDedicatedInfrastructure.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    denseScann = registerOutput<IndexDenseScann>('denseScann', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexDenseScann.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    distanceMetric = registerOutput<String>('distanceMetric');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterFields = registerOutput<List<String>?>('filterFields');
    indexField = registerOutput<String>('indexField');
    indexId = registerOutput<String>('indexId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    storeFields = registerOutput<List<String>?>('storeFields');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Index] resource's state with the given [name] and [id].
  static Index get(
    String name,
    pulumi.Input<String> id, {
    IndexState? state,
  }) {
    return Index._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Index._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/index:Index',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    dedicatedInfrastructure = registerOutput<IndexDedicatedInfrastructure>('dedicatedInfrastructure', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexDedicatedInfrastructure.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    denseScann = registerOutput<IndexDenseScann>('denseScann', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IndexDenseScann.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    distanceMetric = registerOutput<String>('distanceMetric');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterFields = registerOutput<List<String>?>('filterFields');
    indexField = registerOutput<String>('indexField');
    indexId = registerOutput<String>('indexId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    storeFields = registerOutput<List<String>?>('storeFields');
    updateTime = registerOutput<String>('updateTime');
  }
}
