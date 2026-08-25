import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_object_args.dart';
import 'data_object_state.dart';
import 'data_object_vector.dart';

/// A DataObject is a single item of data (with optional vectors) stored in a
/// Vector Search Collection. Each DataObject conforms to the parent
/// Collection's `dataSchema` and `vectorSchema`.
///
/// This resource always issues one `CreateDataObject` request per Terraform
/// resource block. It does NOT use the `batchCreate` REST endpoint --
/// Terraform's resource lifecycle is inherently per-object, so batching
/// across resources is not modeled. When you use `forEach` or `count`,
/// Terraform will still issue individual requests, up to `-parallelism`
/// in parallel.
///
/// For ingesting more than a few hundred items, prefer one of the
/// following out-of-band paths instead of Terraform:
///
/// * `importDataObjects` (bulk ingest from Cloud Storage) -- highest
/// throughput, but only available *before* any Index is created on
/// the Collection.
/// * `batchCreate` (up to ~1000 items per call) -- available at any
/// time, but must be driven from your own client code, not Terraform.
///
/// Once an Index exists on the Collection, `importDataObjects` is no
/// longer available and DataObjects must be created via `CreateDataObject`
/// (as this resource does) or via `batchCreate`.
///
///
///
/// ## Example Usage
///
/// ### Vectorsearch Data Object Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // NOTE: This resource issues one CreateDataObject request per block.
/// // It does NOT batch across resources. Terraform will parallelize a
/// // 'for_each' up to '-parallelism', but each item is still a separate
/// // HTTP call.
/// //
/// // For bulk ingestion of many items, prefer one of these out-of-band
/// // paths instead of Terraform:
/// //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// //     but only available *before* any Index is created on the Collection.
/// //   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// //     time, but must be driven from client code, not Terraform.
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
///                 modelId: "text-embedding-005",
///                 taskType: "RETRIEVAL_DOCUMENT",
///                 textTemplate: "Title: {title} ---- Plot: {plot}",
///             },
///         },
///     }],
/// });
/// // Because the parent Collection's 'text_embedding' field is configured
/// // with a 'vertex_embedding_config', the server will populate the vector
/// // automatically from 'data.title' and 'data.plot' -- no explicit
/// // 'vectors' block is required.
/// const example_data_object = new gcp.vectorsearch.DataObject("example-data-object", {
///     location: "us-central1",
///     collectionId: parent.collectionId,
///     dataObjectId: "example-data-object",
///     data: JSON.stringify({
///         title: "The Matrix",
///         plot: "A computer hacker learns about the true nature of reality.",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// # NOTE: This resource issues one CreateDataObject request per block.
/// # It does NOT batch across resources. Terraform will parallelize a
/// # 'for_each' up to '-parallelism', but each item is still a separate
/// # HTTP call.
/// #
/// # For bulk ingestion of many items, prefer one of these out-of-band
/// # paths instead of Terraform:
/// #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// #     but only available *before* any Index is created on the Collection.
/// #   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// #     time, but must be driven from client code, not Terraform.
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
///                 "model_id": "text-embedding-005",
///                 "task_type": "RETRIEVAL_DOCUMENT",
///                 "text_template": "Title: {title} ---- Plot: {plot}",
///             },
///         },
///     }])
/// # Because the parent Collection's 'text_embedding' field is configured
/// # with a 'vertex_embedding_config', the server will populate the vector
/// # automatically from 'data.title' and 'data.plot' -- no explicit
/// # 'vectors' block is required.
/// example_data_object = gcp.vectorsearch.DataObject("example-data-object",
///     location="us-central1",
///     collection_id=parent.collection_id,
///     data_object_id="example-data-object",
///     data=json.dumps({
///         "title": "The Matrix",
///         "plot": "A computer hacker learns about the true nature of reality.",
///     }))
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
///     // NOTE: This resource issues one CreateDataObject request per block.
///     // It does NOT batch across resources. Terraform will parallelize a
///     // 'for_each' up to '-parallelism', but each item is still a separate
///     // HTTP call.
///     //
///     // For bulk ingestion of many items, prefer one of these out-of-band
///     // paths instead of Terraform:
///     //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///     //     but only available *before* any Index is created on the Collection.
///     //   * 'batchCreate' (up to ~1000 items per call) -- available at any
///     //     time, but must be driven from client code, not Terraform.
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
///                         ModelId = "text-embedding-005",
///                         TaskType = "RETRIEVAL_DOCUMENT",
///                         TextTemplate = "Title: {title} ---- Plot: {plot}",
///                     },
///                 },
///             },
///         },
///     });
///
///     // Because the parent Collection's 'text_embedding' field is configured
///     // with a 'vertex_embedding_config', the server will populate the vector
///     // automatically from 'data.title' and 'data.plot' -- no explicit
///     // 'vectors' block is required.
///     var example_data_object = new Gcp.VectorSearch.DataObject("example-data-object", new()
///     {
///         Location = "us-central1",
///         CollectionId = parent.CollectionId,
///         DataObjectId = "example-data-object",
///         Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["title"] = "The Matrix",
///             ["plot"] = "A computer hacker learns about the true nature of reality.",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vectorsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// NOTE: This resource issues one CreateDataObject request per block.
/// 		// It does NOT batch across resources. Terraform will parallelize a
/// 		// 'for_each' up to '-parallelism', but each item is still a separate
/// 		// HTTP call.
/// 		//
/// 		// For bulk ingestion of many items, prefer one of these out-of-band
/// 		// paths instead of Terraform:
/// 		//   - 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// 		//     but only available *before* any Index is created on the Collection.
/// 		//   - 'batchCreate' (up to ~1000 items per call) -- available at any
/// 		//     time, but must be driven from client code, not Terraform.
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
/// 							ModelId:      pulumi.String("text-embedding-005"),
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
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"title": "The Matrix",
/// 			"plot":  "A computer hacker learns about the true nature of reality.",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// Because the parent Collection's 'text_embedding' field is configured
/// 		// with a 'vertex_embedding_config', the server will populate the vector
/// 		// automatically from 'data.title' and 'data.plot' -- no explicit
/// 		// 'vectors' block is required.
/// 		_, err = vectorsearch.NewDataObject(ctx, "example-data-object", &vectorsearch.DataObjectArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: parent.CollectionId,
/// 			DataObjectId: pulumi.String("example-data-object"),
/// 			Data:         pulumi.String(json0),
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
/// # NOTE: This resource issues one CreateDataObject request per block.
/// # It does NOT batch across resources. Terraform will parallelize a
/// # 'for_each' up to '-parallelism', but each item is still a separate
/// # HTTP call.
/// #
/// # For bulk ingestion of many items, prefer one of these out-of-band
/// # paths instead of Terraform:
/// #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// #     but only available *before* any Index is created on the Collection.
/// #   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// #     time, but must be driven from client code, not Terraform.
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
///         model_id      = "text-embedding-005"
///         task_type     = "RETRIEVAL_DOCUMENT"
///         text_template = "Title: {title} ---- Plot: {plot}"
///       }
///     }
///   }
/// }
/// # Because the parent Collection's 'text_embedding' field is configured
/// # with a 'vertex_embedding_config', the server will populate the vector
/// # automatically from 'data.title' and 'data.plot' -- no explicit
/// # 'vectors' block is required.
/// resource "gcp_vectorsearch_dataobject" "example-data-object" {
///   location       = "us-central1"
///   collection_id  = gcp_vectorsearch_collection.parent.collection_id
///   data_object_id = "example-data-object"
///   data = jsonencode({
///     "title" = "The Matrix"
///     "plot"  = "A computer hacker learns about the true nature of reality."
///   })
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
/// import com.pulumi.gcp.vectorsearch.DataObject;
/// import com.pulumi.gcp.vectorsearch.DataObjectArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         // NOTE: This resource issues one CreateDataObject request per block.
///         // It does NOT batch across resources. Terraform will parallelize a
///         // 'for_each' up to '-parallelism', but each item is still a separate
///         // HTTP call.
///         //
///         // For bulk ingestion of many items, prefer one of these out-of-band
///         // paths instead of Terraform:
///         //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///         //     but only available *before* any Index is created on the Collection.
///         //   * 'batchCreate' (up to ~1000 items per call) -- available at any
///         //     time, but must be driven from client code, not Terraform.
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
///                         .modelId("text-embedding-005")
///                         .taskType("RETRIEVAL_DOCUMENT")
///                         .textTemplate("Title: {title} ---- Plot: {plot}")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         // Because the parent Collection's 'text_embedding' field is configured
///         // with a 'vertex_embedding_config', the server will populate the vector
///         // automatically from 'data.title' and 'data.plot' -- no explicit
///         // 'vectors' block is required.
///         var example_data_object = new DataObject("example-data-object", DataObjectArgs.builder()
///             .location("us-central1")
///             .collectionId(parent.collectionId())
///             .dataObjectId("example-data-object")
///             .data(serializeJson(
///                 jsonObject(
///                     jsonProperty("title", "The Matrix"),
///                     jsonProperty("plot", "A computer hacker learns about the true nature of reality.")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: This resource issues one CreateDataObject request per block.
///   # It does NOT batch across resources. Terraform will parallelize a
///   # 'for_each' up to '-parallelism', but each item is still a separate
///   # HTTP call.
///   #
///   # For bulk ingestion of many items, prefer one of these out-of-band
///   # paths instead of Terraform:
///   #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///   #     but only available *before* any Index is created on the Collection.
///   #   * 'batchCreate' (up to ~1000 items per call) -- available at any
///   #     time, but must be driven from client code, not Terraform.
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
///               modelId: text-embedding-005
///               taskType: RETRIEVAL_DOCUMENT
///               textTemplate: 'Title: {title} ---- Plot: {plot}'
///   # Because the parent Collection's 'text_embedding' field is configured
///   # with a 'vertex_embedding_config', the server will populate the vector
///   # automatically from 'data.title' and 'data.plot' -- no explicit
///   # 'vectors' block is required.
///   example-data-object:
///     type: gcp:vectorsearch:DataObject
///     properties:
///       location: us-central1
///       collectionId: ${parent.collectionId}
///       dataObjectId: example-data-object
///       data:
///         fn::toJSON:
///           title: The Matrix
///           plot: A computer hacker learns about the true nature of reality.
/// ```
///
/// ### Vectorsearch Data Object With Vectors
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // NOTE: This resource issues one CreateDataObject request per block.
/// // It does NOT batch across resources. Terraform will parallelize a
/// // 'for_each' up to '-parallelism', but each item is still a separate
/// // HTTP call.
/// //
/// // For bulk ingestion of many items, prefer one of these out-of-band
/// // paths instead of Terraform:
/// //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// //     but only available *before* any Index is created on the Collection.
/// //   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// //     time, but must be driven from client code, not Terraform.
/// const parent = new gcp.vectorsearch.Collection("parent", {
///     location: "us-central1",
///     collectionId: "example-vectors-collection",
///     displayName: "My BYO-Embedding Collection",
///     description: "Collection whose vectors are supplied by the client.",
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
///     vectorSchemas: [
///         {
///             fieldName: "dense_embedding",
///             denseVector: {
///                 dimensions: 4,
///             },
///         },
///         {
///             fieldName: "sparse_embedding",
///             sparseVector: {},
///         },
///     ],
/// });
/// const example_vectors_data_object = new gcp.vectorsearch.DataObject("example-vectors-data-object", {
///     location: "us-central1",
///     collectionId: parent.collectionId,
///     dataObjectId: "example-vectors-data-object",
///     data: JSON.stringify({
///         title: "The Matrix",
///         category: "movie",
///     }),
///     vectors: [
///         {
///             fieldName: "dense_embedding",
///             dense: {
///                 values: [
///                     0.11,
///                     0.22,
///                     0.33,
///                     0.44,
///                 ],
///             },
///         },
///         {
///             fieldName: "sparse_embedding",
///             sparse: {
///                 values: [
///                     0.9,
///                     0.5,
///                     0.1,
///                 ],
///                 indices: [
///                     3,
///                     17,
///                     42,
///                 ],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// # NOTE: This resource issues one CreateDataObject request per block.
/// # It does NOT batch across resources. Terraform will parallelize a
/// # 'for_each' up to '-parallelism', but each item is still a separate
/// # HTTP call.
/// #
/// # For bulk ingestion of many items, prefer one of these out-of-band
/// # paths instead of Terraform:
/// #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// #     but only available *before* any Index is created on the Collection.
/// #   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// #     time, but must be driven from client code, not Terraform.
/// parent = gcp.vectorsearch.Collection("parent",
///     location="us-central1",
///     collection_id="example-vectors-collection",
///     display_name="My BYO-Embedding Collection",
///     description="Collection whose vectors are supplied by the client.",
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
///     vector_schemas=[
///         {
///             "field_name": "dense_embedding",
///             "dense_vector": {
///                 "dimensions": 4,
///             },
///         },
///         {
///             "field_name": "sparse_embedding",
///             "sparse_vector": {},
///         },
///     ])
/// example_vectors_data_object = gcp.vectorsearch.DataObject("example-vectors-data-object",
///     location="us-central1",
///     collection_id=parent.collection_id,
///     data_object_id="example-vectors-data-object",
///     data=json.dumps({
///         "title": "The Matrix",
///         "category": "movie",
///     }),
///     vectors=[
///         {
///             "field_name": "dense_embedding",
///             "dense": {
///                 "values": [
///                     0.11,
///                     0.22,
///                     0.33,
///                     0.44,
///                 ],
///             },
///         },
///         {
///             "field_name": "sparse_embedding",
///             "sparse": {
///                 "values": [
///                     0.9,
///                     0.5,
///                     0.1,
///                 ],
///                 "indices": [
///                     3,
///                     17,
///                     42,
///                 ],
///             },
///         },
///     ])
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
///     // NOTE: This resource issues one CreateDataObject request per block.
///     // It does NOT batch across resources. Terraform will parallelize a
///     // 'for_each' up to '-parallelism', but each item is still a separate
///     // HTTP call.
///     //
///     // For bulk ingestion of many items, prefer one of these out-of-band
///     // paths instead of Terraform:
///     //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///     //     but only available *before* any Index is created on the Collection.
///     //   * 'batchCreate' (up to ~1000 items per call) -- available at any
///     //     time, but must be driven from client code, not Terraform.
///     var parent = new Gcp.VectorSearch.Collection("parent", new()
///     {
///         Location = "us-central1",
///         CollectionId = "example-vectors-collection",
///         DisplayName = "My BYO-Embedding Collection",
///         Description = "Collection whose vectors are supplied by the client.",
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
///                 FieldName = "dense_embedding",
///                 DenseVector = new Gcp.VectorSearch.Inputs.CollectionVectorSchemaDenseVectorArgs
///                 {
///                     Dimensions = 4,
///                 },
///             },
///             new Gcp.VectorSearch.Inputs.CollectionVectorSchemaArgs
///             {
///                 FieldName = "sparse_embedding",
///                 SparseVector = null,
///             },
///         },
///     });
///
///     var example_vectors_data_object = new Gcp.VectorSearch.DataObject("example-vectors-data-object", new()
///     {
///         Location = "us-central1",
///         CollectionId = parent.CollectionId,
///         DataObjectId = "example-vectors-data-object",
///         Data = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["title"] = "The Matrix",
///             ["category"] = "movie",
///         }),
///         Vectors = new[]
///         {
///             new Gcp.VectorSearch.Inputs.DataObjectVectorArgs
///             {
///                 FieldName = "dense_embedding",
///                 Dense = new Gcp.VectorSearch.Inputs.DataObjectVectorDenseArgs
///                 {
///                     Values = new[]
///                     {
///                         0.11,
///                         0.22,
///                         0.33,
///                         0.44,
///                     },
///                 },
///             },
///             new Gcp.VectorSearch.Inputs.DataObjectVectorArgs
///             {
///                 FieldName = "sparse_embedding",
///                 Sparse = new Gcp.VectorSearch.Inputs.DataObjectVectorSparseArgs
///                 {
///                     Values = new[]
///                     {
///                         0.9,
///                         0.5,
///                         0.1,
///                     },
///                     Indices = new[]
///                     {
///                         3,
///                         17,
///                         42,
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vectorsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// NOTE: This resource issues one CreateDataObject request per block.
/// 		// It does NOT batch across resources. Terraform will parallelize a
/// 		// 'for_each' up to '-parallelism', but each item is still a separate
/// 		// HTTP call.
/// 		//
/// 		// For bulk ingestion of many items, prefer one of these out-of-band
/// 		// paths instead of Terraform:
/// 		//   - 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// 		//     but only available *before* any Index is created on the Collection.
/// 		//   - 'batchCreate' (up to ~1000 items per call) -- available at any
/// 		//     time, but must be driven from client code, not Terraform.
/// 		parent, err := vectorsearch.NewCollection(ctx, "parent", &vectorsearch.CollectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: pulumi.String("example-vectors-collection"),
/// 			DisplayName:  pulumi.String("My BYO-Embedding Collection"),
/// 			Description:  pulumi.String("Collection whose vectors are supplied by the client."),
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
/// 					FieldName: pulumi.String("dense_embedding"),
/// 					DenseVector: &vectorsearch.CollectionVectorSchemaDenseVectorArgs{
/// 						Dimensions: pulumi.Int(4),
/// 					},
/// 				},
/// 				&vectorsearch.CollectionVectorSchemaArgs{
/// 					FieldName:    pulumi.String("sparse_embedding"),
/// 					SparseVector: &vectorsearch.CollectionVectorSchemaSparseVectorArgs{},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"title":    "The Matrix",
/// 			"category": "movie",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = vectorsearch.NewDataObject(ctx, "example-vectors-data-object", &vectorsearch.DataObjectArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: parent.CollectionId,
/// 			DataObjectId: pulumi.String("example-vectors-data-object"),
/// 			Data:         pulumi.String(json0),
/// 			Vectors: vectorsearch.DataObjectVectorArray{
/// 				&vectorsearch.DataObjectVectorArgs{
/// 					FieldName: pulumi.String("dense_embedding"),
/// 					Dense: &vectorsearch.DataObjectVectorDenseArgs{
/// 						Values: pulumi.Float64Array{
/// 							pulumi.Float64(0.11),
/// 							pulumi.Float64(0.22),
/// 							pulumi.Float64(0.33),
/// 							pulumi.Float64(0.44),
/// 						},
/// 					},
/// 				},
/// 				&vectorsearch.DataObjectVectorArgs{
/// 					FieldName: pulumi.String("sparse_embedding"),
/// 					Sparse: &vectorsearch.DataObjectVectorSparseArgs{
/// 						Values: pulumi.Float64Array{
/// 							pulumi.Float64(0.9),
/// 							pulumi.Float64(0.5),
/// 							pulumi.Float64(0.1),
/// 						},
/// 						Indices: pulumi.IntArray{
/// 							pulumi.Int(3),
/// 							pulumi.Int(17),
/// 							pulumi.Int(42),
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
/// # NOTE: This resource issues one CreateDataObject request per block.
/// # It does NOT batch across resources. Terraform will parallelize a
/// # 'for_each' up to '-parallelism', but each item is still a separate
/// # HTTP call.
/// #
/// # For bulk ingestion of many items, prefer one of these out-of-band
/// # paths instead of Terraform:
/// #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
/// #     but only available *before* any Index is created on the Collection.
/// #   * 'batchCreate' (up to ~1000 items per call) -- available at any
/// #     time, but must be driven from client code, not Terraform.
/// resource "gcp_vectorsearch_collection" "parent" {
///   location      = "us-central1"
///   collection_id = "example-vectors-collection"
///   display_name  = "My BYO-Embedding Collection"
///   description   = "Collection whose vectors are supplied by the client."
///   data_schema   = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"title\\\": {\n      \\\"type\\\": \\\"string\\\"\n    },\n    \\\"category\\\": {\n      \\\"type\\\": \\\"string\\\"\n    }\n  }\n}\n"
///   vector_schemas {
///     field_name = "dense_embedding"
///     dense_vector = {
///       dimensions = 4
///     }
///   }
///   vector_schemas {
///     field_name    = "sparse_embedding"
///     sparse_vector = {}
///   }
/// }
/// resource "gcp_vectorsearch_dataobject" "example-vectors-data-object" {
///   location       = "us-central1"
///   collection_id  = gcp_vectorsearch_collection.parent.collection_id
///   data_object_id = "example-vectors-data-object"
///   data = jsonencode({
///     "title"    = "The Matrix"
///     "category" = "movie"
///   })
///   vectors {
///     field_name = "dense_embedding"
///     dense = {
///       values = [0.11, 0.22, 0.33, 0.44]
///     }
///   }
///   vectors {
///     field_name = "sparse_embedding"
///     sparse = {
///       values  = [0.9, 0.5, 0.1]
///       indices = [3, 17, 42]
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
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaSparseVectorArgs;
/// import com.pulumi.gcp.vectorsearch.DataObject;
/// import com.pulumi.gcp.vectorsearch.DataObjectArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.DataObjectVectorArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.DataObjectVectorDenseArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.DataObjectVectorSparseArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         // NOTE: This resource issues one CreateDataObject request per block.
///         // It does NOT batch across resources. Terraform will parallelize a
///         // 'for_each' up to '-parallelism', but each item is still a separate
///         // HTTP call.
///         //
///         // For bulk ingestion of many items, prefer one of these out-of-band
///         // paths instead of Terraform:
///         //   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///         //     but only available *before* any Index is created on the Collection.
///         //   * 'batchCreate' (up to ~1000 items per call) -- available at any
///         //     time, but must be driven from client code, not Terraform.
///         var parent = new Collection("parent", CollectionArgs.builder()
///             .location("us-central1")
///             .collectionId("example-vectors-collection")
///             .displayName("My BYO-Embedding Collection")
///             .description("Collection whose vectors are supplied by the client.")
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
///             .vectorSchemas(
///                 CollectionVectorSchemaArgs.builder()
///                     .fieldName("dense_embedding")
///                     .denseVector(CollectionVectorSchemaDenseVectorArgs.builder()
///                         .dimensions(4)
///                         .build())
///                     .build(),
///                 CollectionVectorSchemaArgs.builder()
///                     .fieldName("sparse_embedding")
///                     .sparseVector(CollectionVectorSchemaSparseVectorArgs.builder()
///                         .build())
///                     .build())
///             .build());
///
///         var example_vectors_data_object = new DataObject("example-vectors-data-object", DataObjectArgs.builder()
///             .location("us-central1")
///             .collectionId(parent.collectionId())
///             .dataObjectId("example-vectors-data-object")
///             .data(serializeJson(
///                 jsonObject(
///                     jsonProperty("title", "The Matrix"),
///                     jsonProperty("category", "movie")
///                 )))
///             .vectors(
///                 DataObjectVectorArgs.builder()
///                     .fieldName("dense_embedding")
///                     .dense(DataObjectVectorDenseArgs.builder()
///                         .values(
///                             0.11,
///                             0.22,
///                             0.33,
///                             0.44)
///                         .build())
///                     .build(),
///                 DataObjectVectorArgs.builder()
///                     .fieldName("sparse_embedding")
///                     .sparse(DataObjectVectorSparseArgs.builder()
///                         .values(
///                             0.9,
///                             0.5,
///                             0.1)
///                         .indices(
///                             3,
///                             17,
///                             42)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # NOTE: This resource issues one CreateDataObject request per block.
///   # It does NOT batch across resources. Terraform will parallelize a
///   # 'for_each' up to '-parallelism', but each item is still a separate
///   # HTTP call.
///   #
///   # For bulk ingestion of many items, prefer one of these out-of-band
///   # paths instead of Terraform:
///   #   * 'importDataObjects' (from Cloud Storage) -- highest throughput,
///   #     but only available *before* any Index is created on the Collection.
///   #   * 'batchCreate' (up to ~1000 items per call) -- available at any
///   #     time, but must be driven from client code, not Terraform.
///   parent:
///     type: gcp:vectorsearch:Collection
///     properties:
///       location: us-central1
///       collectionId: example-vectors-collection
///       displayName: My BYO-Embedding Collection
///       description: Collection whose vectors are supplied by the client.
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
///         - fieldName: dense_embedding
///           denseVector:
///             dimensions: 4
///         - fieldName: sparse_embedding
///           sparseVector: {}
///   example-vectors-data-object:
///     type: gcp:vectorsearch:DataObject
///     properties:
///       location: us-central1
///       collectionId: ${parent.collectionId}
///       dataObjectId: example-vectors-data-object
///       data:
///         fn::toJSON:
///           title: The Matrix
///           category: movie
///       vectors:
///         - fieldName: dense_embedding
///           dense:
///             values:
///               - 0.11
///               - 0.22
///               - 0.33
///               - 0.44
///         - fieldName: sparse_embedding
///           sparse:
///             values:
///               - 0.9
///               - 0.5
///               - 0.1
///             indices:
///               - 3
///               - 17
///               - 42
/// ```
///
///
/// ## Import
///
/// DataObject can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataObjects/{{data_object_id}}`
/// * `{{project}}/{{location}}/{{collection_id}}/{{data_object_id}}`
/// * `{{location}}/{{collection_id}}/{{data_object_id}}`
///
///
/// When using the `pulumi import` command, DataObject can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vectorsearch/dataObject:DataObject default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/dataObjects/{{data_object_id}}
/// $ pulumi import gcp:vectorsearch/dataObject:DataObject default {{project}}/{{location}}/{{collection_id}}/{{data_object_id}}
/// $ pulumi import gcp:vectorsearch/dataObject:DataObject default {{location}}/{{collection_id}}/{{data_object_id}}
/// ```
class DataObject extends pulumi.CustomResource {
  /// The ID of the parent Collection.
  late final pulumi.Output<String> collectionId;
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// The JSON data of the DataObject. Must be a JSON object whose field
  /// names match the fields defined in the parent Collection's
  /// `dataSchema`.
  late final pulumi.Output<String?> data;
  /// ID of the DataObject to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  late final pulumi.Output<String> dataObjectId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The etag of the DataObject, used for optimistic concurrency
  /// control on updates and deletes.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. name of resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;
  /// The vectors of the DataObject, keyed by the vector field name as
  /// defined in the parent Collection's `vectorSchema`.
  /// If a vector field is configured with a `vertexEmbeddingConfig` on
  /// the Collection, the server will populate the vector automatically
  /// from the corresponding text in `data` and the field should be
  /// omitted here.
  /// Structure is documented below.
  late final pulumi.Output<List<DataObjectVector>> vectors;

  /// Creates a new [DataObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataObject]. {@macro pulumi_vectorsearch_data_object_data_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataObject(
    String name, {
    DataObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/dataObject:DataObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    data = registerOutput<String?>('data');
    dataObjectId = registerOutput<String>('dataObjectId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    vectors = registerOutput<List<DataObjectVector>>('vectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataObjectVector>(guardedValue, (value) => DataObjectVector.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [DataObject] resource's state with the given [name] and [id].
  static DataObject get(
    String name,
    pulumi.Input<String> id, {
    DataObjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/dataObject:DataObject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    data = registerOutput<String?>('data');
    dataObjectId = registerOutput<String>('dataObjectId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    vectors = registerOutput<List<DataObjectVector>>('vectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataObjectVector>(guardedValue, (value) => DataObjectVector.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [DataObject] resource.
  DataObject.reference(String urn)
    : super(
        'gcp:vectorsearch/dataObject:DataObject',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    data = registerOutput<String?>('data');
    dataObjectId = registerOutput<String>('dataObjectId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    vectors = registerOutput<List<DataObjectVector>>('vectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataObjectVector>(guardedValue, (value) => DataObjectVector.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
