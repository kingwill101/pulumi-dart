import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_bucket_args.dart';
import 'object_storage_bucket_cert.dart';
import 'object_storage_bucket_state.dart';

/// Provides a Linode Object Storage Bucket resource. This can be used to create, modify, and delete Linodes Object Storage Buckets.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-object-storage-bucket).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.ObjectStorageBucket("foobar", {
///     region: "us-mia",
///     label: "mybucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.ObjectStorageBucket("foobar",
///     region="us-mia",
///     label="mybucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.ObjectStorageBucket("foobar", new()
///     {
///         Region = "us-mia",
///         Label = "mybucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewObjectStorageBucket(ctx, "foobar", &linode.ObjectStorageBucketArgs{
/// 			Region: pulumi.String("us-mia"),
/// 			Label:  pulumi.String("mybucket"),
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
/// import com.pulumi.linode.ObjectStorageBucket;
/// import com.pulumi.linode.ObjectStorageBucketArgs;
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
///         var foobar = new ObjectStorageBucket("foobar", ObjectStorageBucketArgs.builder()
///             .region("us-mia")
///             .label("mybucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:ObjectStorageBucket
///     properties:
///       region: us-mia
///       label: mybucket
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const mykey = new linode.ObjectStorageKey("mykey", {label: "image-access"});
/// const mybucket = new linode.ObjectStorageBucket("mybucket", {
///     accessKey: mykey.accessKey,
///     secretKey: mykey.secretKey,
///     region: "us-mia",
///     label: "mybucket",
///     lifecycleRules: [{
///         id: "my-rule",
///         enabled: true,
///         abortIncompleteMultipartUploadDays: 5,
///         expiration: {
///             date: "2021-06-21",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// mykey = linode.ObjectStorageKey("mykey", label="image-access")
/// mybucket = linode.ObjectStorageBucket("mybucket",
///     access_key=mykey.access_key,
///     secret_key=mykey.secret_key,
///     region="us-mia",
///     label="mybucket",
///     lifecycle_rules=[{
///         "id": "my-rule",
///         "enabled": True,
///         "abort_incomplete_multipart_upload_days": 5,
///         "expiration": {
///             "date": "2021-06-21",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mykey = new Linode.ObjectStorageKey("mykey", new()
///     {
///         Label = "image-access",
///     });
///
///     var mybucket = new Linode.ObjectStorageBucket("mybucket", new()
///     {
///         AccessKey = mykey.AccessKey,
///         SecretKey = mykey.SecretKey,
///         Region = "us-mia",
///         Label = "mybucket",
///         LifecycleRules = new[]
///         {
///             new Linode.Inputs.ObjectStorageBucketLifecycleRuleArgs
///             {
///                 Id = "my-rule",
///                 Enabled = true,
///                 AbortIncompleteMultipartUploadDays = 5,
///                 Expiration = new Linode.Inputs.ObjectStorageBucketLifecycleRuleExpirationArgs
///                 {
///                     Date = "2021-06-21",
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
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mykey, err := linode.NewObjectStorageKey(ctx, "mykey", &linode.ObjectStorageKeyArgs{
/// 			Label: pulumi.String("image-access"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewObjectStorageBucket(ctx, "mybucket", &linode.ObjectStorageBucketArgs{
/// 			AccessKey: mykey.AccessKey,
/// 			SecretKey: mykey.SecretKey,
/// 			Region:    pulumi.String("us-mia"),
/// 			Label:     pulumi.String("mybucket"),
/// 			LifecycleRules: linode.ObjectStorageBucketLifecycleRuleArray{
/// 				&linode.ObjectStorageBucketLifecycleRuleArgs{
/// 					Id:                                 pulumi.String("my-rule"),
/// 					Enabled:                            pulumi.Bool(true),
/// 					AbortIncompleteMultipartUploadDays: pulumi.Int(5),
/// 					Expiration: &linode.ObjectStorageBucketLifecycleRuleExpirationArgs{
/// 						Date: pulumi.String("2021-06-21"),
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
/// import com.pulumi.linode.ObjectStorageKey;
/// import com.pulumi.linode.ObjectStorageKeyArgs;
/// import com.pulumi.linode.ObjectStorageBucket;
/// import com.pulumi.linode.ObjectStorageBucketArgs;
/// import com.pulumi.linode.inputs.ObjectStorageBucketLifecycleRuleArgs;
/// import com.pulumi.linode.inputs.ObjectStorageBucketLifecycleRuleExpirationArgs;
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
///         var mykey = new ObjectStorageKey("mykey", ObjectStorageKeyArgs.builder()
///             .label("image-access")
///             .build());
///
///         var mybucket = new ObjectStorageBucket("mybucket", ObjectStorageBucketArgs.builder()
///             .accessKey(mykey.accessKey())
///             .secretKey(mykey.secretKey())
///             .region("us-mia")
///             .label("mybucket")
///             .lifecycleRules(ObjectStorageBucketLifecycleRuleArgs.builder()
///                 .id("my-rule")
///                 .enabled(true)
///                 .abortIncompleteMultipartUploadDays(5)
///                 .expiration(ObjectStorageBucketLifecycleRuleExpirationArgs.builder()
///                     .date("2021-06-21")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mykey:
///     type: linode:ObjectStorageKey
///     properties:
///       label: image-access
///   mybucket:
///     type: linode:ObjectStorageBucket
///     properties:
///       accessKey: ${mykey.accessKey}
///       secretKey: ${mykey.secretKey}
///       region: us-mia
///       label: mybucket
///       lifecycleRules:
///         - id: my-rule
///           enabled: true
///           abortIncompleteMultipartUploadDays: 5
///           expiration:
///             date: 2021-06-21
/// ```
///
///
/// Creating an Object Storage Bucket with Lifecycle rules using provider-level object credentials
///
/// ## Import
///
/// Linodes Object Storage Buckets can be imported using the resource `id` which is made of `cluster:label`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/objectStorageBucket:ObjectStorageBucket mybucket us-east-1:foobar
/// ```
class ObjectStorageBucket extends pulumi.CustomResource {
  /// The access key to authenticate with. If not specified with the resource, its value can be
  /// * configured by `obj_access_key` in the provider configuration;
  /// * or, generated implicitly at apply-time if `obj_use_temp_keys` at provider-level is set.
  late final pulumi.Output<String?> accessKey;

  /// The Access Control Level of the bucket using a canned ACL string. See all ACL strings [in the Linode API v4 documentation](https://techdocs.akamai.com/linode-api/reference/post-object-storage-bucket).
  late final pulumi.Output<String?> acl;

  /// The cert used by this Object Storage Bucket.
  late final pulumi.Output<ObjectStorageBucketCert?> cert;

  /// The cluster of the Linode Object Storage Bucket. This is deprecated in favor of `region` attribute.
  /// For example, `us-mia-1` cluster can be translated into `us-mia` region. Exactly one of `region` and `cluster` is required for creating a bucket.
  late final pulumi.Output<String> cluster;

  /// If true, the bucket will have CORS enabled for all origins. Not supported by E2/E3 endpoints.
  late final pulumi.Output<bool> corsEnabled;

  /// The endpoint for the bucket used for s3 connections.
  late final pulumi.Output<String> endpoint;

  /// The type of `s3_endpoint` available to the user in this region. See [Endpoint types](https://techdocs.akamai.com/cloud-computing/docs/object-storage#endpoint-type) for more information.
  late final pulumi.Output<String> endpointType;

  /// The hostname where this bucket can be accessed. This hostname can be accessed through a browser if the bucket is made public.
  late final pulumi.Output<String> hostname;

  /// The label of the Linode Object Storage Bucket.
  late final pulumi.Output<String> label;

  /// Lifecycle rules to be applied to the bucket.
  late final pulumi.Output<List<Map<String, dynamic>>?> lifecycleRules;

  /// The region of the Linode Object Storage Bucket. Exactly one of `region` and `cluster` is required for creating a bucket.
  late final pulumi.Output<String> region;

  /// The user's s3 endpoint URL, based on the `endpoint_type` and `region`.
  late final pulumi.Output<String> s3Endpoint;

  /// The secret key to authenticate with. If not specified with the resource, its value can be
  /// * configured by `obj_secret_key` in the provider configuration;
  /// * or, generated implicitly at apply-time if `obj_use_temp_keys` at provider-level is set.
  late final pulumi.Output<String?> secretKey;

  /// Whether to enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket. (Requires `access_key` and `secret_key`)
  ///
  /// * `lifecycle_rule` - (Optional) Lifecycle rules to be applied to the bucket. (Requires `access_key` and `secret_key`)
  ///
  /// * `cert` - (Optional) The bucket's TLS/SSL certificate.
  late final pulumi.Output<bool> versioning;

  /// Creates a new [ObjectStorageBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectStorageBucket]. {@macro pulumi_index_object_storage_bucket_object_storage_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectStorageBucket(
    String name, {
    ObjectStorageBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/objectStorageBucket:ObjectStorageBucket',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    acl = registerOutput<String?>('acl');
    cert = registerOutput<ObjectStorageBucketCert?>(
      'cert',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectStorageBucketCert.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cluster = registerOutput<String>('cluster');
    corsEnabled = registerOutput<bool>('corsEnabled');
    endpoint = registerOutput<String>('endpoint');
    endpointType = registerOutput<String>('endpointType');
    hostname = registerOutput<String>('hostname');
    label = registerOutput<String>('label');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>?>(
      'lifecycleRules',
    );
    region = registerOutput<String>('region');
    s3Endpoint = registerOutput<String>('s3Endpoint');
    secretKey = registerOutput<String?>('secretKey');
    versioning = registerOutput<bool>('versioning');
  }

  /// Gets an existing [ObjectStorageBucket] resource's state with the given [name] and [id].
  static ObjectStorageBucket get(
    String name,
    pulumi.Input<String> id, {
    ObjectStorageBucketState? state,
  }) {
    return ObjectStorageBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ObjectStorageBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/objectStorageBucket:ObjectStorageBucket',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKey = registerOutput<String?>('accessKey');
    acl = registerOutput<String?>('acl');
    cert = registerOutput<ObjectStorageBucketCert?>(
      'cert',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ObjectStorageBucketCert.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cluster = registerOutput<String>('cluster');
    corsEnabled = registerOutput<bool>('corsEnabled');
    endpoint = registerOutput<String>('endpoint');
    endpointType = registerOutput<String>('endpointType');
    hostname = registerOutput<String>('hostname');
    label = registerOutput<String>('label');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>?>(
      'lifecycleRules',
    );
    region = registerOutput<String>('region');
    s3Endpoint = registerOutput<String>('s3Endpoint');
    secretKey = registerOutput<String?>('secretKey');
    versioning = registerOutput<bool>('versioning');
  }
}
