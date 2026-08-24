import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lock_args.dart';
import 'r2_bucket_lock_rule.dart';
import 'r2_bucket_lock_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2BucketLock = new cloudflare.R2BucketLock("example_r2_bucket_lock", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     rules: [{
///         id: "Lock all objects for 24 hours",
///         condition: {
///             maxAgeSeconds: 100,
///             type: "Age",
///         },
///         enabled: true,
///         prefix: "prefix",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket_lock = cloudflare.R2BucketLock("example_r2_bucket_lock",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     rules=[{
///         "id": "Lock all objects for 24 hours",
///         "condition": {
///             "max_age_seconds": 100,
///             "type": "Age",
///         },
///         "enabled": True,
///         "prefix": "prefix",
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
///     var exampleR2BucketLock = new Cloudflare.R2BucketLock("example_r2_bucket_lock", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.R2BucketLockRuleArgs
///             {
///                 Id = "Lock all objects for 24 hours",
///                 Condition = new Cloudflare.Inputs.R2BucketLockRuleConditionArgs
///                 {
///                     MaxAgeSeconds = 100,
///                     Type = "Age",
///                 },
///                 Enabled = true,
///                 Prefix = "prefix",
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
/// 		_, err := cloudflare.NewR2BucketLock(ctx, "example_r2_bucket_lock", &cloudflare.R2BucketLockArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Rules: cloudflare.R2BucketLockRuleArray{
/// 				&cloudflare.R2BucketLockRuleArgs{
/// 					Id: pulumi.String("Lock all objects for 24 hours"),
/// 					Condition: &cloudflare.R2BucketLockRuleConditionArgs{
/// 						MaxAgeSeconds: pulumi.Int(100),
/// 						Type:          pulumi.String("Age"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 					Prefix:  pulumi.String("prefix"),
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
/// resource "cloudflare_r2bucketlock" "example_r2_bucket_lock" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   rules {
///     id = "Lock all objects for 24 hours"
///     condition = {
///       max_age_seconds = 100
///       type            = "Age"
///     }
///     enabled = true
///     prefix  = "prefix"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2BucketLock;
/// import com.pulumi.cloudflare.R2BucketLockArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLockRuleArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLockRuleConditionArgs;
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
///         var exampleR2BucketLock = new R2BucketLock("exampleR2BucketLock", R2BucketLockArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .rules(R2BucketLockRuleArgs.builder()
///                 .id("Lock all objects for 24 hours")
///                 .condition(R2BucketLockRuleConditionArgs.builder()
///                     .maxAgeSeconds(100)
///                     .type("Age")
///                     .build())
///                 .enabled(true)
///                 .prefix("prefix")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2BucketLock:
///     type: cloudflare:R2BucketLock
///     name: example_r2_bucket_lock
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       rules:
///         - id: Lock all objects for 24 hours
///           condition:
///             maxAgeSeconds: 100
///             type: Age
///           enabled: true
///           prefix: prefix
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2BucketLock extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  late final pulumi.Output<List<R2BucketLockRule>?> rules;

  /// Creates a new [R2BucketLock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2BucketLock]. {@macro pulumi_index_r2_bucket_lock_r2_bucket_lock_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2BucketLock(
    String name, {
    R2BucketLockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketLock:R2BucketLock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLockRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLockRule>(guardedValue, (value) => R2BucketLockRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [R2BucketLock] resource's state with the given [name] and [id].
  static R2BucketLock get(
    String name,
    pulumi.Input<String> id, {
    R2BucketLockState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2BucketLock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2BucketLock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketLock:R2BucketLock',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLockRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLockRule>(guardedValue, (value) => R2BucketLockRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [R2BucketLock] resource.
  R2BucketLock.reference(String urn)
    : super(
        'cloudflare:index/r2BucketLock:R2BucketLock',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLockRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLockRule>(guardedValue, (value) => R2BucketLockRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
