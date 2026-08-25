import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_bucket_args.dart';
import 'region_backend_bucket_state.dart';

/// Regional backend buckets allow you to use Google Cloud Storage buckets with
/// regional HTTP(S) load balancing.
///
/// A regional HTTP(S) load balancer can direct traffic to specified URLs to a
/// backend bucket rather than a backend service. It can send requests for
/// static content to a Cloud Storage bucket and requests for dynamic content
/// to a virtual machine instance.
///
/// Regional backend buckets are used with:
/// - Regional internal Application Load Balancers
/// - Regional external Application Load Balancers
///
/// &gt; **Note:** Regional backend buckets have important limitations:
/// - Cloud CDN cannot be enabled
/// - Only public buckets are supported (private bucket access is not available)
/// - Only GET requests are supported
/// - The bucket must be in the same region as the load balancer
/// - Single-region buckets only (multi-region and dual-region buckets are not supported)
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about RegionBackendBucket, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/beta/regionBackendBuckets)
/// * How-to Guides
/// * [Using a Cloud Storage bucket as a load balancer backend](https://cloud.google.com/compute/docs/load-balancing/http/backend-bucket)
///
/// ## Example Usage
///
/// ### Region Backend Bucket Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const imageBackendBucket = new gcp.storage.Bucket("image_backend", {
///     name: "region-image-store-bucket",
///     location: "US-CENTRAL1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
/// });
/// const imageBackend = new gcp.compute.RegionBackendBucket("image_backend", {
///     name: "region-image-backend-bucket",
///     region: "us-central1",
///     bucketName: imageBackendBucket.name,
///     description: "Regional backend bucket example",
///     loadBalancingScheme: "INTERNAL_MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_backend_bucket = gcp.storage.Bucket("image_backend",
///     name="region-image-store-bucket",
///     location="US-CENTRAL1",
///     force_destroy=True,
///     uniform_bucket_level_access=True)
/// image_backend = gcp.compute.RegionBackendBucket("image_backend",
///     name="region-image-backend-bucket",
///     region="us-central1",
///     bucket_name=image_backend_bucket.name,
///     description="Regional backend bucket example",
///     load_balancing_scheme="INTERNAL_MANAGED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var imageBackendBucket = new Gcp.Storage.Bucket("image_backend", new()
///     {
///         Name = "region-image-store-bucket",
///         Location = "US-CENTRAL1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///     });
///
///     var imageBackend = new Gcp.Compute.RegionBackendBucket("image_backend", new()
///     {
///         Name = "region-image-backend-bucket",
///         Region = "us-central1",
///         BucketName = imageBackendBucket.Name,
///         Description = "Regional backend bucket example",
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		imageBackendBucket, err := storage.NewBucket(ctx, "image_backend", &storage.BucketArgs{
/// 			Name:                     pulumi.String("region-image-store-bucket"),
/// 			Location:                 pulumi.String("US-CENTRAL1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendBucket(ctx, "image_backend", &compute.RegionBackendBucketArgs{
/// 			Name:                pulumi.String("region-image-backend-bucket"),
/// 			Region:              pulumi.String("us-central1"),
/// 			BucketName:          imageBackendBucket.Name,
/// 			Description:         pulumi.String("Regional backend bucket example"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
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
/// resource "gcp_compute_regionbackendbucket" "image_backend" {
///   name                  = "region-image-backend-bucket"
///   region                = "us-central1"
///   bucket_name           = gcp_storage_bucket.image_backend.name
///   description           = "Regional backend bucket example"
///   load_balancing_scheme = "INTERNAL_MANAGED"
/// }
/// resource "gcp_storage_bucket" "image_backend" {
///   name                        = "region-image-store-bucket"
///   location                    = "US-CENTRAL1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
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
/// import com.pulumi.gcp.compute.RegionBackendBucket;
/// import com.pulumi.gcp.compute.RegionBackendBucketArgs;
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
///         var imageBackendBucket = new Bucket("imageBackendBucket", BucketArgs.builder()
///             .name("region-image-store-bucket")
///             .location("US-CENTRAL1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var imageBackend = new RegionBackendBucket("imageBackend", RegionBackendBucketArgs.builder()
///             .name("region-image-backend-bucket")
///             .region("us-central1")
///             .bucketName(imageBackendBucket.name())
///             .description("Regional backend bucket example")
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   imageBackend:
///     type: gcp:compute:RegionBackendBucket
///     name: image_backend
///     properties:
///       name: region-image-backend-bucket
///       region: us-central1
///       bucketName: ${imageBackendBucket.name}
///       description: Regional backend bucket example
///       loadBalancingScheme: INTERNAL_MANAGED
///   imageBackendBucket:
///     type: gcp:storage:Bucket
///     name: image_backend
///     properties:
///       name: region-image-store-bucket
///       location: US-CENTRAL1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
/// ```
///
/// ### Region Backend Bucket Internal Lb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const internalBackendBucket = new gcp.storage.Bucket("internal_backend", {
///     name: "regional-internal-bucket",
///     location: "US-CENTRAL1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     website: {
///         mainPageSuffix: "index.html",
///         notFoundPage: "404.html",
///     },
/// });
/// const internalBackend = new gcp.compute.RegionBackendBucket("internal_backend", {
///     name: "regional-internal-backend",
///     region: "us-central1",
///     bucketName: internalBackendBucket.name,
///     loadBalancingScheme: "INTERNAL_MANAGED",
///     description: "Regional internal backend bucket for static content",
/// });
/// const index = new gcp.storage.BucketObject("index", {
///     name: "index.html",
///     bucket: internalBackendBucket.name,
///     content: "<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// internal_backend_bucket = gcp.storage.Bucket("internal_backend",
///     name="regional-internal-bucket",
///     location="US-CENTRAL1",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     website={
///         "main_page_suffix": "index.html",
///         "not_found_page": "404.html",
///     })
/// internal_backend = gcp.compute.RegionBackendBucket("internal_backend",
///     name="regional-internal-backend",
///     region="us-central1",
///     bucket_name=internal_backend_bucket.name,
///     load_balancing_scheme="INTERNAL_MANAGED",
///     description="Regional internal backend bucket for static content")
/// index = gcp.storage.BucketObject("index",
///     name="index.html",
///     bucket=internal_backend_bucket.name,
///     content="<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var internalBackendBucket = new Gcp.Storage.Bucket("internal_backend", new()
///     {
///         Name = "regional-internal-bucket",
///         Location = "US-CENTRAL1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         Website = new Gcp.Storage.Inputs.BucketWebsiteArgs
///         {
///             MainPageSuffix = "index.html",
///             NotFoundPage = "404.html",
///         },
///     });
///
///     var internalBackend = new Gcp.Compute.RegionBackendBucket("internal_backend", new()
///     {
///         Name = "regional-internal-backend",
///         Region = "us-central1",
///         BucketName = internalBackendBucket.Name,
///         LoadBalancingScheme = "INTERNAL_MANAGED",
///         Description = "Regional internal backend bucket for static content",
///     });
///
///     var index = new Gcp.Storage.BucketObject("index", new()
///     {
///         Name = "index.html",
///         Bucket = internalBackendBucket.Name,
///         Content = "<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		internalBackendBucket, err := storage.NewBucket(ctx, "internal_backend", &storage.BucketArgs{
/// 			Name:                     pulumi.String("regional-internal-bucket"),
/// 			Location:                 pulumi.String("US-CENTRAL1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			Website: &storage.BucketWebsiteArgs{
/// 				MainPageSuffix: pulumi.String("index.html"),
/// 				NotFoundPage:   pulumi.String("404.html"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendBucket(ctx, "internal_backend", &compute.RegionBackendBucketArgs{
/// 			Name:                pulumi.String("regional-internal-backend"),
/// 			Region:              pulumi.String("us-central1"),
/// 			BucketName:          internalBackendBucket.Name,
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_MANAGED"),
/// 			Description:         pulumi.String("Regional internal backend bucket for static content"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketObject(ctx, "index", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("index.html"),
/// 			Bucket:  internalBackendBucket.Name,
/// 			Content: pulumi.String("<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>"),
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
/// resource "gcp_compute_regionbackendbucket" "internal_backend" {
///   name                  = "regional-internal-backend"
///   region                = "us-central1"
///   bucket_name           = gcp_storage_bucket.internal_backend.name
///   load_balancing_scheme = "INTERNAL_MANAGED"
///   description           = "Regional internal backend bucket for static content"
/// }
/// resource "gcp_storage_bucket" "internal_backend" {
///   name                        = "regional-internal-bucket"
///   location                    = "US-CENTRAL1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
///   website = {
///     main_page_suffix = "index.html"
///     not_found_page   = "404.html"
///   }
/// }
/// resource "gcp_storage_bucketobject" "index" {
///   name    = "index.html"
///   bucket  = gcp_storage_bucket.internal_backend.name
///   content = "<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>"
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
/// import com.pulumi.gcp.storage.inputs.BucketWebsiteArgs;
/// import com.pulumi.gcp.compute.RegionBackendBucket;
/// import com.pulumi.gcp.compute.RegionBackendBucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
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
///         var internalBackendBucket = new Bucket("internalBackendBucket", BucketArgs.builder()
///             .name("regional-internal-bucket")
///             .location("US-CENTRAL1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .website(BucketWebsiteArgs.builder()
///                 .mainPageSuffix("index.html")
///                 .notFoundPage("404.html")
///                 .build())
///             .build());
///
///         var internalBackend = new RegionBackendBucket("internalBackend", RegionBackendBucketArgs.builder()
///             .name("regional-internal-backend")
///             .region("us-central1")
///             .bucketName(internalBackendBucket.name())
///             .loadBalancingScheme("INTERNAL_MANAGED")
///             .description("Regional internal backend bucket for static content")
///             .build());
///
///         var index = new BucketObject("index", BucketObjectArgs.builder()
///             .name("index.html")
///             .bucket(internalBackendBucket.name())
///             .content("<html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   internalBackend:
///     type: gcp:compute:RegionBackendBucket
///     name: internal_backend
///     properties:
///       name: regional-internal-backend
///       region: us-central1
///       bucketName: ${internalBackendBucket.name}
///       loadBalancingScheme: INTERNAL_MANAGED
///       description: Regional internal backend bucket for static content
///   internalBackendBucket:
///     type: gcp:storage:Bucket
///     name: internal_backend
///     properties:
///       name: regional-internal-bucket
///       location: US-CENTRAL1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       website:
///         mainPageSuffix: index.html
///         notFoundPage: 404.html
///   index:
///     type: gcp:storage:BucketObject
///     properties:
///       name: index.html
///       bucket: ${internalBackendBucket.name}
///       content: <html><body><h1>Regional Internal LB Backend Bucket</h1></body></html>
/// ```
///
/// ### Region Backend Bucket External Lb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const externalBackendBucket = new gcp.storage.Bucket("external_backend", {
///     name: "regional-external-bucket",
///     location: "US-EAST1",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     website: {
///         mainPageSuffix: "index.html",
///         notFoundPage: "404.html",
///     },
/// });
/// const externalBackend = new gcp.compute.RegionBackendBucket("external_backend", {
///     name: "regional-external-backend",
///     region: "us-east1",
///     bucketName: externalBackendBucket.name,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     description: "Regional external backend bucket for static content",
/// });
/// const index = new gcp.storage.BucketObject("index", {
///     name: "index.html",
///     bucket: externalBackendBucket.name,
///     content: "<html><body><h1>Regional External LB Backend Bucket</h1></body></html>",
/// });
/// const staticAsset = new gcp.storage.BucketObject("static_asset", {
///     name: "assets/style.css",
///     bucket: externalBackendBucket.name,
///     content: "body { font-family: Arial, sans-serif; }",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// external_backend_bucket = gcp.storage.Bucket("external_backend",
///     name="regional-external-bucket",
///     location="US-EAST1",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     website={
///         "main_page_suffix": "index.html",
///         "not_found_page": "404.html",
///     })
/// external_backend = gcp.compute.RegionBackendBucket("external_backend",
///     name="regional-external-backend",
///     region="us-east1",
///     bucket_name=external_backend_bucket.name,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     description="Regional external backend bucket for static content")
/// index = gcp.storage.BucketObject("index",
///     name="index.html",
///     bucket=external_backend_bucket.name,
///     content="<html><body><h1>Regional External LB Backend Bucket</h1></body></html>")
/// static_asset = gcp.storage.BucketObject("static_asset",
///     name="assets/style.css",
///     bucket=external_backend_bucket.name,
///     content="body { font-family: Arial, sans-serif; }")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var externalBackendBucket = new Gcp.Storage.Bucket("external_backend", new()
///     {
///         Name = "regional-external-bucket",
///         Location = "US-EAST1",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         Website = new Gcp.Storage.Inputs.BucketWebsiteArgs
///         {
///             MainPageSuffix = "index.html",
///             NotFoundPage = "404.html",
///         },
///     });
///
///     var externalBackend = new Gcp.Compute.RegionBackendBucket("external_backend", new()
///     {
///         Name = "regional-external-backend",
///         Region = "us-east1",
///         BucketName = externalBackendBucket.Name,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         Description = "Regional external backend bucket for static content",
///     });
///
///     var index = new Gcp.Storage.BucketObject("index", new()
///     {
///         Name = "index.html",
///         Bucket = externalBackendBucket.Name,
///         Content = "<html><body><h1>Regional External LB Backend Bucket</h1></body></html>",
///     });
///
///     var staticAsset = new Gcp.Storage.BucketObject("static_asset", new()
///     {
///         Name = "assets/style.css",
///         Bucket = externalBackendBucket.Name,
///         Content = "body { font-family: Arial, sans-serif; }",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		externalBackendBucket, err := storage.NewBucket(ctx, "external_backend", &storage.BucketArgs{
/// 			Name:                     pulumi.String("regional-external-bucket"),
/// 			Location:                 pulumi.String("US-EAST1"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			Website: &storage.BucketWebsiteArgs{
/// 				MainPageSuffix: pulumi.String("index.html"),
/// 				NotFoundPage:   pulumi.String("404.html"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendBucket(ctx, "external_backend", &compute.RegionBackendBucketArgs{
/// 			Name:                pulumi.String("regional-external-backend"),
/// 			Region:              pulumi.String("us-east1"),
/// 			BucketName:          externalBackendBucket.Name,
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			Description:         pulumi.String("Regional external backend bucket for static content"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketObject(ctx, "index", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("index.html"),
/// 			Bucket:  externalBackendBucket.Name,
/// 			Content: pulumi.String("<html><body><h1>Regional External LB Backend Bucket</h1></body></html>"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketObject(ctx, "static_asset", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("assets/style.css"),
/// 			Bucket:  externalBackendBucket.Name,
/// 			Content: pulumi.String("body { font-family: Arial, sans-serif; }"),
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
/// resource "gcp_compute_regionbackendbucket" "external_backend" {
///   name                  = "regional-external-backend"
///   region                = "us-east1"
///   bucket_name           = gcp_storage_bucket.external_backend.name
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   description           = "Regional external backend bucket for static content"
/// }
/// resource "gcp_storage_bucket" "external_backend" {
///   name                        = "regional-external-bucket"
///   location                    = "US-EAST1"
///   force_destroy               = true
///   uniform_bucket_level_access = true
///   website = {
///     main_page_suffix = "index.html"
///     not_found_page   = "404.html"
///   }
/// }
/// resource "gcp_storage_bucketobject" "index" {
///   name    = "index.html"
///   bucket  = gcp_storage_bucket.external_backend.name
///   content = "<html><body><h1>Regional External LB Backend Bucket</h1></body></html>"
/// }
/// resource "gcp_storage_bucketobject" "static_asset" {
///   name    = "assets/style.css"
///   bucket  = gcp_storage_bucket.external_backend.name
///   content = "body { font-family: Arial, sans-serif; }"
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
/// import com.pulumi.gcp.storage.inputs.BucketWebsiteArgs;
/// import com.pulumi.gcp.compute.RegionBackendBucket;
/// import com.pulumi.gcp.compute.RegionBackendBucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
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
///         var externalBackendBucket = new Bucket("externalBackendBucket", BucketArgs.builder()
///             .name("regional-external-bucket")
///             .location("US-EAST1")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .website(BucketWebsiteArgs.builder()
///                 .mainPageSuffix("index.html")
///                 .notFoundPage("404.html")
///                 .build())
///             .build());
///
///         var externalBackend = new RegionBackendBucket("externalBackend", RegionBackendBucketArgs.builder()
///             .name("regional-external-backend")
///             .region("us-east1")
///             .bucketName(externalBackendBucket.name())
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .description("Regional external backend bucket for static content")
///             .build());
///
///         var index = new BucketObject("index", BucketObjectArgs.builder()
///             .name("index.html")
///             .bucket(externalBackendBucket.name())
///             .content("<html><body><h1>Regional External LB Backend Bucket</h1></body></html>")
///             .build());
///
///         var staticAsset = new BucketObject("staticAsset", BucketObjectArgs.builder()
///             .name("assets/style.css")
///             .bucket(externalBackendBucket.name())
///             .content("body { font-family: Arial, sans-serif; }")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   externalBackend:
///     type: gcp:compute:RegionBackendBucket
///     name: external_backend
///     properties:
///       name: regional-external-backend
///       region: us-east1
///       bucketName: ${externalBackendBucket.name}
///       loadBalancingScheme: EXTERNAL_MANAGED
///       description: Regional external backend bucket for static content
///   externalBackendBucket:
///     type: gcp:storage:Bucket
///     name: external_backend
///     properties:
///       name: regional-external-bucket
///       location: US-EAST1
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       website:
///         mainPageSuffix: index.html
///         notFoundPage: 404.html
///   index:
///     type: gcp:storage:BucketObject
///     properties:
///       name: index.html
///       bucket: ${externalBackendBucket.name}
///       content: <html><body><h1>Regional External LB Backend Bucket</h1></body></html>
///   staticAsset:
///     type: gcp:storage:BucketObject
///     name: static_asset
///     properties:
///       name: assets/style.css
///       bucket: ${externalBackendBucket.name}
///       content: 'body { font-family: Arial, sans-serif; }'
/// ```
///
///
/// ## Import
///
/// RegionBackendBucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/backendBuckets/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionBackendBucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionBackendBucket:RegionBackendBucket default projects/{{project}}/regions/{{region}}/backendBuckets/{{name}}
/// $ pulumi import gcp:compute/regionBackendBucket:RegionBackendBucket default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionBackendBucket:RegionBackendBucket default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionBackendBucket:RegionBackendBucket default {{name}}
/// ```
class RegionBackendBucket extends pulumi.CustomResource {
  /// Cloud Storage bucket name. The bucket must be in the same region as this
  /// backend bucket.
  late final pulumi.Output<String> bucketName;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional textual description of the resource; provided by the
  /// client when the resource is created.
  late final pulumi.Output<String?> description;
  /// Specifies the load balancer type this backend bucket will be used with.
  /// Possible values:
  /// - 'INTERNAL_MANAGED': for regional internal Application Load Balancers
  /// - 'EXTERNAL_MANAGED': for regional external Application Load Balancers
  /// This field is required for regional backend buckets.
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  late final pulumi.Output<String> loadBalancingScheme;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region where the backend bucket resides.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionBackendBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionBackendBucket]. {@macro pulumi_compute_region_backend_bucket_region_backend_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionBackendBucket(
    String name, {
    RegionBackendBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendBucket:RegionBackendBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bucketName = registerOutput<String>('bucketName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [RegionBackendBucket] resource's state with the given [name] and [id].
  static RegionBackendBucket get(
    String name,
    pulumi.Input<String> id, {
    RegionBackendBucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionBackendBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionBackendBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionBackendBucket:RegionBackendBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucketName = registerOutput<String>('bucketName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [RegionBackendBucket] resource.
  RegionBackendBucket.reference(String urn)
    : super(
        'gcp:compute/regionBackendBucket:RegionBackendBucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucketName = registerOutput<String>('bucketName');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    loadBalancingScheme = registerOutput<String>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}
