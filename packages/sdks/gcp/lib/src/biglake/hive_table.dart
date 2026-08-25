import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_args.dart';
import 'hive_table_partition_key.dart';
import 'hive_table_state.dart';
import 'hive_table_storage_descriptor.dart';

/// Hive Tables in BigLake Metastore that exist within a Hive Catalog and Database.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Biglake Hive Table
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example-bucket",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const catalog = new gcp.biglake.HiveCatalog("catalog", {
///     name: "tf_test_catalog_85794",
///     primaryLocation: "us-central1",
///     locationUri: pulumi.interpolate`gs://${bucket.name}`,
/// });
/// const database = new gcp.biglake.HiveDatabase("database", {
///     catalog: catalog.name,
///     name: "tf_test_database_21197",
///     locationUri: pulumi.interpolate`gs://${bucket.name}`,
/// });
/// const myHiveTable = new gcp.biglake.HiveTable("my_hive_table", {
///     catalog: catalog.name,
///     database: database.name,
///     name: "tf_test_table_52865",
///     description: "Hive table description",
///     storageDescriptor: {
///         columns: [
///             {
///                 name: "col0",
///                 type: "STRING",
///                 comment: "column that will be deleted on update",
///             },
///             {
///                 name: "col1",
///                 type: "STRING",
///                 comment: "first skewed column",
///             },
///         ],
///         inputFormat: "org.apache.hadoop.mapred.TextInputFormat",
///         outputFormat: "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat",
///         compressed: true,
///         numBuckets: 1,
///         bucketCols: ["bucket_col1"],
///         sortCols: [{
///             col: "col1",
///             order: 0,
///         }],
///         skewedInfo: {
///             skewedColNames: ["col1"],
///             skewedColValues: [{
///                 values: ["val1"],
///             }],
///             skewedKeyValuesLocations: [{
///                 values: ["val1"],
///                 location: "gs://example-bucket/skewed_location_1",
///             }],
///         },
///         serdeInfo: {
///             name: "LazySimpleSerDe",
///             serializationLib: "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe",
///         },
///         parameters: {
///             key1: "value1",
///         },
///         storedAsSubDirs: false,
///     },
///     partitionKeys: [{
///         name: "dt",
///         type: "STRING",
///         comment: "date partition",
///     }],
///     parameters: {
///         key1: "value1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="example-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// catalog = gcp.biglake.HiveCatalog("catalog",
///     name="tf_test_catalog_85794",
///     primary_location="us-central1",
///     location_uri=bucket.name.apply(lambda name: f"gs://{name}"))
/// database = gcp.biglake.HiveDatabase("database",
///     catalog=catalog.name,
///     name="tf_test_database_21197",
///     location_uri=bucket.name.apply(lambda name: f"gs://{name}"))
/// my_hive_table = gcp.biglake.HiveTable("my_hive_table",
///     catalog=catalog.name,
///     database=database.name,
///     name="tf_test_table_52865",
///     description="Hive table description",
///     storage_descriptor={
///         "columns": [
///             {
///                 "name": "col0",
///                 "type": "STRING",
///                 "comment": "column that will be deleted on update",
///             },
///             {
///                 "name": "col1",
///                 "type": "STRING",
///                 "comment": "first skewed column",
///             },
///         ],
///         "input_format": "org.apache.hadoop.mapred.TextInputFormat",
///         "output_format": "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat",
///         "compressed": True,
///         "num_buckets": 1,
///         "bucket_cols": ["bucket_col1"],
///         "sort_cols": [{
///             "col": "col1",
///             "order": 0,
///         }],
///         "skewed_info": {
///             "skewed_col_names": ["col1"],
///             "skewed_col_values": [{
///                 "values": ["val1"],
///             }],
///             "skewed_key_values_locations": [{
///                 "values": ["val1"],
///                 "location": "gs://example-bucket/skewed_location_1",
///             }],
///         },
///         "serde_info": {
///             "name": "LazySimpleSerDe",
///             "serialization_lib": "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe",
///         },
///         "parameters": {
///             "key1": "value1",
///         },
///         "stored_as_sub_dirs": False,
///     },
///     partition_keys=[{
///         "name": "dt",
///         "type": "STRING",
///         "comment": "date partition",
///     }],
///     parameters={
///         "key1": "value1",
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
///         Name = "example-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var catalog = new Gcp.BigLake.HiveCatalog("catalog", new()
///     {
///         Name = "tf_test_catalog_85794",
///         PrimaryLocation = "us-central1",
///         LocationUri = bucket.Name.Apply(name => $"gs://{name}"),
///     });
///
///     var database = new Gcp.BigLake.HiveDatabase("database", new()
///     {
///         Catalog = catalog.Name,
///         Name = "tf_test_database_21197",
///         LocationUri = bucket.Name.Apply(name => $"gs://{name}"),
///     });
///
///     var myHiveTable = new Gcp.BigLake.HiveTable("my_hive_table", new()
///     {
///         Catalog = catalog.Name,
///         Database = database.Name,
///         Name = "tf_test_table_52865",
///         Description = "Hive table description",
///         StorageDescriptor = new Gcp.BigLake.Inputs.HiveTableStorageDescriptorArgs
///         {
///             Columns = new[]
///             {
///                 new Gcp.BigLake.Inputs.HiveTableStorageDescriptorColumnArgs
///                 {
///                     Name = "col0",
///                     Type = "STRING",
///                     Comment = "column that will be deleted on update",
///                 },
///                 new Gcp.BigLake.Inputs.HiveTableStorageDescriptorColumnArgs
///                 {
///                     Name = "col1",
///                     Type = "STRING",
///                     Comment = "first skewed column",
///                 },
///             },
///             InputFormat = "org.apache.hadoop.mapred.TextInputFormat",
///             OutputFormat = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat",
///             Compressed = true,
///             NumBuckets = 1,
///             BucketCols = new[]
///             {
///                 "bucket_col1",
///             },
///             SortCols = new[]
///             {
///                 new Gcp.BigLake.Inputs.HiveTableStorageDescriptorSortColArgs
///                 {
///                     Col = "col1",
///                     Order = 0,
///                 },
///             },
///             SkewedInfo = new Gcp.BigLake.Inputs.HiveTableStorageDescriptorSkewedInfoArgs
///             {
///                 SkewedColNames = new[]
///                 {
///                     "col1",
///                 },
///                 SkewedColValues = new[]
///                 {
///                     new Gcp.BigLake.Inputs.HiveTableStorageDescriptorSkewedInfoSkewedColValueArgs
///                     {
///                         Values = new[]
///                         {
///                             "val1",
///                         },
///                     },
///                 },
///                 SkewedKeyValuesLocations = new[]
///                 {
///                     new Gcp.BigLake.Inputs.HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocationArgs
///                     {
///                         Values = new[]
///                         {
///                             "val1",
///                         },
///                         Location = "gs://example-bucket/skewed_location_1",
///                     },
///                 },
///             },
///             SerdeInfo = new Gcp.BigLake.Inputs.HiveTableStorageDescriptorSerdeInfoArgs
///             {
///                 Name = "LazySimpleSerDe",
///                 SerializationLib = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe",
///             },
///             Parameters =
///             {
///                 { "key1", "value1" },
///             },
///             StoredAsSubDirs = false,
///         },
///         PartitionKeys = new[]
///         {
///             new Gcp.BigLake.Inputs.HiveTablePartitionKeyArgs
///             {
///                 Name = "dt",
///                 Type = "STRING",
///                 Comment = "date partition",
///             },
///         },
///         Parameters =
///         {
///             { "key1", "value1" },
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
/// 			Name:                     pulumi.String("example-bucket"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		catalog, err := biglake.NewHiveCatalog(ctx, "catalog", &biglake.HiveCatalogArgs{
/// 			Name:            pulumi.String("tf_test_catalog_85794"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			LocationUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := biglake.NewHiveDatabase(ctx, "database", &biglake.HiveDatabaseArgs{
/// 			Catalog: catalog.Name,
/// 			Name:    pulumi.String("tf_test_database_21197"),
/// 			LocationUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveTable(ctx, "my_hive_table", &biglake.HiveTableArgs{
/// 			Catalog:     catalog.Name,
/// 			Database:    database.Name,
/// 			Name:        pulumi.String("tf_test_table_52865"),
/// 			Description: pulumi.String("Hive table description"),
/// 			StorageDescriptor: &biglake.HiveTableStorageDescriptorArgs{
/// 				Columns: biglake.HiveTableStorageDescriptorColumnArray{
/// 					&biglake.HiveTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("col0"),
/// 						Type:    pulumi.String("STRING"),
/// 						Comment: pulumi.String("column that will be deleted on update"),
/// 					},
/// 					&biglake.HiveTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("col1"),
/// 						Type:    pulumi.String("STRING"),
/// 						Comment: pulumi.String("first skewed column"),
/// 					},
/// 				},
/// 				InputFormat:  pulumi.String("org.apache.hadoop.mapred.TextInputFormat"),
/// 				OutputFormat: pulumi.String("org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"),
/// 				Compressed:   pulumi.Bool(true),
/// 				NumBuckets:   pulumi.Int(1),
/// 				BucketCols: pulumi.StringArray{
/// 					pulumi.String("bucket_col1"),
/// 				},
/// 				SortCols: biglake.HiveTableStorageDescriptorSortColArray{
/// 					&biglake.HiveTableStorageDescriptorSortColArgs{
/// 						Col:   pulumi.String("col1"),
/// 						Order: pulumi.Int(0),
/// 					},
/// 				},
/// 				SkewedInfo: &biglake.HiveTableStorageDescriptorSkewedInfoArgs{
/// 					SkewedColNames: pulumi.StringArray{
/// 						pulumi.String("col1"),
/// 					},
/// 					SkewedColValues: biglake.HiveTableStorageDescriptorSkewedInfoSkewedColValueArray{
/// 						&biglake.HiveTableStorageDescriptorSkewedInfoSkewedColValueArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("val1"),
/// 							},
/// 						},
/// 					},
/// 					SkewedKeyValuesLocations: biglake.HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocationArray{
/// 						&biglake.HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocationArgs{
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("val1"),
/// 							},
/// 							Location: pulumi.String("gs://example-bucket/skewed_location_1"),
/// 						},
/// 					},
/// 				},
/// 				SerdeInfo: &biglake.HiveTableStorageDescriptorSerdeInfoArgs{
/// 					Name:             pulumi.String("LazySimpleSerDe"),
/// 					SerializationLib: pulumi.String("org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"),
/// 				},
/// 				Parameters: pulumi.StringMap{
/// 					"key1": pulumi.String("value1"),
/// 				},
/// 				StoredAsSubDirs: pulumi.Bool(false),
/// 			},
/// 			PartitionKeys: biglake.HiveTablePartitionKeyArray{
/// 				&biglake.HiveTablePartitionKeyArgs{
/// 					Name:    pulumi.String("dt"),
/// 					Type:    pulumi.String("STRING"),
/// 					Comment: pulumi.String("date partition"),
/// 				},
/// 			},
/// 			Parameters: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
///   name                        = "example-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_hivecatalog" "catalog" {
///   name             = "tf_test_catalog_85794"
///   primary_location = "us-central1"
///   location_uri     ="gs://${gcp_storage_bucket.bucket.name}"
/// }
/// resource "gcp_biglake_hivedatabase" "database" {
///   catalog      = gcp_biglake_hivecatalog.catalog.name
///   name         = "tf_test_database_21197"
///   location_uri ="gs://${gcp_storage_bucket.bucket.name}"
/// }
/// resource "gcp_biglake_hivetable" "my_hive_table" {
///   catalog     = gcp_biglake_hivecatalog.catalog.name
///   database    = gcp_biglake_hivedatabase.database.name
///   name        = "tf_test_table_52865"
///   description = "Hive table description"
///   storage_descriptor = {
///     columns = [{
///       "name"    = "col0"
///       "type"    = "STRING"
///       "comment" = "column that will be deleted on update"
///       }, {
///       "name"    = "col1"
///       "type"    = "STRING"
///       "comment" = "first skewed column"
///     }]
///     input_format  = "org.apache.hadoop.mapred.TextInputFormat"
///     output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"
///     compressed    = true
///     num_buckets   = 1
///     bucket_cols   = ["bucket_col1"]
///     sort_cols = [{
///       "col"   = "col1"
///       "order" = 0
///     }]
///     skewed_info = {
///       skewed_col_names = ["col1"]
///       skewed_col_values = [{
///         "values" = ["val1"]
///       }]
///       skewed_key_values_locations = [{
///         "values"   = ["val1"]
///         "location" = "gs://example-bucket/skewed_location_1"
///       }]
///     }
///     serde_info = {
///       name              = "LazySimpleSerDe"
///       serialization_lib = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"
///     }
///     parameters = {
///       "key1" = "value1"
///     }
///     stored_as_sub_dirs = false
///   }
///   partition_keys {
///     name    = "dt"
///     type    = "STRING"
///     comment = "date partition"
///   }
///   parameters = {
///     "key1" = "value1"
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
/// import com.pulumi.gcp.biglake.HiveCatalog;
/// import com.pulumi.gcp.biglake.HiveCatalogArgs;
/// import com.pulumi.gcp.biglake.HiveDatabase;
/// import com.pulumi.gcp.biglake.HiveDatabaseArgs;
/// import com.pulumi.gcp.biglake.HiveTable;
/// import com.pulumi.gcp.biglake.HiveTableArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorColumnArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorSortColArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorSkewedInfoArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorSkewedInfoSkewedColValueArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocationArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTableStorageDescriptorSerdeInfoArgs;
/// import com.pulumi.gcp.biglake.inputs.HiveTablePartitionKeyArgs;
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
///             .name("example-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var catalog = new HiveCatalog("catalog", HiveCatalogArgs.builder()
///             .name("tf_test_catalog_85794")
///             .primaryLocation("us-central1")
///             .locationUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .build());
///
///         var database = new HiveDatabase("database", HiveDatabaseArgs.builder()
///             .catalog(catalog.name())
///             .name("tf_test_database_21197")
///             .locationUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .build());
///
///         var myHiveTable = new HiveTable("myHiveTable", HiveTableArgs.builder()
///             .catalog(catalog.name())
///             .database(database.name())
///             .name("tf_test_table_52865")
///             .description("Hive table description")
///             .storageDescriptor(HiveTableStorageDescriptorArgs.builder()
///                 .columns(
///                     HiveTableStorageDescriptorColumnArgs.builder()
///                         .name("col0")
///                         .type("STRING")
///                         .comment("column that will be deleted on update")
///                         .build(),
///                     HiveTableStorageDescriptorColumnArgs.builder()
///                         .name("col1")
///                         .type("STRING")
///                         .comment("first skewed column")
///                         .build())
///                 .inputFormat("org.apache.hadoop.mapred.TextInputFormat")
///                 .outputFormat("org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat")
///                 .compressed(true)
///                 .numBuckets(1)
///                 .bucketCols("bucket_col1")
///                 .sortCols(HiveTableStorageDescriptorSortColArgs.builder()
///                     .col("col1")
///                     .order(0)
///                     .build())
///                 .skewedInfo(HiveTableStorageDescriptorSkewedInfoArgs.builder()
///                     .skewedColNames("col1")
///                     .skewedColValues(HiveTableStorageDescriptorSkewedInfoSkewedColValueArgs.builder()
///                         .values("val1")
///                         .build())
///                     .skewedKeyValuesLocations(HiveTableStorageDescriptorSkewedInfoSkewedKeyValuesLocationArgs.builder()
///                         .values("val1")
///                         .location("gs://example-bucket/skewed_location_1")
///                         .build())
///                     .build())
///                 .serdeInfo(HiveTableStorageDescriptorSerdeInfoArgs.builder()
///                     .name("LazySimpleSerDe")
///                     .serializationLib("org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe")
///                     .build())
///                 .parameters(Map.of("key1", "value1"))
///                 .storedAsSubDirs(false)
///                 .build())
///             .partitionKeys(HiveTablePartitionKeyArgs.builder()
///                 .name("dt")
///                 .type("STRING")
///                 .comment("date partition")
///                 .build())
///             .parameters(Map.of("key1", "value1"))
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
///       name: example-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   catalog:
///     type: gcp:biglake:HiveCatalog
///     properties:
///       name: tf_test_catalog_85794
///       primaryLocation: us-central1
///       locationUri: gs://${bucket.name}
///   database:
///     type: gcp:biglake:HiveDatabase
///     properties:
///       catalog: ${catalog.name}
///       name: tf_test_database_21197
///       locationUri: gs://${bucket.name}
///   myHiveTable:
///     type: gcp:biglake:HiveTable
///     name: my_hive_table
///     properties:
///       catalog: ${catalog.name}
///       database: ${database.name}
///       name: tf_test_table_52865
///       description: Hive table description
///       storageDescriptor:
///         columns:
///           - name: col0
///             type: STRING
///             comment: column that will be deleted on update
///           - name: col1
///             type: STRING
///             comment: first skewed column
///         inputFormat: org.apache.hadoop.mapred.TextInputFormat
///         outputFormat: org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat
///         compressed: true
///         numBuckets: 1
///         bucketCols:
///           - bucket_col1
///         sortCols:
///           - col: col1
///             order: 0
///         skewedInfo:
///           skewedColNames:
///             - col1
///           skewedColValues:
///             - values:
///                 - val1
///           skewedKeyValuesLocations:
///             - values:
///                 - val1
///               location: gs://example-bucket/skewed_location_1
///         serdeInfo:
///           name: LazySimpleSerDe
///           serializationLib: org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe
///         parameters:
///           key1: value1
///         storedAsSubDirs: false
///       partitionKeys:
///         - name: dt
///           type: STRING
///           comment: date partition
///       parameters:
///         key1: value1
/// ```
///
///
/// ## Import
///
/// HiveTable can be imported using any of these accepted formats:
///
/// * `hive/v1beta/projects/{{project}}/catalogs/{{catalog}}/databases/{{database}}/tables/{{name}}`
/// * `{{project}}/{{catalog}}/{{database}}/{{name}}`
/// * `{{catalog}}/{{database}}/{{name}}`
///
///
/// When using the `pulumi import` command, HiveTable can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/hiveTable:HiveTable default hive/v1beta/projects/{{project}}/catalogs/{{catalog}}/databases/{{database}}/tables/{{name}}
/// $ pulumi import gcp:biglake/hiveTable:HiveTable default {{project}}/{{catalog}}/{{database}}/{{name}}
/// $ pulumi import gcp:biglake/hiveTable:HiveTable default {{catalog}}/{{database}}/{{name}}
/// ```
class HiveTable extends pulumi.CustomResource {
  /// The Hive catalog where the table is located.
  late final pulumi.Output<String> catalog;
  /// Output only. The creation time of the table.
  late final pulumi.Output<String> createTime;
  /// The Hive database where the table is located.
  late final pulumi.Output<String> database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the table.
  late final pulumi.Output<String?> description;
  /// Output only. Last access time of the table.
  late final pulumi.Output<String> lastAccessTime;
  /// The name of the table.
  late final pulumi.Output<String> name;
  /// Additional parameters associated with the table.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Partition keys of the table.
  /// Structure is documented below.
  late final pulumi.Output<List<HiveTablePartitionKey>?> partitionKeys;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Storage descriptor of the table.
  /// Structure is documented below.
  late final pulumi.Output<HiveTableStorageDescriptor> storageDescriptor;
  /// Output only. The type of the table.
  late final pulumi.Output<String> tableType;
  /// Output only. The update time of the table
  late final pulumi.Output<String> updateTime;
  /// Expanded view text for Hive views. Empty for non-view.
  late final pulumi.Output<String?> viewExpandedText;
  /// Original view text for Hive views. Empty for non-view.
  late final pulumi.Output<String?> viewOriginalText;

  /// Creates a new [HiveTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HiveTable]. {@macro pulumi_biglake_hive_table_hive_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HiveTable(
    String name, {
    HiveTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveTable:HiveTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String>('database');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastAccessTime = registerOutput<String>('lastAccessTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    partitionKeys = registerOutput<List<HiveTablePartitionKey>?>('partitionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveTablePartitionKey>(guardedValue, (value) => HiveTablePartitionKey.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    storageDescriptor = registerOutput<HiveTableStorageDescriptor>('storageDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableType = registerOutput<String>('tableType');
    updateTime = registerOutput<String>('updateTime');
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }

  /// Gets an existing [HiveTable] resource's state with the given [name] and [id].
  static HiveTable get(
    String name,
    pulumi.Input<String> id, {
    HiveTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HiveTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HiveTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveTable:HiveTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String>('database');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastAccessTime = registerOutput<String>('lastAccessTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    partitionKeys = registerOutput<List<HiveTablePartitionKey>?>('partitionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveTablePartitionKey>(guardedValue, (value) => HiveTablePartitionKey.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    storageDescriptor = registerOutput<HiveTableStorageDescriptor>('storageDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableType = registerOutput<String>('tableType');
    updateTime = registerOutput<String>('updateTime');
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }

  /// Creates a typed reference to an existing [HiveTable] resource.
  HiveTable.reference(String urn)
    : super(
        'gcp:biglake/hiveTable:HiveTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    database = registerOutput<String>('database');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    lastAccessTime = registerOutput<String>('lastAccessTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    partitionKeys = registerOutput<List<HiveTablePartitionKey>?>('partitionKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveTablePartitionKey>(guardedValue, (value) => HiveTablePartitionKey.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    storageDescriptor = registerOutput<HiveTableStorageDescriptor>('storageDescriptor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HiveTableStorageDescriptor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableType = registerOutput<String>('tableType');
    updateTime = registerOutput<String>('updateTime');
    viewExpandedText = registerOutput<String?>('viewExpandedText');
    viewOriginalText = registerOutput<String?>('viewOriginalText');
  }
}
