import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_cors_args.dart';
import 'r2_bucket_cors_rule.dart';
import 'r2_bucket_cors_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2BucketCors = new cloudflare.R2BucketCors("example_r2_bucket_cors", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     rules: [{
///         allowed: {
///             methods: ["GET"],
///             origins: ["http://localhost:3000"],
///             headers: ["x-requested-by"],
///         },
///         id: "Allow Local Development",
///         exposeHeaders: ["Content-Encoding"],
///         maxAgeSeconds: 3600,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket_cors = cloudflare.R2BucketCors("example_r2_bucket_cors",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     rules=[{
///         "allowed": {
///             "methods": ["GET"],
///             "origins": ["http://localhost:3000"],
///             "headers": ["x-requested-by"],
///         },
///         "id": "Allow Local Development",
///         "expose_headers": ["Content-Encoding"],
///         "max_age_seconds": float(3600),
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2BucketCors = new Cloudflare.R2BucketCors("example_r2_bucket_cors", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.R2BucketCorsRuleArgs
///             {
///                 Allowed = new Cloudflare.Inputs.R2BucketCorsRuleAllowedArgs
///                 {
///                     Methods = new[]
///                     {
///                         "GET",
///                     },
///                     Origins = new[]
///                     {
///                         "http://localhost:3000",
///                     },
///                     Headers = new[]
///                     {
///                         "x-requested-by",
///                     },
///                 },
///                 Id = "Allow Local Development",
///                 ExposeHeaders = new[]
///                 {
///                     "Content-Encoding",
///                 },
///                 MaxAgeSeconds = 3600,
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewR2BucketCors(ctx, "example_r2_bucket_cors", &cloudflare.R2BucketCorsArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Rules: cloudflare.R2BucketCorsRuleArray{
/// 				&cloudflare.R2BucketCorsRuleArgs{
/// 					Allowed: &cloudflare.R2BucketCorsRuleAllowedArgs{
/// 						Methods: pulumi.StringArray{
/// 							pulumi.String("GET"),
/// 						},
/// 						Origins: pulumi.StringArray{
/// 							pulumi.String("http://localhost:3000"),
/// 						},
/// 						Headers: pulumi.StringArray{
/// 							pulumi.String("x-requested-by"),
/// 						},
/// 					},
/// 					Id: pulumi.String("Allow Local Development"),
/// 					ExposeHeaders: pulumi.StringArray{
/// 						pulumi.String("Content-Encoding"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Float64(3600),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_r2bucketcors" "example_r2_bucket_cors" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   rules {
///     allowed = {
///       methods = ["GET"]
///       origins = ["http://localhost:3000"]
///       headers = ["x-requested-by"]
///     }
///     id              = "Allow Local Development"
///     expose_headers  = ["Content-Encoding"]
///     max_age_seconds = 3600
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2BucketCors;
/// import com.pulumi.cloudflare.R2BucketCorsArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketCorsRuleArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketCorsRuleAllowedArgs;
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
///         var exampleR2BucketCors = new R2BucketCors("exampleR2BucketCors", R2BucketCorsArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .rules(R2BucketCorsRuleArgs.builder()
///                 .allowed(R2BucketCorsRuleAllowedArgs.builder()
///                     .methods("GET")
///                     .origins("http://localhost:3000")
///                     .headers("x-requested-by")
///                     .build())
///                 .id("Allow Local Development")
///                 .exposeHeaders("Content-Encoding")
///                 .maxAgeSeconds(3600.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2BucketCors:
///     type: cloudflare:R2BucketCors
///     name: example_r2_bucket_cors
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       rules:
///         - allowed:
///             methods:
///               - GET
///             origins:
///               - http://localhost:3000
///             headers:
///               - x-requested-by
///           id: Allow Local Development
///           exposeHeaders:
///             - Content-Encoding
///           maxAgeSeconds: 3600
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2BucketCors extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  late final pulumi.Output<List<R2BucketCorsRule>?> rules;

  /// Creates a new [R2BucketCors].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2BucketCors]. {@macro pulumi_index_r2_bucket_cors_r2_bucket_cors_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2BucketCors(
    String name, {
    R2BucketCorsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketCors:R2BucketCors',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketCorsRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketCorsRule>(guardedValue, (value) => R2BucketCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [R2BucketCors] resource's state with the given [name] and [id].
  static R2BucketCors get(
    String name,
    pulumi.Input<String> id, {
    R2BucketCorsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2BucketCors._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2BucketCors._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketCors:R2BucketCors',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketCorsRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketCorsRule>(guardedValue, (value) => R2BucketCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [R2BucketCors] resource.
  R2BucketCors.reference(String urn)
    : super(
        'cloudflare:index/r2BucketCors:R2BucketCors',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketCorsRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketCorsRule>(guardedValue, (value) => R2BucketCorsRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
