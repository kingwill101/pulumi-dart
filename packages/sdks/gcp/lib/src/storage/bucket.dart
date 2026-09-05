import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_args.dart';
import 'bucket_autoclass.dart';
import 'bucket_cor.dart';
import 'bucket_custom_placement_config.dart';
import 'bucket_encryption.dart';
import 'bucket_hierarchical_namespace.dart';
import 'bucket_ip_filter.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_retention_policy.dart';
import 'bucket_soft_delete_policy.dart';
import 'bucket_state.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// Creates a new bucket in Google cloud storage service (GCS).
/// Once a bucket has been created, its location can't be changed.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/overview)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/buckets).
///
/// **Note**: If the project id is not set on the resource or in the provider block it will be dynamically
/// determined which will require enabling the compute api.
///
///
/// ## Example Usage
///
/// ### Creating A Private Bucket In Standard Storage, In The EU Region. Bucket Configured As Static Website And CORS Configurations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const static_site = new gcp.storage.Bucket("static-site", {
///     name: "image-store.com",
///     location: "EU",
///     forceDestroy: true,
///     uniformBucketLevelAccess: true,
///     website: {
///         mainPageSuffix: "index.html",
///         notFoundPage: "404.html",
///     },
///     cors: [
///         {
///             origins: ["http://image-store.com"],
///             methods: [
///                 "GET",
///                 "HEAD",
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             responseHeaders: ["*"],
///             maxAgeSeconds: 3600,
///         },
///         {
///             origins: ["http://image-store.com"],
///             methods: [
///                 "GET",
///                 "HEAD",
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             responseHeaders: ["*"],
///             maxAgeSeconds: 0,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// static_site = gcp.storage.Bucket("static-site",
///     name="image-store.com",
///     location="EU",
///     force_destroy=True,
///     uniform_bucket_level_access=True,
///     website={
///         "main_page_suffix": "index.html",
///         "not_found_page": "404.html",
///     },
///     cors=[
///         {
///             "origins": ["http://image-store.com"],
///             "methods": [
///                 "GET",
///                 "HEAD",
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             "response_headers": ["*"],
///             "max_age_seconds": 3600,
///         },
///         {
///             "origins": ["http://image-store.com"],
///             "methods": [
///                 "GET",
///                 "HEAD",
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             "response_headers": ["*"],
///             "max_age_seconds": 0,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var static_site = new Gcp.Storage.Bucket("static-site", new()
///     {
///         Name = "image-store.com",
///         Location = "EU",
///         ForceDestroy = true,
///         UniformBucketLevelAccess = true,
///         Website = new Gcp.Storage.Inputs.BucketWebsiteArgs
///         {
///             MainPageSuffix = "index.html",
///             NotFoundPage = "404.html",
///         },
///         Cors = new[]
///         {
///             new Gcp.Storage.Inputs.BucketCorArgs
///             {
///                 Origins = new[]
///                 {
///                     "http://image-store.com",
///                 },
///                 Methods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                     "PUT",
///                     "POST",
///                     "DELETE",
///                 },
///                 ResponseHeaders = new[]
///                 {
///                     "*",
///                 },
///                 MaxAgeSeconds = 3600,
///             },
///             new Gcp.Storage.Inputs.BucketCorArgs
///             {
///                 Origins = new[]
///                 {
///                     "http://image-store.com",
///                 },
///                 Methods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                     "PUT",
///                     "POST",
///                     "DELETE",
///                 },
///                 ResponseHeaders = new[]
///                 {
///                     "*",
///                 },
///                 MaxAgeSeconds = 0,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "static-site", &storage.BucketArgs{
/// 			Name:                     pulumi.String("image-store.com"),
/// 			Location:                 pulumi.String("EU"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			Website: &storage.BucketWebsiteArgs{
/// 				MainPageSuffix: pulumi.String("index.html"),
/// 				NotFoundPage:   pulumi.String("404.html"),
/// 			},
/// 			Cors: storage.BucketCorArray{
/// 				&storage.BucketCorArgs{
/// 					Origins: pulumi.StringArray{
/// 						pulumi.String("http://image-store.com"),
/// 					},
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("PUT"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("DELETE"),
/// 					},
/// 					ResponseHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(3600),
/// 				},
/// 				&storage.BucketCorArgs{
/// 					Origins: pulumi.StringArray{
/// 						pulumi.String("http://image-store.com"),
/// 					},
/// 					Methods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("PUT"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("DELETE"),
/// 					},
/// 					ResponseHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(0),
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
/// resource "gcp_storage_bucket" "static-site" {
///   name                        = "image-store.com"
///   location                    = "EU"
///   force_destroy               = true
///   uniform_bucket_level_access = true
///   website = {
///     main_page_suffix = "index.html"
///     not_found_page   = "404.html"
///   }
///   cors {
///     origins          = ["http://image-store.com"]
///     methods          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
///     response_headers = ["*"]
///     max_age_seconds  = 3600
///   }
///   cors {
///     origins          = ["http://image-store.com"]
///     methods          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
///     response_headers = ["*"]
///     max_age_seconds  = 0
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
/// import com.pulumi.gcp.storage.inputs.BucketWebsiteArgs;
/// import com.pulumi.gcp.storage.inputs.BucketCorArgs;
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
///         var static_site = new Bucket("static-site", BucketArgs.builder()
///             .name("image-store.com")
///             .location("EU")
///             .forceDestroy(true)
///             .uniformBucketLevelAccess(true)
///             .website(BucketWebsiteArgs.builder()
///                 .mainPageSuffix("index.html")
///                 .notFoundPage("404.html")
///                 .build())
///             .cors(
///                 BucketCorArgs.builder()
///                     .origins("http://image-store.com")
///                     .methods(
///                         "GET",
///                         "HEAD",
///                         "PUT",
///                         "POST",
///                         "DELETE")
///                     .responseHeaders("*")
///                     .maxAgeSeconds(3600)
///                     .build(),
///                 BucketCorArgs.builder()
///                     .origins("http://image-store.com")
///                     .methods(
///                         "GET",
///                         "HEAD",
///                         "PUT",
///                         "POST",
///                         "DELETE")
///                     .responseHeaders("*")
///                     .maxAgeSeconds(0)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   static-site:
///     type: gcp:storage:Bucket
///     properties:
///       name: image-store.com
///       location: EU
///       forceDestroy: true
///       uniformBucketLevelAccess: true
///       website:
///         mainPageSuffix: index.html
///         notFoundPage: 404.html
///       cors:
///         - origins:
///             - http://image-store.com
///           methods:
///             - GET
///             - HEAD
///             - PUT
///             - POST
///             - DELETE
///           responseHeaders:
///             - '*'
///           maxAgeSeconds: 3600
///         - origins:
///             - http://image-store.com
///           methods:
///             - GET
///             - HEAD
///             - PUT
///             - POST
///             - DELETE
///           responseHeaders:
///             - '*'
///           maxAgeSeconds: 0
/// ```
///
///
/// ### Life Cycle Settings For Storage Bucket Objects
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const auto_expire = new gcp.storage.Bucket("auto-expire", {
///     name: "auto-expiring-bucket",
///     location: "US",
///     forceDestroy: true,
///     lifecycleRules: [
///         {
///             condition: {
///                 age: 3,
///             },
///             action: {
///                 type: "Delete",
///             },
///         },
///         {
///             condition: {
///                 age: 1,
///             },
///             action: {
///                 type: "AbortIncompleteMultipartUpload",
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// auto_expire = gcp.storage.Bucket("auto-expire",
///     name="auto-expiring-bucket",
///     location="US",
///     force_destroy=True,
///     lifecycle_rules=[
///         {
///             "condition": {
///                 "age": 3,
///             },
///             "action": {
///                 "type": "Delete",
///             },
///         },
///         {
///             "condition": {
///                 "age": 1,
///             },
///             "action": {
///                 "type": "AbortIncompleteMultipartUpload",
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var auto_expire = new Gcp.Storage.Bucket("auto-expire", new()
///     {
///         Name = "auto-expiring-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         LifecycleRules = new[]
///         {
///             new Gcp.Storage.Inputs.BucketLifecycleRuleArgs
///             {
///                 Condition = new Gcp.Storage.Inputs.BucketLifecycleRuleConditionArgs
///                 {
///                     Age = 3,
///                 },
///                 Action = new Gcp.Storage.Inputs.BucketLifecycleRuleActionArgs
///                 {
///                     Type = "Delete",
///                 },
///             },
///             new Gcp.Storage.Inputs.BucketLifecycleRuleArgs
///             {
///                 Condition = new Gcp.Storage.Inputs.BucketLifecycleRuleConditionArgs
///                 {
///                     Age = 1,
///                 },
///                 Action = new Gcp.Storage.Inputs.BucketLifecycleRuleActionArgs
///                 {
///                     Type = "AbortIncompleteMultipartUpload",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "auto-expire", &storage.BucketArgs{
/// 			Name:         pulumi.String("auto-expiring-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			LifecycleRules: storage.BucketLifecycleRuleArray{
/// 				&storage.BucketLifecycleRuleArgs{
/// 					Condition: &storage.BucketLifecycleRuleConditionArgs{
/// 						Age: pulumi.Int(3),
/// 					},
/// 					Action: &storage.BucketLifecycleRuleActionArgs{
/// 						Type: pulumi.String("Delete"),
/// 					},
/// 				},
/// 				&storage.BucketLifecycleRuleArgs{
/// 					Condition: &storage.BucketLifecycleRuleConditionArgs{
/// 						Age: pulumi.Int(1),
/// 					},
/// 					Action: &storage.BucketLifecycleRuleActionArgs{
/// 						Type: pulumi.String("AbortIncompleteMultipartUpload"),
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
/// resource "gcp_storage_bucket" "auto-expire" {
///   name          = "auto-expiring-bucket"
///   location      = "US"
///   force_destroy = true
///   lifecycle_rules {
///     condition = {
///       age = 3
///     }
///     action = {
///       type = "Delete"
///     }
///   }
///   lifecycle_rules {
///     condition = {
///       age = 1
///     }
///     action = {
///       type = "AbortIncompleteMultipartUpload"
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleConditionArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleActionArgs;
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
///         var auto_expire = new Bucket("auto-expire", BucketArgs.builder()
///             .name("auto-expiring-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .lifecycleRules(
///                 BucketLifecycleRuleArgs.builder()
///                     .condition(BucketLifecycleRuleConditionArgs.builder()
///                         .age(3)
///                         .build())
///                     .action(BucketLifecycleRuleActionArgs.builder()
///                         .type("Delete")
///                         .build())
///                     .build(),
///                 BucketLifecycleRuleArgs.builder()
///                     .condition(BucketLifecycleRuleConditionArgs.builder()
///                         .age(1)
///                         .build())
///                     .action(BucketLifecycleRuleActionArgs.builder()
///                         .type("AbortIncompleteMultipartUpload")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   auto-expire:
///     type: gcp:storage:Bucket
///     properties:
///       name: auto-expiring-bucket
///       location: US
///       forceDestroy: true
///       lifecycleRules:
///         - condition:
///             age: 3
///           action:
///             type: Delete
///         - condition:
///             age: 1
///           action:
///             type: AbortIncompleteMultipartUpload
/// ```
///
///
/// ### Life Cycle Settings For Storage Bucket Objects With `Send_age_if_zero` Disabled
/// When creating a life cycle condition that does not also include an `age` field, a default `age` of 0 will be set. Set the `sendAgeIfZero` flag to `false` to prevent this and avoid any potentially unintended interactions.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const no_age_enabled = new gcp.storage.Bucket("no-age-enabled", {
///     name: "no-age-enabled-bucket",
///     location: "US",
///     forceDestroy: true,
///     lifecycleRules: [{
///         action: {
///             type: "Delete",
///         },
///         condition: {
///             daysSinceNoncurrentTime: 3,
///             sendAgeIfZero: false,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// no_age_enabled = gcp.storage.Bucket("no-age-enabled",
///     name="no-age-enabled-bucket",
///     location="US",
///     force_destroy=True,
///     lifecycle_rules=[{
///         "action": {
///             "type": "Delete",
///         },
///         "condition": {
///             "days_since_noncurrent_time": 3,
///             "send_age_if_zero": False,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var no_age_enabled = new Gcp.Storage.Bucket("no-age-enabled", new()
///     {
///         Name = "no-age-enabled-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         LifecycleRules = new[]
///         {
///             new Gcp.Storage.Inputs.BucketLifecycleRuleArgs
///             {
///                 Action = new Gcp.Storage.Inputs.BucketLifecycleRuleActionArgs
///                 {
///                     Type = "Delete",
///                 },
///                 Condition = new Gcp.Storage.Inputs.BucketLifecycleRuleConditionArgs
///                 {
///                     DaysSinceNoncurrentTime = 3,
///                     SendAgeIfZero = false,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "no-age-enabled", &storage.BucketArgs{
/// 			Name:         pulumi.String("no-age-enabled-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			LifecycleRules: storage.BucketLifecycleRuleArray{
/// 				&storage.BucketLifecycleRuleArgs{
/// 					Action: &storage.BucketLifecycleRuleActionArgs{
/// 						Type: pulumi.String("Delete"),
/// 					},
/// 					Condition: &storage.BucketLifecycleRuleConditionArgs{
/// 						DaysSinceNoncurrentTime: pulumi.Int(3),
/// 						SendAgeIfZero:           pulumi.Bool(false),
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
/// resource "gcp_storage_bucket" "no-age-enabled" {
///   name          = "no-age-enabled-bucket"
///   location      = "US"
///   force_destroy = true
///   lifecycle_rules {
///     action = {
///       type = "Delete"
///     }
///     condition = {
///       days_since_noncurrent_time = 3
///       send_age_if_zero           = false
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleActionArgs;
/// import com.pulumi.gcp.storage.inputs.BucketLifecycleRuleConditionArgs;
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
///         var no_age_enabled = new Bucket("no-age-enabled", BucketArgs.builder()
///             .name("no-age-enabled-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .action(BucketLifecycleRuleActionArgs.builder()
///                     .type("Delete")
///                     .build())
///                 .condition(BucketLifecycleRuleConditionArgs.builder()
///                     .daysSinceNoncurrentTime(3)
///                     .sendAgeIfZero(false)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   no-age-enabled:
///     type: gcp:storage:Bucket
///     properties:
///       name: no-age-enabled-bucket
///       location: US
///       forceDestroy: true
///       lifecycleRules:
///         - action:
///             type: Delete
///           condition:
///             daysSinceNoncurrentTime: 3
///             sendAgeIfZero: false
/// ```
///
///
/// ### Enabling Public Access Prevention
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const no_public_access = new gcp.storage.Bucket("no-public-access", {
///     name: "no-public-access-bucket",
///     location: "US",
///     forceDestroy: true,
///     publicAccessPrevention: "enforced",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// no_public_access = gcp.storage.Bucket("no-public-access",
///     name="no-public-access-bucket",
///     location="US",
///     force_destroy=True,
///     public_access_prevention="enforced")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var no_public_access = new Gcp.Storage.Bucket("no-public-access", new()
///     {
///         Name = "no-public-access-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         PublicAccessPrevention = "enforced",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "no-public-access", &storage.BucketArgs{
/// 			Name:                   pulumi.String("no-public-access-bucket"),
/// 			Location:               pulumi.String("US"),
/// 			ForceDestroy:           pulumi.Bool(true),
/// 			PublicAccessPrevention: pulumi.String("enforced"),
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
/// resource "gcp_storage_bucket" "no-public-access" {
///   name                     = "no-public-access-bucket"
///   location                 = "US"
///   force_destroy            = true
///   public_access_prevention = "enforced"
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
///         var no_public_access = new Bucket("no-public-access", BucketArgs.builder()
///             .name("no-public-access-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .publicAccessPrevention("enforced")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   no-public-access:
///     type: gcp:storage:Bucket
///     properties:
///       name: no-public-access-bucket
///       location: US
///       forceDestroy: true
///       publicAccessPrevention: enforced
/// ```
///
///
/// ### Enabling Hierarchical Namespace
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hns_enabled = new gcp.storage.Bucket("hns-enabled", {
///     name: "hns-enabled-bucket",
///     location: "US",
///     forceDestroy: true,
///     hierarchicalNamespace: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hns_enabled = gcp.storage.Bucket("hns-enabled",
///     name="hns-enabled-bucket",
///     location="US",
///     force_destroy=True,
///     hierarchical_namespace={
///         "enabled": True,
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
///     var hns_enabled = new Gcp.Storage.Bucket("hns-enabled", new()
///     {
///         Name = "hns-enabled-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         HierarchicalNamespace = new Gcp.Storage.Inputs.BucketHierarchicalNamespaceArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "hns-enabled", &storage.BucketArgs{
/// 			Name:         pulumi.String("hns-enabled-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			HierarchicalNamespace: &storage.BucketHierarchicalNamespaceArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// resource "gcp_storage_bucket" "hns-enabled" {
///   name          = "hns-enabled-bucket"
///   location      = "US"
///   force_destroy = true
///   hierarchical_namespace = {
///     enabled = true
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
/// import com.pulumi.gcp.storage.inputs.BucketHierarchicalNamespaceArgs;
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
///         var hns_enabled = new Bucket("hns-enabled", BucketArgs.builder()
///             .name("hns-enabled-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .hierarchicalNamespace(BucketHierarchicalNamespaceArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hns-enabled:
///     type: gcp:storage:Bucket
///     properties:
///       name: hns-enabled-bucket
///       location: US
///       forceDestroy: true
///       hierarchicalNamespace:
///         enabled: true
/// ```
///
///
/// ### IP Filter Mode Enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hns_enabled = new gcp.storage.Bucket("hns-enabled", {
///     name: "hns-enabled-bucket",
///     location: "US",
///     forceDestroy: true,
///     ipFilter: {
///         mode: "Enabled",
///         publicNetworkSource: {
///             allowedIpCidrRanges: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hns_enabled = gcp.storage.Bucket("hns-enabled",
///     name="hns-enabled-bucket",
///     location="US",
///     force_destroy=True,
///     ip_filter={
///         "mode": "Enabled",
///         "public_network_source": {
///             "allowed_ip_cidr_ranges": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
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
///     var hns_enabled = new Gcp.Storage.Bucket("hns-enabled", new()
///     {
///         Name = "hns-enabled-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         IpFilter = new Gcp.Storage.Inputs.BucketIpFilterArgs
///         {
///             Mode = "Enabled",
///             PublicNetworkSource = new Gcp.Storage.Inputs.BucketIpFilterPublicNetworkSourceArgs
///             {
///                 AllowedIpCidrRanges = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "hns-enabled", &storage.BucketArgs{
/// 			Name:         pulumi.String("hns-enabled-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			IpFilter: &storage.BucketIpFilterArgs{
/// 				Mode: pulumi.String("Enabled"),
/// 				PublicNetworkSource: &storage.BucketIpFilterPublicNetworkSourceArgs{
/// 					AllowedIpCidrRanges: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
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
/// resource "gcp_storage_bucket" "hns-enabled" {
///   name          = "hns-enabled-bucket"
///   location      = "US"
///   force_destroy = true
///   ip_filter = {
///     mode = "Enabled"
///     public_network_source = {
///       allowed_ip_cidr_ranges = ["0.0.0.0/0", "::/0"]
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketIpFilterArgs;
/// import com.pulumi.gcp.storage.inputs.BucketIpFilterPublicNetworkSourceArgs;
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
///         var hns_enabled = new Bucket("hns-enabled", BucketArgs.builder()
///             .name("hns-enabled-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .ipFilter(BucketIpFilterArgs.builder()
///                 .mode("Enabled")
///                 .publicNetworkSource(BucketIpFilterPublicNetworkSourceArgs.builder()
///                     .allowedIpCidrRanges(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hns-enabled:
///     type: gcp:storage:Bucket
///     properties:
///       name: hns-enabled-bucket
///       location: US
///       forceDestroy: true
///       ipFilter:
///         mode: Enabled
///         publicNetworkSource:
///           allowedIpCidrRanges:
///             - 0.0.0.0/0
///             - ::/0
/// ```
///
///
/// ### IP Filter Mode Disabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hns_enabled = new gcp.storage.Bucket("hns-enabled", {
///     name: "hns-enabled-bucket",
///     location: "US",
///     forceDestroy: true,
///     ipFilter: {
///         mode: "Disabled",
///         publicNetworkSource: {
///             allowedIpCidrRanges: [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hns_enabled = gcp.storage.Bucket("hns-enabled",
///     name="hns-enabled-bucket",
///     location="US",
///     force_destroy=True,
///     ip_filter={
///         "mode": "Disabled",
///         "public_network_source": {
///             "allowed_ip_cidr_ranges": [
///                 "0.0.0.0/0",
///                 "::/0",
///             ],
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
///     var hns_enabled = new Gcp.Storage.Bucket("hns-enabled", new()
///     {
///         Name = "hns-enabled-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         IpFilter = new Gcp.Storage.Inputs.BucketIpFilterArgs
///         {
///             Mode = "Disabled",
///             PublicNetworkSource = new Gcp.Storage.Inputs.BucketIpFilterPublicNetworkSourceArgs
///             {
///                 AllowedIpCidrRanges = new[]
///                 {
///                     "0.0.0.0/0",
///                     "::/0",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "hns-enabled", &storage.BucketArgs{
/// 			Name:         pulumi.String("hns-enabled-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			IpFilter: &storage.BucketIpFilterArgs{
/// 				Mode: pulumi.String("Disabled"),
/// 				PublicNetworkSource: &storage.BucketIpFilterPublicNetworkSourceArgs{
/// 					AllowedIpCidrRanges: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 						pulumi.String("::/0"),
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
/// resource "gcp_storage_bucket" "hns-enabled" {
///   name          = "hns-enabled-bucket"
///   location      = "US"
///   force_destroy = true
///   ip_filter = {
///     mode = "Disabled"
///     public_network_source = {
///       allowed_ip_cidr_ranges = ["0.0.0.0/0", "::/0"]
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketIpFilterArgs;
/// import com.pulumi.gcp.storage.inputs.BucketIpFilterPublicNetworkSourceArgs;
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
///         var hns_enabled = new Bucket("hns-enabled", BucketArgs.builder()
///             .name("hns-enabled-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .ipFilter(BucketIpFilterArgs.builder()
///                 .mode("Disabled")
///                 .publicNetworkSource(BucketIpFilterPublicNetworkSourceArgs.builder()
///                     .allowedIpCidrRanges(
///                         "0.0.0.0/0",
///                         "::/0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hns-enabled:
///     type: gcp:storage:Bucket
///     properties:
///       name: hns-enabled-bucket
///       location: US
///       forceDestroy: true
///       ipFilter:
///         mode: Disabled
///         publicNetworkSource:
///           allowedIpCidrRanges:
///             - 0.0.0.0/0
///             - ::/0
/// ```
///
/// ### Enabling Encryption Enforcement Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hns_enabled = new gcp.storage.Bucket("hns-enabled", {
///     name: "hns-enabled-bucket",
///     location: "US",
///     forceDestroy: true,
///     encryption: {
///         googleManagedEncryptionEnforcementConfig: {
///             restrictionMode: "FullyRestricted",
///         },
///         customerManagedEncryptionEnforcementConfig: {
///             restrictionMode: "FullyRestricted",
///         },
///         customerSuppliedEncryptionEnforcementConfig: {
///             restrictionMode: "NotRestricted",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hns_enabled = gcp.storage.Bucket("hns-enabled",
///     name="hns-enabled-bucket",
///     location="US",
///     force_destroy=True,
///     encryption={
///         "google_managed_encryption_enforcement_config": {
///             "restriction_mode": "FullyRestricted",
///         },
///         "customer_managed_encryption_enforcement_config": {
///             "restriction_mode": "FullyRestricted",
///         },
///         "customer_supplied_encryption_enforcement_config": {
///             "restriction_mode": "NotRestricted",
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
///     var hns_enabled = new Gcp.Storage.Bucket("hns-enabled", new()
///     {
///         Name = "hns-enabled-bucket",
///         Location = "US",
///         ForceDestroy = true,
///         Encryption = new Gcp.Storage.Inputs.BucketEncryptionArgs
///         {
///             GoogleManagedEncryptionEnforcementConfig = new Gcp.Storage.Inputs.BucketEncryptionGoogleManagedEncryptionEnforcementConfigArgs
///             {
///                 RestrictionMode = "FullyRestricted",
///             },
///             CustomerManagedEncryptionEnforcementConfig = new Gcp.Storage.Inputs.BucketEncryptionCustomerManagedEncryptionEnforcementConfigArgs
///             {
///                 RestrictionMode = "FullyRestricted",
///             },
///             CustomerSuppliedEncryptionEnforcementConfig = new Gcp.Storage.Inputs.BucketEncryptionCustomerSuppliedEncryptionEnforcementConfigArgs
///             {
///                 RestrictionMode = "NotRestricted",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "hns-enabled", &storage.BucketArgs{
/// 			Name:         pulumi.String("hns-enabled-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 			Encryption: &storage.BucketEncryptionArgs{
/// 				GoogleManagedEncryptionEnforcementConfig: &storage.BucketEncryptionGoogleManagedEncryptionEnforcementConfigArgs{
/// 					RestrictionMode: pulumi.String("FullyRestricted"),
/// 				},
/// 				CustomerManagedEncryptionEnforcementConfig: &storage.BucketEncryptionCustomerManagedEncryptionEnforcementConfigArgs{
/// 					RestrictionMode: pulumi.String("FullyRestricted"),
/// 				},
/// 				CustomerSuppliedEncryptionEnforcementConfig: &storage.BucketEncryptionCustomerSuppliedEncryptionEnforcementConfigArgs{
/// 					RestrictionMode: pulumi.String("NotRestricted"),
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
/// resource "gcp_storage_bucket" "hns-enabled" {
///   name          = "hns-enabled-bucket"
///   location      = "US"
///   force_destroy = true
///   encryption = {
///     google_managed_encryption_enforcement_config = {
///       restriction_mode = "FullyRestricted"
///     }
///     customer_managed_encryption_enforcement_config = {
///       restriction_mode = "FullyRestricted"
///     }
///     customer_supplied_encryption_enforcement_config = {
///       restriction_mode = "NotRestricted"
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionGoogleManagedEncryptionEnforcementConfigArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionCustomerManagedEncryptionEnforcementConfigArgs;
/// import com.pulumi.gcp.storage.inputs.BucketEncryptionCustomerSuppliedEncryptionEnforcementConfigArgs;
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
///         var hns_enabled = new Bucket("hns-enabled", BucketArgs.builder()
///             .name("hns-enabled-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .encryption(BucketEncryptionArgs.builder()
///                 .googleManagedEncryptionEnforcementConfig(BucketEncryptionGoogleManagedEncryptionEnforcementConfigArgs.builder()
///                     .restrictionMode("FullyRestricted")
///                     .build())
///                 .customerManagedEncryptionEnforcementConfig(BucketEncryptionCustomerManagedEncryptionEnforcementConfigArgs.builder()
///                     .restrictionMode("FullyRestricted")
///                     .build())
///                 .customerSuppliedEncryptionEnforcementConfig(BucketEncryptionCustomerSuppliedEncryptionEnforcementConfigArgs.builder()
///                     .restrictionMode("NotRestricted")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hns-enabled:
///     type: gcp:storage:Bucket
///     properties:
///       name: hns-enabled-bucket
///       location: US
///       forceDestroy: true
///       encryption:
///         googleManagedEncryptionEnforcementConfig:
///           restrictionMode: FullyRestricted
///         customerManagedEncryptionEnforcementConfig:
///           restrictionMode: FullyRestricted
///         customerSuppliedEncryptionEnforcementConfig:
///           restrictionMode: NotRestricted
/// ```
///
/// ### Enabling RAPID Storage Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const zonalBucket = new gcp.storage.Bucket("zonal_bucket", {
///     location: "US-CENTRAL1",
///     customPlacementConfig: {
///         dataLocations: ["US-CENTRAL1-B"],
///     },
///     name: "zonal-rapid-bucket",
///     storageClass: "RAPID",
///     hierarchicalNamespace: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// zonal_bucket = gcp.storage.Bucket("zonal_bucket",
///     location="US-CENTRAL1",
///     custom_placement_config={
///         "data_locations": ["US-CENTRAL1-B"],
///     },
///     name="zonal-rapid-bucket",
///     storage_class="RAPID",
///     hierarchical_namespace={
///         "enabled": True,
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
///     var zonalBucket = new Gcp.Storage.Bucket("zonal_bucket", new()
///     {
///         Location = "US-CENTRAL1",
///         CustomPlacementConfig = new Gcp.Storage.Inputs.BucketCustomPlacementConfigArgs
///         {
///             DataLocations = new[]
///             {
///                 "US-CENTRAL1-B",
///             },
///         },
///         Name = "zonal-rapid-bucket",
///         StorageClass = "RAPID",
///         HierarchicalNamespace = new Gcp.Storage.Inputs.BucketHierarchicalNamespaceArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBucket(ctx, "zonal_bucket", &storage.BucketArgs{
/// 			Location: pulumi.String("US-CENTRAL1"),
/// 			CustomPlacementConfig: &storage.BucketCustomPlacementConfigArgs{
/// 				DataLocations: pulumi.StringArray{
/// 					pulumi.String("US-CENTRAL1-B"),
/// 				},
/// 			},
/// 			Name:         pulumi.String("zonal-rapid-bucket"),
/// 			StorageClass: pulumi.String("RAPID"),
/// 			HierarchicalNamespace: &storage.BucketHierarchicalNamespaceArgs{
/// 				Enabled: pulumi.Bool(true),
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
/// resource "gcp_storage_bucket" "zonal_bucket" {
///   location = "US-CENTRAL1"
///   custom_placement_config = {
///     data_locations = ["US-CENTRAL1-B"]
///   }
///   name          = "zonal-rapid-bucket"
///   storage_class = "RAPID"
///   hierarchical_namespace = {
///     enabled = true
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
/// import com.pulumi.gcp.storage.inputs.BucketCustomPlacementConfigArgs;
/// import com.pulumi.gcp.storage.inputs.BucketHierarchicalNamespaceArgs;
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
///         var zonalBucket = new Bucket("zonalBucket", BucketArgs.builder()
///             .location("US-CENTRAL1")
///             .customPlacementConfig(BucketCustomPlacementConfigArgs.builder()
///                 .dataLocations("US-CENTRAL1-B")
///                 .build())
///             .name("zonal-rapid-bucket")
///             .storageClass("RAPID")
///             .hierarchicalNamespace(BucketHierarchicalNamespaceArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zonalBucket:
///     type: gcp:storage:Bucket
///     name: zonal_bucket
///     properties:
///       location: US-CENTRAL1
///       customPlacementConfig:
///         dataLocations:
///           - US-CENTRAL1-B
///       name: zonal-rapid-bucket
///       storageClass: RAPID
///       hierarchicalNamespace:
///         enabled: true
/// ```
class Bucket extends pulumi.CustomResource {
  /// The bucket's [Autoclass](https://cloud.google.com/storage/docs/autoclass) configuration.  Structure is documented below.
  late final pulumi.Output<BucketAutoclass?> autoclass;
  /// The bucket's [Cross-Origin Resource Sharing (CORS)](https://www.w3.org/TR/cors/) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  late final pulumi.Output<List<BucketCor>?> cors;
  /// The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. Structure is documented below.
  late final pulumi.Output<BucketCustomPlacementConfig?> customPlacementConfig;
  /// Whether or not to automatically apply an eventBasedHold to new objects added to the bucket.
  late final pulumi.Output<bool?> defaultEventBasedHold;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Enables [object retention](https://cloud.google.com/storage/docs/object-lock) on a storage bucket.
  late final pulumi.Output<bool?> enableObjectRetention;
  /// The bucket's encryption configuration. Structure is documented below.
  late final pulumi.Output<BucketEncryption?> encryption;
  /// When true, before deleting a bucket, delete all objects within the bucket, or Anywhere Caches caching data for that bucket. Otherwise, buckets with objects/caches will fail. Anywhere Cache requires additional permissions to interact with and will be assumed not present when the provider is not permissioned, attempting to delete the bucket anyways. This may result in the objects in the bucket getting destroyed but not the bucket itself if there is a cache in use with the bucket. Force deletion may take a long time to delete buckets with lots of objects or with any Anywhere Caches (80m+).
  late final pulumi.Output<bool?> forceDestroy;
  /// The bucket's hierarchical namespace policy, which defines the bucket capability to handle folders in logical structure. Structure is documented below. To use this configuration, `uniformBucketLevelAccess` must be enabled on bucket.
  late final pulumi.Output<BucketHierarchicalNamespace?> hierarchicalNamespace;
  /// The bucket IP filtering configuration. Specifies the network sources that can access the bucket, as well as its underlying objects. Structure is documented below.
  late final pulumi.Output<BucketIpFilter?> ipFilter;
  /// A map of key/value label pairs to assign to the bucket.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The bucket's [Lifecycle Rules](https://cloud.google.com/storage/docs/lifecycle#configuration) configuration. Multiple blocks of this type are permitted. Structure is documented below.
  late final pulumi.Output<List<BucketLifecycleRule>?> lifecycleRules;
  /// The [GCS location](https://cloud.google.com/storage/docs/bucket-locations).
  ///
  /// - - -
  late final pulumi.Output<String> location;
  /// The bucket's [Access & Storage Logs](https://cloud.google.com/storage/docs/access-logs) configuration. Structure is documented below.
  late final pulumi.Output<BucketLogging?> logging;
  /// The name of the bucket. Bucket names must be in lowercase and no more than 63 characters long. You can find the complete list of bucket naming rules [here](https://cloud.google.com/storage/docs/buckets#naming).
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The project number of the project in which the resource belongs.
  late final pulumi.Output<int> projectNumber;
  /// Prevents public access to a bucket. Acceptable values are "inherited" or "enforced". If "inherited", the bucket uses [public access prevention](https://cloud.google.com/storage/docs/public-access-prevention) only if the bucket is subject to the public access prevention organization policy constraint. Defaults to "inherited".
  late final pulumi.Output<String> publicAccessPrevention;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Enables [Requester Pays](https://cloud.google.com/storage/docs/requester-pays) on a storage bucket.
  late final pulumi.Output<bool?> requesterPays;
  /// Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. Structure is documented below.
  late final pulumi.Output<BucketRetentionPolicy?> retentionPolicy;
  /// The recovery point objective for cross-region replication of the bucket. Applicable only for dual and multi-region buckets. `"DEFAULT"` sets default replication. `"ASYNC_TURBO"` value enables turbo replication, valid for dual-region buckets only. See [Turbo Replication](https://cloud.google.com/storage/docs/managing-turbo-replication) for more information. If rpo is not specified at bucket creation, it defaults to `"DEFAULT"` for dual and multi-region buckets. **NOTE** If used with single-region bucket, It will throw an error.
  late final pulumi.Output<String> rpo;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted. If the block is not provided, Server side value will be kept which means removal of block won't generate any terraform change. Structure is documented below.
  late final pulumi.Output<BucketSoftDeletePolicy> softDeletePolicy;
  /// The [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of the new bucket. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`.
  late final pulumi.Output<String?> storageClass;
  /// The creation time of the bucket in RFC 3339 format.
  late final pulumi.Output<String> timeCreated;
  /// Enables [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) access to a bucket.
  late final pulumi.Output<bool> uniformBucketLevelAccess;
  /// The time at which the bucket's metadata or IAM policy was last updated, in RFC 3339 format.
  late final pulumi.Output<String> updated;
  /// The base URL of the bucket, in the format `gs://&lt;bucket-name&gt;`.
  late final pulumi.Output<String> url;
  /// The bucket's [Versioning](https://cloud.google.com/storage/docs/object-versioning) configuration.  Structure is documented below.
  late final pulumi.Output<BucketVersioning> versioning;
  /// Configuration if the bucket acts as a website. Structure is documented below.
  late final pulumi.Output<BucketWebsite> website;

  /// Creates a new [Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bucket]. {@macro pulumi_storage_bucket_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    autoclass = registerOutput<BucketAutoclass?>('autoclass', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAutoclass.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<BucketCor>?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketCor>(guardedValue, (value) => BucketCor.fromMap((value as Map).cast<String, dynamic>())); });
    customPlacementConfig = registerOutput<BucketCustomPlacementConfig?>('customPlacementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCustomPlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultEventBasedHold = registerOutput<bool?>('defaultEventBasedHold');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    encryption = registerOutput<BucketEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool?>('forceDestroy');
    hierarchicalNamespace = registerOutput<BucketHierarchicalNamespace?>('hierarchicalNamespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketHierarchicalNamespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFilter = registerOutput<BucketIpFilter?>('ipFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketIpFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lifecycleRules = registerOutput<List<BucketLifecycleRule>?>('lifecycleRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleRule>(guardedValue, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    logging = registerOutput<BucketLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    projectNumber = registerOutput<int>('projectNumber');
    publicAccessPrevention = registerOutput<String>('publicAccessPrevention');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requesterPays = registerOutput<bool?>('requesterPays');
    retentionPolicy = registerOutput<BucketRetentionPolicy?>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rpo = registerOutput<String>('rpo');
    selfLink = registerOutput<String>('selfLink');
    softDeletePolicy = registerOutput<BucketSoftDeletePolicy>('softDeletePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketSoftDeletePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageClass = registerOutput<String?>('storageClass');
    timeCreated = registerOutput<String>('timeCreated');
    uniformBucketLevelAccess = registerOutput<bool>('uniformBucketLevelAccess');
    updated = registerOutput<String>('updated');
    url = registerOutput<String>('url');
    versioning = registerOutput<BucketVersioning>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    website = registerOutput<BucketWebsite>('website', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Bucket] resource's state with the given [name] and [id].
  static Bucket get(
    String name,
    pulumi.Input<String> id, {
    BucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Bucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Bucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoclass = registerOutput<BucketAutoclass?>('autoclass', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAutoclass.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<BucketCor>?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketCor>(guardedValue, (value) => BucketCor.fromMap((value as Map).cast<String, dynamic>())); });
    customPlacementConfig = registerOutput<BucketCustomPlacementConfig?>('customPlacementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCustomPlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultEventBasedHold = registerOutput<bool?>('defaultEventBasedHold');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    encryption = registerOutput<BucketEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool?>('forceDestroy');
    hierarchicalNamespace = registerOutput<BucketHierarchicalNamespace?>('hierarchicalNamespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketHierarchicalNamespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFilter = registerOutput<BucketIpFilter?>('ipFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketIpFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lifecycleRules = registerOutput<List<BucketLifecycleRule>?>('lifecycleRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleRule>(guardedValue, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    logging = registerOutput<BucketLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    projectNumber = registerOutput<int>('projectNumber');
    publicAccessPrevention = registerOutput<String>('publicAccessPrevention');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requesterPays = registerOutput<bool?>('requesterPays');
    retentionPolicy = registerOutput<BucketRetentionPolicy?>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rpo = registerOutput<String>('rpo');
    selfLink = registerOutput<String>('selfLink');
    softDeletePolicy = registerOutput<BucketSoftDeletePolicy>('softDeletePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketSoftDeletePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageClass = registerOutput<String?>('storageClass');
    timeCreated = registerOutput<String>('timeCreated');
    uniformBucketLevelAccess = registerOutput<bool>('uniformBucketLevelAccess');
    updated = registerOutput<String>('updated');
    url = registerOutput<String>('url');
    versioning = registerOutput<BucketVersioning>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    website = registerOutput<BucketWebsite>('website', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Bucket] resource.
  Bucket.reference(String urn)
    : super(
        'gcp:storage/bucket:Bucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    autoclass = registerOutput<BucketAutoclass?>('autoclass', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAutoclass.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<BucketCor>?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketCor>(guardedValue, (value) => BucketCor.fromMap((value as Map).cast<String, dynamic>())); });
    customPlacementConfig = registerOutput<BucketCustomPlacementConfig?>('customPlacementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketCustomPlacementConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultEventBasedHold = registerOutput<bool?>('defaultEventBasedHold');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableObjectRetention = registerOutput<bool?>('enableObjectRetention');
    encryption = registerOutput<BucketEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool?>('forceDestroy');
    hierarchicalNamespace = registerOutput<BucketHierarchicalNamespace?>('hierarchicalNamespace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketHierarchicalNamespace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipFilter = registerOutput<BucketIpFilter?>('ipFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketIpFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lifecycleRules = registerOutput<List<BucketLifecycleRule>?>('lifecycleRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleRule>(guardedValue, (value) => BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    logging = registerOutput<BucketLogging?>('logging', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    projectNumber = registerOutput<int>('projectNumber');
    publicAccessPrevention = registerOutput<String>('publicAccessPrevention');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    requesterPays = registerOutput<bool?>('requesterPays');
    retentionPolicy = registerOutput<BucketRetentionPolicy?>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rpo = registerOutput<String>('rpo');
    selfLink = registerOutput<String>('selfLink');
    softDeletePolicy = registerOutput<BucketSoftDeletePolicy>('softDeletePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketSoftDeletePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageClass = registerOutput<String?>('storageClass');
    timeCreated = registerOutput<String>('timeCreated');
    uniformBucketLevelAccess = registerOutput<bool>('uniformBucketLevelAccess');
    updated = registerOutput<String>('updated');
    url = registerOutput<String>('url');
    versioning = registerOutput<BucketVersioning>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    website = registerOutput<BucketWebsite>('website', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsite.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
