import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_database_args.dart';
import 'hive_database_state.dart';

/// Hive Databases in Biglake Metastore. Hive Databases exist within a Hive Catalog.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about HiveDatabase, see:
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/lakehouse/docs/about-spark-hive-metastore)
///
/// ## Example Usage
///
/// ### Biglake Hive Database
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
///     name: "tf_test_catalog_81126",
///     primaryLocation: "us-central1",
///     locationUri: pulumi.interpolate`gs://${bucket.name}`,
/// });
/// const myHiveDatabase = new gcp.biglake.HiveDatabase("my_hive_database", {
///     catalog: catalog.name,
///     name: "tf_test_database_88717",
///     locationUri: pulumi.interpolate`gs://${bucket.name}`,
///     parameters: {
///         key1: "value1",
///         key2: "value2",
///     },
///     description: "hive database description",
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
///     name="tf_test_catalog_81126",
///     primary_location="us-central1",
///     location_uri=bucket.name.apply(lambda name: f"gs://{name}"))
/// my_hive_database = gcp.biglake.HiveDatabase("my_hive_database",
///     catalog=catalog.name,
///     name="tf_test_database_88717",
///     location_uri=bucket.name.apply(lambda name: f"gs://{name}"),
///     parameters={
///         "key1": "value1",
///         "key2": "value2",
///     },
///     description="hive database description")
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
///         Name = "tf_test_catalog_81126",
///         PrimaryLocation = "us-central1",
///         LocationUri = bucket.Name.Apply(name => $"gs://{name}"),
///     });
///
///     var myHiveDatabase = new Gcp.BigLake.HiveDatabase("my_hive_database", new()
///     {
///         Catalog = catalog.Name,
///         Name = "tf_test_database_88717",
///         LocationUri = bucket.Name.Apply(name => $"gs://{name}"),
///         Parameters =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///         Description = "hive database description",
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
/// 			Name:            pulumi.String("tf_test_catalog_81126"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			LocationUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveDatabase(ctx, "my_hive_database", &biglake.HiveDatabaseArgs{
/// 			Catalog: catalog.Name,
/// 			Name:    pulumi.String("tf_test_database_88717"),
/// 			LocationUri: bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Parameters: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 			Description: pulumi.String("hive database description"),
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
///   name             = "tf_test_catalog_81126"
///   primary_location = "us-central1"
///   location_uri     ="gs://${gcp_storage_bucket.bucket.name}"
/// }
/// resource "gcp_biglake_hivedatabase" "my_hive_database" {
///   catalog      = gcp_biglake_hivecatalog.catalog.name
///   name         = "tf_test_database_88717"
///   location_uri ="gs://${gcp_storage_bucket.bucket.name}"
///   parameters = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
///   description = "hive database description"
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
///             .name("tf_test_catalog_81126")
///             .primaryLocation("us-central1")
///             .locationUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .build());
///
///         var myHiveDatabase = new HiveDatabase("myHiveDatabase", HiveDatabaseArgs.builder()
///             .catalog(catalog.name())
///             .name("tf_test_database_88717")
///             .locationUri(bucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .parameters(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .description("hive database description")
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
///       name: tf_test_catalog_81126
///       primaryLocation: us-central1
///       locationUri: gs://${bucket.name}
///   myHiveDatabase:
///     type: gcp:biglake:HiveDatabase
///     name: my_hive_database
///     properties:
///       catalog: ${catalog.name}
///       name: tf_test_database_88717
///       locationUri: gs://${bucket.name}
///       parameters:
///         key1: value1
///         key2: value2
///       description: hive database description
/// ```
///
///
/// ## Import
///
/// HiveDatabase can be imported using any of these accepted formats:
///
/// * `hive/v1beta/projects/{{project}}/catalogs/{{catalog}}/databases/{{name}}`
/// * `{{project}}/{{catalog}}/{{name}}`
/// * `{{catalog}}/{{name}}`
///
///
/// When using the `pulumi import` command, HiveDatabase can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/hiveDatabase:HiveDatabase default hive/v1beta/projects/{{project}}/catalogs/{{catalog}}/databases/{{name}}
/// $ pulumi import gcp:biglake/hiveDatabase:HiveDatabase default {{project}}/{{catalog}}/{{name}}
/// $ pulumi import gcp:biglake/hiveDatabase:HiveDatabase default {{catalog}}/{{name}}
/// ```
class HiveDatabase extends pulumi.CustomResource {
  /// Hive catalog where the database to create is located.
  late final pulumi.Output<String> catalog;
  /// Output only. The creation time of the database.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the database.
  late final pulumi.Output<String?> description;
  /// Cloud Storage location path where the database exists. If unspecified, the database will be stored in the catalog location.
  /// Format: gs://bucket/path/to/database
  late final pulumi.Output<String?> locationUri;
  /// Database to create.
  late final pulumi.Output<String> name;
  /// Additional parameters associated with the database.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The update time of the database.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HiveDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HiveDatabase]. {@macro pulumi_biglake_hive_database_hive_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HiveDatabase(
    String name, {
    HiveDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveDatabase:HiveDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String?>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [HiveDatabase] resource's state with the given [name] and [id].
  static HiveDatabase get(
    String name,
    pulumi.Input<String> id, {
    HiveDatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HiveDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HiveDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveDatabase:HiveDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String?>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [HiveDatabase] resource.
  HiveDatabase.reference(String urn)
    : super(
        'gcp:biglake/hiveDatabase:HiveDatabase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalog = registerOutput<String>('catalog');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String?>('locationUri');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
