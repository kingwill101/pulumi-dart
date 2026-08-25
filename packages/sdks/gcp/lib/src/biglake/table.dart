import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_args.dart';
import 'table_hive_options.dart';
import 'table_state.dart';

/// Represents a table.
///
///
/// To get more information about Table, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/biglake/rest/v1/projects.locations.catalogs.databases.tables)
/// * How-to Guides
/// * [Manage open source metadata with BigLake Metastore](https://cloud.google.com/bigquery/docs/manage-open-source-metadata#create_tables)
///
/// ## Example Usage
///
/// ### Biglake Table
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const catalog = new gcp.biglake.Catalog("catalog", {
///     name: "my_catalog",
///     location: "US",
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my_bucket",
///     location: "US",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const metadataFolder = new gcp.storage.BucketObject("metadata_folder", {
///     name: "metadata/",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const dataFolder = new gcp.storage.BucketObject("data_folder", {
///     name: "data/",
///     content: " ",
///     bucket: bucket.name,
/// });
/// const database = new gcp.biglake.Database("database", {
///     name: "my_database",
///     catalog: catalog.id,
///     type: "HIVE",
///     hiveOptions: {
///         locationUri: pulumi.interpolate`gs://${bucket.name}/${metadataFolder.name}`,
///         parameters: {
///             owner: "Alex",
///         },
///     },
/// });
/// const table = new gcp.biglake.Table("table", {
///     name: "my_table",
///     database: database.id,
///     type: "HIVE",
///     hiveOptions: {
///         tableType: "MANAGED_TABLE",
///         storageDescriptor: {
///             locationUri: pulumi.interpolate`gs://${bucket.name}/${dataFolder.name}`,
///             inputFormat: "org.apache.hadoop.mapred.SequenceFileInputFormat",
///             outputFormat: "org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat",
///         },
///         parameters: {
///             "spark.sql.create.version": "3.1.3",
///             "spark.sql.sources.schema.numParts": "1",
///             transient_lastDdlTime: "1680894197",
///             "spark.sql.partitionProvider": "catalog",
///             owner: "John Doe",
///             "spark.sql.sources.schema.part.0": "{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}",
///             "spark.sql.sources.provider": "iceberg",
///             provider: "iceberg",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// catalog = gcp.biglake.Catalog("catalog",
///     name="my_catalog",
///     location="US")
/// bucket = gcp.storage.Bucket("bucket",
///     name="my_bucket",
///     location="US",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// metadata_folder = gcp.storage.BucketObject("metadata_folder",
///     name="metadata/",
///     content=" ",
///     bucket=bucket.name)
/// data_folder = gcp.storage.BucketObject("data_folder",
///     name="data/",
///     content=" ",
///     bucket=bucket.name)
/// database = gcp.biglake.Database("database",
///     name="my_database",
///     catalog=catalog.id,
///     type="HIVE",
///     hive_options={
///         "location_uri": pulumi.Output.all(
///             bucketName=bucket.name,
///             metadataFolderName=metadata_folder.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['metadataFolderName']}")
/// ,
///         "parameters": {
///             "owner": "Alex",
///         },
///     })
/// table = gcp.biglake.Table("table",
///     name="my_table",
///     database=database.id,
///     type="HIVE",
///     hive_options={
///         "table_type": "MANAGED_TABLE",
///         "storage_descriptor": {
///             "location_uri": pulumi.Output.all(
///                 bucketName=bucket.name,
///                 dataFolderName=data_folder.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['dataFolderName']}")
/// ,
///             "input_format": "org.apache.hadoop.mapred.SequenceFileInputFormat",
///             "output_format": "org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat",
///         },
///         "parameters": {
///             "spark.sql.create.version": "3.1.3",
///             "spark.sql.sources.schema.numParts": "1",
///             "transient_lastDdlTime": "1680894197",
///             "spark.sql.partitionProvider": "catalog",
///             "owner": "John Doe",
///             "spark.sql.sources.schema.part.0": "{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}",
///             "spark.sql.sources.provider": "iceberg",
///             "provider": "iceberg",
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
///     var catalog = new Gcp.BigLake.Catalog("catalog", new()
///     {
///         Name = "my_catalog",
///         Location = "US",
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my_bucket",
///         Location = "US",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var metadataFolder = new Gcp.Storage.BucketObject("metadata_folder", new()
///     {
///         Name = "metadata/",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var dataFolder = new Gcp.Storage.BucketObject("data_folder", new()
///     {
///         Name = "data/",
///         Content = " ",
///         Bucket = bucket.Name,
///     });
///
///     var database = new Gcp.BigLake.Database("database", new()
///     {
///         Name = "my_database",
///         Catalog = catalog.Id,
///         Type = "HIVE",
///         HiveOptions = new Gcp.BigLake.Inputs.DatabaseHiveOptionsArgs
///         {
///             LocationUri = Output.Tuple(bucket.Name, metadataFolder.Name).Apply(values =>
///             {
///                 var bucketName = values.Item1;
///                 var metadataFolderName = values.Item2;
///                 return $"gs://{bucketName}/{metadataFolderName}";
///             }),
///             Parameters =
///             {
///                 { "owner", "Alex" },
///             },
///         },
///     });
///
///     var table = new Gcp.BigLake.Table("table", new()
///     {
///         Name = "my_table",
///         Database = database.Id,
///         Type = "HIVE",
///         HiveOptions = new Gcp.BigLake.Inputs.TableHiveOptionsArgs
///         {
///             TableType = "MANAGED_TABLE",
///             StorageDescriptor = new Gcp.BigLake.Inputs.TableHiveOptionsStorageDescriptorArgs
///             {
///                 LocationUri = Output.Tuple(bucket.Name, dataFolder.Name).Apply(values =>
///                 {
///                     var bucketName = values.Item1;
///                     var dataFolderName = values.Item2;
///                     return $"gs://{bucketName}/{dataFolderName}";
///                 }),
///                 InputFormat = "org.apache.hadoop.mapred.SequenceFileInputFormat",
///                 OutputFormat = "org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat",
///             },
///             Parameters =
///             {
///                 { "spark.sql.create.version", "3.1.3" },
///                 { "spark.sql.sources.schema.numParts", "1" },
///                 { "transient_lastDdlTime", "1680894197" },
///                 { "spark.sql.partitionProvider", "catalog" },
///                 { "owner", "John Doe" },
///                 { "spark.sql.sources.schema.part.0", "{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}" },
///                 { "spark.sql.sources.provider", "iceberg" },
///                 { "provider", "iceberg" },
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
/// 		catalog, err := biglake.NewCatalog(ctx, "catalog", &biglake.CatalogArgs{
/// 			Name:     pulumi.String("my_catalog"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		metadataFolder, err := storage.NewBucketObject(ctx, "metadata_folder", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("metadata/"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataFolder, err := storage.NewBucketObject(ctx, "data_folder", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("data/"),
/// 			Content: pulumi.String(" "),
/// 			Bucket:  bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := biglake.NewDatabase(ctx, "database", &biglake.DatabaseArgs{
/// 			Name:    pulumi.String("my_database"),
/// 			Catalog: catalog.ID().ToIDOutput().ToStringOutput(),
/// 			Type:    pulumi.String("HIVE"),
/// 			HiveOptions: &biglake.DatabaseHiveOptionsArgs{
/// 				LocationUri: pulumi.All(bucket.Name, metadataFolder.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucketName := _args[0].(string)
/// 					metadataFolderName := _args[1].(string)
/// 					return fmt.Sprintf("gs://%v/%v", bucketName, metadataFolderName), nil
/// 				}).(pulumi.StringOutput),
/// 				Parameters: pulumi.StringMap{
/// 					"owner": pulumi.String("Alex"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewTable(ctx, "table", &biglake.TableArgs{
/// 			Name:     pulumi.String("my_table"),
/// 			Database: database.ID().ToIDOutput().ToStringOutput(),
/// 			Type:     pulumi.String("HIVE"),
/// 			HiveOptions: &biglake.TableHiveOptionsArgs{
/// 				TableType: pulumi.String("MANAGED_TABLE"),
/// 				StorageDescriptor: &biglake.TableHiveOptionsStorageDescriptorArgs{
/// 					LocationUri: pulumi.All(bucket.Name, dataFolder.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucketName := _args[0].(string)
/// 						dataFolderName := _args[1].(string)
/// 						return fmt.Sprintf("gs://%v/%v", bucketName, dataFolderName), nil
/// 					}).(pulumi.StringOutput),
/// 					InputFormat:  pulumi.String("org.apache.hadoop.mapred.SequenceFileInputFormat"),
/// 					OutputFormat: pulumi.String("org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat"),
/// 				},
/// 				Parameters: pulumi.StringMap{
/// 					"spark.sql.create.version":          pulumi.String("3.1.3"),
/// 					"spark.sql.sources.schema.numParts": pulumi.String("1"),
/// 					"transient_lastDdlTime":             pulumi.String("1680894197"),
/// 					"spark.sql.partitionProvider":       pulumi.String("catalog"),
/// 					"owner":                             pulumi.String("John Doe"),
/// 					"spark.sql.sources.schema.part.0":   pulumi.String("{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}"),
/// 					"spark.sql.sources.provider":        pulumi.String("iceberg"),
/// 					"provider":                          pulumi.String("iceberg"),
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
/// resource "gcp_biglake_catalog" "catalog" {
///   name     = "my_catalog"
///   location = "US"
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name                        = "my_bucket"
///   location                    = "US"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucketobject" "metadata_folder" {
///   name    = "metadata/"
///   content = " "
///   bucket  = gcp_storage_bucket.bucket.name
/// }
/// resource "gcp_storage_bucketobject" "data_folder" {
///   name    = "data/"
///   content = " "
///   bucket  = gcp_storage_bucket.bucket.name
/// }
/// resource "gcp_biglake_database" "database" {
///   name    = "my_database"
///   catalog = gcp_biglake_catalog.catalog.id
///   type    = "HIVE"
///   hive_options = {
///     location_uri ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.metadata_folder.name}"
///     parameters = {
///       "owner" = "Alex"
///     }
///   }
/// }
/// resource "gcp_biglake_table" "table" {
///   name     = "my_table"
///   database = gcp_biglake_database.database.id
///   type     = "HIVE"
///   hive_options = {
///     table_type = "MANAGED_TABLE"
///     storage_descriptor = {
///       location_uri  ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.data_folder.name}"
///       input_format  = "org.apache.hadoop.mapred.SequenceFileInputFormat"
///       output_format = "org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat"
///     }
///     parameters = {
///       "spark.sql.create.version"          = "3.1.3"
///       "spark.sql.sources.schema.numParts" = "1"
///       "transient_lastDdlTime"             = "1680894197"
///       "spark.sql.partitionProvider"       = "catalog"
///       "owner"                             = "John Doe"
///       "spark.sql.sources.schema.part.0"   = "{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}"
///       "spark.sql.sources.provider"        = "iceberg"
///       "provider"                          = "iceberg"
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
/// import com.pulumi.gcp.biglake.Catalog;
/// import com.pulumi.gcp.biglake.CatalogArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.biglake.Database;
/// import com.pulumi.gcp.biglake.DatabaseArgs;
/// import com.pulumi.gcp.biglake.inputs.DatabaseHiveOptionsArgs;
/// import com.pulumi.gcp.biglake.Table;
/// import com.pulumi.gcp.biglake.TableArgs;
/// import com.pulumi.gcp.biglake.inputs.TableHiveOptionsArgs;
/// import com.pulumi.gcp.biglake.inputs.TableHiveOptionsStorageDescriptorArgs;
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
///         var catalog = new Catalog("catalog", CatalogArgs.builder()
///             .name("my_catalog")
///             .location("US")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var metadataFolder = new BucketObject("metadataFolder", BucketObjectArgs.builder()
///             .name("metadata/")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var dataFolder = new BucketObject("dataFolder", BucketObjectArgs.builder()
///             .name("data/")
///             .content(" ")
///             .bucket(bucket.name())
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .name("my_database")
///             .catalog(catalog.id())
///             .type("HIVE")
///             .hiveOptions(DatabaseHiveOptionsArgs.builder()
///                 .locationUri(Output.tuple(bucket.name(), metadataFolder.name()).applyValue(values -> {
///                     var bucketName = values.t1;
///                     var metadataFolderName = values.t2;
///                     return String.format("gs://%s/%s", bucketName,metadataFolderName);
///                 }))
///                 .parameters(Map.of("owner", "Alex"))
///                 .build())
///             .build());
///
///         var table = new Table("table", TableArgs.builder()
///             .name("my_table")
///             .database(database.id())
///             .type("HIVE")
///             .hiveOptions(TableHiveOptionsArgs.builder()
///                 .tableType("MANAGED_TABLE")
///                 .storageDescriptor(TableHiveOptionsStorageDescriptorArgs.builder()
///                     .locationUri(Output.tuple(bucket.name(), dataFolder.name()).applyValue(values -> {
///                         var bucketName = values.t1;
///                         var dataFolderName = values.t2;
///                         return String.format("gs://%s/%s", bucketName,dataFolderName);
///                     }))
///                     .inputFormat("org.apache.hadoop.mapred.SequenceFileInputFormat")
///                     .outputFormat("org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat")
///                     .build())
///                 .parameters(Map.ofEntries(
///                     Map.entry("spark.sql.create.version", "3.1.3"),
///                     Map.entry("spark.sql.sources.schema.numParts", "1"),
///                     Map.entry("transient_lastDdlTime", "1680894197"),
///                     Map.entry("spark.sql.partitionProvider", "catalog"),
///                     Map.entry("owner", "John Doe"),
///                     Map.entry("spark.sql.sources.schema.part.0", "{\"type\":\"struct\",\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}},{\"name\":\"name\",\"type\":\"string\",\"nullable\":true,\"metadata\":{}},{\"name\":\"age\",\"type\":\"integer\",\"nullable\":true,\"metadata\":{}}]}"),
///                     Map.entry("spark.sql.sources.provider", "iceberg"),
///                     Map.entry("provider", "iceberg")
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   catalog:
///     type: gcp:biglake:Catalog
///     properties:
///       name: my_catalog
///       location: US
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my_bucket
///       location: US
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   metadataFolder:
///     type: gcp:storage:BucketObject
///     name: metadata_folder
///     properties:
///       name: metadata/
///       content: ' '
///       bucket: ${bucket.name}
///   dataFolder:
///     type: gcp:storage:BucketObject
///     name: data_folder
///     properties:
///       name: data/
///       content: ' '
///       bucket: ${bucket.name}
///   database:
///     type: gcp:biglake:Database
///     properties:
///       name: my_database
///       catalog: ${catalog.id}
///       type: HIVE
///       hiveOptions:
///         locationUri: gs://${bucket.name}/${metadataFolder.name}
///         parameters:
///           owner: Alex
///   table:
///     type: gcp:biglake:Table
///     properties:
///       name: my_table
///       database: ${database.id}
///       type: HIVE
///       hiveOptions:
///         tableType: MANAGED_TABLE
///         storageDescriptor:
///           locationUri: gs://${bucket.name}/${dataFolder.name}
///           inputFormat: org.apache.hadoop.mapred.SequenceFileInputFormat
///           outputFormat: org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat
///         parameters:
///           spark.sql.create.version: 3.1.3
///           spark.sql.sources.schema.numParts: '1'
///           transient_lastDdlTime: '1680894197'
///           spark.sql.partitionProvider: catalog
///           owner: John Doe
///           spark.sql.sources.schema.part.0: '{"type":"struct","fields":[{"name":"id","type":"integer","nullable":true,"metadata":{}},{"name":"name","type":"string","nullable":true,"metadata":{}},{"name":"age","type":"integer","nullable":true,"metadata":{}}]}'
///           spark.sql.sources.provider: iceberg
///           provider: iceberg
/// ```
///
///
/// ## Import
///
/// Table can be imported using any of these accepted formats:
///
/// * `{{database}}/tables/{{name}}`
///
///
/// When using the `pulumi import` command, Table can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/table:Table default {{database}}/tables/{{name}}
/// ```
class Table extends pulumi.CustomResource {
  /// Output only. The creation time of the table. A timestamp in RFC3339 UTC
  /// "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// The id of the parent database.
  late final pulumi.Output<String?> database;
  /// Output only. The deletion time of the table. Only set after the
  /// table is deleted. A timestamp in RFC3339 UTC "Zulu" format, with
  /// nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The checksum of a table object computed by the server based on the value
  /// of other fields. It may be sent on update requests to ensure the client
  /// has an up-to-date value before proceeding. It is only checked for update
  /// table operations.
  late final pulumi.Output<String> etag;
  /// Output only. The time when this table is considered expired. Only set
  /// after the table is deleted. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples:
  /// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;
  /// Options of a Hive table.
  /// Structure is documented below.
  late final pulumi.Output<TableHiveOptions?> hiveOptions;
  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  late final pulumi.Output<String> name;
  /// The database type.
  /// Possible values are: `HIVE`.
  late final pulumi.Output<String?> type;
  /// Output only. The last modification time of the table. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Table].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Table]. {@macro pulumi_biglake_table_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Table(
    String name, {
    TableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String?>('database');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    hiveOptions = registerOutput<TableHiveOptions?>('hiveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableHiveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Table] resource's state with the given [name] and [id].
  static Table get(
    String name,
    pulumi.Input<String> id, {
    TableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Table._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Table._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/table:Table',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String?>('database');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    hiveOptions = registerOutput<TableHiveOptions?>('hiveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableHiveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Table] resource.
  Table.reference(String urn)
    : super(
        'gcp:biglake/table:Table',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String?>('database');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    hiveOptions = registerOutput<TableHiveOptions?>('hiveOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableHiveOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    type = registerOutput<String?>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
