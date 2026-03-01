import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_bucket_args.dart';
import 'storage_bucket_state.dart';

/// An association between a Firebase project and a Google Cloud Storage bucket.
/// This association enables integration of Cloud Storage buckets with Firebase such as Firebase SDKS, Authentication, and Security Rules.
///
/// To get more information about Bucket, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/rest/storage/rest/v1beta/projects.buckets)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/storage/)
///
/// ## Example Usage
///
/// ### Firebasestorage Bucket Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.storage.Bucket("default", {
///     name: "test_bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const defaultStorageBucket = new gcp.firebase.StorageBucket("default", {
///     project: "my-project-name",
///     bucketId: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.Bucket("default",
///     name="test_bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// default_storage_bucket = gcp.firebase.StorageBucket("default",
///     project="my-project-name",
///     bucket_id=default.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Storage.Bucket("default", new()
///     {
///         Name = "test_bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var defaultStorageBucket = new Gcp.Firebase.StorageBucket("default", new()
///     {
///         Project = "my-project-name",
///         BucketId = @default.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.NewBucket(ctx, "default", &storage.BucketArgs{
/// 			Name:                     pulumi.String("test_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewStorageBucket(ctx, "default", &firebase.StorageBucketArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			BucketId: _default.Name,
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
/// import com.pulumi.gcp.firebase.StorageBucket;
/// import com.pulumi.gcp.firebase.StorageBucketArgs;
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
///         var default_ = new Bucket("default", BucketArgs.builder()
///             .name("test_bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var defaultStorageBucket = new StorageBucket("defaultStorageBucket", StorageBucketArgs.builder()
///             .project("my-project-name")
///             .bucketId(default_.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:storage:Bucket
///     properties:
///       name: test_bucket
///       location: US
///       uniformBucketLevelAccess: true
///   defaultStorageBucket:
///     type: gcp:firebase:StorageBucket
///     name: default
///     properties:
///       project: my-project-name
///       bucketId: ${default.name}
/// ```
///
///
/// ## Import
///
/// Bucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/buckets/{{bucket_id}}`
///
/// * `{{project}}/{{bucket_id}}`
///
/// * `{{bucket_id}}`
///
/// When using the `pulumi import` command, Bucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default projects/{{project}}/buckets/{{bucket_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default {{project}}/{{bucket_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default {{bucket_id}}
/// ```
class StorageBucket extends pulumi.CustomResource {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  late final pulumi.Output<String?> bucketId;
  /// Resource name of the bucket in the format projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [StorageBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageBucket]. {@macro pulumi_firebase_storage_bucket_storage_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageBucket(
    String name, {
    StorageBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/storageBucket:StorageBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketId = registerOutput<String?>('bucketId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [StorageBucket] resource's state with the given [name] and [id].
  static StorageBucket get(
    String name,
    pulumi.Input<String> id, {
    StorageBucketState? state,
  }) {
    return StorageBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/storageBucket:StorageBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketId = registerOutput<String?>('bucketId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
