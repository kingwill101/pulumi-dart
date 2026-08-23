import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Creates a Google Bigtable instance. For more information see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.clusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigtable/docs)
///
/// ## Example Usage
///
/// ### Simple Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const production_instance = new gcp.bigtable.Instance("production-instance", {
///     name: "tf-instance",
///     clusters: [{
///         clusterId: "tf-instance-cluster",
///         numNodes: 1,
///         storageType: "HDD",
///     }],
///     labels: {
///         "my-label": "prod-label",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// production_instance = gcp.bigtable.Instance("production-instance",
///     name="tf-instance",
///     clusters=[{
///         "cluster_id": "tf-instance-cluster",
///         "num_nodes": 1,
///         "storage_type": "HDD",
///     }],
///     labels={
///         "my-label": "prod-label",
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
///     var production_instance = new Gcp.BigTable.Instance("production-instance", new()
///     {
///         Name = "tf-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "tf-instance-cluster",
///                 NumNodes = 1,
///                 StorageType = "HDD",
///             },
///         },
///         Labels =
///         {
///             { "my-label", "prod-label" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstance(ctx, "production-instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("tf-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("tf-instance-cluster"),
/// 					NumNodes:    pulumi.Int(1),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my-label": pulumi.String("prod-label"),
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
/// resource "gcp_bigtable_instance" "production-instance" {
///   name = "tf-instance"
///   clusters {
///     cluster_id   = "tf-instance-cluster"
///     num_nodes    = 1
///     storage_type = "HDD"
///   }
///   labels = {
///     "my-label" = "prod-label"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
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
///         var production_instance = new Instance("production-instance", InstanceArgs.builder()
///             .name("tf-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("tf-instance-cluster")
///                 .numNodes(1)
///                 .storageType("HDD")
///                 .build())
///             .labels(Map.of("my-label", "prod-label"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   production-instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: tf-instance
///       clusters:
///         - clusterId: tf-instance-cluster
///           numNodes: 1
///           storageType: HDD
///       labels:
///         my-label: prod-label
/// ```
///
///
/// ### Replicated Instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const production_instance = new gcp.bigtable.Instance("production-instance", {
///     name: "tf-instance",
///     clusters: [
///         {
///             clusterId: "tf-instance-cluster1",
///             numNodes: 1,
///             storageType: "HDD",
///             zone: "us-central1-c",
///         },
///         {
///             clusterId: "tf-instance-cluster2",
///             storageType: "HDD",
///             zone: "us-central1-b",
///             autoscalingConfig: {
///                 minNodes: 1,
///                 maxNodes: 3,
///                 cpuTarget: 50,
///             },
///         },
///     ],
///     labels: {
///         "my-label": "prod-label",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// production_instance = gcp.bigtable.Instance("production-instance",
///     name="tf-instance",
///     clusters=[
///         {
///             "cluster_id": "tf-instance-cluster1",
///             "num_nodes": 1,
///             "storage_type": "HDD",
///             "zone": "us-central1-c",
///         },
///         {
///             "cluster_id": "tf-instance-cluster2",
///             "storage_type": "HDD",
///             "zone": "us-central1-b",
///             "autoscaling_config": {
///                 "min_nodes": 1,
///                 "max_nodes": 3,
///                 "cpu_target": 50,
///             },
///         },
///     ],
///     labels={
///         "my-label": "prod-label",
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
///     var production_instance = new Gcp.BigTable.Instance("production-instance", new()
///     {
///         Name = "tf-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "tf-instance-cluster1",
///                 NumNodes = 1,
///                 StorageType = "HDD",
///                 Zone = "us-central1-c",
///             },
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "tf-instance-cluster2",
///                 StorageType = "HDD",
///                 Zone = "us-central1-b",
///                 AutoscalingConfig = new Gcp.BigTable.Inputs.InstanceClusterAutoscalingConfigArgs
///                 {
///                     MinNodes = 1,
///                     MaxNodes = 3,
///                     CpuTarget = 50,
///                 },
///             },
///         },
///         Labels =
///         {
///             { "my-label", "prod-label" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigtable.NewInstance(ctx, "production-instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("tf-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("tf-instance-cluster1"),
/// 					NumNodes:    pulumi.Int(1),
/// 					StorageType: pulumi.String("HDD"),
/// 					Zone:        pulumi.String("us-central1-c"),
/// 				},
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("tf-instance-cluster2"),
/// 					StorageType: pulumi.String("HDD"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					AutoscalingConfig: &bigtable.InstanceClusterAutoscalingConfigArgs{
/// 						MinNodes:  pulumi.Int(1),
/// 						MaxNodes:  pulumi.Int(3),
/// 						CpuTarget: pulumi.Int(50),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my-label": pulumi.String("prod-label"),
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
/// resource "gcp_bigtable_instance" "production-instance" {
///   name = "tf-instance"
///   clusters {
///     cluster_id   = "tf-instance-cluster1"
///     num_nodes    = 1
///     storage_type = "HDD"
///     zone         = "us-central1-c"
///   }
///   clusters {
///     cluster_id   = "tf-instance-cluster2"
///     storage_type = "HDD"
///     zone         = "us-central1-b"
///     autoscaling_config = {
///       min_nodes  = 1
///       max_nodes  = 3
///       cpu_target = 50
///     }
///   }
///   labels = {
///     "my-label" = "prod-label"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterAutoscalingConfigArgs;
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
///         var production_instance = new Instance("production-instance", InstanceArgs.builder()
///             .name("tf-instance")
///             .clusters(
///                 InstanceClusterArgs.builder()
///                     .clusterId("tf-instance-cluster1")
///                     .numNodes(1)
///                     .storageType("HDD")
///                     .zone("us-central1-c")
///                     .build(),
///                 InstanceClusterArgs.builder()
///                     .clusterId("tf-instance-cluster2")
///                     .storageType("HDD")
///                     .zone("us-central1-b")
///                     .autoscalingConfig(InstanceClusterAutoscalingConfigArgs.builder()
///                         .minNodes(1)
///                         .maxNodes(3)
///                         .cpuTarget(50)
///                         .build())
///                     .build())
///             .labels(Map.of("my-label", "prod-label"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   production-instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: tf-instance
///       clusters:
///         - clusterId: tf-instance-cluster1
///           numNodes: 1
///           storageType: HDD
///           zone: us-central1-c
///         - clusterId: tf-instance-cluster2
///           storageType: HDD
///           zone: us-central1-b
///           autoscalingConfig:
///             minNodes: 1
///             maxNodes: 3
///             cpuTarget: 50
///       labels:
///         my-label: prod-label
/// ```
///
///
/// ## Import
///
/// Bigtable Instances can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Bigtable Instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/instance:Instance default projects/{{project}}/instances/{{name}}
/// $ pulumi import gcp:bigtable/instance:Instance default {{project}}/{{name}}
/// $ pulumi import gcp:bigtable/instance:Instance default {{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// A block of cluster configuration options. This can be specified at least once, and up
  /// to as many as possible within 8 cloud regions. Removing the field entirely from the config will cause the provider
  /// to default to the backend value. See structure below.
  ///
  /// -----
  late final pulumi.Output<List<Map<String, dynamic>>> clusters;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// in the statefile, a `pulumi destroy` or `pulumi up` that would delete the instance will fail.
  late final pulumi.Output<bool?> deletionProtection;
  /// The human-readable display name of the Bigtable instance. Defaults to the instance `name`.
  late final pulumi.Output<String> displayName;
  /// The edition of the Bigtable instance. One of "ENTERPRISE" or "ENTERPRISE_PLUS". Defaults to "ENTERPRISE". Details can be found at the [Cloud Bigtable editions page](https://docs.cloud.google.com/bigtable/docs/editions-overview).
  ///
  /// -----
  late final pulumi.Output<String?> edition;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Deleting a BigTable instance can be blocked if any backups are present in the instance. When `forceDestroy` is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  late final pulumi.Output<bool?> forceDestroy;
  /// The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// It is recommended to leave this field unspecified since the distinction between `"DEVELOPMENT"` and `"PRODUCTION"` instances is going away,
  /// and all instances will become `"PRODUCTION"` instances. This means that new and existing `"DEVELOPMENT"` instances will be converted to
  /// `"PRODUCTION"` instances. It is recommended for users to use `"PRODUCTION"` instances in any case, since a 1-node `"PRODUCTION"` instance
  /// is functionally identical to a `"DEVELOPMENT"` instance, but without the accompanying restrictions.
  late final pulumi.Output<String?> instanceType;
  /// A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// A set of key/value label pairs to assign to the resource. Tags must follow the requirements at [create and manage tags](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing).
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_bigtable_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusters = registerOutput<List<Map<String, dynamic>>>('clusters');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    edition = registerOutput<String?>('edition');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    instanceType = registerOutput<String?>('instanceType');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusters = registerOutput<List<Map<String, dynamic>>>('clusters');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String>('displayName');
    edition = registerOutput<String?>('edition');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    instanceType = registerOutput<String?>('instanceType');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
