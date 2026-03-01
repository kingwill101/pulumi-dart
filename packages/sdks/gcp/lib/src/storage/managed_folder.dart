import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_folder_args.dart';
import 'managed_folder_state.dart';

/// A Google Cloud Storage Managed Folder.
///
/// You can apply Identity and Access Management (IAM) policies to
/// managed folders to grant principals access only to the objects
/// within the managed folder, which lets you more finely control access
/// for specific data sets and tables within a bucket. You can nest
/// managed folders up to 15 levels deep, including the parent managed
/// folder.
///
/// Managed folders can only be created in buckets that have uniform
/// bucket-level access enabled.
///
///
/// To get more information about ManagedFolder, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/managedFolder)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/managed-folders)
///
/// ## Example Usage
///
/// ### Storage Managed Folder Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-bucket",
///     location: "EU",
///     uniformBucketLevelAccess: true,
/// });
/// const folder = new gcp.storage.ManagedFolder("folder", {
///     bucket: bucket.name,
///     name: "managed/folder/name/",
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-bucket",
///     location="EU",
///     uniform_bucket_level_access=True)
/// folder = gcp.storage.ManagedFolder("folder",
///     bucket=bucket.name,
///     name="managed/folder/name/",
///     force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-bucket",
///         Location = "EU",
///         UniformBucketLevelAccess = true,
///     });
///
///     var folder = new Gcp.Storage.ManagedFolder("folder", new()
///     {
///         Bucket = bucket.Name,
///         Name = "managed/folder/name/",
///         ForceDestroy = true,
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
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-bucket"),
/// 			Location:                 pulumi.String("EU"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewManagedFolder(ctx, "folder", &storage.ManagedFolderArgs{
/// 			Bucket:       bucket.Name,
/// 			Name:         pulumi.String("managed/folder/name/"),
/// 			ForceDestroy: pulumi.Bool(true),
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
/// import com.pulumi.gcp.storage.ManagedFolder;
/// import com.pulumi.gcp.storage.ManagedFolderArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-bucket")
///             .location("EU")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var folder = new ManagedFolder("folder", ManagedFolderArgs.builder()
///             .bucket(bucket.name())
///             .name("managed/folder/name/")
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-bucket
///       location: EU
///       uniformBucketLevelAccess: true
///   folder:
///     type: gcp:storage:ManagedFolder
///     properties:
///       bucket: ${bucket.name}
///       name: managed/folder/name/
///       forceDestroy: true
/// ```
///
///
/// ## Import
///
/// ManagedFolder can be imported using any of these accepted formats:
///
/// * `{{bucket}}/managedFolders/{{name}}`
///
/// * `{{bucket}}/{{name}}`
///
/// When using the `pulumi import` command, ManagedFolder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolder:ManagedFolder default {{bucket}}/managedFolders/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/managedFolder:ManagedFolder default {{bucket}}/{{name}}
/// ```
class ManagedFolder extends pulumi.CustomResource {
  /// The name of the bucket that contains the managed folder.
  late final pulumi.Output<String> bucket;
  /// The timestamp at which this managed folder was created.
  late final pulumi.Output<String> createTime;
  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  late final pulumi.Output<bool?> forceDestroy;
  /// The metadata generation of the managed folder.
  late final pulumi.Output<String> metageneration;
  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  late final pulumi.Output<String> name;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The timestamp at which this managed folder was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagedFolder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedFolder]. {@macro pulumi_storage_managed_folder_managed_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedFolder(
    String name, {
    ManagedFolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolder:ManagedFolder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ManagedFolder] resource's state with the given [name] and [id].
  static ManagedFolder get(
    String name,
    pulumi.Input<String> id, {
    ManagedFolderState? state,
  }) {
    return ManagedFolder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedFolder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/managedFolder:ManagedFolder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.metageneration = registerOutput<String>('metageneration');
    this.name = registerOutput<String>('name');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
