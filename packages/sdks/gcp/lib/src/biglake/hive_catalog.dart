import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_catalog_args.dart';
import 'hive_catalog_replica.dart';
import 'hive_catalog_state.dart';

/// Hive Catalogs in Biglake Metastore
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about HiveCatalog, see:
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/lakehouse/docs/about-spark-hive-metastore)
///
/// ## Example Usage
///
/// ### Biglake Hive Catalog
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucketForMyHiveCatalog = new gcp.storage.Bucket("bucket_for_my_hive_catalog", {
///     name: "my_hive_catalog",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const myHiveCatalog = new gcp.biglake.HiveCatalog("my_hive_catalog", {
///     name: "my_hive_catalog",
///     primaryLocation: "us-central1",
///     locationUri: pulumi.interpolate`gs://${bucketForMyHiveCatalog.name}`,
/// }, {
///     dependsOn: [bucketForMyHiveCatalog],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket_for_my_hive_catalog = gcp.storage.Bucket("bucket_for_my_hive_catalog",
///     name="my_hive_catalog",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// my_hive_catalog = gcp.biglake.HiveCatalog("my_hive_catalog",
///     name="my_hive_catalog",
///     primary_location="us-central1",
///     location_uri=bucket_for_my_hive_catalog.name.apply(lambda name: f"gs://{name}"),
///     opts = pulumi.ResourceOptions(depends_on=[bucket_for_my_hive_catalog]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucketForMyHiveCatalog = new Gcp.Storage.Bucket("bucket_for_my_hive_catalog", new()
///     {
///         Name = "my_hive_catalog",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var myHiveCatalog = new Gcp.BigLake.HiveCatalog("my_hive_catalog", new()
///     {
///         Name = "my_hive_catalog",
///         PrimaryLocation = "us-central1",
///         LocationUri = bucketForMyHiveCatalog.Name.Apply(name => $"gs://{name}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bucketForMyHiveCatalog,
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
/// 		bucketForMyHiveCatalog, err := storage.NewBucket(ctx, "bucket_for_my_hive_catalog", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_hive_catalog"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveCatalog(ctx, "my_hive_catalog", &biglake.HiveCatalogArgs{
/// 			Name:            pulumi.String("my_hive_catalog"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			LocationUri: bucketForMyHiveCatalog.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bucketForMyHiveCatalog,
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
/// resource "gcp_storage_bucket" "bucket_for_my_hive_catalog" {
///   name                        = "my_hive_catalog"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_hivecatalog" "my_hive_catalog" {
///   depends_on       = [gcp_storage_bucket.bucket_for_my_hive_catalog]
///   name             = "my_hive_catalog"
///   primary_location = "us-central1"
///   location_uri     ="gs://${gcp_storage_bucket.bucket_for_my_hive_catalog.name}"
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
///         var bucketForMyHiveCatalog = new Bucket("bucketForMyHiveCatalog", BucketArgs.builder()
///             .name("my_hive_catalog")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myHiveCatalog = new HiveCatalog("myHiveCatalog", HiveCatalogArgs.builder()
///             .name("my_hive_catalog")
///             .primaryLocation("us-central1")
///             .locationUri(bucketForMyHiveCatalog.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bucketForMyHiveCatalog)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucketForMyHiveCatalog:
///     type: gcp:storage:Bucket
///     name: bucket_for_my_hive_catalog
///     properties:
///       name: my_hive_catalog
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   myHiveCatalog:
///     type: gcp:biglake:HiveCatalog
///     name: my_hive_catalog
///     properties:
///       name: my_hive_catalog
///       primaryLocation: us-central1
///       locationUri: gs://${bucketForMyHiveCatalog.name}
///     options:
///       dependsOn:
///         - ${bucketForMyHiveCatalog}
/// ```
///
/// ### Biglake Hive Catalog Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucketForMyHiveCatalog = new gcp.storage.Bucket("bucket_for_my_hive_catalog", {
///     name: "my_hive_catalog",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const myHiveCatalog = new gcp.biglake.HiveCatalog("my_hive_catalog", {
///     name: "my_hive_catalog",
///     primaryLocation: "us-central1",
///     locationUri: pulumi.interpolate`gs://${bucketForMyHiveCatalog.name}`,
///     description: "terraform test hive catalog",
/// }, {
///     dependsOn: [bucketForMyHiveCatalog],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket_for_my_hive_catalog = gcp.storage.Bucket("bucket_for_my_hive_catalog",
///     name="my_hive_catalog",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// my_hive_catalog = gcp.biglake.HiveCatalog("my_hive_catalog",
///     name="my_hive_catalog",
///     primary_location="us-central1",
///     location_uri=bucket_for_my_hive_catalog.name.apply(lambda name: f"gs://{name}"),
///     description="terraform test hive catalog",
///     opts = pulumi.ResourceOptions(depends_on=[bucket_for_my_hive_catalog]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucketForMyHiveCatalog = new Gcp.Storage.Bucket("bucket_for_my_hive_catalog", new()
///     {
///         Name = "my_hive_catalog",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var myHiveCatalog = new Gcp.BigLake.HiveCatalog("my_hive_catalog", new()
///     {
///         Name = "my_hive_catalog",
///         PrimaryLocation = "us-central1",
///         LocationUri = bucketForMyHiveCatalog.Name.Apply(name => $"gs://{name}"),
///         Description = "terraform test hive catalog",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bucketForMyHiveCatalog,
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
/// 		bucketForMyHiveCatalog, err := storage.NewBucket(ctx, "bucket_for_my_hive_catalog", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_hive_catalog"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewHiveCatalog(ctx, "my_hive_catalog", &biglake.HiveCatalogArgs{
/// 			Name:            pulumi.String("my_hive_catalog"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			LocationUri: bucketForMyHiveCatalog.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Description: pulumi.String("terraform test hive catalog"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bucketForMyHiveCatalog,
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
/// resource "gcp_storage_bucket" "bucket_for_my_hive_catalog" {
///   name                        = "my_hive_catalog"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_hivecatalog" "my_hive_catalog" {
///   depends_on       = [gcp_storage_bucket.bucket_for_my_hive_catalog]
///   name             = "my_hive_catalog"
///   primary_location = "us-central1"
///   location_uri     ="gs://${gcp_storage_bucket.bucket_for_my_hive_catalog.name}"
///   description      = "terraform test hive catalog"
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
///         var bucketForMyHiveCatalog = new Bucket("bucketForMyHiveCatalog", BucketArgs.builder()
///             .name("my_hive_catalog")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myHiveCatalog = new HiveCatalog("myHiveCatalog", HiveCatalogArgs.builder()
///             .name("my_hive_catalog")
///             .primaryLocation("us-central1")
///             .locationUri(bucketForMyHiveCatalog.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .description("terraform test hive catalog")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bucketForMyHiveCatalog)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucketForMyHiveCatalog:
///     type: gcp:storage:Bucket
///     name: bucket_for_my_hive_catalog
///     properties:
///       name: my_hive_catalog
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   myHiveCatalog:
///     type: gcp:biglake:HiveCatalog
///     name: my_hive_catalog
///     properties:
///       name: my_hive_catalog
///       primaryLocation: us-central1
///       locationUri: gs://${bucketForMyHiveCatalog.name}
///       description: terraform test hive catalog
///     options:
///       dependsOn:
///         - ${bucketForMyHiveCatalog}
/// ```
///
///
/// ## Import
///
/// HiveCatalog can be imported using any of these accepted formats:
///
/// * `hive/v1beta/projects/{{project}}/catalogs/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, HiveCatalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/hiveCatalog:HiveCatalog default hive/v1beta/projects/{{project}}/catalogs/{{name}}
/// $ pulumi import gcp:biglake/hiveCatalog:HiveCatalog default {{project}}/{{name}}
/// $ pulumi import gcp:biglake/hiveCatalog:HiveCatalog default {{name}}
/// ```
class HiveCatalog extends pulumi.CustomResource {
  /// Output only. The creation time of the catalog.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the Hive catalog.
  late final pulumi.Output<String?> description;
  /// Cloud Storage location path where the catalog data will be stored. Format: gs://bucket/path/to/catalog
  late final pulumi.Output<String> locationUri;
  /// Name of the Hive Catalog.
  late final pulumi.Output<String> name;
  /// The primary location for mirroring the remote catalog metadata. It must be
  /// a BigLake-supported location, and it should be proximate to the remote
  /// catalog's location.
  late final pulumi.Output<String> primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  late final pulumi.Output<List<HiveCatalogReplica>> replicas;
  /// Output only. The update time of the catalog.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HiveCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HiveCatalog]. {@macro pulumi_biglake_hive_catalog_hive_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HiveCatalog(
    String name, {
    HiveCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveCatalog:HiveCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<HiveCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveCatalogReplica>(guardedValue, (value) => HiveCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [HiveCatalog] resource's state with the given [name] and [id].
  static HiveCatalog get(
    String name,
    pulumi.Input<String> id, {
    HiveCatalogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HiveCatalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HiveCatalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/hiveCatalog:HiveCatalog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<HiveCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveCatalogReplica>(guardedValue, (value) => HiveCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [HiveCatalog] resource.
  HiveCatalog.reference(String urn)
    : super(
        'gcp:biglake/hiveCatalog:HiveCatalog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    locationUri = registerOutput<String>('locationUri');
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<HiveCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<HiveCatalogReplica>(guardedValue, (value) => HiveCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
