import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_sippy_args.dart';
import 'r2_bucket_sippy_destination.dart';
import 'r2_bucket_sippy_source.dart';
import 'r2_bucket_sippy_state.dart';

/// Accepted Permissions
///
/// - `Workers R2 Storage Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleR2BucketSippy = new cloudflare.R2BucketSippy("example_r2_bucket_sippy", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bucketName: "example-bucket",
///     destination: {
///         accessKeyId: "accessKeyId",
///         cloudProvider: "r2",
///         secretAccessKey: "secretAccessKey",
///     },
///     source: {
///         accessKeyId: "accessKeyId",
///         bucket: "bucket",
///         cloudProvider: "aws",
///         region: "region",
///         secretAccessKey: "secretAccessKey",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket_sippy = cloudflare.R2BucketSippy("example_r2_bucket_sippy",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bucket_name="example-bucket",
///     destination={
///         "access_key_id": "accessKeyId",
///         "cloud_provider": "r2",
///         "secret_access_key": "secretAccessKey",
///     },
///     source={
///         "access_key_id": "accessKeyId",
///         "bucket": "bucket",
///         "cloud_provider": "aws",
///         "region": "region",
///         "secret_access_key": "secretAccessKey",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2BucketSippy = new Cloudflare.R2BucketSippy("example_r2_bucket_sippy", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BucketName = "example-bucket",
///         Destination = new Cloudflare.Inputs.R2BucketSippyDestinationArgs
///         {
///             AccessKeyId = "accessKeyId",
///             CloudProvider = "r2",
///             SecretAccessKey = "secretAccessKey",
///         },
///         Source = new Cloudflare.Inputs.R2BucketSippySourceArgs
///         {
///             AccessKeyId = "accessKeyId",
///             Bucket = "bucket",
///             CloudProvider = "aws",
///             Region = "region",
///             SecretAccessKey = "secretAccessKey",
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
/// 		_, err := cloudflare.NewR2BucketSippy(ctx, "example_r2_bucket_sippy", &cloudflare.R2BucketSippyArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BucketName: pulumi.String("example-bucket"),
/// 			Destination: &cloudflare.R2BucketSippyDestinationArgs{
/// 				AccessKeyId:     pulumi.String("accessKeyId"),
/// 				CloudProvider:   pulumi.String("r2"),
/// 				SecretAccessKey: pulumi.String("secretAccessKey"),
/// 			},
/// 			Source: &cloudflare.R2BucketSippySourceArgs{
/// 				AccessKeyId:     pulumi.String("accessKeyId"),
/// 				Bucket:          pulumi.String("bucket"),
/// 				CloudProvider:   pulumi.String("aws"),
/// 				Region:          pulumi.String("region"),
/// 				SecretAccessKey: pulumi.String("secretAccessKey"),
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
/// resource "cloudflare_r2bucketsippy" "example_r2_bucket_sippy" {
///   account_id  = "023e105f4ecef8ad9ca31a8372d0c353"
///   bucket_name = "example-bucket"
///   destination = {
///     access_key_id     = "accessKeyId"
///     cloud_provider    = "r2"
///     secret_access_key = "secretAccessKey"
///   }
///   source = {
///     access_key_id     = "accessKeyId"
///     bucket            = "bucket"
///     cloud_provider    = "aws"
///     region            = "region"
///     secret_access_key = "secretAccessKey"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2BucketSippy;
/// import com.pulumi.cloudflare.R2BucketSippyArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketSippyDestinationArgs;
/// import com.pulumi.cloudflare.inputs.R2BucketSippySourceArgs;
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
///         var exampleR2BucketSippy = new R2BucketSippy("exampleR2BucketSippy", R2BucketSippyArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bucketName("example-bucket")
///             .destination(R2BucketSippyDestinationArgs.builder()
///                 .accessKeyId("accessKeyId")
///                 .cloudProvider("r2")
///                 .secretAccessKey("secretAccessKey")
///                 .build())
///             .source(R2BucketSippySourceArgs.builder()
///                 .accessKeyId("accessKeyId")
///                 .bucket("bucket")
///                 .cloudProvider("aws")
///                 .region("region")
///                 .secretAccessKey("secretAccessKey")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2BucketSippy:
///     type: cloudflare:R2BucketSippy
///     name: example_r2_bucket_sippy
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bucketName: example-bucket
///       destination:
///         accessKeyId: accessKeyId
///         cloudProvider: r2
///         secretAccessKey: secretAccessKey
///       source:
///         accessKeyId: accessKeyId
///         bucket: bucket
///         cloudProvider: aws
///         region: region
///         secretAccessKey: secretAccessKey
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class R2BucketSippy extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Name of the bucket.
  late final pulumi.Output<String> bucketName;
  /// R2 bucket to copy objects to.
  late final pulumi.Output<R2BucketSippyDestination?> destination;
  /// State of Sippy for this bucket.
  late final pulumi.Output<bool> enabled;
  /// Jurisdiction of the bucket
  late final pulumi.Output<String> jurisdiction;
  /// AWS S3 bucket to copy objects from.
  late final pulumi.Output<R2BucketSippySource?> source;

  /// Creates a new [R2BucketSippy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2BucketSippy]. {@macro pulumi_index_r2_bucket_sippy_r2_bucket_sippy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2BucketSippy(
    String name, {
    R2BucketSippyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketSippy:R2BucketSippy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    destination = registerOutput<R2BucketSippyDestination?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    source = registerOutput<R2BucketSippySource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [R2BucketSippy] resource's state with the given [name] and [id].
  static R2BucketSippy get(
    String name,
    pulumi.Input<String> id, {
    R2BucketSippyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2BucketSippy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2BucketSippy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2BucketSippy:R2BucketSippy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    destination = registerOutput<R2BucketSippyDestination?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    source = registerOutput<R2BucketSippySource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [R2BucketSippy] resource.
  R2BucketSippy.reference(String urn)
    : super(
        'cloudflare:index/r2BucketSippy:R2BucketSippy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bucketName = registerOutput<String>('bucketName');
    destination = registerOutput<R2BucketSippyDestination?>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    jurisdiction = registerOutput<String>('jurisdiction');
    source = registerOutput<R2BucketSippySource?>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return R2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
