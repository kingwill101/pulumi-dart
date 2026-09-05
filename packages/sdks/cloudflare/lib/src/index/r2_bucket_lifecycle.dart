import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_args.dart';
import 'r2_bucket_lifecycle_rule.dart';
import 'r2_bucket_lifecycle_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2BucketLifecycle = new cloudflare.R2BucketLifecycle("example_r2_bucket_lifecycle", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     rules: [{
///         id: "Expire all objects older than 24 hours",
///         conditions: {
///             prefix: "prefix",
///         },
///         enabled: true,
///         abortMultipartUploadsTransition: {
///             condition: {
///                 maxAge: 0,
///                 type: "Age",
///             },
///         },
///         deleteObjectsTransition: {
///             condition: {
///                 maxAge: 0,
///                 type: "Age",
///             },
///         },
///         storageClassTransitions: [{
///             condition: {
///                 maxAge: 0,
///                 type: "Age",
///             },
///             storageClass: "InfrequentAccess",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket_lifecycle = cloudflare.R2BucketLifecycle("example_r2_bucket_lifecycle",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     rules=[{
///         "id": "Expire all objects older than 24 hours",
///         "conditions": {
///             "prefix": "prefix",
///         },
///         "enabled": True,
///         "abort_multipart_uploads_transition": {
///             "condition": {
///                 "max_age": 0,
///                 "type": "Age",
///             },
///         },
///         "delete_objects_transition": {
///             "condition": {
///                 "max_age": 0,
///                 "type": "Age",
///             },
///         },
///         "storage_class_transitions": [{
///             "condition": {
///                 "max_age": 0,
///                 "type": "Age",
///             },
///             "storage_class": "InfrequentAccess",
///         }],
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
///     var exampleR2BucketLifecycle = new Cloudflare.R2BucketLifecycle("example_r2_bucket_lifecycle", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Rules = new[]
///         {
///             new Cloudflare.Inputs.R2BucketLifecycleRuleArgs
///             {
///                 Id = "Expire all objects older than 24 hours",
///                 Conditions = new Cloudflare.Inputs.R2BucketLifecycleRuleConditionsArgs
///                 {
///                     Prefix = "prefix",
///                 },
///                 Enabled = true,
///                 AbortMultipartUploadsTransition = new Cloudflare.Inputs.R2BucketLifecycleRuleAbortMultipartUploadsTransitionArgs
///                 {
///                     Condition = new Cloudflare.Inputs.R2BucketLifecycleRuleAbortMultipartUploadsTransitionConditionArgs
///                     {
///                         MaxAge = 0,
///                         Type = "Age",
///                     },
///                 },
///                 DeleteObjectsTransition = new Cloudflare.Inputs.R2BucketLifecycleRuleDeleteObjectsTransitionArgs
///                 {
///                     Condition = new Cloudflare.Inputs.R2BucketLifecycleRuleDeleteObjectsTransitionConditionArgs
///                     {
///                         MaxAge = 0,
///                         Type = "Age",
///                     },
///                 },
///                 StorageClassTransitions = new[]
///                 {
///                     new Cloudflare.Inputs.R2BucketLifecycleRuleStorageClassTransitionArgs
///                     {
///                         Condition = new Cloudflare.Inputs.R2BucketLifecycleRuleStorageClassTransitionConditionArgs
///                         {
///                             MaxAge = 0,
///                             Type = "Age",
///                         },
///                         StorageClass = "InfrequentAccess",
///                     },
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewR2BucketLifecycle(ctx, "example_r2_bucket_lifecycle", &cloudflare.R2BucketLifecycleArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Rules: cloudflare.R2BucketLifecycleRuleArray{
/// 				&cloudflare.R2BucketLifecycleRuleArgs{
/// 					Id: pulumi.String("Expire all objects older than 24 hours"),
/// 					Conditions: &cloudflare.R2BucketLifecycleRuleConditionsArgs{
/// 						Prefix: pulumi.String("prefix"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 					AbortMultipartUploadsTransition: &cloudflare.R2BucketLifecycleRuleAbortMultipartUploadsTransitionArgs{
/// 						Condition: &cloudflare.R2BucketLifecycleRuleAbortMultipartUploadsTransitionConditionArgs{
/// 							MaxAge: pulumi.Int(0),
/// 							Type:   pulumi.String("Age"),
/// 						},
/// 					},
/// 					DeleteObjectsTransition: &cloudflare.R2BucketLifecycleRuleDeleteObjectsTransitionArgs{
/// 						Condition: &cloudflare.R2BucketLifecycleRuleDeleteObjectsTransitionConditionArgs{
/// 							MaxAge: pulumi.Int(0),
/// 							Type:   pulumi.String("Age"),
/// 						},
/// 					},
/// 					StorageClassTransitions: cloudflare.R2BucketLifecycleRuleStorageClassTransitionArray{
/// 						&cloudflare.R2BucketLifecycleRuleStorageClassTransitionArgs{
/// 							Condition: &cloudflare.R2BucketLifecycleRuleStorageClassTransitionConditionArgs{
/// 								MaxAge: pulumi.Int(0),
/// 								Type:   pulumi.String("Age"),
/// 							},
/// 							StorageClass: pulumi.String("InfrequentAccess"),
/// 						},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_r2bucketlifecycle" "example_r2_bucket_lifecycle" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   rules {
///     id = "Expire all objects older than 24 hours"
///     conditions = {
///       prefix = "prefix"
///     }
///     enabled = true
///     abort_multipart_uploads_transition = {
///       condition = {
///         max_age = 0
///         type    = "Age"
///       }
///     }
///     delete_objects_transition = {
///       condition = {
///         max_age = 0
///         type    = "Age"
///       }
///     }
///     storage_class_transitions {
///       condition = {
///         max_age = 0
///         type    = "Age"
///       }
///       storage_class = "InfrequentAccess"
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
/// import com.pulumi.cloudflare.R2BucketLifecycle;
/// import com.pulumi.cloudflare.R2BucketLifecycleArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleConditionsArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleAbortMultipartUploadsTransitionArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleAbortMultipartUploadsTransitionConditionArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleDeleteObjectsTransitionArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleDeleteObjectsTransitionConditionArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleStorageClassTransitionArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketLifecycleRuleStorageClassTransitionConditionArgs;
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
///         var exampleR2BucketLifecycle = new R2BucketLifecycle("exampleR2BucketLifecycle", R2BucketLifecycleArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .rules(R2BucketLifecycleRuleArgs.builder()
///                 .id("Expire all objects older than 24 hours")
///                 .conditions(R2BucketLifecycleRuleConditionsArgs.builder()
///                     .prefix("prefix")
///                     .build())
///                 .enabled(true)
///                 .abortMultipartUploadsTransition(R2BucketLifecycleRuleAbortMultipartUploadsTransitionArgs.builder()
///                     .condition(R2BucketLifecycleRuleAbortMultipartUploadsTransitionConditionArgs.builder()
///                         .maxAge(0)
///                         .type("Age")
///                         .build())
///                     .build())
///                 .deleteObjectsTransition(R2BucketLifecycleRuleDeleteObjectsTransitionArgs.builder()
///                     .condition(R2BucketLifecycleRuleDeleteObjectsTransitionConditionArgs.builder()
///                         .maxAge(0)
///                         .type("Age")
///                         .build())
///                     .build())
///                 .storageClassTransitions(R2BucketLifecycleRuleStorageClassTransitionArgs.builder()
///                     .condition(R2BucketLifecycleRuleStorageClassTransitionConditionArgs.builder()
///                         .maxAge(0)
///                         .type("Age")
///                         .build())
///                     .storageClass("InfrequentAccess")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2BucketLifecycle:
///     type: cloudflare:R2BucketLifecycle
///     name: example_r2_bucket_lifecycle
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       rules:
///         - id: Expire all objects older than 24 hours
///           conditions:
///             prefix: prefix
///           enabled: true
///           abortMultipartUploadsTransition:
///             condition:
///               maxAge: 0
///               type: Age
///           deleteObjectsTransition:
///             condition:
///               maxAge: 0
///               type: Age
///           storageClassTransitions:
///             - condition:
///                 maxAge: 0
///                 type: Age
///               storageClass: InfrequentAccess
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2BucketLifecycle extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  late final pulumi.Output<List<R2BucketLifecycleRule>?> rules;

  /// Creates a new [R2BucketLifecycle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2BucketLifecycle]. {@macro pulumi_index_r2_bucket_lifecycle_r2_bucket_lifecycle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2BucketLifecycle(
    String name, {
    R2BucketLifecycleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketLifecycle:R2BucketLifecycle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLifecycleRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLifecycleRule>(guardedValue, (value) => R2BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [R2BucketLifecycle] resource's state with the given [name] and [id].
  static R2BucketLifecycle get(
    String name,
    pulumi.Input<String> id, {
    R2BucketLifecycleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2BucketLifecycle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2BucketLifecycle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketLifecycle:R2BucketLifecycle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLifecycleRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLifecycleRule>(guardedValue, (value) => R2BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [R2BucketLifecycle] resource.
  R2BucketLifecycle.reference(String urn)
    : super(
        'cloudflare:index/r2BucketLifecycle:R2BucketLifecycle',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    jurisdiction = registerOutput<String>('jurisdiction');
    rules = registerOutput<List<R2BucketLifecycleRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<R2BucketLifecycleRule>(guardedValue, (value) => R2BucketLifecycleRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
