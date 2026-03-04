import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_args.dart';
import 'iceberg_catalog_state.dart';

/// IcebergCatalogs are top-level containers for Apache Iceberg REST Catalog served Namespaces and Tables.
///
///
/// To get more information about IcebergCatalog, see:
/// * How-to Guides
/// * [Use the BigLake metastore Iceberg REST catalog](https://docs.cloud.google.com/biglake/docs/blms-rest-catalog)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource's IAM,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the IAM API will return 403s.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Biglake Iceberg Catalog
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucketForMyIcebergCatalog = new gcp.storage.Bucket("bucket_for_my_iceberg_catalog", {
///     name: "my_iceberg_catalog",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const myIcebergCatalog = new gcp.biglake.IcebergCatalog("my_iceberg_catalog", {
///     name: "my_iceberg_catalog",
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
/// }, {
///     dependsOn: [bucketForMyIcebergCatalog],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket_for_my_iceberg_catalog = gcp.storage.Bucket("bucket_for_my_iceberg_catalog",
///     name="my_iceberg_catalog",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// my_iceberg_catalog = gcp.biglake.IcebergCatalog("my_iceberg_catalog",
///     name="my_iceberg_catalog",
///     catalog_type="CATALOG_TYPE_GCS_BUCKET",
///     opts = pulumi.ResourceOptions(depends_on=[bucket_for_my_iceberg_catalog]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucketForMyIcebergCatalog = new Gcp.Storage.Bucket("bucket_for_my_iceberg_catalog", new()
///     {
///         Name = "my_iceberg_catalog",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var myIcebergCatalog = new Gcp.BigLake.IcebergCatalog("my_iceberg_catalog", new()
///     {
///         Name = "my_iceberg_catalog",
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bucketForMyIcebergCatalog,
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
/// 		bucketForMyIcebergCatalog, err := storage.NewBucket(ctx, "bucket_for_my_iceberg_catalog", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_iceberg_catalog"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergCatalog(ctx, "my_iceberg_catalog", &biglake.IcebergCatalogArgs{
/// 			Name:        pulumi.String("my_iceberg_catalog"),
/// 			CatalogType: pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bucketForMyIcebergCatalog,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var bucketForMyIcebergCatalog = new Bucket("bucketForMyIcebergCatalog", BucketArgs.builder()
///             .name("my_iceberg_catalog")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .name("my_iceberg_catalog")
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bucketForMyIcebergCatalog)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucketForMyIcebergCatalog:
///     type: gcp:storage:Bucket
///     name: bucket_for_my_iceberg_catalog
///     properties:
///       name: my_iceberg_catalog
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   myIcebergCatalog:
///     type: gcp:biglake:IcebergCatalog
///     name: my_iceberg_catalog
///     properties:
///       name: my_iceberg_catalog
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///     options:
///       dependsOn:
///         - ${bucketForMyIcebergCatalog}
/// ```
///
///
/// ## Import
///
/// IcebergCatalog can be imported using any of these accepted formats:
///
/// * `iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, IcebergCatalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{name}}
/// ```
class IcebergCatalog extends pulumi.CustomResource {
  /// Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  late final pulumi.Output<String> biglakeServiceAccount;

  /// The catalog type of the IcebergCatalog. Currently only supports the type for Google Cloud Storage Buckets.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`.
  late final pulumi.Output<String> catalogType;

  /// Output only. The creation time of the IcebergCatalog.
  late final pulumi.Output<String> createTime;

  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  late final pulumi.Output<String> credentialMode;

  /// Output only. The default storage location for the catalog, e.g., `gs://my-bucket`.
  late final pulumi.Output<String> defaultLocation;

  /// The name of the IcebergCatalog. Format:
  /// projects/{project_id_or_number}/catalogs/{iceberg_catalog_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> replicas;

  /// Output only. The GCP region(s) where the physical metadata for the tables is stored, e.g. `us-central1`, `nam4` or `us`. This will contain one value for all locations, except for the catalogs that are configured to use custom dual region buckets.
  late final pulumi.Output<List<String>> storageRegions;

  /// Output only. The last modification time of the IcebergCatalog.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [IcebergCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergCatalog]. {@macro pulumi_biglake_iceberg_catalog_iceberg_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergCatalog(
    String name, {
    IcebergCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:biglake/icebergCatalog:IcebergCatalog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    biglakeServiceAccount = registerOutput<String>('biglakeServiceAccount');
    catalogType = registerOutput<String>('catalogType');
    createTime = registerOutput<String>('createTime');
    credentialMode = registerOutput<String>('credentialMode');
    defaultLocation = registerOutput<String>('defaultLocation');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<Map<String, dynamic>>>('replicas');
    storageRegions = registerOutput<List<String>>('storageRegions');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [IcebergCatalog] resource's state with the given [name] and [id].
  static IcebergCatalog get(
    String name,
    pulumi.Input<String> id, {
    IcebergCatalogState? state,
  }) {
    return IcebergCatalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IcebergCatalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:biglake/icebergCatalog:IcebergCatalog',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    biglakeServiceAccount = registerOutput<String>('biglakeServiceAccount');
    catalogType = registerOutput<String>('catalogType');
    createTime = registerOutput<String>('createTime');
    credentialMode = registerOutput<String>('credentialMode');
    defaultLocation = registerOutput<String>('defaultLocation');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<Map<String, dynamic>>>('replicas');
    storageRegions = registerOutput<List<String>>('storageRegions');
    updateTime = registerOutput<String>('updateTime');
  }
}
