import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_args.dart';
import 'object_access_control_project_team.dart';
import 'object_access_control_state.dart';

/// The ObjectAccessControls resources represent the Access Control Lists
/// (ACLs) for objects within Google Cloud Storage. ACLs let you specify
/// who has access to your data and to what extent.
///
/// There are two roles that can be assigned to an entity:
///
/// READERs can get an object, though the acl property will not be revealed.
/// OWNERs are READERs, and they can get the acl property, update an object,
/// and call all objectAccessControls methods on the object. The owner of an
/// object is always an OWNER.
/// For more information, see Access Control, with the caveat that this API
/// uses READER and OWNER instead of READ and FULL_CONTROL.
///
///
/// To get more information about ObjectAccessControl, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/access-control/create-manage-lists)
///
/// ## Example Usage
///
/// ### Storage Object Access Control Public Object
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "static-content-bucket",
///     location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "public-object",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("../static/img/header-logo.png"),
/// });
/// const publicRule = new gcp.storage.ObjectAccessControl("public_rule", {
///     object: object.outputName,
///     bucket: bucket.name,
///     role: "READER",
///     entity: "allUsers",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="static-content-bucket",
///     location="US")
/// object = gcp.storage.BucketObject("object",
///     name="public-object",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("../static/img/header-logo.png"))
/// public_rule = gcp.storage.ObjectAccessControl("public_rule",
///     object=object.output_name,
///     bucket=bucket.name,
///     role="READER",
///     entity="allUsers")
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
///         Name = "static-content-bucket",
///         Location = "US",
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "public-object",
///         Bucket = bucket.Name,
///         Source = new FileAsset("../static/img/header-logo.png"),
///     });
///
///     var publicRule = new Gcp.Storage.ObjectAccessControl("public_rule", new()
///     {
///         Object = @object.OutputName,
///         Bucket = bucket.Name,
///         Role = "READER",
///         Entity = "allUsers",
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
/// 			Name:     pulumi.String("static-content-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("public-object"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("../static/img/header-logo.png"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewObjectAccessControl(ctx, "public_rule", &storage.ObjectAccessControlArgs{
/// 			Object: object.OutputName,
/// 			Bucket: bucket.Name,
/// 			Role:   pulumi.String("READER"),
/// 			Entity: pulumi.String("allUsers"),
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
/// resource "gcp_storage_objectaccesscontrol" "public_rule" {
///   object = gcp_storage_bucketobject.object.output_name
///   bucket = gcp_storage_bucket.bucket.name
///   role   = "READER"
///   entity = "allUsers"
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name     = "static-content-bucket"
///   location = "US"
/// }
/// resource "gcp_storage_bucketobject" "object" {
///   name   = "public-object"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("../static/img/header-logo.png")
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
/// import com.pulumi.gcp.storage.ObjectAccessControl;
/// import com.pulumi.gcp.storage.ObjectAccessControlArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("static-content-bucket")
///             .location("US")
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("public-object")
///             .bucket(bucket.name())
///             .source(new FileAsset("../static/img/header-logo.png"))
///             .build());
///
///         var publicRule = new ObjectAccessControl("publicRule", ObjectAccessControlArgs.builder()
///             .object(object.outputName())
///             .bucket(bucket.name())
///             .role("READER")
///             .entity("allUsers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   publicRule:
///     type: gcp:storage:ObjectAccessControl
///     name: public_rule
///     properties:
///       object: ${object.outputName}
///       bucket: ${bucket.name}
///       role: READER
///       entity: allUsers
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: static-content-bucket
///       location: US
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: public-object
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: ../static/img/header-logo.png
/// ```
///
///
/// ## Import
///
/// ObjectAccessControl can be imported using any of these accepted formats:
///
/// * `{{bucket}}/{{object}}/{{entity}}`
///
///
/// When using the `pulumi import` command, ObjectAccessControl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/objectAccessControl:ObjectAccessControl default {{bucket}}/{{object}}/{{entity}}
/// ```
class ObjectAccessControl extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The domain associated with the entity.
  late final pulumi.Output<String> domain;
  /// The email address associated with the entity.
  late final pulumi.Output<String> email;
  /// The entity holding the permission, in one of the following forms:
  /// * user-{{userId}}
  /// * user-{{email}} (such as "user-liz@example.com")
  /// * group-{{groupId}}
  /// * group-{{email}} (such as "group-example@googlegroups.com")
  /// * domain-{{domain}} (such as "domain-example.com")
  /// * project-team-{{projectId}}
  /// * allUsers
  /// * allAuthenticatedUsers
  late final pulumi.Output<String> entity;
  /// The ID for the entity
  late final pulumi.Output<String> entityId;
  /// The content generation of the object, if applied to an object.
  late final pulumi.Output<int> generation;
  /// The name of the object to apply the access control to.
  late final pulumi.Output<String> object_;
  /// The project team associated with the entity
  /// Structure is documented below.
  late final pulumi.Output<List<ObjectAccessControlProjectTeam>> projectTeams;
  /// The access permission for the entity.
  /// Possible values are: `OWNER`, `READER`.
  late final pulumi.Output<String> role;

  /// Creates a new [ObjectAccessControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectAccessControl]. {@macro pulumi_storage_object_access_control_object_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectAccessControl(
    String name, {
    ObjectAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectAccessControl:ObjectAccessControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    email = registerOutput<String>('email');
    entity = registerOutput<String>('entity');
    entityId = registerOutput<String>('entityId');
    generation = registerOutput<int>('generation');
    object_ = registerOutput<String>('object');
    projectTeams = registerOutput<List<ObjectAccessControlProjectTeam>>('projectTeams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectAccessControlProjectTeam>(guardedValue, (value) => ObjectAccessControlProjectTeam.fromMap((value as Map).cast<String, dynamic>())); });
    role = registerOutput<String>('role');
  }

  /// Gets an existing [ObjectAccessControl] resource's state with the given [name] and [id].
  static ObjectAccessControl get(
    String name,
    pulumi.Input<String> id, {
    ObjectAccessControlState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ObjectAccessControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ObjectAccessControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/objectAccessControl:ObjectAccessControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    email = registerOutput<String>('email');
    entity = registerOutput<String>('entity');
    entityId = registerOutput<String>('entityId');
    generation = registerOutput<int>('generation');
    object_ = registerOutput<String>('object');
    projectTeams = registerOutput<List<ObjectAccessControlProjectTeam>>('projectTeams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectAccessControlProjectTeam>(guardedValue, (value) => ObjectAccessControlProjectTeam.fromMap((value as Map).cast<String, dynamic>())); });
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [ObjectAccessControl] resource.
  ObjectAccessControl.reference(String urn)
    : super(
        'gcp:storage/objectAccessControl:ObjectAccessControl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    domain = registerOutput<String>('domain');
    email = registerOutput<String>('email');
    entity = registerOutput<String>('entity');
    entityId = registerOutput<String>('entityId');
    generation = registerOutput<int>('generation');
    object_ = registerOutput<String>('object');
    projectTeams = registerOutput<List<ObjectAccessControlProjectTeam>>('projectTeams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ObjectAccessControlProjectTeam>(guardedValue, (value) => ObjectAccessControlProjectTeam.fromMap((value as Map).cast<String, dynamic>())); });
    role = registerOutput<String>('role');
  }
}
