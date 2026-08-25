import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_aclargs.dart';
import 'object_aclstate.dart';

/// Authoritatively manages the access control list (ACL) for an object in a Google
/// Cloud Storage (GCS) bucket. Removing a `gcp.storage.ObjectACL` sets the
/// acl to the `private` [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl).
///
/// For more information see
/// [the official documentation](https://cloud.google.com/storage/docs/access-control/lists)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls).
///
/// &gt; Want fine-grained control over object ACLs? Use `gcp.storage.ObjectAccessControl` to control individual
/// role entity pairs.
///
/// ## Example Usage
///
/// Create an object ACL with one owner and one reader.
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
/// const image = new gcp.storage.BucketObject("image", {
///     name: "image1",
///     bucket: image_store.name,
///     source: new pulumi.asset.FileAsset("image1.jpg"),
/// });
/// const image_store_acl = new gcp.storage.ObjectACL("image-store-acl", {
///     bucket: image_store.name,
///     object: image.outputName,
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
/// image = gcp.storage.BucketObject("image",
///     name="image1",
///     bucket=image_store.name,
///     source=pulumi.FileAsset("image1.jpg"))
/// image_store_acl = gcp.storage.ObjectACL("image-store-acl",
///     bucket=image_store.name,
///     object=image.output_name,
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
///     var image = new Gcp.Storage.BucketObject("image", new()
///     {
///         Name = "image1",
///         Bucket = image_store.Name,
///         Source = new FileAsset("image1.jpg"),
///     });
///
///     var image_store_acl = new Gcp.Storage.ObjectACL("image-store-acl", new()
///     {
///         Bucket = image_store.Name,
///         Object = image.OutputName,
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
/// 		image, err := storage.NewBucketObject(ctx, "image", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("image1"),
/// 			Bucket: image_store.Name,
/// 			Source: pulumi.NewFileAsset("image1.jpg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewObjectACL(ctx, "image-store-acl", &storage.ObjectACLArgs{
/// 			Bucket: image_store.Name,
/// 			Object: image.OutputName,
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
/// resource "gcp_storage_bucketobject" "image" {
///   name   = "image1"
///   bucket = gcp_storage_bucket.image-store.name
///   source = fileAsset("image1.jpg")
/// }
/// resource "gcp_storage_objectacl" "image-store-acl" {
///   bucket        = gcp_storage_bucket.image-store.name
///   object        = gcp_storage_bucketobject.image.output_name
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
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.ObjectACL;
/// import com.pulumi.gcp.storage.ObjectACLArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var image = new BucketObject("image", BucketObjectArgs.builder()
///             .name("image1")
///             .bucket(image_store.name())
///             .source(new FileAsset("image1.jpg"))
///             .build());
///
///         var image_store_acl = new ObjectACL("image-store-acl", ObjectACLArgs.builder()
///             .bucket(image_store.name())
///             .object(image.outputName())
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
///   image:
///     type: gcp:storage:BucketObject
///     properties:
///       name: image1
///       bucket: ${["image-store"].name}
///       source:
///         fn::fileAsset: image1.jpg
///   image-store-acl:
///     type: gcp:storage:ObjectACL
///     properties:
///       bucket: ${["image-store"].name}
///       object: ${image.outputName}
///       roleEntities:
///         - OWNER:user-my.email@gmail.com
///         - READER:group-mygroup
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ObjectACL extends pulumi.CustomResource {
  /// The name of the bucket the object is stored in.
  late final pulumi.Output<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of the object to apply the acl to.
  ///
  /// - - -
  late final pulumi.Output<String> object_;
  /// The "canned" [predefined ACL](https://cloud.google.com/storage/docs/access-control#predefined-acl) to apply. Must be set if `roleEntity` is not.
  late final pulumi.Output<String?> predefinedAcl;
  /// List of role/entity pairs in the form `ROLE:entity`. See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Must be set if `predefinedAcl` is not.
  ///
  /// &gt; The object's creator will always have `OWNER` permissions for their object, and any attempt to modify that permission would return an error. Instead, Terraform automatically
  /// adds that role/entity pair to your `pulumi preview` results when it is omitted in your config; `pulumi preview` will show the correct final state at every point except for at
  /// `Create` time, where the object role/entity pair is omitted if not explicitly set.
  late final pulumi.Output<List<String>> roleEntities;

  /// Creates a new [ObjectACL].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectACL]. {@macro pulumi_storage_object_acl_object_aclargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectACL(
    String name, {
    ObjectACLArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectACL:ObjectACL',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    object_ = registerOutput<String>('object');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ObjectACL] resource's state with the given [name] and [id].
  static ObjectACL get(
    String name,
    pulumi.Input<String> id, {
    ObjectACLState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ObjectACL._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ObjectACL._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectACL:ObjectACL',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    object_ = registerOutput<String>('object');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ObjectACL] resource.
  ObjectACL.reference(String urn)
    : super(
        'gcp:storage/objectACL:ObjectACL',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    object_ = registerOutput<String>('object');
    predefinedAcl = registerOutput<String?>('predefinedAcl');
    roleEntities = registerOutput<List<String>>('roleEntities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
