import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_feature_config_args.dart';
import 'control_project_feature_config_auto_annotate_config.dart';
import 'control_project_feature_config_filter.dart';
import 'control_project_feature_config_state.dart';

/// A feature configuration manages a Cloud Storage Smart Storage feature, such as Auto Annotate,
/// for a project. It defines the buckets that the feature applies to and the feature-specific
/// settings, such as the AI models used to generate annotations for objects.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
///
/// ## Example Usage
///
/// ### Storage Control Project Feature Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.storage.ControlProjectFeatureConfig("example", {
///     featureConfigId: "feature-config",
///     autoAnnotateConfig: {
///         models: [{
///             name: "object-detector",
///         }],
///         processingLocation: "us",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.ControlProjectFeatureConfig("example",
///     feature_config_id="feature-config",
///     auto_annotate_config={
///         "models": [{
///             "name": "object-detector",
///         }],
///         "processing_location": "us",
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
///     var example = new Gcp.Storage.ControlProjectFeatureConfig("example", new()
///     {
///         FeatureConfigId = "feature-config",
///         AutoAnnotateConfig = new Gcp.Storage.Inputs.ControlProjectFeatureConfigAutoAnnotateConfigArgs
///         {
///             Models = new[]
///             {
///                 new Gcp.Storage.Inputs.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs
///                 {
///                     Name = "object-detector",
///                 },
///             },
///             ProcessingLocation = "us",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewControlProjectFeatureConfig(ctx, "example", &storage.ControlProjectFeatureConfigArgs{
/// 			FeatureConfigId: pulumi.String("feature-config"),
/// 			AutoAnnotateConfig: &storage.ControlProjectFeatureConfigAutoAnnotateConfigArgs{
/// 				Models: storage.ControlProjectFeatureConfigAutoAnnotateConfigModelArray{
/// 					&storage.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs{
/// 						Name: pulumi.String("object-detector"),
/// 					},
/// 				},
/// 				ProcessingLocation: pulumi.String("us"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_control_project_feature_config" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   feature_config_id = "feature-config"
///   auto_annotate_config = {
///     models = [{
///       name = "object-detector"
///     }]
///     processing_location = "us"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.ControlProjectFeatureConfig;
/// import com.pulumi.gcp.storage.ControlProjectFeatureConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigAutoAnnotateConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs;
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
///         var example = new ControlProjectFeatureConfig("example", ControlProjectFeatureConfigArgs.builder()
///             .featureConfigId("feature-config")
///             .autoAnnotateConfig(ControlProjectFeatureConfigAutoAnnotateConfigArgs.builder()
///                 .models(ControlProjectFeatureConfigAutoAnnotateConfigModelArgs.builder()
///                     .name("object-detector")
///                     .build())
///                 .processingLocation("us")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:storage:ControlProjectFeatureConfig
///     properties:
///       featureConfigId: feature-config
///       autoAnnotateConfig:
///         models:
///           - name: object-detector
///         processingLocation: us
/// ```
///
///
/// ### Storage Control Project Feature Config Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
///     forceDestroy: true,
/// });
/// const example = new gcp.storage.ControlProjectFeatureConfig("example", {
///     featureConfigId: "feature-config",
///     description: "Annotates images in a single bucket",
///     filter: {
///         includedCloudStorageBuckets: {
///             bucketIdRegexes: [bucket.name],
///         },
///     },
///     autoAnnotateConfig: {
///         models: [
///             {
///                 name: "object-detector",
///             },
///             {
///                 name: "label-detector",
///             },
///         ],
///         processingLocation: "us",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="bucket",
///     location="US",
///     uniform_bucket_level_access=True,
///     force_destroy=True)
/// example = gcp.storage.ControlProjectFeatureConfig("example",
///     feature_config_id="feature-config",
///     description="Annotates images in a single bucket",
///     filter={
///         "included_cloud_storage_buckets": {
///             "bucket_id_regexes": [bucket.name],
///         },
///     },
///     auto_annotate_config={
///         "models": [
///             {
///                 "name": "object-detector",
///             },
///             {
///                 "name": "label-detector",
///             },
///         ],
///         "processing_location": "us",
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///         ForceDestroy = true,
///     });
///
///     var example = new Gcp.Storage.ControlProjectFeatureConfig("example", new()
///     {
///         FeatureConfigId = "feature-config",
///         Description = "Annotates images in a single bucket",
///         Filter = new Gcp.Storage.Inputs.ControlProjectFeatureConfigFilterArgs
///         {
///             IncludedCloudStorageBuckets = new Gcp.Storage.Inputs.ControlProjectFeatureConfigFilterIncludedCloudStorageBucketsArgs
///             {
///                 BucketIdRegexes = new[]
///                 {
///                     bucket.Name,
///                 },
///             },
///         },
///         AutoAnnotateConfig = new Gcp.Storage.Inputs.ControlProjectFeatureConfigAutoAnnotateConfigArgs
///         {
///             Models = new[]
///             {
///                 new Gcp.Storage.Inputs.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs
///                 {
///                     Name = "object-detector",
///                 },
///                 new Gcp.Storage.Inputs.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs
///                 {
///                     Name = "label-detector",
///                 },
///             },
///             ProcessingLocation = "us",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewControlProjectFeatureConfig(ctx, "example", &storage.ControlProjectFeatureConfigArgs{
/// 			FeatureConfigId: pulumi.String("feature-config"),
/// 			Description:     pulumi.String("Annotates images in a single bucket"),
/// 			Filter: &storage.ControlProjectFeatureConfigFilterArgs{
/// 				IncludedCloudStorageBuckets: &storage.ControlProjectFeatureConfigFilterIncludedCloudStorageBucketsArgs{
/// 					BucketIdRegexes: pulumi.StringArray{
/// 						bucket.Name,
/// 					},
/// 				},
/// 			},
/// 			AutoAnnotateConfig: &storage.ControlProjectFeatureConfigAutoAnnotateConfigArgs{
/// 				Models: storage.ControlProjectFeatureConfigAutoAnnotateConfigModelArray{
/// 					&storage.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs{
/// 						Name: pulumi.String("object-detector"),
/// 					},
/// 					&storage.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs{
/// 						Name: pulumi.String("label-detector"),
/// 					},
/// 				},
/// 				ProcessingLocation: pulumi.String("us"),
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
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_storage_bucket" "bucket" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "bucket"
///   location                    = "US"
///   uniform_bucket_level_access = true
///   force_destroy               = true
/// }
/// resource "gcp_storage_control_project_feature_config" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   feature_config_id = "feature-config"
///   description       = "Annotates images in a single bucket"
///   filter = {
///     included_cloud_storage_buckets = {
///       bucket_id_regexes = [gcp_storage_bucket.bucket.name]
///     }
///   }
///   auto_annotate_config = {
///     models = [{
///       name = "object-detector"
///       }, {
///       name = "label-detector"
///     }]
///     processing_location = "us"
///   }
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
/// import com.pulumi.gcp.storage.ControlProjectFeatureConfig;
/// import com.pulumi.gcp.storage.ControlProjectFeatureConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigFilterArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigFilterIncludedCloudStorageBucketsArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigAutoAnnotateConfigArgs;
/// import com.pulumi.gcp.storage.inputs.ControlProjectFeatureConfigAutoAnnotateConfigModelArgs;
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
///             .name("bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .forceDestroy(true)
///             .build());
///
///         var example = new ControlProjectFeatureConfig("example", ControlProjectFeatureConfigArgs.builder()
///             .featureConfigId("feature-config")
///             .description("Annotates images in a single bucket")
///             .filter(ControlProjectFeatureConfigFilterArgs.builder()
///                 .includedCloudStorageBuckets(ControlProjectFeatureConfigFilterIncludedCloudStorageBucketsArgs.builder()
///                     .bucketIdRegexes(bucket.name())
///                     .build())
///                 .build())
///             .autoAnnotateConfig(ControlProjectFeatureConfigAutoAnnotateConfigArgs.builder()
///                 .models(
///                     ControlProjectFeatureConfigAutoAnnotateConfigModelArgs.builder()
///                         .name("object-detector")
///                         .build(),
///                     ControlProjectFeatureConfigAutoAnnotateConfigModelArgs.builder()
///                         .name("label-detector")
///                         .build())
///                 .processingLocation("us")
///                 .build())
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
///       name: bucket
///       location: US
///       uniformBucketLevelAccess: true
///       forceDestroy: true
///   example:
///     type: gcp:storage:ControlProjectFeatureConfig
///     properties:
///       featureConfigId: feature-config
///       description: Annotates images in a single bucket
///       filter:
///         includedCloudStorageBuckets:
///           bucketIdRegexes:
///             - ${bucket.name}
///       autoAnnotateConfig:
///         models:
///           - name: object-detector
///           - name: label-detector
///         processingLocation: us
/// ```
///
///
/// ## Import
///
/// ProjectFeatureConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/featureConfigs/{{feature_config_id}}`
/// * `{{project}}/{{feature_config_id}}`
/// * `{{feature_config_id}}`
///
///
/// When using the `pulumi import` command, ProjectFeatureConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig default projects/{{project}}/locations/global/featureConfigs/{{feature_config_id}}
/// $ pulumi import gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig default {{project}}/{{feature_config_id}}
/// $ pulumi import gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig default {{feature_config_id}}
/// ```
class ControlProjectFeatureConfig extends pulumi.CustomResource {
  /// The configuration for the Auto Annotate feature, which uses AI models to generate
  /// annotations for objects in Cloud Storage buckets.
  /// Structure is documented below.
  late final pulumi.Output<ControlProjectFeatureConfigAutoAnnotateConfig> autoAnnotateConfig;
  /// The time at which the feature configuration was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the feature configuration. The description can be up to 256 characters long.
  late final pulumi.Output<String?> description;
  /// The ID of the feature configuration, which becomes the final component of its resource name.
  /// The ID must be 1 to 63 characters long, start with a lowercase letter, and contain only
  /// lowercase letters, digits, and dashes. The last character can't be a dash.
  late final pulumi.Output<String> featureConfigId;
  /// A filter that limits the feature configuration to specific Cloud Storage buckets.
  /// Structure is documented below.
  late final pulumi.Output<ControlProjectFeatureConfigFilter?> filter;
  /// The resource name of the feature configuration, in the format
  /// `projects/{project}/locations/global/featureConfigs/{feature_config_id}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The type of the feature configuration, for example `AUTO_ANNOTATE`.
  late final pulumi.Output<String> type;
  /// The time at which the feature configuration was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ControlProjectFeatureConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlProjectFeatureConfig]. {@macro pulumi_storage_control_project_feature_config_control_project_feature_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlProjectFeatureConfig(
    String name, {
    ControlProjectFeatureConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.2.2').merge(options),
        ) {
    autoAnnotateConfig = registerOutput<ControlProjectFeatureConfigAutoAnnotateConfig>('autoAnnotateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigAutoAnnotateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    featureConfigId = registerOutput<String>('featureConfigId');
    filter = registerOutput<ControlProjectFeatureConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ControlProjectFeatureConfig] resource's state with the given [name] and [id].
  static ControlProjectFeatureConfig get(
    String name,
    pulumi.Input<String> id, {
    ControlProjectFeatureConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ControlProjectFeatureConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ControlProjectFeatureConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoAnnotateConfig = registerOutput<ControlProjectFeatureConfigAutoAnnotateConfig>('autoAnnotateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigAutoAnnotateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    featureConfigId = registerOutput<String>('featureConfigId');
    filter = registerOutput<ControlProjectFeatureConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ControlProjectFeatureConfig] resource.
  ControlProjectFeatureConfig.reference(String urn)
    : super(
        'gcp:storage/controlProjectFeatureConfig:ControlProjectFeatureConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoAnnotateConfig = registerOutput<ControlProjectFeatureConfigAutoAnnotateConfig>('autoAnnotateConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigAutoAnnotateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    featureConfigId = registerOutput<String>('featureConfigId');
    filter = registerOutput<ControlProjectFeatureConfigFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControlProjectFeatureConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
