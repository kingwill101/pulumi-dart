import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_args.dart';
import 'ai_feature_online_store_bigtable.dart';
import 'ai_feature_online_store_dedicated_serving_endpoint.dart';
import 'ai_feature_online_store_embedding_management.dart';
import 'ai_feature_online_store_encryption_spec.dart';
import 'ai_feature_online_store_state.dart';

/// Vertex AI Feature Online Store provides a centralized repository for serving ML features and embedding indexes at low latency. The Feature Online Store is a top-level container.
///
///
/// To get more information about FeatureOnlineStore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Feature Online Store
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featureOnlineStore = new gcp.vertex.AiFeatureOnlineStore("feature_online_store", {
///     name: "example_feature_online_store",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     bigtable: {
///         autoScaling: {
///             minNodeCount: 1,
///             maxNodeCount: 3,
///             cpuUtilizationTarget: 50,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// feature_online_store = gcp.vertex.AiFeatureOnlineStore("feature_online_store",
///     name="example_feature_online_store",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     bigtable={
///         "auto_scaling": {
///             "min_node_count": 1,
///             "max_node_count": 3,
///             "cpu_utilization_target": 50,
///         },
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
///     var featureOnlineStore = new Gcp.Vertex.AiFeatureOnlineStore("feature_online_store", new()
///     {
///         Name = "example_feature_online_store",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Bigtable = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableArgs
///         {
///             AutoScaling = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs
///             {
///                 MinNodeCount = 1,
///                 MaxNodeCount = 3,
///                 CpuUtilizationTarget = 50,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureOnlineStore(ctx, "feature_online_store", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_online_store"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			Bigtable: &vertex.AiFeatureOnlineStoreBigtableArgs{
/// 				AutoScaling: &vertex.AiFeatureOnlineStoreBigtableAutoScalingArgs{
/// 					MinNodeCount:         pulumi.Int(1),
/// 					MaxNodeCount:         pulumi.Int(3),
/// 					CpuUtilizationTarget: pulumi.Int(50),
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs;
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
///         var featureOnlineStore = new AiFeatureOnlineStore("featureOnlineStore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_online_store")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .bigtable(AiFeatureOnlineStoreBigtableArgs.builder()
///                 .autoScaling(AiFeatureOnlineStoreBigtableAutoScalingArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(3)
///                     .cpuUtilizationTarget(50)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureOnlineStore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     name: feature_online_store
///     properties:
///       name: example_feature_online_store
///       labels:
///         foo: bar
///       region: us-central1
///       bigtable:
///         autoScaling:
///           minNodeCount: 1
///           maxNodeCount: 3
///           cpuUtilizationTarget: 50
/// ```
///
/// ### Vertex Ai Featureonlinestore With Optimized
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_feature_online_store_optimized",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     optimized: {},
///     dedicatedServingEndpoint: {
///         privateServiceConnectConfig: {
///             enablePrivateServiceConnect: true,
///             projectAllowlists: [project.then(project => project.number)],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_feature_online_store_optimized",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     optimized={},
///     dedicated_serving_endpoint={
///         "private_service_connect_config": {
///             "enable_private_service_connect": True,
///             "project_allowlists": [project.number],
///         },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_feature_online_store_optimized",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Optimized = null,
///         DedicatedServingEndpoint = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreDedicatedServingEndpointArgs
///         {
///             PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfigArgs
///             {
///                 EnablePrivateServiceConnect = true,
///                 ProjectAllowlists = new[]
///                 {
///                     project.Apply(getProjectResult => getProjectResult.Number),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_online_store_optimized"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region:    pulumi.String("us-central1"),
/// 			Optimized: &vertex.AiFeatureOnlineStoreOptimizedArgs{},
/// 			DedicatedServingEndpoint: &vertex.AiFeatureOnlineStoreDedicatedServingEndpointArgs{
/// 				PrivateServiceConnectConfig: &vertex.AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfigArgs{
/// 					EnablePrivateServiceConnect: pulumi.Bool(true),
/// 					ProjectAllowlists: pulumi.StringArray{
/// 						pulumi.String(project.Number),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreOptimizedArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreDedicatedServingEndpointArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_online_store_optimized")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .optimized(AiFeatureOnlineStoreOptimizedArgs.builder()
///                 .build())
///             .dedicatedServingEndpoint(AiFeatureOnlineStoreDedicatedServingEndpointArgs.builder()
///                 .privateServiceConnectConfig(AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfigArgs.builder()
///                     .enablePrivateServiceConnect(true)
///                     .projectAllowlists(project.number())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_feature_online_store_optimized
///       labels:
///         foo: bar
///       region: us-central1
///       optimized: {}
///       dedicatedServingEndpoint:
///         privateServiceConnectConfig:
///           enablePrivateServiceConnect: true
///           projectAllowlists:
///             - ${project.number}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Featureonlinestore With Beta Fields Bigtable
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_feature_online_store_beta_bigtable",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     bigtable: {
///         autoScaling: {
///             minNodeCount: 1,
///             maxNodeCount: 2,
///             cpuUtilizationTarget: 80,
///         },
///     },
///     embeddingManagement: {
///         enabled: true,
///     },
///     forceDestroy: true,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_feature_online_store_beta_bigtable",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     bigtable={
///         "auto_scaling": {
///             "min_node_count": 1,
///             "max_node_count": 2,
///             "cpu_utilization_target": 80,
///         },
///     },
///     embedding_management={
///         "enabled": True,
///     },
///     force_destroy=True)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_feature_online_store_beta_bigtable",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Bigtable = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableArgs
///         {
///             AutoScaling = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs
///             {
///                 MinNodeCount = 1,
///                 MaxNodeCount = 2,
///                 CpuUtilizationTarget = 80,
///             },
///         },
///         EmbeddingManagement = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreEmbeddingManagementArgs
///         {
///             Enabled = true,
///         },
///         ForceDestroy = true,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_online_store_beta_bigtable"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			Bigtable: &vertex.AiFeatureOnlineStoreBigtableArgs{
/// 				AutoScaling: &vertex.AiFeatureOnlineStoreBigtableAutoScalingArgs{
/// 					MinNodeCount:         pulumi.Int(1),
/// 					MaxNodeCount:         pulumi.Int(2),
/// 					CpuUtilizationTarget: pulumi.Int(80),
/// 				},
/// 			},
/// 			EmbeddingManagement: &vertex.AiFeatureOnlineStoreEmbeddingManagementArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreEmbeddingManagementArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_online_store_beta_bigtable")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .bigtable(AiFeatureOnlineStoreBigtableArgs.builder()
///                 .autoScaling(AiFeatureOnlineStoreBigtableAutoScalingArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(2)
///                     .cpuUtilizationTarget(80)
///                     .build())
///                 .build())
///             .embeddingManagement(AiFeatureOnlineStoreEmbeddingManagementArgs.builder()
///                 .enabled(true)
///                 .build())
///             .forceDestroy(true)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_feature_online_store_beta_bigtable
///       labels:
///         foo: bar
///       region: us-central1
///       bigtable:
///         autoScaling:
///           minNodeCount: 1
///           maxNodeCount: 2
///           cpuUtilizationTarget: 80
///       embeddingManagement:
///         enabled: true
///       forceDestroy: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// FeatureOnlineStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FeatureOnlineStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default projects/{{project}}/locations/{{region}}/featureOnlineStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore default {{name}}
/// ```
class AiFeatureOnlineStore extends pulumi.CustomResource {
  /// Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreBigtable?> bigtable;

  /// The timestamp of when the feature online store was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;

  /// The dedicated serving endpoint for this FeatureOnlineStore, which is different from common vertex service endpoint. Only need to be set when you choose Optimized storage type or enable EmbeddingManagement. Will use public endpoint by default.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreDedicatedServingEndpoint>
  dedicatedServingEndpoint;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The settings for embedding management in FeatureOnlineStore. Embedding management can only be set for BigTable. It is enabled by default for optimized storagetype.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `embedding_management` is deprecated. This field is no longer needed anymore and embedding management is automatically enabled when specifying Optimized storage type
  late final pulumi.Output<AiFeatureOnlineStoreEmbeddingManagement>
  embeddingManagement;

  /// If set, both of the online and offline data storage will be secured by this key.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates.
  late final pulumi.Output<String> etag;

  /// If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted.
  late final pulumi.Output<bool?> forceDestroy;

  /// The labels with user-defined metadata to organize your feature online stores.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;

  /// Settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore
  late final pulumi.Output<Map<String, dynamic>?> optimized;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of feature online store. eg us-central1
  late final pulumi.Output<String> region;

  /// The state of the Feature Online Store. See the possible states in [this link](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores#state).
  late final pulumi.Output<String> state;

  /// The timestamp of when the feature online store was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AiFeatureOnlineStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureOnlineStore]. {@macro pulumi_vertex_ai_feature_online_store_ai_feature_online_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureOnlineStore(
    String name, {
    AiFeatureOnlineStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigtable = registerOutput<AiFeatureOnlineStoreBigtable?>('bigtable');
    createTime = registerOutput<String>('createTime');
    dedicatedServingEndpoint =
        registerOutput<AiFeatureOnlineStoreDedicatedServingEndpoint>(
          'dedicatedServingEndpoint',
        );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    embeddingManagement =
        registerOutput<AiFeatureOnlineStoreEmbeddingManagement>(
          'embeddingManagement',
        );
    encryptionSpec = registerOutput<AiFeatureOnlineStoreEncryptionSpec?>(
      'encryptionSpec',
    );
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    optimized = registerOutput<Map<String, dynamic>?>('optimized');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AiFeatureOnlineStore] resource's state with the given [name] and [id].
  static AiFeatureOnlineStore get(
    String name,
    pulumi.Input<String> id, {
    AiFeatureOnlineStoreState? state,
  }) {
    return AiFeatureOnlineStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AiFeatureOnlineStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vertex/aiFeatureOnlineStore:AiFeatureOnlineStore',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigtable = registerOutput<AiFeatureOnlineStoreBigtable?>('bigtable');
    createTime = registerOutput<String>('createTime');
    dedicatedServingEndpoint =
        registerOutput<AiFeatureOnlineStoreDedicatedServingEndpoint>(
          'dedicatedServingEndpoint',
        );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    embeddingManagement =
        registerOutput<AiFeatureOnlineStoreEmbeddingManagement>(
          'embeddingManagement',
        );
    encryptionSpec = registerOutput<AiFeatureOnlineStoreEncryptionSpec?>(
      'encryptionSpec',
    );
    etag = registerOutput<String>('etag');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    optimized = registerOutput<Map<String, dynamic>?>('optimized');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
