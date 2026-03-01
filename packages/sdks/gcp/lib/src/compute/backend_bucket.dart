import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_args.dart';
import 'backend_bucket_cdn_policy.dart';
import 'backend_bucket_params.dart';
import 'backend_bucket_state.dart';

/// Backend buckets allow you to use Google Cloud Storage buckets with HTTP(S)
/// load balancing.
///
/// An HTTP(S) load balancer can direct traffic to specified URLs to a
/// backend bucket rather than a backend service. It can send requests for
/// static content to a Cloud Storage bucket and requests for dynamic content
/// to a virtual machine instance.
///
///
/// To get more information about BackendBucket, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/backendBuckets)
/// * How-to Guides
/// * [Using a Cloud Storage bucket as a load balancer backend](https://cloud.google.com/compute/docs/load-balancing/http/backend-bucket)
///
/// ## Example Usage
///
/// ### Backend Bucket Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const imageBucket = new gcp.storage.Bucket("image_bucket", {
///     name: "image-store-bucket",
///     location: "EU",
/// });
/// const imageBackend = new gcp.compute.BackendBucket("image_backend", {
///     name: "image-backend-bucket",
///     description: "Contains beautiful images",
///     bucketName: imageBucket.name,
///     enableCdn: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_bucket = gcp.storage.Bucket("image_bucket",
///     name="image-store-bucket",
///     location="EU")
/// image_backend = gcp.compute.BackendBucket("image_backend",
///     name="image-backend-bucket",
///     description="Contains beautiful images",
///     bucket_name=image_bucket.name,
///     enable_cdn=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var imageBucket = new Gcp.Storage.Bucket("image_bucket", new()
///     {
///         Name = "image-store-bucket",
///         Location = "EU",
///     });
///
///     var imageBackend = new Gcp.Compute.BackendBucket("image_backend", new()
///     {
///         Name = "image-backend-bucket",
///         Description = "Contains beautiful images",
///         BucketName = imageBucket.Name,
///         EnableCdn = true,
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
/// 		imageBucket, err := storage.NewBucket(ctx, "image_bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("image-store-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendBucket(ctx, "image_backend", &compute.BackendBucketArgs{
/// 			Name:        pulumi.String("image-backend-bucket"),
/// 			Description: pulumi.String("Contains beautiful images"),
/// 			BucketName:  imageBucket.Name,
/// 			EnableCdn:   pulumi.Bool(true),
/// 		})
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
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
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
///         var imageBucket = new Bucket("imageBucket", BucketArgs.builder()
///             .name("image-store-bucket")
///             .location("EU")
///             .build());
///
///         var imageBackend = new BackendBucket("imageBackend", BackendBucketArgs.builder()
///             .name("image-backend-bucket")
///             .description("Contains beautiful images")
///             .bucketName(imageBucket.name())
///             .enableCdn(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   imageBackend:
///     type: gcp:compute:BackendBucket
///     name: image_backend
///     properties:
///       name: image-backend-bucket
///       description: Contains beautiful images
///       bucketName: ${imageBucket.name}
///       enableCdn: true
///   imageBucket:
///     type: gcp:storage:Bucket
///     name: image_bucket
///     properties:
///       name: image-store-bucket
///       location: EU
/// ```
///
/// ### Backend Bucket Security Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const imageBackendBucket = new gcp.storage.Bucket("image_backend", {
///     name: "image-store-bucket",
///     location: "EU",
/// });
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "image-store-bucket",
///     description: "basic security policy",
///     type: "CLOUD_ARMOR_EDGE",
/// });
/// const imageBackend = new gcp.compute.BackendBucket("image_backend", {
///     name: "image-backend-bucket",
///     description: "Contains beautiful images",
///     bucketName: imageBackendBucket.name,
///     enableCdn: true,
///     edgeSecurityPolicy: policy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_backend_bucket = gcp.storage.Bucket("image_backend",
///     name="image-store-bucket",
///     location="EU")
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="image-store-bucket",
///     description="basic security policy",
///     type="CLOUD_ARMOR_EDGE")
/// image_backend = gcp.compute.BackendBucket("image_backend",
///     name="image-backend-bucket",
///     description="Contains beautiful images",
///     bucket_name=image_backend_bucket.name,
///     enable_cdn=True,
///     edge_security_policy=policy.id)
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
///         Name = "image-store-bucket",
///         Location = "EU",
///     });
///
///     var policy = new Gcp.Compute.SecurityPolicy("policy", new()
///     {
///         Name = "image-store-bucket",
///         Description = "basic security policy",
///         Type = "CLOUD_ARMOR_EDGE",
///     });
///
///     var imageBackend = new Gcp.Compute.BackendBucket("image_backend", new()
///     {
///         Name = "image-backend-bucket",
///         Description = "Contains beautiful images",
///         BucketName = imageBackendBucket.Name,
///         EnableCdn = true,
///         EdgeSecurityPolicy = policy.Id,
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
/// 			Name:     pulumi.String("image-store-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("image-store-bucket"),
/// 			Description: pulumi.String("basic security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_EDGE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendBucket(ctx, "image_backend", &compute.BackendBucketArgs{
/// 			Name:               pulumi.String("image-backend-bucket"),
/// 			Description:        pulumi.String("Contains beautiful images"),
/// 			BucketName:         imageBackendBucket.Name,
/// 			EnableCdn:          pulumi.Bool(true),
/// 			EdgeSecurityPolicy: policy.ID(),
/// 		})
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
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
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
///         var imageBackendBucket = new Bucket("imageBackendBucket", BucketArgs.builder()
///             .name("image-store-bucket")
///             .location("EU")
///             .build());
///
///         var policy = new SecurityPolicy("policy", SecurityPolicyArgs.builder()
///             .name("image-store-bucket")
///             .description("basic security policy")
///             .type("CLOUD_ARMOR_EDGE")
///             .build());
///
///         var imageBackend = new BackendBucket("imageBackend", BackendBucketArgs.builder()
///             .name("image-backend-bucket")
///             .description("Contains beautiful images")
///             .bucketName(imageBackendBucket.name())
///             .enableCdn(true)
///             .edgeSecurityPolicy(policy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   imageBackend:
///     type: gcp:compute:BackendBucket
///     name: image_backend
///     properties:
///       name: image-backend-bucket
///       description: Contains beautiful images
///       bucketName: ${imageBackendBucket.name}
///       enableCdn: true
///       edgeSecurityPolicy: ${policy.id}
///   imageBackendBucket:
///     type: gcp:storage:Bucket
///     name: image_backend
///     properties:
///       name: image-store-bucket
///       location: EU
///   policy:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: image-store-bucket
///       description: basic security policy
///       type: CLOUD_ARMOR_EDGE
/// ```
///
/// ### Backend Bucket Query String Whitelist
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const imageBucket = new gcp.storage.Bucket("image_bucket", {
///     name: "image-backend-bucket",
///     location: "EU",
/// });
/// const imageBackend = new gcp.compute.BackendBucket("image_backend", {
///     name: "image-backend-bucket",
///     description: "Contains beautiful images",
///     bucketName: imageBucket.name,
///     enableCdn: true,
///     cdnPolicy: {
///         cacheKeyPolicy: {
///             queryStringWhitelists: ["image-version"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_bucket = gcp.storage.Bucket("image_bucket",
///     name="image-backend-bucket",
///     location="EU")
/// image_backend = gcp.compute.BackendBucket("image_backend",
///     name="image-backend-bucket",
///     description="Contains beautiful images",
///     bucket_name=image_bucket.name,
///     enable_cdn=True,
///     cdn_policy={
///         "cache_key_policy": {
///             "query_string_whitelists": ["image-version"],
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
///     var imageBucket = new Gcp.Storage.Bucket("image_bucket", new()
///     {
///         Name = "image-backend-bucket",
///         Location = "EU",
///     });
///
///     var imageBackend = new Gcp.Compute.BackendBucket("image_backend", new()
///     {
///         Name = "image-backend-bucket",
///         Description = "Contains beautiful images",
///         BucketName = imageBucket.Name,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendBucketCdnPolicyArgs
///         {
///             CacheKeyPolicy = new Gcp.Compute.Inputs.BackendBucketCdnPolicyCacheKeyPolicyArgs
///             {
///                 QueryStringWhitelists = new[]
///                 {
///                     "image-version",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		imageBucket, err := storage.NewBucket(ctx, "image_bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("image-backend-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendBucket(ctx, "image_backend", &compute.BackendBucketArgs{
/// 			Name:        pulumi.String("image-backend-bucket"),
/// 			Description: pulumi.String("Contains beautiful images"),
/// 			BucketName:  imageBucket.Name,
/// 			EnableCdn:   pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendBucketCdnPolicyArgs{
/// 				CacheKeyPolicy: &compute.BackendBucketCdnPolicyCacheKeyPolicyArgs{
/// 					QueryStringWhitelists: pulumi.StringArray{
/// 						pulumi.String("image-version"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.inputs.BackendBucketCdnPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.BackendBucketCdnPolicyCacheKeyPolicyArgs;
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
///         var imageBucket = new Bucket("imageBucket", BucketArgs.builder()
///             .name("image-backend-bucket")
///             .location("EU")
///             .build());
///
///         var imageBackend = new BackendBucket("imageBackend", BackendBucketArgs.builder()
///             .name("image-backend-bucket")
///             .description("Contains beautiful images")
///             .bucketName(imageBucket.name())
///             .enableCdn(true)
///             .cdnPolicy(BackendBucketCdnPolicyArgs.builder()
///                 .cacheKeyPolicy(BackendBucketCdnPolicyCacheKeyPolicyArgs.builder()
///                     .queryStringWhitelists("image-version")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   imageBackend:
///     type: gcp:compute:BackendBucket
///     name: image_backend
///     properties:
///       name: image-backend-bucket
///       description: Contains beautiful images
///       bucketName: ${imageBucket.name}
///       enableCdn: true
///       cdnPolicy:
///         cacheKeyPolicy:
///           queryStringWhitelists:
///             - image-version
///   imageBucket:
///     type: gcp:storage:Bucket
///     name: image_bucket
///     properties:
///       name: image-backend-bucket
///       location: EU
/// ```
///
/// ### Backend Bucket Include Http Headers
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const imageBucket = new gcp.storage.Bucket("image_bucket", {
///     name: "image-backend-bucket",
///     location: "EU",
/// });
/// const imageBackend = new gcp.compute.BackendBucket("image_backend", {
///     name: "image-backend-bucket",
///     description: "Contains beautiful images",
///     bucketName: imageBucket.name,
///     enableCdn: true,
///     cdnPolicy: {
///         cacheKeyPolicy: {
///             includeHttpHeaders: ["X-My-Header-Field"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_bucket = gcp.storage.Bucket("image_bucket",
///     name="image-backend-bucket",
///     location="EU")
/// image_backend = gcp.compute.BackendBucket("image_backend",
///     name="image-backend-bucket",
///     description="Contains beautiful images",
///     bucket_name=image_bucket.name,
///     enable_cdn=True,
///     cdn_policy={
///         "cache_key_policy": {
///             "include_http_headers": ["X-My-Header-Field"],
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
///     var imageBucket = new Gcp.Storage.Bucket("image_bucket", new()
///     {
///         Name = "image-backend-bucket",
///         Location = "EU",
///     });
///
///     var imageBackend = new Gcp.Compute.BackendBucket("image_backend", new()
///     {
///         Name = "image-backend-bucket",
///         Description = "Contains beautiful images",
///         BucketName = imageBucket.Name,
///         EnableCdn = true,
///         CdnPolicy = new Gcp.Compute.Inputs.BackendBucketCdnPolicyArgs
///         {
///             CacheKeyPolicy = new Gcp.Compute.Inputs.BackendBucketCdnPolicyCacheKeyPolicyArgs
///             {
///                 IncludeHttpHeaders = new[]
///                 {
///                     "X-My-Header-Field",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		imageBucket, err := storage.NewBucket(ctx, "image_bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("image-backend-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendBucket(ctx, "image_backend", &compute.BackendBucketArgs{
/// 			Name:        pulumi.String("image-backend-bucket"),
/// 			Description: pulumi.String("Contains beautiful images"),
/// 			BucketName:  imageBucket.Name,
/// 			EnableCdn:   pulumi.Bool(true),
/// 			CdnPolicy: &compute.BackendBucketCdnPolicyArgs{
/// 				CacheKeyPolicy: &compute.BackendBucketCdnPolicyCacheKeyPolicyArgs{
/// 					IncludeHttpHeaders: pulumi.StringArray{
/// 						pulumi.String("X-My-Header-Field"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.inputs.BackendBucketCdnPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.BackendBucketCdnPolicyCacheKeyPolicyArgs;
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
///         var imageBucket = new Bucket("imageBucket", BucketArgs.builder()
///             .name("image-backend-bucket")
///             .location("EU")
///             .build());
///
///         var imageBackend = new BackendBucket("imageBackend", BackendBucketArgs.builder()
///             .name("image-backend-bucket")
///             .description("Contains beautiful images")
///             .bucketName(imageBucket.name())
///             .enableCdn(true)
///             .cdnPolicy(BackendBucketCdnPolicyArgs.builder()
///                 .cacheKeyPolicy(BackendBucketCdnPolicyCacheKeyPolicyArgs.builder()
///                     .includeHttpHeaders("X-My-Header-Field")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   imageBackend:
///     type: gcp:compute:BackendBucket
///     name: image_backend
///     properties:
///       name: image-backend-bucket
///       description: Contains beautiful images
///       bucketName: ${imageBucket.name}
///       enableCdn: true
///       cdnPolicy:
///         cacheKeyPolicy:
///           includeHttpHeaders:
///             - X-My-Header-Field
///   imageBucket:
///     type: gcp:storage:Bucket
///     name: image_bucket
///     properties:
///       name: image-backend-bucket
///       location: EU
/// ```
///
///
/// ## Import
///
/// BackendBucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/backendBuckets/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, BackendBucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default projects/{{project}}/global/backendBuckets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucket:BackendBucket default {{name}}
/// ```
class BackendBucket extends pulumi.CustomResource {
  /// Cloud Storage bucket name.
  late final pulumi.Output<String> bucketName;
  /// Cloud CDN configuration for this Backend Bucket.
  /// Structure is documented below.
  late final pulumi.Output<BackendBucketCdnPolicy> cdnPolicy;
  /// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
  /// Possible values are: `AUTOMATIC`, `DISABLED`.
  late final pulumi.Output<String?> compressionMode;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Headers that the HTTP/S load balancer should add to proxied responses.
  late final pulumi.Output<List<String>?> customResponseHeaders;
  /// An optional textual description of the resource; provided by the
  /// client when the resource is created.
  late final pulumi.Output<String?> description;
  /// The security policy associated with this backend bucket.
  late final pulumi.Output<String?> edgeSecurityPolicy;
  /// If true, enable Cloud CDN for this BackendBucket.
  /// Note: This cannot be set to true when loadBalancingScheme is set to INTERNAL_MANAGED.
  late final pulumi.Output<bool?> enableCdn;
  /// The value can only be INTERNAL_MANAGED for cross-region internal layer 7 load balancer.
  /// If loadBalancingScheme is not specified, the backend bucket can be used by classic global external load balancers, or global application external load balancers, or both.
  /// Important: CDN cannot be enabled (enableCdn cannot be set to true) when loadBalancingScheme is set to INTERNAL_MANAGED.
  /// Possible values are: `INTERNAL_MANAGED`.
  late final pulumi.Output<String?> loadBalancingScheme;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<BackendBucketParams?> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [BackendBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendBucket]. {@macro pulumi_compute_backend_bucket_backend_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendBucket(
    String name, {
    BackendBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucket:BackendBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String>('bucketName');
    this.cdnPolicy = registerOutput<BackendBucketCdnPolicy>('cdnPolicy');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customResponseHeaders = registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    this.params = registerOutput<BackendBucketParams?>('params');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [BackendBucket] resource's state with the given [name] and [id].
  static BackendBucket get(
    String name,
    pulumi.Input<String> id, {
    BackendBucketState? state,
  }) {
    return BackendBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucket:BackendBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String>('bucketName');
    this.cdnPolicy = registerOutput<BackendBucketCdnPolicy>('cdnPolicy');
    this.compressionMode = registerOutput<String?>('compressionMode');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customResponseHeaders = registerOutput<List<String>?>('customResponseHeaders');
    this.description = registerOutput<String?>('description');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.enableCdn = registerOutput<bool?>('enableCdn');
    this.loadBalancingScheme = registerOutput<String?>('loadBalancingScheme');
    this.name = registerOutput<String>('name');
    this.params = registerOutput<BackendBucketParams?>('params');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
