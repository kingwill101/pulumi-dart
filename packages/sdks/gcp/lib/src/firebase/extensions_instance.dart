import 'package:pulumi/pulumi.dart' as pulumi;
import 'extensions_instance_args.dart';
import 'extensions_instance_config.dart';
import 'extensions_instance_state.dart';

/// An Instance is an installation of an Extension into a user's project.
///
/// To get more information about Instance, see:
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/products/extensions)
///
/// ## Example Usage
///
/// ### Firebase Extensions Instance Resize Image
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const images = new gcp.storage.Bucket("images", {
///     project: "my-project-name",
///     name: "bucket-id",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const resizeImage = new gcp.firebase.ExtensionsInstance("resize_image", {
///     project: "my-project-name",
///     instanceId: "storage-resize-images",
///     config: {
///         extensionRef: "firebase/storage-resize-images",
///         extensionVersion: "0.2.10",
///         params: {
///             DELETE_ORIGINAL_FILE: "false",
///             MAKE_PUBLIC: "false",
///             IMAGE_TYPE: "false",
///             IS_ANIMATED: "true",
///             FUNCTION_MEMORY: "1024",
///             DO_BACKFILL: "false",
///             IMG_SIZES: "200x200",
///             IMG_BUCKET: images.name,
///             BACKFILL_BATCH_SIZE: "3",
///             CONTENT_FILTER_LEVEL: "OFF",
///             REGENERATE_TOKEN: "true",
///         },
///         systemParams: {
///             "firebaseextensions.v1beta.function/location": "us-central1",
///             "firebaseextensions.v1beta.function/maxInstances": "3000",
///             "firebaseextensions.v1beta.function/minInstances": "0",
///             "firebaseextensions.v1beta.function/vpcConnectorEgressSettings": "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED",
///         },
///         allowedEventTypes: ["firebase.extensions.storage-resize-images.v1.onCompletion"],
///         eventarcChannel: "projects/my-project-name/locations/us-central1/channels/firebase",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// images = gcp.storage.Bucket("images",
///     project="my-project-name",
///     name="bucket-id",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// resize_image = gcp.firebase.ExtensionsInstance("resize_image",
///     project="my-project-name",
///     instance_id="storage-resize-images",
///     config={
///         "extension_ref": "firebase/storage-resize-images",
///         "extension_version": "0.2.10",
///         "params": {
///             "DELETE_ORIGINAL_FILE": "false",
///             "MAKE_PUBLIC": "false",
///             "IMAGE_TYPE": "false",
///             "IS_ANIMATED": "true",
///             "FUNCTION_MEMORY": "1024",
///             "DO_BACKFILL": "false",
///             "IMG_SIZES": "200x200",
///             "IMG_BUCKET": images.name,
///             "BACKFILL_BATCH_SIZE": "3",
///             "CONTENT_FILTER_LEVEL": "OFF",
///             "REGENERATE_TOKEN": "true",
///         },
///         "system_params": {
///             "firebaseextensions.v1beta.function/location": "us-central1",
///             "firebaseextensions.v1beta.function/maxInstances": "3000",
///             "firebaseextensions.v1beta.function/minInstances": "0",
///             "firebaseextensions.v1beta.function/vpcConnectorEgressSettings": "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED",
///         },
///         "allowed_event_types": ["firebase.extensions.storage-resize-images.v1.onCompletion"],
///         "eventarc_channel": "projects/my-project-name/locations/us-central1/channels/firebase",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var images = new Gcp.Storage.Bucket("images", new()
///     {
///         Project = "my-project-name",
///         Name = "bucket-id",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var resizeImage = new Gcp.Firebase.ExtensionsInstance("resize_image", new()
///     {
///         Project = "my-project-name",
///         InstanceId = "storage-resize-images",
///         Config = new Gcp.Firebase.Inputs.ExtensionsInstanceConfigArgs
///         {
///             ExtensionRef = "firebase/storage-resize-images",
///             ExtensionVersion = "0.2.10",
///             Params =
///             {
///                 { "DELETE_ORIGINAL_FILE", "false" },
///                 { "MAKE_PUBLIC", "false" },
///                 { "IMAGE_TYPE", "false" },
///                 { "IS_ANIMATED", "true" },
///                 { "FUNCTION_MEMORY", "1024" },
///                 { "DO_BACKFILL", "false" },
///                 { "IMG_SIZES", "200x200" },
///                 { "IMG_BUCKET", images.Name },
///                 { "BACKFILL_BATCH_SIZE", "3" },
///                 { "CONTENT_FILTER_LEVEL", "OFF" },
///                 { "REGENERATE_TOKEN", "true" },
///             },
///             SystemParams =
///             {
///                 { "firebaseextensions.v1beta.function/location", "us-central1" },
///                 { "firebaseextensions.v1beta.function/maxInstances", "3000" },
///                 { "firebaseextensions.v1beta.function/minInstances", "0" },
///                 { "firebaseextensions.v1beta.function/vpcConnectorEgressSettings", "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED" },
///             },
///             AllowedEventTypes = new[]
///             {
///                 "firebase.extensions.storage-resize-images.v1.onCompletion",
///             },
///             EventarcChannel = "projects/my-project-name/locations/us-central1/channels/firebase",
///         },
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
/// 		images, err := storage.NewBucket(ctx, "images", &storage.BucketArgs{
/// 			Project:                  pulumi.String("my-project-name"),
/// 			Name:                     pulumi.String("bucket-id"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewExtensionsInstance(ctx, "resize_image", &firebase.ExtensionsInstanceArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			InstanceId: pulumi.String("storage-resize-images"),
/// 			Config: &firebase.ExtensionsInstanceConfigArgs{
/// 				ExtensionRef:     pulumi.String("firebase/storage-resize-images"),
/// 				ExtensionVersion: pulumi.String("0.2.10"),
/// 				Params: pulumi.StringMap{
/// 					"DELETE_ORIGINAL_FILE": pulumi.String("false"),
/// 					"MAKE_PUBLIC":          pulumi.String("false"),
/// 					"IMAGE_TYPE":           pulumi.String("false"),
/// 					"IS_ANIMATED":          pulumi.String("true"),
/// 					"FUNCTION_MEMORY":      pulumi.String("1024"),
/// 					"DO_BACKFILL":          pulumi.String("false"),
/// 					"IMG_SIZES":            pulumi.String("200x200"),
/// 					"IMG_BUCKET":           images.Name,
/// 					"BACKFILL_BATCH_SIZE":  pulumi.String("3"),
/// 					"CONTENT_FILTER_LEVEL": pulumi.String("OFF"),
/// 					"REGENERATE_TOKEN":     pulumi.String("true"),
/// 				},
/// 				SystemParams: pulumi.StringMap{
/// 					"firebaseextensions.v1beta.function/location":                   pulumi.String("us-central1"),
/// 					"firebaseextensions.v1beta.function/maxInstances":               pulumi.String("3000"),
/// 					"firebaseextensions.v1beta.function/minInstances":               pulumi.String("0"),
/// 					"firebaseextensions.v1beta.function/vpcConnectorEgressSettings": pulumi.String("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
/// 				},
/// 				AllowedEventTypes: pulumi.StringArray{
/// 					pulumi.String("firebase.extensions.storage-resize-images.v1.onCompletion"),
/// 				},
/// 				EventarcChannel: pulumi.String("projects/my-project-name/locations/us-central1/channels/firebase"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.firebase.ExtensionsInstance;
/// import com.pulumi.gcp.firebase.ExtensionsInstanceArgs;
/// import com.pulumi.gcp.firebase.inputs.ExtensionsInstanceConfigArgs;
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
///         var images = new Bucket("images", BucketArgs.builder()
///             .project("my-project-name")
///             .name("bucket-id")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var resizeImage = new ExtensionsInstance("resizeImage", ExtensionsInstanceArgs.builder()
///             .project("my-project-name")
///             .instanceId("storage-resize-images")
///             .config(ExtensionsInstanceConfigArgs.builder()
///                 .extensionRef("firebase/storage-resize-images")
///                 .extensionVersion("0.2.10")
///                 .params(Map.ofEntries(
///                     Map.entry("DELETE_ORIGINAL_FILE", "false"),
///                     Map.entry("MAKE_PUBLIC", "false"),
///                     Map.entry("IMAGE_TYPE", "false"),
///                     Map.entry("IS_ANIMATED", "true"),
///                     Map.entry("FUNCTION_MEMORY", "1024"),
///                     Map.entry("DO_BACKFILL", "false"),
///                     Map.entry("IMG_SIZES", "200x200"),
///                     Map.entry("IMG_BUCKET", images.name()),
///                     Map.entry("BACKFILL_BATCH_SIZE", "3"),
///                     Map.entry("CONTENT_FILTER_LEVEL", "OFF"),
///                     Map.entry("REGENERATE_TOKEN", "true")
///                 ))
///                 .systemParams(Map.ofEntries(
///                     Map.entry("firebaseextensions.v1beta.function/location", "us-central1"),
///                     Map.entry("firebaseextensions.v1beta.function/maxInstances", "3000"),
///                     Map.entry("firebaseextensions.v1beta.function/minInstances", "0"),
///                     Map.entry("firebaseextensions.v1beta.function/vpcConnectorEgressSettings", "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED")
///                 ))
///                 .allowedEventTypes("firebase.extensions.storage-resize-images.v1.onCompletion")
///                 .eventarcChannel("projects/my-project-name/locations/us-central1/channels/firebase")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   images:
///     type: gcp:storage:Bucket
///     properties:
///       project: my-project-name
///       name: bucket-id
///       location: US
///       uniformBucketLevelAccess: true # Delete all objects when the bucket is deleted
///       forceDestroy: true
///   resizeImage:
///     type: gcp:firebase:ExtensionsInstance
///     name: resize_image
///     properties:
///       project: my-project-name
///       instanceId: storage-resize-images
///       config:
///         extensionRef: firebase/storage-resize-images
///         extensionVersion: 0.2.10
///         params:
///           DELETE_ORIGINAL_FILE: false
///           MAKE_PUBLIC: false
///           IMAGE_TYPE: false
///           IS_ANIMATED: true
///           FUNCTION_MEMORY: 1024
///           DO_BACKFILL: false
///           IMG_SIZES: 200x200
///           IMG_BUCKET: ${images.name}
///           BACKFILL_BATCH_SIZE: 3
///           CONTENT_FILTER_LEVEL: OFF
///           REGENERATE_TOKEN: 'true'
///         systemParams:
///           firebaseextensions.v1beta.function/location: us-central1
///           firebaseextensions.v1beta.function/maxInstances: 3000
///           firebaseextensions.v1beta.function/minInstances: 0
///           firebaseextensions.v1beta.function/vpcConnectorEgressSettings: VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED
///         allowedEventTypes:
///           - firebase.extensions.storage-resize-images.v1.onCompletion
///         eventarcChannel: projects/my-project-name/locations/us-central1/channels/firebase
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{instance_id}}`
///
/// * `{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default projects/{{project}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default {{project}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default {{instance_id}}
/// ```
class ExtensionsInstance extends pulumi.CustomResource {
  /// The current Config of the Extension Instance.
  /// Structure is documented below.
  late final pulumi.Output<ExtensionsInstanceConfig> config;

  /// The time at which the Extension Instance was created.
  late final pulumi.Output<String> createTime;

  /// If this Instance has `state: ERRORED`, the error messages
  /// will be found here.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> errorStatuses;

  /// A weak etag that is computed by the server based on other configuration
  /// values and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  late final pulumi.Output<String> instanceId;

  /// The name of the last operation that acted on this Extension
  /// Instance
  late final pulumi.Output<String> lastOperationName;

  /// The type of the last operation that acted on the Extension Instance.
  late final pulumi.Output<String> lastOperationType;

  /// The fully-qualified resource name of the Extension Instance.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Data set by the extension instance at runtime.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> runtimeDatas;

  /// The email of the service account to be used at runtime by compute resources
  /// created for the operation of the Extension instance.
  late final pulumi.Output<String> serviceAccountEmail;

  /// The processing state of the extension instance.
  late final pulumi.Output<String> state;

  /// The time at which the Extension Instance was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ExtensionsInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExtensionsInstance]. {@macro pulumi_firebase_extensions_instance_extensions_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExtensionsInstance(
    String name, {
    ExtensionsInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firebase/extensionsInstance:ExtensionsInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<ExtensionsInstanceConfig>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtensionsInstanceConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    errorStatuses = registerOutput<List<Map<String, dynamic>>>('errorStatuses');
    etag = registerOutput<String>('etag');
    instanceId = registerOutput<String>('instanceId');
    lastOperationName = registerOutput<String>('lastOperationName');
    lastOperationType = registerOutput<String>('lastOperationType');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runtimeDatas = registerOutput<List<Map<String, dynamic>>>('runtimeDatas');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ExtensionsInstance] resource's state with the given [name] and [id].
  static ExtensionsInstance get(
    String name,
    pulumi.Input<String> id, {
    ExtensionsInstanceState? state,
  }) {
    return ExtensionsInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExtensionsInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firebase/extensionsInstance:ExtensionsInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<ExtensionsInstanceConfig>(
      'config',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtensionsInstanceConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    errorStatuses = registerOutput<List<Map<String, dynamic>>>('errorStatuses');
    etag = registerOutput<String>('etag');
    instanceId = registerOutput<String>('instanceId');
    lastOperationName = registerOutput<String>('lastOperationName');
    lastOperationType = registerOutput<String>('lastOperationType');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runtimeDatas = registerOutput<List<Map<String, dynamic>>>('runtimeDatas');
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
