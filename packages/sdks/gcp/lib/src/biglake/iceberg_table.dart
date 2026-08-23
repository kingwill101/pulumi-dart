import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_args.dart';
import 'iceberg_table_partition_spec.dart';
import 'iceberg_table_schema.dart';
import 'iceberg_table_sort_order.dart';
import 'iceberg_table_state.dart';

/// IcebergTables are the primary objects in an IcebergCatalog.
///
///
///
/// ## Example Usage
///
/// ### Biglake Iceberg Table Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const catalog = new gcp.biglake.IcebergCatalog("catalog", {
///     name: bucket.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
/// });
/// const namespace = new gcp.biglake.IcebergNamespace("namespace", {
///     catalog: catalog.name,
///     namespaceId: "my_namespace",
/// });
/// const myIcebergTable = new gcp.biglake.IcebergTable("my_iceberg_table", {
///     catalog: catalog.name,
///     namespace: namespace.namespaceId,
///     name: "my_table",
///     location: pulumi.interpolate`gs://${bucket.name}/${namespace.namespaceId}/my_table`,
///     schema: {
///         type: "struct",
///         fields: [
///             {
///                 id: 1,
///                 name: "id",
///                 type: "long",
///                 required: true,
///                 doc: "The ID of the record",
///             },
///             {
///                 id: 2,
///                 name: "name",
///                 type: "string",
///                 required: false,
///             },
///         ],
///         identifierFieldIds: [1],
///     },
///     partitionSpec: {
///         fields: [{
///             name: "id_partition",
///             sourceId: 1,
///             transform: "identity",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// catalog = gcp.biglake.IcebergCatalog("catalog",
///     name=bucket.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET")
/// namespace = gcp.biglake.IcebergNamespace("namespace",
///     catalog=catalog.name,
///     namespace_id="my_namespace")
/// my_iceberg_table = gcp.biglake.IcebergTable("my_iceberg_table",
///     catalog=catalog.name,
///     namespace=namespace.namespace_id,
///     name="my_table",
///     location=pulumi.Output.all(
///         name=bucket.name,
///         namespace_id=namespace.namespace_id
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['name']}/{resolved_outputs['namespace_id']}/my_table")
/// ,
///     schema={
///         "type": "struct",
///         "fields": [
///             {
///                 "id": 1,
///                 "name": "id",
///                 "type": "long",
///                 "required": True,
///                 "doc": "The ID of the record",
///             },
///             {
///                 "id": 2,
///                 "name": "name",
///                 "type": "string",
///                 "required": False,
///             },
///         ],
///         "identifier_field_ids": [1],
///     },
///     partition_spec={
///         "fields": [{
///             "name": "id_partition",
///             "source_id": 1,
///             "transform": "identity",
///         }],
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var catalog = new Gcp.BigLake.IcebergCatalog("catalog", new()
///     {
///         Name = bucket.Name,
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///     });
///
///     var @namespace = new Gcp.BigLake.IcebergNamespace("namespace", new()
///     {
///         Catalog = catalog.Name,
///         NamespaceId = "my_namespace",
///     });
///
///     var myIcebergTable = new Gcp.BigLake.IcebergTable("my_iceberg_table", new()
///     {
///         Catalog = catalog.Name,
///         Namespace = @namespace.NamespaceId,
///         Name = "my_table",
///         Location = Output.Tuple(bucket.Name, @namespace.NamespaceId).Apply(values =>
///         {
///             var name = values.Item1;
///             var namespaceId = values.Item2;
///             return $"gs://{name}/{namespaceId}/my_table";
///         }),
///         Schema = new Gcp.BigLake.Inputs.IcebergTableSchemaArgs
///         {
///             Type = "struct",
///             Fields = new[]
///             {
///                 new Gcp.BigLake.Inputs.IcebergTableSchemaFieldArgs
///                 {
///                     Id = 1,
///                     Name = "id",
///                     Type = "long",
///                     Required = true,
///                     Doc = "The ID of the record",
///                 },
///                 new Gcp.BigLake.Inputs.IcebergTableSchemaFieldArgs
///                 {
///                     Id = 2,
///                     Name = "name",
///                     Type = "string",
///                     Required = false,
///                 },
///             },
///             IdentifierFieldIds = new[]
///             {
///                 1,
///             },
///         },
///         PartitionSpec = new Gcp.BigLake.Inputs.IcebergTablePartitionSpecArgs
///         {
///             Fields = new[]
///             {
///                 new Gcp.BigLake.Inputs.IcebergTablePartitionSpecFieldArgs
///                 {
///                     Name = "id_partition",
///                     SourceId = 1,
///                     Transform = "identity",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		catalog, err := biglake.NewIcebergCatalog(ctx, "catalog", &biglake.IcebergCatalogArgs{
/// 			Name:        bucket.Name,
/// 			CatalogType: pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		namespace, err := biglake.NewIcebergNamespace(ctx, "namespace", &biglake.IcebergNamespaceArgs{
/// 			Catalog:     catalog.Name,
/// 			NamespaceId: pulumi.String("my_namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergTable(ctx, "my_iceberg_table", &biglake.IcebergTableArgs{
/// 			Catalog:   catalog.Name,
/// 			Namespace: namespace.NamespaceId,
/// 			Name:      pulumi.String("my_table"),
/// 			Location: pulumi.All(bucket.Name, namespace.NamespaceId).ApplyT(func(_args []interface{}) (string, error) {
/// 				name := _args[0].(string)
/// 				namespaceId := _args[1].(string)
/// 				return fmt.Sprintf("gs://%v/%v/my_table", name, namespaceId), nil
/// 			}).(pulumi.StringOutput),
/// 			Schema: &biglake.IcebergTableSchemaArgs{
/// 				Type: pulumi.String("struct"),
/// 				Fields: biglake.IcebergTableSchemaFieldArray{
/// 					&biglake.IcebergTableSchemaFieldArgs{
/// 						Id:       pulumi.Int(1),
/// 						Name:     pulumi.String("id"),
/// 						Type:     pulumi.String("long"),
/// 						Required: pulumi.Bool(true),
/// 						Doc:      pulumi.String("The ID of the record"),
/// 					},
/// 					&biglake.IcebergTableSchemaFieldArgs{
/// 						Id:       pulumi.Int(2),
/// 						Name:     pulumi.String("name"),
/// 						Type:     pulumi.String("string"),
/// 						Required: pulumi.Bool(false),
/// 					},
/// 				},
/// 				IdentifierFieldIds: pulumi.IntArray{
/// 					pulumi.Int(1),
/// 				},
/// 			},
/// 			PartitionSpec: &biglake.IcebergTablePartitionSpecArgs{
/// 				Fields: biglake.IcebergTablePartitionSpecFieldArray{
/// 					&biglake.IcebergTablePartitionSpecFieldArgs{
/// 						Name:      pulumi.String("id_partition"),
/// 						SourceId:  pulumi.Int(1),
/// 						Transform: pulumi.String("identity"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "catalog" {
///   name         = gcp_storage_bucket.bucket.name
///   catalog_type = "CATALOG_TYPE_GCS_BUCKET"
/// }
/// resource "gcp_biglake_icebergnamespace" "namespace" {
///   catalog      = gcp_biglake_icebergcatalog.catalog.name
///   namespace_id = "my_namespace"
/// }
/// resource "gcp_biglake_icebergtable" "my_iceberg_table" {
///   catalog   = gcp_biglake_icebergcatalog.catalog.name
///   namespace = gcp_biglake_icebergnamespace.namespace.namespace_id
///   name      = "my_table"
///   location  ="gs://${gcp_storage_bucket.bucket.name}/${gcp_biglake_icebergnamespace.namespace.namespace_id}/my_table"
///   schema = {
///     type = "struct"
///     fields = [{
///       "id"       = 1
///       "name"     = "id"
///       "type"     = "long"
///       "required" = true
///       "doc"      = "The ID of the record"
///       }, {
///       "id"       = 2
///       "name"     = "name"
///       "type"     = "string"
///       "required" = false
///     }]
///     identifier_field_ids = [1]
///   }
///   partition_spec = {
///     fields = [{
///       "name"      = "id_partition"
///       "sourceId"  = 1
///       "transform" = "identity"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.biglake.IcebergCatalog;
/// import com.pulumi.gcp.biglake.IcebergCatalogArgs;
/// import com.pulumi.gcp.biglake.IcebergNamespace;
/// import com.pulumi.gcp.biglake.IcebergNamespaceArgs;
/// import com.pulumi.gcp.biglake.IcebergTable;
/// import com.pulumi.gcp.biglake.IcebergTableArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaFieldArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTablePartitionSpecArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTablePartitionSpecFieldArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var catalog = new IcebergCatalog("catalog", IcebergCatalogArgs.builder()
///             .name(bucket.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .build());
///
///         var namespace = new IcebergNamespace("namespace", IcebergNamespaceArgs.builder()
///             .catalog(catalog.name())
///             .namespaceId("my_namespace")
///             .build());
///
///         var myIcebergTable = new IcebergTable("myIcebergTable", IcebergTableArgs.builder()
///             .catalog(catalog.name())
///             .namespace(namespace.namespaceId())
///             .name("my_table")
///             .location(Output.tuple(bucket.name(), namespace.namespaceId()).applyValue(values -> {
///                 var name = values.t1;
///                 var namespaceId = values.t2;
///                 return String.format("gs://%s/%s/my_table", name,namespaceId);
///             }))
///             .schema(IcebergTableSchemaArgs.builder()
///                 .type("struct")
///                 .fields(
///                     IcebergTableSchemaFieldArgs.builder()
///                         .id(1)
///                         .name("id")
///                         .type("long")
///                         .required(true)
///                         .doc("The ID of the record")
///                         .build(),
///                     IcebergTableSchemaFieldArgs.builder()
///                         .id(2)
///                         .name("name")
///                         .type("string")
///                         .required(false)
///                         .build())
///                 .identifierFieldIds(1)
///                 .build())
///             .partitionSpec(IcebergTablePartitionSpecArgs.builder()
///                 .fields(IcebergTablePartitionSpecFieldArgs.builder()
///                     .name("id_partition")
///                     .sourceId(1)
///                     .transform("identity")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   catalog:
///     type: gcp:biglake:IcebergCatalog
///     properties:
///       name: ${bucket.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///   namespace:
///     type: gcp:biglake:IcebergNamespace
///     properties:
///       catalog: ${catalog.name}
///       namespaceId: my_namespace
///   myIcebergTable:
///     type: gcp:biglake:IcebergTable
///     name: my_iceberg_table
///     properties:
///       catalog: ${catalog.name}
///       namespace: ${namespace.namespaceId}
///       name: my_table
///       location: gs://${bucket.name}/${namespace.namespaceId}/my_table
///       schema:
///         type: struct
///         fields:
///           - id: 1
///             name: id
///             type: long
///             required: true
///             doc: The ID of the record
///           - id: 2
///             name: name
///             type: string
///             required: false
///         identifierFieldIds:
///           - 1
///       partitionSpec:
///         fields:
///           - name: id_partition
///             sourceId: 1
///             transform: identity
/// ```
///
/// ### Biglake Iceberg Table Sort Order
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const catalog = new gcp.biglake.IcebergCatalog("catalog", {
///     name: bucket.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
/// });
/// const namespace = new gcp.biglake.IcebergNamespace("namespace", {
///     catalog: catalog.name,
///     namespaceId: "my_namespace",
/// });
/// const myIcebergTable = new gcp.biglake.IcebergTable("my_iceberg_table", {
///     catalog: catalog.name,
///     namespace: namespace.namespaceId,
///     name: "my_table",
///     schema: {
///         type: "struct",
///         fields: [{
///             id: 1,
///             name: "id",
///             type: "long",
///             required: true,
///         }],
///     },
///     sortOrder: {
///         fields: [{
///             sourceId: 1,
///             transform: "identity",
///             direction: "asc",
///             nullOrder: "nulls-first",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// catalog = gcp.biglake.IcebergCatalog("catalog",
///     name=bucket.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET")
/// namespace = gcp.biglake.IcebergNamespace("namespace",
///     catalog=catalog.name,
///     namespace_id="my_namespace")
/// my_iceberg_table = gcp.biglake.IcebergTable("my_iceberg_table",
///     catalog=catalog.name,
///     namespace=namespace.namespace_id,
///     name="my_table",
///     schema={
///         "type": "struct",
///         "fields": [{
///             "id": 1,
///             "name": "id",
///             "type": "long",
///             "required": True,
///         }],
///     },
///     sort_order={
///         "fields": [{
///             "source_id": 1,
///             "transform": "identity",
///             "direction": "asc",
///             "null_order": "nulls-first",
///         }],
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var catalog = new Gcp.BigLake.IcebergCatalog("catalog", new()
///     {
///         Name = bucket.Name,
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///     });
///
///     var @namespace = new Gcp.BigLake.IcebergNamespace("namespace", new()
///     {
///         Catalog = catalog.Name,
///         NamespaceId = "my_namespace",
///     });
///
///     var myIcebergTable = new Gcp.BigLake.IcebergTable("my_iceberg_table", new()
///     {
///         Catalog = catalog.Name,
///         Namespace = @namespace.NamespaceId,
///         Name = "my_table",
///         Schema = new Gcp.BigLake.Inputs.IcebergTableSchemaArgs
///         {
///             Type = "struct",
///             Fields = new[]
///             {
///                 new Gcp.BigLake.Inputs.IcebergTableSchemaFieldArgs
///                 {
///                     Id = 1,
///                     Name = "id",
///                     Type = "long",
///                     Required = true,
///                 },
///             },
///         },
///         SortOrder = new Gcp.BigLake.Inputs.IcebergTableSortOrderArgs
///         {
///             Fields = new[]
///             {
///                 new Gcp.BigLake.Inputs.IcebergTableSortOrderFieldArgs
///                 {
///                     SourceId = 1,
///                     Transform = "identity",
///                     Direction = "asc",
///                     NullOrder = "nulls-first",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		catalog, err := biglake.NewIcebergCatalog(ctx, "catalog", &biglake.IcebergCatalogArgs{
/// 			Name:        bucket.Name,
/// 			CatalogType: pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		namespace, err := biglake.NewIcebergNamespace(ctx, "namespace", &biglake.IcebergNamespaceArgs{
/// 			Catalog:     catalog.Name,
/// 			NamespaceId: pulumi.String("my_namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergTable(ctx, "my_iceberg_table", &biglake.IcebergTableArgs{
/// 			Catalog:   catalog.Name,
/// 			Namespace: namespace.NamespaceId,
/// 			Name:      pulumi.String("my_table"),
/// 			Schema: &biglake.IcebergTableSchemaArgs{
/// 				Type: pulumi.String("struct"),
/// 				Fields: biglake.IcebergTableSchemaFieldArray{
/// 					&biglake.IcebergTableSchemaFieldArgs{
/// 						Id:       pulumi.Int(1),
/// 						Name:     pulumi.String("id"),
/// 						Type:     pulumi.String("long"),
/// 						Required: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			SortOrder: &biglake.IcebergTableSortOrderArgs{
/// 				Fields: biglake.IcebergTableSortOrderFieldArray{
/// 					&biglake.IcebergTableSortOrderFieldArgs{
/// 						SourceId:  pulumi.Int(1),
/// 						Transform: pulumi.String("identity"),
/// 						Direction: pulumi.String("asc"),
/// 						NullOrder: pulumi.String("nulls-first"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "catalog" {
///   name         = gcp_storage_bucket.bucket.name
///   catalog_type = "CATALOG_TYPE_GCS_BUCKET"
/// }
/// resource "gcp_biglake_icebergnamespace" "namespace" {
///   catalog      = gcp_biglake_icebergcatalog.catalog.name
///   namespace_id = "my_namespace"
/// }
/// resource "gcp_biglake_icebergtable" "my_iceberg_table" {
///   catalog   = gcp_biglake_icebergcatalog.catalog.name
///   namespace = gcp_biglake_icebergnamespace.namespace.namespace_id
///   name      = "my_table"
///   schema = {
///     type = "struct"
///     fields = [{
///       "id"       = 1
///       "name"     = "id"
///       "type"     = "long"
///       "required" = true
///     }]
///   }
///   sort_order = {
///     fields = [{
///       "sourceId"  = 1
///       "transform" = "identity"
///       "direction" = "asc"
///       "nullOrder" = "nulls-first"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.biglake.IcebergCatalog;
/// import com.pulumi.gcp.biglake.IcebergCatalogArgs;
/// import com.pulumi.gcp.biglake.IcebergNamespace;
/// import com.pulumi.gcp.biglake.IcebergNamespaceArgs;
/// import com.pulumi.gcp.biglake.IcebergTable;
/// import com.pulumi.gcp.biglake.IcebergTableArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaFieldArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSortOrderArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSortOrderFieldArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var catalog = new IcebergCatalog("catalog", IcebergCatalogArgs.builder()
///             .name(bucket.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .build());
///
///         var namespace = new IcebergNamespace("namespace", IcebergNamespaceArgs.builder()
///             .catalog(catalog.name())
///             .namespaceId("my_namespace")
///             .build());
///
///         var myIcebergTable = new IcebergTable("myIcebergTable", IcebergTableArgs.builder()
///             .catalog(catalog.name())
///             .namespace(namespace.namespaceId())
///             .name("my_table")
///             .schema(IcebergTableSchemaArgs.builder()
///                 .type("struct")
///                 .fields(IcebergTableSchemaFieldArgs.builder()
///                     .id(1)
///                     .name("id")
///                     .type("long")
///                     .required(true)
///                     .build())
///                 .build())
///             .sortOrder(IcebergTableSortOrderArgs.builder()
///                 .fields(IcebergTableSortOrderFieldArgs.builder()
///                     .sourceId(1)
///                     .transform("identity")
///                     .direction("asc")
///                     .nullOrder("nulls-first")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   catalog:
///     type: gcp:biglake:IcebergCatalog
///     properties:
///       name: ${bucket.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///   namespace:
///     type: gcp:biglake:IcebergNamespace
///     properties:
///       catalog: ${catalog.name}
///       namespaceId: my_namespace
///   myIcebergTable:
///     type: gcp:biglake:IcebergTable
///     name: my_iceberg_table
///     properties:
///       catalog: ${catalog.name}
///       namespace: ${namespace.namespaceId}
///       name: my_table
///       schema:
///         type: struct
///         fields:
///           - id: 1
///             name: id
///             type: long
///             required: true
///       sortOrder:
///         fields:
///           - sourceId: 1
///             transform: identity
///             direction: asc
///             nullOrder: nulls-first
/// ```
///
/// ### Biglake Iceberg Table Update
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const catalog = new gcp.biglake.IcebergCatalog("catalog", {
///     name: bucket.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
/// });
/// const namespace = new gcp.biglake.IcebergNamespace("namespace", {
///     catalog: catalog.name,
///     namespaceId: "my_namespace",
/// });
/// const myIcebergTable = new gcp.biglake.IcebergTable("my_iceberg_table", {
///     catalog: catalog.name,
///     namespace: namespace.namespaceId,
///     name: "my_table",
///     schema: {
///         type: "struct",
///         fields: [{
///             id: 1,
///             name: "id",
///             type: "long",
///             required: true,
///         }],
///     },
///     properties: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// catalog = gcp.biglake.IcebergCatalog("catalog",
///     name=bucket.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET")
/// namespace = gcp.biglake.IcebergNamespace("namespace",
///     catalog=catalog.name,
///     namespace_id="my_namespace")
/// my_iceberg_table = gcp.biglake.IcebergTable("my_iceberg_table",
///     catalog=catalog.name,
///     namespace=namespace.namespace_id,
///     name="my_table",
///     schema={
///         "type": "struct",
///         "fields": [{
///             "id": 1,
///             "name": "id",
///             "type": "long",
///             "required": True,
///         }],
///     },
///     properties={
///         "key": "value",
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var catalog = new Gcp.BigLake.IcebergCatalog("catalog", new()
///     {
///         Name = bucket.Name,
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///     });
///
///     var @namespace = new Gcp.BigLake.IcebergNamespace("namespace", new()
///     {
///         Catalog = catalog.Name,
///         NamespaceId = "my_namespace",
///     });
///
///     var myIcebergTable = new Gcp.BigLake.IcebergTable("my_iceberg_table", new()
///     {
///         Catalog = catalog.Name,
///         Namespace = @namespace.NamespaceId,
///         Name = "my_table",
///         Schema = new Gcp.BigLake.Inputs.IcebergTableSchemaArgs
///         {
///             Type = "struct",
///             Fields = new[]
///             {
///                 new Gcp.BigLake.Inputs.IcebergTableSchemaFieldArgs
///                 {
///                     Id = 1,
///                     Name = "id",
///                     Type = "long",
///                     Required = true,
///                 },
///             },
///         },
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/biglake"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		catalog, err := biglake.NewIcebergCatalog(ctx, "catalog", &biglake.IcebergCatalogArgs{
/// 			Name:        bucket.Name,
/// 			CatalogType: pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		namespace, err := biglake.NewIcebergNamespace(ctx, "namespace", &biglake.IcebergNamespaceArgs{
/// 			Catalog:     catalog.Name,
/// 			NamespaceId: pulumi.String("my_namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergTable(ctx, "my_iceberg_table", &biglake.IcebergTableArgs{
/// 			Catalog:   catalog.Name,
/// 			Namespace: namespace.NamespaceId,
/// 			Name:      pulumi.String("my_table"),
/// 			Schema: &biglake.IcebergTableSchemaArgs{
/// 				Type: pulumi.String("struct"),
/// 				Fields: biglake.IcebergTableSchemaFieldArray{
/// 					&biglake.IcebergTableSchemaFieldArgs{
/// 						Id:       pulumi.Int(1),
/// 						Name:     pulumi.String("id"),
/// 						Type:     pulumi.String("long"),
/// 						Required: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Properties: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "catalog" {
///   name         = gcp_storage_bucket.bucket.name
///   catalog_type = "CATALOG_TYPE_GCS_BUCKET"
/// }
/// resource "gcp_biglake_icebergnamespace" "namespace" {
///   catalog      = gcp_biglake_icebergcatalog.catalog.name
///   namespace_id = "my_namespace"
/// }
/// resource "gcp_biglake_icebergtable" "my_iceberg_table" {
///   catalog   = gcp_biglake_icebergcatalog.catalog.name
///   namespace = gcp_biglake_icebergnamespace.namespace.namespace_id
///   name      = "my_table"
///   schema = {
///     type = "struct"
///     fields = [{
///       "id"       = 1
///       "name"     = "id"
///       "type"     = "long"
///       "required" = true
///     }]
///   }
///   properties = {
///     "key" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.biglake.IcebergCatalog;
/// import com.pulumi.gcp.biglake.IcebergCatalogArgs;
/// import com.pulumi.gcp.biglake.IcebergNamespace;
/// import com.pulumi.gcp.biglake.IcebergNamespaceArgs;
/// import com.pulumi.gcp.biglake.IcebergTable;
/// import com.pulumi.gcp.biglake.IcebergTableArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergTableSchemaFieldArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var catalog = new IcebergCatalog("catalog", IcebergCatalogArgs.builder()
///             .name(bucket.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .build());
///
///         var namespace = new IcebergNamespace("namespace", IcebergNamespaceArgs.builder()
///             .catalog(catalog.name())
///             .namespaceId("my_namespace")
///             .build());
///
///         var myIcebergTable = new IcebergTable("myIcebergTable", IcebergTableArgs.builder()
///             .catalog(catalog.name())
///             .namespace(namespace.namespaceId())
///             .name("my_table")
///             .schema(IcebergTableSchemaArgs.builder()
///                 .type("struct")
///                 .fields(IcebergTableSchemaFieldArgs.builder()
///                     .id(1)
///                     .name("id")
///                     .type("long")
///                     .required(true)
///                     .build())
///                 .build())
///             .properties(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   catalog:
///     type: gcp:biglake:IcebergCatalog
///     properties:
///       name: ${bucket.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///   namespace:
///     type: gcp:biglake:IcebergNamespace
///     properties:
///       catalog: ${catalog.name}
///       namespaceId: my_namespace
///   myIcebergTable:
///     type: gcp:biglake:IcebergTable
///     name: my_iceberg_table
///     properties:
///       catalog: ${catalog.name}
///       namespace: ${namespace.namespaceId}
///       name: my_table
///       schema:
///         type: struct
///         fields:
///           - id: 1
///             name: id
///             type: long
///             required: true
///       properties:
///         key: value
/// ```
///
///
/// ## Import
///
/// IcebergTable can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{name}}`
/// * `{{project}}/{{catalog}}/{{namespace}}/{{name}}`
/// * `{{catalog}}/{{namespace}}/{{name}}`
///
///
/// When using the `pulumi import` command, IcebergTable can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergTable:IcebergTable default projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace}}/tables/{{name}}
/// $ pulumi import gcp:biglake/icebergTable:IcebergTable default {{project}}/{{catalog}}/{{namespace}}/{{name}}
/// $ pulumi import gcp:biglake/icebergTable:IcebergTable default {{catalog}}/{{namespace}}/{{name}}
/// ```
class IcebergTable extends pulumi.CustomResource {
  /// The name of the IcebergCatalog.
  late final pulumi.Output<String> catalog;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location of the table.
  late final pulumi.Output<String> location;
  /// The name of the table.
  late final pulumi.Output<String> name;
  /// The parent namespace of the table.
  late final pulumi.Output<String> namespace;
  /// The partition spec of the table.
  /// Structure is documented below.
  late final pulumi.Output<IcebergTablePartitionSpec> partitionSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User-defined properties for the table.
  late final pulumi.Output<Map<String, String>> properties;
  /// The schema of the table.
  /// Structure is documented below.
  late final pulumi.Output<IcebergTableSchema> schema;
  /// The sort order of the table.
  /// Structure is documented below.
  late final pulumi.Output<IcebergTableSortOrder> sortOrder;

  /// Creates a new [IcebergTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergTable]. {@macro pulumi_biglake_iceberg_table_iceberg_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergTable(
    String name, {
    IcebergTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergTable:IcebergTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    partitionSpec = registerOutput<IcebergTablePartitionSpec>('partitionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTablePartitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    properties = registerOutput<Map<String, String>>('properties');
    schema = registerOutput<IcebergTableSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sortOrder = registerOutput<IcebergTableSortOrder>('sortOrder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableSortOrder.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [IcebergTable] resource's state with the given [name] and [id].
  static IcebergTable get(
    String name,
    pulumi.Input<String> id, {
    IcebergTableState? state,
  }) {
    return IcebergTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IcebergTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergTable:IcebergTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    partitionSpec = registerOutput<IcebergTablePartitionSpec>('partitionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTablePartitionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    properties = registerOutput<Map<String, String>>('properties');
    schema = registerOutput<IcebergTableSchema>('schema', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableSchema.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sortOrder = registerOutput<IcebergTableSortOrder>('sortOrder', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergTableSortOrder.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
