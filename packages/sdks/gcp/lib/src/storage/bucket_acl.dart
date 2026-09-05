import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_aclargs.dart';
import 'bucket_aclstate.dart';

/// Authoritatively manages a bucket's ACLs in Google cloud storage service (GCS). For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls).
///
/// Bucket ACLs can be managed non authoritatively using the `storageBucketAccessControl` resource. Do not use these two resources in conjunction to manage the same bucket.
///
/// Permissions can be granted either by ACLs or Cloud IAM policies. In general, permissions granted by Cloud IAM policies do not appear in ACLs, and permissions granted by ACLs do not appear in Cloud IAM policies. The only exception is for ACLs applied directly on a bucket and certain bucket-level Cloud IAM policies, as described in [Cloud IAM relation to ACLs](https://cloud.google.com/storage/docs/access-control/iam#acls).
///
/// **NOTE** This resource will not remove the `project-owners-&lt;project_id&gt;` entity from the `OWNER` role.
///
/// ## Example Usage
///
/// Example creating an ACL on a bucket with one owner, and one reader.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const image_store = new gcp.storage.Bucket("image-store", {
///     name: "image-store-bucket",
///     location: "EU",
/// });
/// const image_store_acl = new gcp.storage.BucketACL("image-store-acl", {
///     bucket: image_store.name,
///     roleEntities: [
///         "OWNER:user-my.email@gmail.com",
///         "READER:group-mygroup",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// image_store = gcp.storage.Bucket("image-store",
///     name="image-store-bucket",
///     location="EU")
/// image_store_acl = gcp.storage.BucketACL("image-store-acl",
///     bucket=image_store.name,
///     role_entities=[
///         "OWNER:user-my.email@gmail.com",
///         "READER:group-mygroup",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image_store = new Gcp.Storage.Bucket("image-store", new()
///     {
///         Name = "image-store-bucket",
///         Location = "EU",
///     });
///
///     var image_store_acl = new Gcp.Storage.BucketACL("image-store-acl", new()
///     {
///         Bucket = image_store.Name,
///         RoleEntities = new[]
///         {
///             "OWNER:user-my.email@gmail.com",
///             "READER:group-mygroup",
///         },
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
/// 		image_store, err := storage.NewBucket(ctx, "image-store", &storage.BucketArgs{
/// 			Name:     pulumi.String("image-store-bucket"),
/// 			Location: pulumi.String("EU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucketACL(ctx, "image-store-acl", &storage.BucketACLArgs{
/// 			Bucket: image_store.Name,
/// 			RoleEntities: pulumi.StringArray{
/// 				pulumi.String("OWNER:user-my.email@gmail.com"),
/// 				pulumi.String("READER:group-mygroup"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "image-store" {
///   name     = "image-store-bucket"
///   location = "EU"
/// }
/// resource "gcp_storage_bucketacl" "image-store-acl" {
///   bucket        = gcp_storage_bucket.image-store.name
///   role_entities = ["OWNER:user-my.email@gmail.com", "READER:group-mygroup"]
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
/// import com.pulumi.gcp.storage.BucketACL;
/// import com.pulumi.gcp.storage.BucketACLArgs;
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
///         var image_store = new Bucket("image-store", BucketArgs.builder()
///             .name("image-store-bucket")
///             .location("EU")
///             .build());
///
///         var image_store_acl = new BucketACL("image-store-acl", BucketACLArgs.builder()
///             .bucket(image_store.name())
///             .roleEntities(
///                 "OWNER:user-my.email@gmail.com",
///                 "READER:group-mygroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   image-store:
///     type: gcp:storage:Bucket
///     properties:
///       name: image-store-bucket
///       location: EU
///   image-store-acl:
///     type: gcp:storage:BucketACL
///     properties:
///       bucket: ${["image-store"].name}
///       roleEntities:
///         - OWNER:user-my.email@gmail.com
///         - READER:group-mygroup
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class BucketACL extends pulumi.CustomResource {
  /// The name of the bucket it applies to.
  ///
  /// - - -
  late final pulumi.Output<String> bucket;
  /// Configure this ACL to be the default ACL.
  late final pulumi.Output<String?> defaultAcl;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The [canned GCS ACL](https://cloud.google.com/storage/docs/access-control/lists#predefined-acl) to apply. Must be set if `roleEntity` is not.
  late final pulumi.Output<String?> predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Bucket ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/bucketAccessControls)  for more details. Must be set if `predefinedAcl` is not.
  late final pulumi.Output<List<String>> roleEntities;

  /// Creates a new [BucketACL].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketACL]. {@macro pulumi_storage_bucket_acl_bucket_aclargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketACL(
    String name, {
    BucketACLArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketACL:BucketACL',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    defaultAcl = registerOutput<String?>('defaultAcl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [BucketACL] resource's state with the given [name] and [id].
  static BucketACL get(
    String name,
    pulumi.Input<String> id, {
    BucketACLState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketACL._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketACL._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/bucketACL:BucketACL',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    defaultAcl = registerOutput<String?>('defaultAcl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [BucketACL] resource.
  BucketACL.reference(String urn)
    : super(
        'gcp:storage/bucketACL:BucketACL',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    defaultAcl = registerOutput<String?>('defaultAcl');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
