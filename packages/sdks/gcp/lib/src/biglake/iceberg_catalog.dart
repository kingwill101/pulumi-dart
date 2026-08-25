import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_catalog_args.dart';
import 'iceberg_catalog_federated_catalog_options.dart';
import 'iceberg_catalog_replica.dart';
import 'iceberg_catalog_restricted_locations_config.dart';
import 'iceberg_catalog_state.dart';

/// IcebergCatalogs are top-level containers for Apache Iceberg REST Catalog served Namespaces and Tables.
///
///
/// To get more information about IcebergCatalog, see:
/// * How-to Guides
/// * [Use the BigLake metastore Iceberg REST catalog](https://docs.cloud.google.com/biglake/docs/blms-rest-catalog)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource's IAM,
/// you must specify a `billingProject` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the IAM API will return 403s.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProject` you defined.
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
///     name: bucketForMyIcebergCatalog.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
///     credentialMode: "CREDENTIAL_MODE_VENDED_CREDENTIALS",
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
///     name=bucket_for_my_iceberg_catalog.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET",
///     credential_mode="CREDENTIAL_MODE_VENDED_CREDENTIALS",
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
///         Name = bucketForMyIcebergCatalog.Name,
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///         CredentialMode = "CREDENTIAL_MODE_VENDED_CREDENTIALS",
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
/// 			Name:           bucketForMyIcebergCatalog.Name,
/// 			CatalogType:    pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 			CredentialMode: pulumi.String("CREDENTIAL_MODE_VENDED_CREDENTIALS"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "bucket_for_my_iceberg_catalog" {
///   name                        = "my_iceberg_catalog"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "my_iceberg_catalog" {
///   depends_on      = [gcp_storage_bucket.bucket_for_my_iceberg_catalog]
///   name            = gcp_storage_bucket.bucket_for_my_iceberg_catalog.name
///   catalog_type    = "CATALOG_TYPE_GCS_BUCKET"
///   credential_mode = "CREDENTIAL_MODE_VENDED_CREDENTIALS"
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
///         var bucketForMyIcebergCatalog = new Bucket("bucketForMyIcebergCatalog", BucketArgs.builder()
///             .name("my_iceberg_catalog")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .name(bucketForMyIcebergCatalog.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .credentialMode("CREDENTIAL_MODE_VENDED_CREDENTIALS")
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
///       name: ${bucketForMyIcebergCatalog.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///       credentialMode: CREDENTIAL_MODE_VENDED_CREDENTIALS
///     options:
///       dependsOn:
///         - ${bucketForMyIcebergCatalog}
/// ```
///
/// ### Biglake Iceberg Catalog Primary Location
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
///     name: bucketForMyIcebergCatalog.name,
///     catalogType: "CATALOG_TYPE_GCS_BUCKET",
///     credentialMode: "CREDENTIAL_MODE_VENDED_CREDENTIALS",
///     primaryLocation: "us-central1",
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
///     name=bucket_for_my_iceberg_catalog.name,
///     catalog_type="CATALOG_TYPE_GCS_BUCKET",
///     credential_mode="CREDENTIAL_MODE_VENDED_CREDENTIALS",
///     primary_location="us-central1",
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
///         Name = bucketForMyIcebergCatalog.Name,
///         CatalogType = "CATALOG_TYPE_GCS_BUCKET",
///         CredentialMode = "CREDENTIAL_MODE_VENDED_CREDENTIALS",
///         PrimaryLocation = "us-central1",
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
/// 			Name:            bucketForMyIcebergCatalog.Name,
/// 			CatalogType:     pulumi.String("CATALOG_TYPE_GCS_BUCKET"),
/// 			CredentialMode:  pulumi.String("CREDENTIAL_MODE_VENDED_CREDENTIALS"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "bucket_for_my_iceberg_catalog" {
///   name                        = "my_iceberg_catalog"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "my_iceberg_catalog" {
///   depends_on       = [gcp_storage_bucket.bucket_for_my_iceberg_catalog]
///   name             = gcp_storage_bucket.bucket_for_my_iceberg_catalog.name
///   catalog_type     = "CATALOG_TYPE_GCS_BUCKET"
///   credential_mode  = "CREDENTIAL_MODE_VENDED_CREDENTIALS"
///   primary_location = "us-central1"
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
///         var bucketForMyIcebergCatalog = new Bucket("bucketForMyIcebergCatalog", BucketArgs.builder()
///             .name("my_iceberg_catalog")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .name(bucketForMyIcebergCatalog.name())
///             .catalogType("CATALOG_TYPE_GCS_BUCKET")
///             .credentialMode("CREDENTIAL_MODE_VENDED_CREDENTIALS")
///             .primaryLocation("us-central1")
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
///       name: ${bucketForMyIcebergCatalog.name}
///       catalogType: CATALOG_TYPE_GCS_BUCKET
///       credentialMode: CREDENTIAL_MODE_VENDED_CREDENTIALS
///       primaryLocation: us-central1
///     options:
///       dependsOn:
///         - ${bucketForMyIcebergCatalog}
/// ```
///
/// ### Biglake Iceberg Catalog Biglake
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultBucket = new gcp.storage.Bucket("default_bucket", {
///     name: "my_iceberg_catalog-default",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const restrictedBucket = new gcp.storage.Bucket("restricted_bucket", {
///     name: "my_iceberg_catalog-restricted",
///     location: "us-central1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const myIcebergCatalog = new gcp.biglake.IcebergCatalog("my_iceberg_catalog", {
///     name: "my_iceberg_catalog",
///     catalogType: "CATALOG_TYPE_BIGLAKE",
///     credentialMode: "CREDENTIAL_MODE_VENDED_CREDENTIALS",
///     defaultLocation: pulumi.interpolate`gs://${defaultBucket.name}`,
///     restrictedLocationsConfig: {
///         restrictedLocations: [
///             pulumi.interpolate`gs://${defaultBucket.name}`,
///             pulumi.interpolate`gs://${restrictedBucket.name}`,
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_bucket = gcp.storage.Bucket("default_bucket",
///     name="my_iceberg_catalog-default",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// restricted_bucket = gcp.storage.Bucket("restricted_bucket",
///     name="my_iceberg_catalog-restricted",
///     location="us-central1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// my_iceberg_catalog = gcp.biglake.IcebergCatalog("my_iceberg_catalog",
///     name="my_iceberg_catalog",
///     catalog_type="CATALOG_TYPE_BIGLAKE",
///     credential_mode="CREDENTIAL_MODE_VENDED_CREDENTIALS",
///     default_location=default_bucket.name.apply(lambda name: f"gs://{name}"),
///     restricted_locations_config={
///         "restricted_locations": [
///             default_bucket.name.apply(lambda name: f"gs://{name}"),
///             restricted_bucket.name.apply(lambda name: f"gs://{name}"),
///         ],
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
///     var defaultBucket = new Gcp.Storage.Bucket("default_bucket", new()
///     {
///         Name = "my_iceberg_catalog-default",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var restrictedBucket = new Gcp.Storage.Bucket("restricted_bucket", new()
///     {
///         Name = "my_iceberg_catalog-restricted",
///         Location = "us-central1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var myIcebergCatalog = new Gcp.BigLake.IcebergCatalog("my_iceberg_catalog", new()
///     {
///         Name = "my_iceberg_catalog",
///         CatalogType = "CATALOG_TYPE_BIGLAKE",
///         CredentialMode = "CREDENTIAL_MODE_VENDED_CREDENTIALS",
///         DefaultLocation = defaultBucket.Name.Apply(name => $"gs://{name}"),
///         RestrictedLocationsConfig = new Gcp.BigLake.Inputs.IcebergCatalogRestrictedLocationsConfigArgs
///         {
///             RestrictedLocations = new[]
///             {
///                 defaultBucket.Name.Apply(name => $"gs://{name}"),
///                 restrictedBucket.Name.Apply(name => $"gs://{name}"),
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
/// 		defaultBucket, err := storage.NewBucket(ctx, "default_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_iceberg_catalog-default"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		restrictedBucket, err := storage.NewBucket(ctx, "restricted_bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my_iceberg_catalog-restricted"),
/// 			Location:                 pulumi.String("us-central1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = biglake.NewIcebergCatalog(ctx, "my_iceberg_catalog", &biglake.IcebergCatalogArgs{
/// 			Name:           pulumi.String("my_iceberg_catalog"),
/// 			CatalogType:    pulumi.String("CATALOG_TYPE_BIGLAKE"),
/// 			CredentialMode: pulumi.String("CREDENTIAL_MODE_VENDED_CREDENTIALS"),
/// 			DefaultLocation: defaultBucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("gs://%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			RestrictedLocationsConfig: &biglake.IcebergCatalogRestrictedLocationsConfigArgs{
/// 				RestrictedLocations: pulumi.StringArray{
/// 					defaultBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
/// 					restrictedBucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v", name), nil
/// 					}).(pulumi.StringOutput),
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
/// resource "gcp_storage_bucket" "default_bucket" {
///   name                        = "my_iceberg_catalog-default"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_storage_bucket" "restricted_bucket" {
///   name                        = "my_iceberg_catalog-restricted"
///   location                    = "us-central1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
/// }
/// resource "gcp_biglake_icebergcatalog" "my_iceberg_catalog" {
///   name             = "my_iceberg_catalog"
///   catalog_type     = "CATALOG_TYPE_BIGLAKE"
///   credential_mode  = "CREDENTIAL_MODE_VENDED_CREDENTIALS"
///   default_location ="gs://${gcp_storage_bucket.default_bucket.name}"
///   restricted_locations_config = {
///     restricted_locations = ["gs://${gcp_storage_bucket.default_bucket.name}", "gs://${gcp_storage_bucket.restricted_bucket.name}"]
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
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogRestrictedLocationsConfigArgs;
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
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .name("my_iceberg_catalog-default")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var restrictedBucket = new Bucket("restrictedBucket", BucketArgs.builder()
///             .name("my_iceberg_catalog-restricted")
///             .location("us-central1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .name("my_iceberg_catalog")
///             .catalogType("CATALOG_TYPE_BIGLAKE")
///             .credentialMode("CREDENTIAL_MODE_VENDED_CREDENTIALS")
///             .defaultLocation(defaultBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///             .restrictedLocationsConfig(IcebergCatalogRestrictedLocationsConfigArgs.builder()
///                 .restrictedLocations(
///                     defaultBucket.name().applyValue(_name -> String.format("gs://%s", _name)),
///                     restrictedBucket.name().applyValue(_name -> String.format("gs://%s", _name)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultBucket:
///     type: gcp:storage:Bucket
///     name: default_bucket
///     properties:
///       name: my_iceberg_catalog-default
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   restrictedBucket:
///     type: gcp:storage:Bucket
///     name: restricted_bucket
///     properties:
///       name: my_iceberg_catalog-restricted
///       location: us-central1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///   myIcebergCatalog:
///     type: gcp:biglake:IcebergCatalog
///     name: my_iceberg_catalog
///     properties:
///       name: my_iceberg_catalog
///       catalogType: CATALOG_TYPE_BIGLAKE
///       credentialMode: CREDENTIAL_MODE_VENDED_CREDENTIALS
///       defaultLocation: gs://${defaultBucket.name}
///       restrictedLocationsConfig:
///         restrictedLocations:
///           - gs://${defaultBucket.name}
///           - gs://${restrictedBucket.name}
/// ```
///
/// ### Biglake Iceberg Catalog Federated Unity
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myIcebergCatalog = new gcp.biglake.IcebergCatalog("my_iceberg_catalog", {
///     catalogType: "CATALOG_TYPE_FEDERATED",
///     name: "my_iceberg_catalog",
///     primaryLocation: "us-central1",
///     federatedCatalogOptions: {
///         unityCatalogInfo: {
///             catalogName: "my_catalog",
///             instanceName: "1.1.gcp.databricks.com",
///             servicePrincipalApplicationId: "b3204274-6556-4d40-ad18-556f91659745",
///         },
///         refreshOptions: {
///             refreshSchedule: {
///                 refreshInterval: "300s",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_iceberg_catalog = gcp.biglake.IcebergCatalog("my_iceberg_catalog",
///     catalog_type="CATALOG_TYPE_FEDERATED",
///     name="my_iceberg_catalog",
///     primary_location="us-central1",
///     federated_catalog_options={
///         "unity_catalog_info": {
///             "catalog_name": "my_catalog",
///             "instance_name": "1.1.gcp.databricks.com",
///             "service_principal_application_id": "b3204274-6556-4d40-ad18-556f91659745",
///         },
///         "refresh_options": {
///             "refresh_schedule": {
///                 "refresh_interval": "300s",
///             },
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
///     var myIcebergCatalog = new Gcp.BigLake.IcebergCatalog("my_iceberg_catalog", new()
///     {
///         CatalogType = "CATALOG_TYPE_FEDERATED",
///         Name = "my_iceberg_catalog",
///         PrimaryLocation = "us-central1",
///         FederatedCatalogOptions = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsArgs
///         {
///             UnityCatalogInfo = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsUnityCatalogInfoArgs
///             {
///                 CatalogName = "my_catalog",
///                 InstanceName = "1.1.gcp.databricks.com",
///                 ServicePrincipalApplicationId = "b3204274-6556-4d40-ad18-556f91659745",
///             },
///             RefreshOptions = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs
///             {
///                 RefreshSchedule = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs
///                 {
///                     RefreshInterval = "300s",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalog(ctx, "my_iceberg_catalog", &biglake.IcebergCatalogArgs{
/// 			CatalogType:     pulumi.String("CATALOG_TYPE_FEDERATED"),
/// 			Name:            pulumi.String("my_iceberg_catalog"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			FederatedCatalogOptions: &biglake.IcebergCatalogFederatedCatalogOptionsArgs{
/// 				UnityCatalogInfo: &biglake.IcebergCatalogFederatedCatalogOptionsUnityCatalogInfoArgs{
/// 					CatalogName:                   pulumi.String("my_catalog"),
/// 					InstanceName:                  pulumi.String("1.1.gcp.databricks.com"),
/// 					ServicePrincipalApplicationId: pulumi.String("b3204274-6556-4d40-ad18-556f91659745"),
/// 				},
/// 				RefreshOptions: &biglake.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs{
/// 					RefreshSchedule: &biglake.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs{
/// 						RefreshInterval: pulumi.String("300s"),
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
/// resource "gcp_biglake_icebergcatalog" "my_iceberg_catalog" {
///   catalog_type     = "CATALOG_TYPE_FEDERATED"
///   name             = "my_iceberg_catalog"
///   primary_location = "us-central1"
///   federated_catalog_options = {
///     unity_catalog_info = {
///       catalog_name                     = "my_catalog"
///       instance_name                    = "1.1.gcp.databricks.com"
///       service_principal_application_id = "b3204274-6556-4d40-ad18-556f91659745"
///     }
///     refresh_options = {
///       refresh_schedule = {
///         refresh_interval = "300s"
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
/// import com.pulumi.gcp.biglake.IcebergCatalog;
/// import com.pulumi.gcp.biglake.IcebergCatalogArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsUnityCatalogInfoArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs;
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
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .catalogType("CATALOG_TYPE_FEDERATED")
///             .name("my_iceberg_catalog")
///             .primaryLocation("us-central1")
///             .federatedCatalogOptions(IcebergCatalogFederatedCatalogOptionsArgs.builder()
///                 .unityCatalogInfo(IcebergCatalogFederatedCatalogOptionsUnityCatalogInfoArgs.builder()
///                     .catalogName("my_catalog")
///                     .instanceName("1.1.gcp.databricks.com")
///                     .servicePrincipalApplicationId("b3204274-6556-4d40-ad18-556f91659745")
///                     .build())
///                 .refreshOptions(IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs.builder()
///                     .refreshSchedule(IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs.builder()
///                         .refreshInterval("300s")
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
///   myIcebergCatalog:
///     type: gcp:biglake:IcebergCatalog
///     name: my_iceberg_catalog
///     properties:
///       catalogType: CATALOG_TYPE_FEDERATED
///       name: my_iceberg_catalog
///       primaryLocation: us-central1
///       federatedCatalogOptions:
///         unityCatalogInfo:
///           catalogName: my_catalog
///           instanceName: 1.1.gcp.databricks.com
///           servicePrincipalApplicationId: b3204274-6556-4d40-ad18-556f91659745
///         refreshOptions:
///           refreshSchedule:
///             refreshInterval: 300s
/// ```
///
/// ### Biglake Iceberg Catalog Federated Glue
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myIcebergCatalog = new gcp.biglake.IcebergCatalog("my_iceberg_catalog", {
///     catalogType: "CATALOG_TYPE_FEDERATED",
///     name: "my_iceberg_catalog",
///     primaryLocation: "us-central1",
///     federatedCatalogOptions: {
///         glueCatalogInfo: {
///             awsRegion: "us-east-1",
///             awsRoleArn: "arn:aws:iam::111222333444:role/my-glue-role",
///             warehouse: "111222333444:s3tablescatalog/example",
///         },
///         refreshOptions: {
///             refreshSchedule: {
///                 refreshInterval: "300s",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_iceberg_catalog = gcp.biglake.IcebergCatalog("my_iceberg_catalog",
///     catalog_type="CATALOG_TYPE_FEDERATED",
///     name="my_iceberg_catalog",
///     primary_location="us-central1",
///     federated_catalog_options={
///         "glue_catalog_info": {
///             "aws_region": "us-east-1",
///             "aws_role_arn": "arn:aws:iam::111222333444:role/my-glue-role",
///             "warehouse": "111222333444:s3tablescatalog/example",
///         },
///         "refresh_options": {
///             "refresh_schedule": {
///                 "refresh_interval": "300s",
///             },
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
///     var myIcebergCatalog = new Gcp.BigLake.IcebergCatalog("my_iceberg_catalog", new()
///     {
///         CatalogType = "CATALOG_TYPE_FEDERATED",
///         Name = "my_iceberg_catalog",
///         PrimaryLocation = "us-central1",
///         FederatedCatalogOptions = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsArgs
///         {
///             GlueCatalogInfo = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsGlueCatalogInfoArgs
///             {
///                 AwsRegion = "us-east-1",
///                 AwsRoleArn = "arn:aws:iam::111222333444:role/my-glue-role",
///                 Warehouse = "111222333444:s3tablescatalog/example",
///             },
///             RefreshOptions = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs
///             {
///                 RefreshSchedule = new Gcp.BigLake.Inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs
///                 {
///                     RefreshInterval = "300s",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := biglake.NewIcebergCatalog(ctx, "my_iceberg_catalog", &biglake.IcebergCatalogArgs{
/// 			CatalogType:     pulumi.String("CATALOG_TYPE_FEDERATED"),
/// 			Name:            pulumi.String("my_iceberg_catalog"),
/// 			PrimaryLocation: pulumi.String("us-central1"),
/// 			FederatedCatalogOptions: &biglake.IcebergCatalogFederatedCatalogOptionsArgs{
/// 				GlueCatalogInfo: &biglake.IcebergCatalogFederatedCatalogOptionsGlueCatalogInfoArgs{
/// 					AwsRegion:  pulumi.String("us-east-1"),
/// 					AwsRoleArn: pulumi.String("arn:aws:iam::111222333444:role/my-glue-role"),
/// 					Warehouse:  pulumi.String("111222333444:s3tablescatalog/example"),
/// 				},
/// 				RefreshOptions: &biglake.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs{
/// 					RefreshSchedule: &biglake.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs{
/// 						RefreshInterval: pulumi.String("300s"),
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
/// resource "gcp_biglake_icebergcatalog" "my_iceberg_catalog" {
///   catalog_type     = "CATALOG_TYPE_FEDERATED"
///   name             = "my_iceberg_catalog"
///   primary_location = "us-central1"
///   federated_catalog_options = {
///     glue_catalog_info = {
///       aws_region   = "us-east-1"
///       aws_role_arn = "arn:aws:iam::111222333444:role/my-glue-role"
///       warehouse    = "111222333444:s3tablescatalog/example"
///     }
///     refresh_options = {
///       refresh_schedule = {
///         refresh_interval = "300s"
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
/// import com.pulumi.gcp.biglake.IcebergCatalog;
/// import com.pulumi.gcp.biglake.IcebergCatalogArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsGlueCatalogInfoArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs;
/// import com.pulumi.gcp.biglake.inputs.IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs;
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
///         var myIcebergCatalog = new IcebergCatalog("myIcebergCatalog", IcebergCatalogArgs.builder()
///             .catalogType("CATALOG_TYPE_FEDERATED")
///             .name("my_iceberg_catalog")
///             .primaryLocation("us-central1")
///             .federatedCatalogOptions(IcebergCatalogFederatedCatalogOptionsArgs.builder()
///                 .glueCatalogInfo(IcebergCatalogFederatedCatalogOptionsGlueCatalogInfoArgs.builder()
///                     .awsRegion("us-east-1")
///                     .awsRoleArn("arn:aws:iam::111222333444:role/my-glue-role")
///                     .warehouse("111222333444:s3tablescatalog/example")
///                     .build())
///                 .refreshOptions(IcebergCatalogFederatedCatalogOptionsRefreshOptionsArgs.builder()
///                     .refreshSchedule(IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScheduleArgs.builder()
///                         .refreshInterval("300s")
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
///   myIcebergCatalog:
///     type: gcp:biglake:IcebergCatalog
///     name: my_iceberg_catalog
///     properties:
///       catalogType: CATALOG_TYPE_FEDERATED
///       name: my_iceberg_catalog
///       primaryLocation: us-central1
///       federatedCatalogOptions:
///         glueCatalogInfo:
///           awsRegion: us-east-1
///           awsRoleArn: arn:aws:iam::111222333444:role/my-glue-role
///           warehouse: 111222333444:s3tablescatalog/example
///         refreshOptions:
///           refreshSchedule:
///             refreshInterval: 300s
/// ```
///
///
/// ## Import
///
/// IcebergCatalog can be imported using any of these accepted formats:
///
/// * `iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, IcebergCatalog can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default iceberg/v1/restcatalog/extensions/projects/{{project}}/catalogs/{{name}}
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{project}}/{{name}}
/// $ pulumi import gcp:biglake/icebergCatalog:IcebergCatalog default {{name}}
/// ```
class IcebergCatalog extends pulumi.CustomResource {
  /// Output only. The service account used for credential vending. It might be empty if credential vending was never enabled for the catalog.
  late final pulumi.Output<String> biglakeServiceAccount;
  /// Output only. The unique ID of the service account used for credential vending. Used for federation scenarios.
  late final pulumi.Output<String> biglakeServiceAccountId;
  /// The catalog type of the IcebergCatalog.
  /// * `CATALOG_TYPE_GCS_BUCKET`: Google Cloud Storage bucket catalog type.
  /// * `CATALOG_TYPE_BIGLAKE`: BigLake catalog type.
  /// * `CATALOG_TYPE_FEDERATED`: Federated catalog type, for integrating with external Iceberg REST Catalogs such as Databricks Unity Catalog or AWS Glue.
  /// Possible values are: `CATALOG_TYPE_GCS_BUCKET`, `CATALOG_TYPE_BIGLAKE`, `CATALOG_TYPE_FEDERATED`.
  late final pulumi.Output<String> catalogType;
  /// Output only. The creation time of the IcebergCatalog.
  late final pulumi.Output<String> createTime;
  /// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user credentials, default. The authenticating user must have access to the catalog resources and the corresponding Google Cloud Storage files. CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The authenticating user must have access to the catalog resources and the system will provide the caller with downscoped credentials to access the Google Cloud Storage files. All table operations in this mode would require `X-Iceberg-Access-Delegation` header with `vended-credentials` value included. System will generate a service account and the catalog administrator must grant the service account appropriate permissions.
  /// Possible values are: `CREDENTIAL_MODE_END_USER`, `CREDENTIAL_MODE_VENDED_CREDENTIALS`.
  late final pulumi.Output<String> credentialMode;
  /// The default storage location for the catalog, e.g., `gs://my-bucket`.
  /// Output only when the catalog type is CATALOG_TYPE_GCS_BUCKET.
  /// Required when the catalog type is CATALOG_TYPE_BIGLAKE.
  late final pulumi.Output<String> defaultLocation;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-provided description of the catalog. Maximum 1024 UTF-8 characters.
  late final pulumi.Output<String?> description;
  /// Options for a CATALOG_TYPE_FEDERATED catalog. Required when catalogType
  /// is CATALOG_TYPE_FEDERATED.
  /// Structure is documented below.
  late final pulumi.Output<IcebergCatalogFederatedCatalogOptions?> federatedCatalogOptions;
  /// The name of the IcebergCatalog.
  /// For CATALOG_TYPE_GCS_BUCKET typed catalogs, the name needs to be the
  /// exact same value of the GCS bucket's name. For example, for a bucket:
  /// gs://bucket-name, the catalog name will be exactly "bucket-name".
  late final pulumi.Output<String> name;
  /// The primary location for mirroring the remote catalog metadata. It must be
  /// a BigLake-supported location, and it should be proximate to the remote
  /// catalog's location.
  late final pulumi.Output<String?> primaryLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Output only. The replicas for the catalog metadata.
  /// Structure is documented below.
  late final pulumi.Output<List<IcebergCatalogReplica>> replicas;
  /// Configuration for the additional GCS locations that are permitted for use
  /// by resources within this catalog.
  /// Structure is documented below.
  late final pulumi.Output<IcebergCatalogRestrictedLocationsConfig> restrictedLocationsConfig;
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
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    biglakeServiceAccount = registerOutput<String>('biglakeServiceAccount');
    biglakeServiceAccountId = registerOutput<String>('biglakeServiceAccountId');
    catalogType = registerOutput<String>('catalogType');
    createTime = registerOutput<String>('createTime');
    credentialMode = registerOutput<String>('credentialMode');
    defaultLocation = registerOutput<String>('defaultLocation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    federatedCatalogOptions = registerOutput<IcebergCatalogFederatedCatalogOptions?>('federatedCatalogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogFederatedCatalogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String?>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<IcebergCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IcebergCatalogReplica>(guardedValue, (value) => IcebergCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    restrictedLocationsConfig = registerOutput<IcebergCatalogRestrictedLocationsConfig>('restrictedLocationsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogRestrictedLocationsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageRegions = registerOutput<List<String>>('storageRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [IcebergCatalog] resource's state with the given [name] and [id].
  static IcebergCatalog get(
    String name,
    pulumi.Input<String> id, {
    IcebergCatalogState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IcebergCatalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    biglakeServiceAccountId = registerOutput<String>('biglakeServiceAccountId');
    catalogType = registerOutput<String>('catalogType');
    createTime = registerOutput<String>('createTime');
    credentialMode = registerOutput<String>('credentialMode');
    defaultLocation = registerOutput<String>('defaultLocation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    federatedCatalogOptions = registerOutput<IcebergCatalogFederatedCatalogOptions?>('federatedCatalogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogFederatedCatalogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String?>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<IcebergCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IcebergCatalogReplica>(guardedValue, (value) => IcebergCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    restrictedLocationsConfig = registerOutput<IcebergCatalogRestrictedLocationsConfig>('restrictedLocationsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogRestrictedLocationsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageRegions = registerOutput<List<String>>('storageRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [IcebergCatalog] resource.
  IcebergCatalog.reference(String urn)
    : super(
        'gcp:biglake/icebergCatalog:IcebergCatalog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    biglakeServiceAccount = registerOutput<String>('biglakeServiceAccount');
    biglakeServiceAccountId = registerOutput<String>('biglakeServiceAccountId');
    catalogType = registerOutput<String>('catalogType');
    createTime = registerOutput<String>('createTime');
    credentialMode = registerOutput<String>('credentialMode');
    defaultLocation = registerOutput<String>('defaultLocation');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    federatedCatalogOptions = registerOutput<IcebergCatalogFederatedCatalogOptions?>('federatedCatalogOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogFederatedCatalogOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    primaryLocation = registerOutput<String?>('primaryLocation');
    project = registerOutput<String>('project');
    replicas = registerOutput<List<IcebergCatalogReplica>>('replicas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IcebergCatalogReplica>(guardedValue, (value) => IcebergCatalogReplica.fromMap((value as Map).cast<String, dynamic>())); });
    restrictedLocationsConfig = registerOutput<IcebergCatalogRestrictedLocationsConfig>('restrictedLocationsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IcebergCatalogRestrictedLocationsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageRegions = registerOutput<List<String>>('storageRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
