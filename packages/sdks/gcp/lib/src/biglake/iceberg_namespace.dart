import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_namespace_args.dart';
import 'iceberg_namespace_state.dart';

/// IcebergNamespaces are containers for Apache Iceberg Tables within an IcebergCatalog.
///
///
///
/// ## Example Usage
///
/// ### Biglake Iceberg Namespace
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
/// const catalog = new gcp.biglake.IcebergCatalog("catalog", {
///     name: bucket.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
/// });
/// const myIcebergNamespace = new gcp.biglake.IcebergNamespace("my_iceberg_namespace", {
///     catalog: catalog.name,
///     namespaceId: "my_iceberg_namespace",
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
///     name="example-bucket",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// catalog = gcp.biglake.IcebergCatalog("catalog",
///     name=bucket.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET")
/// my_iceberg_namespace = gcp.biglake.IcebergNamespace("my_iceberg_namespace",
///     catalog=catalog.name,
///     namespace_id="my_iceberg_namespace",
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
///         Name = "example-bucket",
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
///     var myIcebergNamespace = new Gcp.BigLake.IcebergNamespace("my_iceberg_namespace", new()
///     {
///         Catalog = catalog.Name,
///         NamespaceId = "my_iceberg_namespace",
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
/// 			Name:                     pulumi.String("example-bucket"),
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
/// 		_, err = biglake.NewIcebergNamespace(ctx, "my_iceberg_namespace", &biglake.IcebergNamespaceArgs{
/// 			Catalog:     catalog.Name,
/// 			NamespaceId: pulumi.String("my_iceberg_namespace"),
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
///   name                        = "example-bucket"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "catalog" {
///   name         = gcp_storage_bucket.bucket.name
///   catalog_type = "CATALOG_TYPE_GCS_BUCKET"
/// }
/// resource "gcp_biglake_icebergnamespace" "my_iceberg_namespace" {
///   catalog      = gcp_biglake_icebergcatalog.catalog.name
///   namespace_id = "my_iceberg_namespace"
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
///         var catalog = new IcebergCatalog("catalog", IcebergCatalogArgs.builder()
///             .name(bucket.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .build());
///
///         var myIcebergNamespace = new IcebergNamespace("myIcebergNamespace", IcebergNamespaceArgs.builder()
///             .catalog(catalog.name())
///             .namespaceId("my_iceberg_namespace")
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
///       name: example-bucket
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   catalog:
///     type: gcp:biglake:IcebergCatalog
///     properties:
///       name: ${bucket.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///   myIcebergNamespace:
///     type: gcp:biglake:IcebergNamespace
///     name: my_iceberg_namespace
///     properties:
///       catalog: ${catalog.name}
///       namespaceId: my_iceberg_namespace
///       properties:
///         key: value
/// ```
///
///
/// ## Import
///
/// IcebergNamespace can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}}`
/// * `{{project}}/{{catalog}}/{{namespace_id}}`
/// * `{{catalog}}/{{namespace_id}}`
///
///
/// When using the `pulumi import` command, IcebergNamespace can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergNamespace:IcebergNamespace default projects/{{project}}/catalogs/{{catalog}}/namespaces/{{namespace_id}}
/// $ pulumi import gcp:biglake/icebergNamespace:IcebergNamespace default {{project}}/{{catalog}}/{{namespace_id}}
/// $ pulumi import gcp:biglake/icebergNamespace:IcebergNamespace default {{catalog}}/{{namespace_id}}
/// ```
class IcebergNamespace extends pulumi.CustomResource {
  /// The name of the IcebergCatalog.
  late final pulumi.Output<String> catalog;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The unique identifier of the namespace.
  late final pulumi.Output<String> namespaceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// User-defined properties for the namespace.
  late final pulumi.Output<Map<String, String>> properties;

  /// Creates a new [IcebergNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IcebergNamespace]. {@macro pulumi_biglake_iceberg_namespace_iceberg_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IcebergNamespace(
    String name, {
    IcebergNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergNamespace:IcebergNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    catalog = registerOutput<String>('catalog');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    properties = registerOutput<Map<String, String>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [IcebergNamespace] resource's state with the given [name] and [id].
  static IcebergNamespace get(
    String name,
    pulumi.Input<String> id, {
    IcebergNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IcebergNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IcebergNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:biglake/icebergNamespace:IcebergNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalog = registerOutput<String>('catalog');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    properties = registerOutput<Map<String, String>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [IcebergNamespace] resource.
  IcebergNamespace.reference(String urn)
    : super(
        'gcp:biglake/icebergNamespace:IcebergNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    catalog = registerOutput<String>('catalog');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    namespaceId = registerOutput<String>('namespaceId');
    project = registerOutput<String>('project');
    properties = registerOutput<Map<String, String>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
