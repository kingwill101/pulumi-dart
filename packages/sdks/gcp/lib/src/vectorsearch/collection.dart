import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_args.dart';
import 'collection_encryption_spec.dart';
import 'collection_state.dart';
import 'collection_vector_schema.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Vectorsearch Collection Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_collection = new gcp.vectorsearch.Collection("example-collection", {
///     location: "us-central1",
///     collectionId: "example-collection",
///     displayName: "My Awesome Collection",
///     description: "This collection stores important data.",
///     labels: {
///         env: "dev",
///         team: "my-team",
///     },
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_collection = gcp.vectorsearch.Collection("example-collection",
///     location="us-central1",
///     collection_id="example-collection",
///     display_name="My Awesome Collection",
///     description="This collection stores important data.",
///     labels={
///         "env": "dev",
///         "team": "my-team",
///     },
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_collection = new Gcp.VectorSearch.Collection("example-collection", new()
///     {
///         Location = "us-central1",
///         CollectionId = "example-collection",
///         DisplayName = "My Awesome Collection",
///         Description = "This collection stores important data.",
///         Labels =
///         {
///             { "env", "dev" },
///             { "team", "my-team" },
///         },
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
/// 		_, err := vectorsearch.NewCollection(ctx, "example-collection", &vectorsearch.CollectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: pulumi.String("example-collection"),
/// 			DisplayName:  pulumi.String("My Awesome Collection"),
/// 			Description:  pulumi.String("This collection stores important data."),
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("dev"),
/// 				"team": pulumi.String("my-team"),
/// 			},
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
/// resource "gcp_vectorsearch_collection" "example-collection" {
///   location      = "us-central1"
///   collection_id = "example-collection"
///   display_name  = "My Awesome Collection"
///   description   = "This collection stores important data."
///   labels = {
///     "env"  = "dev"
///     "team" = "my-team"
///   }
///   data_schema = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"title\\\": {\n      \\\"type\\\": \\\"string\\\"\n    },\n    \\\"plot\\\": {\n      \\\"type\\\": \\\"string\\\"\n    }\n  }\n}\n"
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
///         var example_collection = new Collection("example-collection", CollectionArgs.builder()
///             .location("us-central1")
///             .collectionId("example-collection")
///             .displayName("My Awesome Collection")
///             .description("This collection stores important data.")
///             .labels(Map.ofEntries(
///                 Map.entry("env", "dev"),
///                 Map.entry("team", "my-team")
///             ))
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-collection:
///     type: gcp:vectorsearch:Collection
///     properties:
///       location: us-central1
///       collectionId: example-collection
///       displayName: My Awesome Collection
///       description: This collection stores important data.
///       labels:
///         env: dev
///         team: my-team
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
/// ```
///
/// ### Vectorsearch Collection Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "example-cmek-collection",
///     location: "us-central1",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "example-cmek-collection",
///     keyRing: keyRing.id,
/// });
/// const project = gcp.organizations.getProject({});
/// const cryptoKeyMemberVsSa = new gcp.kms.CryptoKeyIAMMember("crypto_key_member_vs_sa", {
///     cryptoKeyId: cryptoKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-vectorsearch.iam.gserviceaccount.com`),
/// });
/// const example_cmek_collection = new gcp.vectorsearch.Collection("example-cmek-collection", {
///     location: "us-central1",
///     collectionId: "example-cmek-collection",
///     displayName: "My Awesome Encrypted Collection",
///     description: "This collection stores important data.",
///     encryptionSpec: {
///         cryptoKeyName: cryptoKey.id,
///     },
///     labels: {
///         env: "dev",
///         team: "my-team",
///     },
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
/// }, {
///     dependsOn: [cryptoKeyMemberVsSa],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="example-cmek-collection",
///     location="us-central1")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="example-cmek-collection",
///     key_ring=key_ring.id)
/// project = gcp.organizations.get_project()
/// crypto_key_member_vs_sa = gcp.kms.CryptoKeyIAMMember("crypto_key_member_vs_sa",
///     crypto_key_id=crypto_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-vectorsearch.iam.gserviceaccount.com")
/// example_cmek_collection = gcp.vectorsearch.Collection("example-cmek-collection",
///     location="us-central1",
///     collection_id="example-cmek-collection",
///     display_name="My Awesome Encrypted Collection",
///     description="This collection stores important data.",
///     encryption_spec={
///         "crypto_key_name": crypto_key.id,
///     },
///     labels={
///         "env": "dev",
///         "team": "my-team",
///     },
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
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_member_vs_sa]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "example-cmek-collection",
///         Location = "us-central1",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "example-cmek-collection",
///         KeyRing = keyRing.Id,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKeyMemberVsSa = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_member_vs_sa", new()
///     {
///         CryptoKeyId = cryptoKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-vectorsearch.iam.gserviceaccount.com",
///     });
///
///     var example_cmek_collection = new Gcp.VectorSearch.Collection("example-cmek-collection", new()
///     {
///         Location = "us-central1",
///         CollectionId = "example-cmek-collection",
///         DisplayName = "My Awesome Encrypted Collection",
///         Description = "This collection stores important data.",
///         EncryptionSpec = new Gcp.VectorSearch.Inputs.CollectionEncryptionSpecArgs
///         {
///             CryptoKeyName = cryptoKey.Id,
///         },
///         Labels =
///         {
///             { "env", "dev" },
///             { "team", "my-team" },
///         },
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
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyMemberVsSa,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vectorsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-cmek-collection"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-cmek-collection"),
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyMemberVsSa, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_member_vs_sa", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-vectorsearch.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vectorsearch.NewCollection(ctx, "example-cmek-collection", &vectorsearch.CollectionArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			CollectionId: pulumi.String("example-cmek-collection"),
/// 			DisplayName:  pulumi.String("My Awesome Encrypted Collection"),
/// 			Description:  pulumi.String("This collection stores important data."),
/// 			EncryptionSpec: &vectorsearch.CollectionEncryptionSpecArgs{
/// 				CryptoKeyName: cryptoKey.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env":  pulumi.String("dev"),
/// 				"team": pulumi.String("my-team"),
/// 			},
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
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyMemberVsSa,
/// 		}))
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_vectorsearch_collection" "example-cmek-collection" {
///   depends_on    = [gcp_kms_cryptokeyiammember.crypto_key_member_vs_sa]
///   location      = "us-central1"
///   collection_id = "example-cmek-collection"
///   display_name  = "My Awesome Encrypted Collection"
///   description   = "This collection stores important data."
///   encryption_spec = {
///     crypto_key_name = gcp_kms_cryptokey.crypto_key.id
///   }
///   labels = {
///     "env"  = "dev"
///     "team" = "my-team"
///   }
///   data_schema = "{\n  \\\"type\\\": \\\"object\\\",\n  \\\"properties\\\": {\n    \\\"title\\\": {\n      \\\"type\\\": \\\"string\\\"\n    },\n    \\\"plot\\\": {\n      \\\"type\\\": \\\"string\\\"\n    }\n  }\n}\n"
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
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "example-cmek-collection"
///   key_ring = gcp_kms_keyring.key_ring.id
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "example-cmek-collection"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokeyiammember" "crypto_key_member_vs_sa" {
///   crypto_key_id = gcp_kms_cryptokey.crypto_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-vectorsearch.iam.gserviceaccount.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.vectorsearch.Collection;
/// import com.pulumi.gcp.vectorsearch.CollectionArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionEncryptionSpecArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorArgs;
/// import com.pulumi.gcp.vectorsearch.inputs.CollectionVectorSchemaDenseVectorVertexEmbeddingConfigArgs;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("example-cmek-collection")
///             .location("us-central1")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("example-cmek-collection")
///             .keyRing(keyRing.id())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKeyMemberVsSa = new CryptoKeyIAMMember("cryptoKeyMemberVsSa", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(cryptoKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-vectorsearch.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var example_cmek_collection = new Collection("example-cmek-collection", CollectionArgs.builder()
///             .location("us-central1")
///             .collectionId("example-cmek-collection")
///             .displayName("My Awesome Encrypted Collection")
///             .description("This collection stores important data.")
///             .encryptionSpec(CollectionEncryptionSpecArgs.builder()
///                 .cryptoKeyName(cryptoKey.id())
///                 .build())
///             .labels(Map.ofEntries(
///                 Map.entry("env", "dev"),
///                 Map.entry("team", "my-team")
///             ))
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyMemberVsSa)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-cmek-collection:
///     type: gcp:vectorsearch:Collection
///     properties:
///       location: us-central1
///       collectionId: example-cmek-collection
///       displayName: My Awesome Encrypted Collection
///       description: This collection stores important data.
///       encryptionSpec:
///         cryptoKeyName: ${cryptoKey.id}
///       labels:
///         env: dev
///         team: my-team
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
///     options:
///       dependsOn:
///         - ${cryptoKeyMemberVsSa}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: example-cmek-collection
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: example-cmek-collection
///       location: us-central1
///   cryptoKeyMemberVsSa:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_member_vs_sa
///     properties:
///       cryptoKeyId: ${cryptoKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-vectorsearch.iam.gserviceaccount.com
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
/// Collection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}`
/// * `{{project}}/{{location}}/{{collection_id}}`
/// * `{{location}}/{{collection_id}}`
///
///
/// When using the `pulumi import` command, Collection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vectorsearch/collection:Collection default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}
/// $ pulumi import gcp:vectorsearch/collection:Collection default {{project}}/{{location}}/{{collection_id}}
/// $ pulumi import gcp:vectorsearch/collection:Collection default {{location}}/{{collection_id}}
/// ```
class Collection extends pulumi.CustomResource {
  /// ID of the Collection to create.
  /// The id must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, it must be 1-63 characters long and match the regular
  /// expression `a-z?`.
  late final pulumi.Output<String> collectionId;
  /// [Output only] Create time stamp
  late final pulumi.Output<String> createTime;
  /// JSON Schema for data.
  /// Field names must contain only alphanumeric characters,
  /// underscores, and hyphens.
  late final pulumi.Output<String?> dataSchema;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-specified description of the collection
  late final pulumi.Output<String?> description;
  /// User-specified display name of the collection
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Represents a customer-managed encryption key specification that can be
  /// applied to a Vector Search collection.
  /// Structure is documented below.
  late final pulumi.Output<CollectionEncryptionSpec?> encryptionSpec;
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
  /// [Output only] Update time stamp
  late final pulumi.Output<String> updateTime;
  /// Schema for vector fields. Only vector fields in this schema will be
  /// searchable.
  /// Field names must contain only alphanumeric characters,
  /// underscores, and hyphens.
  /// Structure is documented below.
  late final pulumi.Output<List<CollectionVectorSchema>?> vectorSchemas;

  /// Creates a new [Collection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Collection]. {@macro pulumi_vectorsearch_collection_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Collection(
    String name, {
    CollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/collection:Collection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    dataSchema = registerOutput<String?>('dataSchema');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<CollectionEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectionEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vectorSchemas = registerOutput<List<CollectionVectorSchema>?>('vectorSchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CollectionVectorSchema>(guardedValue, (value) => CollectionVectorSchema.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Collection] resource's state with the given [name] and [id].
  static Collection get(
    String name,
    pulumi.Input<String> id, {
    CollectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Collection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Collection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vectorsearch/collection:Collection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    dataSchema = registerOutput<String?>('dataSchema');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<CollectionEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectionEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vectorSchemas = registerOutput<List<CollectionVectorSchema>?>('vectorSchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CollectionVectorSchema>(guardedValue, (value) => CollectionVectorSchema.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Collection] resource.
  Collection.reference(String urn)
    : super(
        'gcp:vectorsearch/collection:Collection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    collectionId = registerOutput<String>('collectionId');
    createTime = registerOutput<String>('createTime');
    dataSchema = registerOutput<String?>('dataSchema');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    encryptionSpec = registerOutput<CollectionEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectionEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
    vectorSchemas = registerOutput<List<CollectionVectorSchema>?>('vectorSchemas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CollectionVectorSchema>(guardedValue, (value) => CollectionVectorSchema.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
