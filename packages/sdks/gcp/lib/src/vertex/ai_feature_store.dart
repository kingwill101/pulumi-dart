import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_store_args.dart';
import 'ai_feature_store_encryption_spec.dart';
import 'ai_feature_store_online_serving_config.dart';
import 'ai_feature_store_state.dart';

/// A collection of DataItems and Annotations on them.
///
///
/// To get more information about Featurestore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featurestores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featurestore
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
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
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiFeatureStoreEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 			EncryptionSpec: &vertex.AiFeatureStoreEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 			ForceDestroy: pulumi.Bool(true),
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
/// resource "gcp_vertex_aifeaturestore" "featurestore" {
///   name = "terraform"
///   labels = {
///     "foo" = "bar"
///   }
///   region = "us-central1"
///   online_serving_config = {
///     fixed_node_count = 2
///   }
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
///   force_destroy = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEncryptionSpecArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .encryptionSpec(AiFeatureStoreEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///       encryptionSpec:
///         kmsKeyName: kms-name
///       forceDestroy: true
/// ```
///
/// ### Vertex Ai Featurestore With Beta Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform2",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         fixedNodeCount: 2,
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
///     onlineStorageTtlDays: 30,
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform2",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "fixed_node_count": 2,
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
///     online_storage_ttl_days=30,
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
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform2",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             FixedNodeCount = 2,
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiFeatureStoreEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///         OnlineStorageTtlDays = 30,
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform2"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				FixedNodeCount: pulumi.Int(2),
/// 			},
/// 			EncryptionSpec: &vertex.AiFeatureStoreEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 			OnlineStorageTtlDays: pulumi.Int(30),
/// 			ForceDestroy:         pulumi.Bool(true),
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
/// resource "gcp_vertex_aifeaturestore" "featurestore" {
///   name = "terraform2"
///   labels = {
///     "foo" = "bar"
///   }
///   region = "us-central1"
///   online_serving_config = {
///     fixed_node_count = 2
///   }
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
///   online_storage_ttl_days = 30
///   force_destroy           = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEncryptionSpecArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform2")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .fixedNodeCount(2)
///                 .build())
///             .encryptionSpec(AiFeatureStoreEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .onlineStorageTtlDays(30)
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform2
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         fixedNodeCount: 2
///       encryptionSpec:
///         kmsKeyName: kms-name
///       onlineStorageTtlDays: 30
///       forceDestroy: true
/// ```
///
/// ### Vertex Ai Featurestore Scaling
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featurestore = new gcp.vertex.AiFeatureStore("featurestore", {
///     name: "terraform3",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     onlineServingConfig: {
///         scaling: {
///             minNodeCount: 2,
///             maxNodeCount: 10,
///         },
///     },
///     encryptionSpec: {
///         kmsKeyName: "kms-name",
///     },
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featurestore = gcp.vertex.AiFeatureStore("featurestore",
///     name="terraform3",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     online_serving_config={
///         "scaling": {
///             "min_node_count": 2,
///             "max_node_count": 10,
///         },
///     },
///     encryption_spec={
///         "kms_key_name": "kms-name",
///     },
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
///     var featurestore = new Gcp.Vertex.AiFeatureStore("featurestore", new()
///     {
///         Name = "terraform3",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         OnlineServingConfig = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigArgs
///         {
///             Scaling = new Gcp.Vertex.Inputs.AiFeatureStoreOnlineServingConfigScalingArgs
///             {
///                 MinNodeCount = 2,
///                 MaxNodeCount = 10,
///             },
///         },
///         EncryptionSpec = new Gcp.Vertex.Inputs.AiFeatureStoreEncryptionSpecArgs
///         {
///             KmsKeyName = "kms-name",
///         },
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureStore(ctx, "featurestore", &vertex.AiFeatureStoreArgs{
/// 			Name: pulumi.String("terraform3"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			OnlineServingConfig: &vertex.AiFeatureStoreOnlineServingConfigArgs{
/// 				Scaling: &vertex.AiFeatureStoreOnlineServingConfigScalingArgs{
/// 					MinNodeCount: pulumi.Int(2),
/// 					MaxNodeCount: pulumi.Int(10),
/// 				},
/// 			},
/// 			EncryptionSpec: &vertex.AiFeatureStoreEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("kms-name"),
/// 			},
/// 			ForceDestroy: pulumi.Bool(true),
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
/// resource "gcp_vertex_aifeaturestore" "featurestore" {
///   name = "terraform3"
///   labels = {
///     "foo" = "bar"
///   }
///   region = "us-central1"
///   online_serving_config = {
///     scaling = {
///       min_node_count = 2
///       max_node_count = 10
///     }
///   }
///   encryption_spec = {
///     kms_key_name = "kms-name"
///   }
///   force_destroy = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vertex.AiFeatureStore;
/// import com.pulumi.gcp.vertex.AiFeatureStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreOnlineServingConfigScalingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureStoreEncryptionSpecArgs;
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
///         var featurestore = new AiFeatureStore("featurestore", AiFeatureStoreArgs.builder()
///             .name("terraform3")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .onlineServingConfig(AiFeatureStoreOnlineServingConfigArgs.builder()
///                 .scaling(AiFeatureStoreOnlineServingConfigScalingArgs.builder()
///                     .minNodeCount(2)
///                     .maxNodeCount(10)
///                     .build())
///                 .build())
///             .encryptionSpec(AiFeatureStoreEncryptionSpecArgs.builder()
///                 .kmsKeyName("kms-name")
///                 .build())
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featurestore:
///     type: gcp:vertex:AiFeatureStore
///     properties:
///       name: terraform3
///       labels:
///         foo: bar
///       region: us-central1
///       onlineServingConfig:
///         scaling:
///           minNodeCount: 2
///           maxNodeCount: 10
///       encryptionSpec:
///         kmsKeyName: kms-name
///       forceDestroy: true
/// ```
///
///
/// ## Import
///
/// Featurestore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featurestores/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Featurestore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default projects/{{project}}/locations/{{region}}/featurestores/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{region}}/{{name}}
/// $ pulumi import gcp:vertex/aiFeatureStore:AiFeatureStore default {{name}}
/// ```
class AiFeatureStore extends pulumi.CustomResource {
  /// The timestamp of when the featurestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureStoreEncryptionSpec?> encryptionSpec;
  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;
  /// If set to true, any EntityTypes and Features for this Featurestore will also be deleted
  late final pulumi.Output<bool?> forceDestroy;
  /// A set of key/value label pairs to assign to this Featurestore.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;
  /// Config for online serving resources.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureStoreOnlineServingConfig?> onlineServingConfig;
  /// (Optional, Beta)
  /// TTL in days for feature values that will be stored in online serving storage. The Feature Store online storage periodically removes obsolete feature values older than onlineStorageTtlDays since the feature generation time. Note that onlineStorageTtlDays should be less than or equal to offlineStorageTtlDays for each EntityType under a featurestore. If not set, default to 4000 days
  late final pulumi.Output<int?> onlineStorageTtlDays;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region of the dataset. eg us-central1
  late final pulumi.Output<String> region;
  /// The timestamp of when the featurestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiFeatureStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureStore]. {@macro pulumi_vertex_ai_feature_store_ai_feature_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureStore(
    String name, {
    AiFeatureStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStore:AiFeatureStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<AiFeatureStoreEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    onlineServingConfig = registerOutput<AiFeatureStoreOnlineServingConfig?>('onlineServingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreOnlineServingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onlineStorageTtlDays = registerOutput<int?>('onlineStorageTtlDays');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiFeatureStore] resource's state with the given [name] and [id].
  static AiFeatureStore get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureStoreState? state,
  }) {
    return AiFeatureStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiFeatureStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureStore:AiFeatureStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionSpec = registerOutput<AiFeatureStoreEncryptionSpec?>('encryptionSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    onlineServingConfig = registerOutput<AiFeatureStoreOnlineServingConfig?>('onlineServingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiFeatureStoreOnlineServingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onlineStorageTtlDays = registerOutput<int?>('onlineStorageTtlDays');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    updateTime = registerOutput<String>('updateTime');
  }
}
