import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_args.dart';
import 'r2_bucket_state.dart';

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
/// const exampleR2Bucket = new cloudflare.R2Bucket("example_r2_bucket", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "example-bucket",
///     location: "apac",
///     storageClass: "Standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_r2_bucket = cloudflare.R2Bucket("example_r2_bucket",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="example-bucket",
///     location="apac",
///     storage_class="Standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleR2Bucket = new Cloudflare.R2Bucket("example_r2_bucket", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "example-bucket",
///         Location = "apac",
///         StorageClass = "Standard",
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
/// 		_, err := cloudflare.NewR2Bucket(ctx, "example_r2_bucket", &cloudflare.R2BucketArgs{
/// 			AccountId:    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:         pulumi.String("example-bucket"),
/// 			Location:     pulumi.String("apac"),
/// 			StorageClass: pulumi.String("Standard"),
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
/// resource "cloudflare_r2bucket" "example_r2_bucket" {
///   account_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   name          = "example-bucket"
///   location      = "apac"
///   storage_class = "Standard"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.R2Bucket;
/// import com.pulumi.cloudflare.R2BucketArgs;
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
///         var exampleR2Bucket = new R2Bucket("exampleR2Bucket", R2BucketArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("example-bucket")
///             .location("apac")
///             .storageClass("Standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleR2Bucket:
///     type: cloudflare:R2Bucket
///     name: example_r2_bucket
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: example-bucket
///       location: apac
///       storageClass: Standard
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/r2Bucket:R2Bucket example '<account_id>/<bucket_name>/<jurisdiction>'
/// ```
class R2Bucket extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;
  /// Creation timestamp.
  late final pulumi.Output<String> creationDate;
  /// Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// Available values: "default", "eu", "fedramp", "us".
  late final pulumi.Output<String> jurisdiction;
  /// Location of the bucket.
  /// Available values: "apac", "eeur", "enam", "weur", "wnam", "oc".  Note: `location` is only honored the first time a bucket with a given name is created. If you delete and recreate a bucket with the same name, the original bucket location will be used. It is also a best-effort, not a guarantee, of bucket location.
  late final pulumi.Output<String> location;
  /// Name of the bucket.
  late final pulumi.Output<String> name;
  /// Storage class for newly uploaded objects, unless specified otherwise.
  /// Available values: "Standard", "InfrequentAccess".
  late final pulumi.Output<String> storageClass;

  /// Creates a new [R2Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [R2Bucket]. {@macro pulumi_index_r2_bucket_r2_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  R2Bucket(
    String name, {
    R2BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2Bucket:R2Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    creationDate = registerOutput<String>('creationDate');
    jurisdiction = registerOutput<String>('jurisdiction');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    storageClass = registerOutput<String>('storageClass');
  }

  /// Gets an existing [R2Bucket] resource's state with the given [name] and [id].
  static R2Bucket get(
    String name,
    pulumi.Input<String> id, {
    R2BucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return R2Bucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  R2Bucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/r2Bucket:R2Bucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    creationDate = registerOutput<String>('creationDate');
    jurisdiction = registerOutput<String>('jurisdiction');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    storageClass = registerOutput<String>('storageClass');
  }

  /// Creates a typed reference to an existing [R2Bucket] resource.
  R2Bucket.reference(String urn)
    : super(
        'cloudflare:index/r2Bucket:R2Bucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    creationDate = registerOutput<String>('creationDate');
    jurisdiction = registerOutput<String>('jurisdiction');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    storageClass = registerOutput<String>('storageClass');
  }
}
