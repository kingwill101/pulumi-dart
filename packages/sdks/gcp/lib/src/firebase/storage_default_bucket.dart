import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_default_bucket_args.dart';
import 'storage_default_bucket_bucket.dart';
import 'storage_default_bucket_state.dart';

/// A resource that manages the creation of the default Google Cloud Storage bucket
/// for a Firebase project.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about DefaultBucket, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/rest/storage/rest/v1alpha/projects.defaultBucket)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/storage/)
///
/// ## Example Usage
///
/// ### Firebasestorage Default Bucket Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.StorageDefaultBucket("default", {
///     project: "my-project-name",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.StorageDefaultBucket("default",
///     project="my-project-name",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.StorageDefaultBucket("default", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewStorageDefaultBucket(ctx, "default", &firebase.StorageDefaultBucketArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Location: pulumi.String("us-central1"),
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
/// resource "gcp_firebase_storagedefaultbucket" "default" {
///   project  = "my-project-name"
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firebase.StorageDefaultBucket;
/// import com.pulumi.gcp.firebase.StorageDefaultBucketArgs;
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
///         var default_ = new StorageDefaultBucket("default", StorageDefaultBucketArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:StorageDefaultBucket
///     properties:
///       project: my-project-name
///       location: us-central1
/// ```
///
///
/// ## Import
///
/// DefaultBucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/defaultBucket`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, DefaultBucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/storageDefaultBucket:StorageDefaultBucket default projects/{{project}}/defaultBucket
/// $ pulumi import gcp:firebase/storageDefaultBucket:StorageDefaultBucket default {{project}}
/// ```
class StorageDefaultBucket extends pulumi.CustomResource {
  /// The resource name of the underlying Google Cloud Storage bucket.
  /// Structure is documented below.
  late final pulumi.Output<List<StorageDefaultBucketBucket>> buckets;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID of the location where the default Google Cloud Storage bucket will be created.
  late final pulumi.Output<String> location;
  /// (Output)
  /// The resource name of the bucket in the format
  /// projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [StorageDefaultBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageDefaultBucket]. {@macro pulumi_firebase_storage_default_bucket_storage_default_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageDefaultBucket(
    String name, {
    StorageDefaultBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/storageDefaultBucket:StorageDefaultBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    buckets = registerOutput<List<StorageDefaultBucketBucket>>('buckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageDefaultBucketBucket>(guardedValue, (value) => StorageDefaultBucketBucket.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [StorageDefaultBucket] resource's state with the given [name] and [id].
  static StorageDefaultBucket get(
    String name,
    pulumi.Input<String> id, {
    StorageDefaultBucketState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StorageDefaultBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StorageDefaultBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/storageDefaultBucket:StorageDefaultBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    buckets = registerOutput<List<StorageDefaultBucketBucket>>('buckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageDefaultBucketBucket>(guardedValue, (value) => StorageDefaultBucketBucket.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [StorageDefaultBucket] resource.
  StorageDefaultBucket.reference(String urn)
    : super(
        'gcp:firebase/storageDefaultBucket:StorageDefaultBucket',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    buckets = registerOutput<List<StorageDefaultBucketBucket>>('buckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageDefaultBucketBucket>(guardedValue, (value) => StorageDefaultBucketBucket.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
