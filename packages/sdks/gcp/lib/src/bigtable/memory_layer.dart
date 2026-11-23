import 'package:pulumi/pulumi.dart' as pulumi;
import 'memory_layer_args.dart';
import 'memory_layer_memory_config.dart';
import 'memory_layer_state.dart';

/// Enables and manages the memory layer for a Cloud Bigtable cluster.
///
/// Creation of this resource enables the memory layer on the specified cluster (`ENTERPRISE_PLUS` and `SSD` storage type required). Destruction of this resource disables the memory layer on the cluster.
///
///
/// To get more information about MemoryLayer, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/MemoryLayer)
///
///
/// ## Example Usage
///
/// ### Bigtable Memory Layer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     instanceType: "PRODUCTION",
///     edition: "ENTERPRISE_PLUS",
///     clusters: [{
///         clusterId: "bt-cluster",
///         zone: "us-central1-b",
///         numNodes: 1,
///         storageType: "SSD",
///     }],
///     deletionProtection: false,
/// });
/// const memoryLayer = new gcp.bigtable.MemoryLayer("memory_layer", {
///     instance: instance.name,
///     cluster: instance.clusters[0].clusterId,
/// });
/// const ap = new gcp.bigtable.AppProfile("ap", {
///     instance: instance.name,
///     appProfileId: "bt-profile",
///     singleClusterRouting: {
///         clusterId: memoryLayer.cluster,
///         allowTransactionalWrites: true,
///     },
///     standardIsolation: {
///         priority: "PRIORITY_LOW",
///         memoryConfig: {},
///     },
///     ignoreWarnings: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     instance_type="PRODUCTION",
///     edition="ENTERPRISE_PLUS",
///     clusters=[{
///         "cluster_id": "bt-cluster",
///         "zone": "us-central1-b",
///         "num_nodes": 1,
///         "storage_type": "SSD",
///     }],
///     deletion_protection=False)
/// memory_layer = gcp.bigtable.MemoryLayer("memory_layer",
///     instance=instance.name,
///     cluster=instance.clusters[0].cluster_id)
/// ap = gcp.bigtable.AppProfile("ap",
///     instance=instance.name,
///     app_profile_id="bt-profile",
///     single_cluster_routing={
///         "cluster_id": memory_layer.cluster,
///         "allow_transactional_writes": True,
///     },
///     standard_isolation={
///         "priority": "PRIORITY_LOW",
///         "memory_config": {},
///     },
///     ignore_warnings=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         InstanceType = "PRODUCTION",
///         Edition = "ENTERPRISE_PLUS",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "bt-cluster",
///                 Zone = "us-central1-b",
///                 NumNodes = 1,
///                 StorageType = "SSD",
///             },
///         },
///         DeletionProtection = false,
///     });
///
///     var memoryLayer = new Gcp.BigTable.MemoryLayer("memory_layer", new()
///     {
///         Instance = instance.Name,
///         Cluster = instance.Clusters.Apply(clusters => clusters[0].ClusterId),
///     });
///
///     var ap = new Gcp.BigTable.AppProfile("ap", new()
///     {
///         Instance = instance.Name,
///         AppProfileId = "bt-profile",
///         SingleClusterRouting = new Gcp.BigTable.Inputs.AppProfileSingleClusterRoutingArgs
///         {
///             ClusterId = memoryLayer.Cluster,
///             AllowTransactionalWrites = true,
///         },
///         StandardIsolation = new Gcp.BigTable.Inputs.AppProfileStandardIsolationArgs
///         {
///             Priority = "PRIORITY_LOW",
///             MemoryConfig = null,
///         },
///         IgnoreWarnings = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name:         pulumi.String("bt-instance"),
/// 			InstanceType: pulumi.String("PRODUCTION"),
/// 			Edition:      pulumi.String("ENTERPRISE_PLUS"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("bt-cluster"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(1),
/// 					StorageType: pulumi.String("SSD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		memoryLayer, err := bigtable.NewMemoryLayer(ctx, "memory_layer", &bigtable.MemoryLayerArgs{
/// 			Instance: instance.Name,
/// 			Cluster: instance.Clusters.ApplyT(func(clusters []bigtable.InstanceCluster) (*string, error) {
/// 				return clusters[0].ClusterId, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAppProfile(ctx, "ap", &bigtable.AppProfileArgs{
/// 			Instance:     instance.Name,
/// 			AppProfileId: pulumi.String("bt-profile"),
/// 			SingleClusterRouting: &bigtable.AppProfileSingleClusterRoutingArgs{
/// 				ClusterId:                memoryLayer.Cluster,
/// 				AllowTransactionalWrites: pulumi.Bool(true),
/// 			},
/// 			StandardIsolation: &bigtable.AppProfileStandardIsolationArgs{
/// 				Priority:     pulumi.String("PRIORITY_LOW"),
/// 				MemoryConfig: &bigtable.AppProfileStandardIsolationMemoryConfigArgs{},
/// 			},
/// 			IgnoreWarnings: pulumi.Bool(true),
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
/// resource "gcp_bigtable_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "bt-instance"
///   instance_type = "PRODUCTION"
///   edition       = "ENTERPRISE_PLUS"
///   clusters {
///     cluster_id   = "bt-cluster"
///     zone         = "us-central1-b"
///     num_nodes    = 1
///     storage_type = "SSD"
///   }
///   deletion_protection = false
/// }
/// resource "gcp_bigtable_memory_layer" "memory_layer" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   instance = gcp_bigtable_instance.instance.name
///   cluster  = gcp_bigtable_instance.instance.clusters[0].cluster_id
/// }
/// resource "gcp_bigtable_app_profile" "ap" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   instance       = gcp_bigtable_instance.instance.name
///   app_profile_id = "bt-profile"
///   single_cluster_routing = {
///     cluster_id                 = gcp_bigtable_memory_layer.memory_layer.cluster
///     allow_transactional_writes = true
///   }
///   standard_isolation = {
///     priority      = "PRIORITY_LOW"
///     memory_config = {}
///   }
///   ignore_warnings = true
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
/// import com.pulumi.gcp.bigtable.MemoryLayer;
/// import com.pulumi.gcp.bigtable.MemoryLayerArgs;
/// import com.pulumi.gcp.bigtable.AppProfile;
/// import com.pulumi.gcp.bigtable.AppProfileArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileSingleClusterRoutingArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileStandardIsolationArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileStandardIsolationMemoryConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .instanceType("PRODUCTION")
///             .edition("ENTERPRISE_PLUS")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("bt-cluster")
///                 .zone("us-central1-b")
///                 .numNodes(1)
///                 .storageType("SSD")
///                 .build())
///             .deletionProtection(false)
///             .build());
///
///         var memoryLayer = new MemoryLayer("memoryLayer", MemoryLayerArgs.builder()
///             .instance(instance.name())
///             .cluster(instance.clusters().applyValue(_clusters -> _clusters.get(0).clusterId()))
///             .build());
///
///         var ap = new AppProfile("ap", AppProfileArgs.builder()
///             .instance(instance.name())
///             .appProfileId("bt-profile")
///             .singleClusterRouting(AppProfileSingleClusterRoutingArgs.builder()
///                 .clusterId(memoryLayer.cluster())
///                 .allowTransactionalWrites(true)
///                 .build())
///             .standardIsolation(AppProfileStandardIsolationArgs.builder()
///                 .priority("PRIORITY_LOW")
///                 .memoryConfig(AppProfileStandardIsolationMemoryConfigArgs.builder()
///                     .build())
///                 .build())
///             .ignoreWarnings(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       instanceType: PRODUCTION
///       edition: ENTERPRISE_PLUS
///       clusters:
///         - clusterId: bt-cluster
///           zone: us-central1-b
///           numNodes: 1
///           storageType: SSD
///       deletionProtection: false
///   memoryLayer:
///     type: gcp:bigtable:MemoryLayer
///     name: memory_layer
///     properties:
///       instance: ${instance.name}
///       cluster: ${instance.clusters[0].clusterId}
///   ap:
///     type: gcp:bigtable:AppProfile
///     properties:
///       instance: ${instance.name}
///       appProfileId: bt-profile
///       singleClusterRouting:
///         clusterId: ${memoryLayer.cluster}
///         allowTransactionalWrites: true
///       standardIsolation:
///         priority: PRIORITY_LOW
///         memoryConfig: {}
///       ignoreWarnings: true
/// ```
///
///
/// ## Import
///
/// MemoryLayer can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/clusters/{{cluster}}/memoryLayer`
/// * `{{project}}/{{instance}}/{{cluster}}`
/// * `{{instance}}/{{cluster}}`
///
///
/// When using the `pulumi import` command, MemoryLayer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/memoryLayer:MemoryLayer default projects/{{project}}/instances/{{instance}}/clusters/{{cluster}}/memoryLayer
/// $ pulumi import gcp:bigtable/memoryLayer:MemoryLayer default {{project}}/{{instance}}/{{cluster}}
/// $ pulumi import gcp:bigtable/memoryLayer:MemoryLayer default {{instance}}/{{cluster}}
/// ```
class MemoryLayer extends pulumi.CustomResource {
  /// The ID of the cluster to enable the memory layer on.
  late final pulumi.Output<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// System-generated token used by the server to ensure that the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// The name of the instance to enable the memory layer within.
  late final pulumi.Output<String> instance;
  /// The memory configuration for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<MemoryLayerMemoryConfig>> memoryConfigs;
  /// The unique name of the memory layer. Values are of the form `projects/&lt;project&gt;/instances/&lt;instance&gt;/clusters/&lt;cluster&gt;/memoryLayer`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current state of the memory layer.
  late final pulumi.Output<String> state;

  /// Creates a new [MemoryLayer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MemoryLayer]. {@macro pulumi_bigtable_memory_layer_memory_layer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MemoryLayer(
    String name, {
    MemoryLayerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/memoryLayer:MemoryLayer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    memoryConfigs = registerOutput<List<MemoryLayerMemoryConfig>>('memoryConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MemoryLayerMemoryConfig>(guardedValue, (value) => MemoryLayerMemoryConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [MemoryLayer] resource's state with the given [name] and [id].
  static MemoryLayer get(
    String name,
    pulumi.Input<String> id, {
    MemoryLayerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MemoryLayer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MemoryLayer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/memoryLayer:MemoryLayer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    memoryConfigs = registerOutput<List<MemoryLayerMemoryConfig>>('memoryConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MemoryLayerMemoryConfig>(guardedValue, (value) => MemoryLayerMemoryConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [MemoryLayer] resource.
  MemoryLayer.reference(String urn)
    : super(
        'gcp:bigtable/memoryLayer:MemoryLayer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    memoryConfigs = registerOutput<List<MemoryLayerMemoryConfig>>('memoryConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MemoryLayerMemoryConfig>(guardedValue, (value) => MemoryLayerMemoryConfig.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
  }
}
