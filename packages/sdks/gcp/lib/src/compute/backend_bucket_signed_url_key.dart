import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_signed_url_key_args.dart';
import 'backend_bucket_signed_url_key_state.dart';

/// A key for signing Cloud CDN signed URLs for BackendBuckets.
///
///
/// To get more information about BackendBucketSignedUrlKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/backendBuckets)
/// * How-to Guides
/// * [Using Signed URLs](https://cloud.google.com/cdn/docs/using-signed-urls/)
///
///
///
/// ## Example Usage
///
/// ### Backend Bucket Signed Url Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const urlSignature = new random.index.Id("url_signature", {byteLength: 16});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "test-storage-bucket",
///     location: "EU",
/// });
/// const testBackend = new gcp.compute.BackendBucket("test_backend", {
///     name: "test-signed-backend-bucket",
///     description: "Contains beautiful images",
///     bucketName: bucket.name,
///     enableCdn: true,
/// });
/// const backendKey = new gcp.compute.BackendBucketSignedUrlKey("backend_key", {
///     name: "test-key",
///     keyValue: urlSignature.b64Url,
///     backendBucket: testBackend.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// url_signature = random.index.Id("url_signature", byte_length=16)
/// bucket = gcp.storage.Bucket("bucket",
///     name="test-storage-bucket",
///     location="EU")
/// test_backend = gcp.compute.BackendBucket("test_backend",
///     name="test-signed-backend-bucket",
///     description="Contains beautiful images",
///     bucket_name=bucket.name,
///     enable_cdn=True)
/// backend_key = gcp.compute.BackendBucketSignedUrlKey("backend_key",
///     name="test-key",
///     key_value=url_signature["b64Url"],
///     backend_bucket=test_backend.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var urlSignature = new Random.Index.Id("url_signature", new()
///     {
///         ByteLength = 16,
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "test-storage-bucket",
///         Location = "EU",
///     });
///
///     var testBackend = new Gcp.Compute.BackendBucket("test_backend", new()
///     {
///         Name = "test-signed-backend-bucket",
///         Description = "Contains beautiful images",
///         BucketName = bucket.Name,
///         EnableCdn = true,
///     });
///
///     var backendKey = new Gcp.Compute.BackendBucketSignedUrlKey("backend_key", new()
///     {
///         Name = "test-key",
///         KeyValue = urlSignature.B64Url,
///         BackendBucket = testBackend.Name,
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		urlSignature, err := random.NewId(ctx, "url_signature", &random.IdArgs{
/// 			ByteLength: 16,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("test-storage-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testBackend, err := compute.NewBackendBucket(ctx, "test_backend", &compute.BackendBucketArgs{
/// 			Name:        pulumi.String("test-signed-backend-bucket"),
/// 			Description: pulumi.String("Contains beautiful images"),
/// 			BucketName:  bucket.Name,
/// 			EnableCdn:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBackendBucketSignedUrlKey(ctx, "backend_key", &compute.BackendBucketSignedUrlKeyArgs{
/// 			Name:          pulumi.String("test-key"),
/// 			KeyValue:      urlSignature.B64Url,
/// 			BackendBucket: testBackend.Name,
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.BackendBucketSignedUrlKey;
/// import com.pulumi.gcp.compute.BackendBucketSignedUrlKeyArgs;
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
///         var urlSignature = new Id("urlSignature", IdArgs.builder()
///             .byteLength(16)
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("test-storage-bucket")
///             .location("EU")
///             .build());
///
///         var testBackend = new BackendBucket("testBackend", BackendBucketArgs.builder()
///             .name("test-signed-backend-bucket")
///             .description("Contains beautiful images")
///             .bucketName(bucket.name())
///             .enableCdn(true)
///             .build());
///
///         var backendKey = new BackendBucketSignedUrlKey("backendKey", BackendBucketSignedUrlKeyArgs.builder()
///             .name("test-key")
///             .keyValue(urlSignature.b64Url())
///             .backendBucket(testBackend.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlSignature:
///     type: random:Id
///     name: url_signature
///     properties:
///       byteLength: 16
///   backendKey:
///     type: gcp:compute:BackendBucketSignedUrlKey
///     name: backend_key
///     properties:
///       name: test-key
///       keyValue: ${urlSignature.b64Url}
///       backendBucket: ${testBackend.name}
///   testBackend:
///     type: gcp:compute:BackendBucket
///     name: test_backend
///     properties:
///       name: test-signed-backend-bucket
///       description: Contains beautiful images
///       bucketName: ${bucket.name}
///       enableCdn: true
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: test-storage-bucket
///       location: EU
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class BackendBucketSignedUrlKey extends pulumi.CustomResource {
  /// The backend bucket this signed URL key belongs.
  late final pulumi.Output<String> backendBucket;
  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> keyValue;
  /// Name of the signed URL key.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [BackendBucketSignedUrlKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendBucketSignedUrlKey]. {@macro pulumi_compute_backend_bucket_signed_url_key_backend_bucket_signed_url_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendBucketSignedUrlKey(
    String name, {
    BackendBucketSignedUrlKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketSignedUrlKey:BackendBucketSignedUrlKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendBucket = registerOutput<String>('backendBucket');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [BackendBucketSignedUrlKey] resource's state with the given [name] and [id].
  static BackendBucketSignedUrlKey get(
    String name,
    pulumi.Input<String> id, {
    BackendBucketSignedUrlKeyState? state,
  }) {
    return BackendBucketSignedUrlKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackendBucketSignedUrlKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketSignedUrlKey:BackendBucketSignedUrlKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendBucket = registerOutput<String>('backendBucket');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
