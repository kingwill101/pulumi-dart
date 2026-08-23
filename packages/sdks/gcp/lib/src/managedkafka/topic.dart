import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';

/// A Managed Service for Apache Kafka topic. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Topic Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cluster = new gcp.managedkafka.Cluster("cluster", {
///     clusterId: "my-cluster",
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "3",
///         memoryBytes: "3221225472",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 subnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///             }],
///         },
///     },
/// });
/// const example = new gcp.managedkafka.Topic("example", {
///     topicId: "my-topic",
///     cluster: cluster.clusterId,
///     location: "us-central1",
///     partitionCount: 2,
///     replicationFactor: 3,
///     configs: {
///         "cleanup.policy": "compact",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// cluster = gcp.managedkafka.Cluster("cluster",
///     cluster_id="my-cluster",
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "3",
///         "memory_bytes": "3221225472",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///             }],
///         },
///     })
/// example = gcp.managedkafka.Topic("example",
///     topic_id="my-topic",
///     cluster=cluster.cluster_id,
///     location="us-central1",
///     partition_count=2,
///     replication_factor=3,
///     configs={
///         "cleanup.policy": "compact",
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
///     var cluster = new Gcp.ManagedKafka.Cluster("cluster", new()
///     {
///         ClusterId = "my-cluster",
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ClusterCapacityConfigArgs
///         {
///             VcpuCount = "3",
///             MemoryBytes = "3221225472",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         Subnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example = new Gcp.ManagedKafka.Topic("example", new()
///     {
///         TopicId = "my-topic",
///         Cluster = cluster.ClusterId,
///         Location = "us-central1",
///         PartitionCount = 2,
///         ReplicationFactor = 3,
///         Configs =
///         {
///             { "cleanup.policy", "compact" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := managedkafka.NewCluster(ctx, "cluster", &managedkafka.ClusterArgs{
/// 			ClusterId: pulumi.String("my-cluster"),
/// 			Location:  pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("3"),
/// 				MemoryBytes: pulumi.String("3221225472"),
/// 			},
/// 			GcpConfig: &managedkafka.ClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							Subnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewTopic(ctx, "example", &managedkafka.TopicArgs{
/// 			TopicId:           pulumi.String("my-topic"),
/// 			Cluster:           cluster.ClusterId,
/// 			Location:          pulumi.String("us-central1"),
/// 			PartitionCount:    pulumi.Int(2),
/// 			ReplicationFactor: pulumi.Int(3),
/// 			Configs: pulumi.StringMap{
/// 				"cleanup.policy": pulumi.String("compact"),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "cluster" {
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         "subnet" ="projects/${data.gcp_organizations_getproject.project.number}/regions/us-central1/subnetworks/default"
///       }]
///     }
///   }
/// }
/// resource "gcp_managedkafka_topic" "example" {
///   topic_id           = "my-topic"
///   cluster            = gcp_managedkafka_cluster.cluster.cluster_id
///   location           = "us-central1"
///   partition_count    = 2
///   replication_factor = 3
///   configs = {
///     "cleanup.policy" = "compact"
///   }
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigNetworkConfigArgs;
/// import com.pulumi.gcp.managedkafka.Topic;
/// import com.pulumi.gcp.managedkafka.TopicArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterId("my-cluster")
///             .location("us-central1")
///             .capacityConfig(ClusterCapacityConfigArgs.builder()
///                 .vcpuCount("3")
///                 .memoryBytes("3221225472")
///                 .build())
///             .gcpConfig(ClusterGcpConfigArgs.builder()
///                 .accessConfig(ClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .subnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var example = new Topic("example", TopicArgs.builder()
///             .topicId("my-topic")
///             .cluster(cluster.clusterId())
///             .location("us-central1")
///             .partitionCount(2)
///             .replicationFactor(3)
///             .configs(Map.of("cleanup.policy", "compact"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster:
///     type: gcp:managedkafka:Cluster
///     properties:
///       clusterId: my-cluster
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 3
///         memoryBytes: 3.221225472e+09
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - subnet: projects/${project.number}/regions/us-central1/subnetworks/default
///   example:
///     type: gcp:managedkafka:Topic
///     properties:
///       topicId: my-topic
///       cluster: ${cluster.clusterId}
///       location: us-central1
///       partitionCount: 2
///       replicationFactor: 3
///       configs:
///         cleanup.policy: compact
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
/// Topic can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/topics/{{topic_id}}`
/// * `{{project}}/{{location}}/{{cluster}}/{{topic_id}}`
/// * `{{location}}/{{cluster}}/{{topic_id}}`
///
///
/// When using the `pulumi import` command, Topic can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/topic:Topic default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/topics/{{topic_id}}
/// $ pulumi import gcp:managedkafka/topic:Topic default {{project}}/{{location}}/{{cluster}}/{{topic_id}}
/// $ pulumi import gcp:managedkafka/topic:Topic default {{location}}/{{cluster}}/{{topic_id}}
/// ```
class Topic extends pulumi.CustomResource {
  /// The cluster name.
  late final pulumi.Output<String> cluster;
  /// Configuration for the topic that are overridden from the cluster defaults. The key of the map is a Kafka topic property name, for example: `cleanup.policy=compact`, `compression.type=producer`.
  late final pulumi.Output<Map<String, String>?> configs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;
  /// The name of the topic. The `topic` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/topics/TOPIC_ID`.
  late final pulumi.Output<String> name;
  /// The number of partitions in a topic. You can increase the partition count for a topic, but you cannot decrease it. Increasing partitions for a topic that uses a key might change how messages are distributed.
  late final pulumi.Output<int?> partitionCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The number of replicas of each partition. A replication factor of 3 is recommended for high availability.
  late final pulumi.Output<int> replicationFactor;
  /// The ID to use for the topic, which will become the final component of the topic's name. This value is structured like: `my-topic-name`.
  late final pulumi.Output<String> topicId;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_managedkafka_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    configs = registerOutput<Map<String, String>?>('configs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int?>('partitionCount');
    project = registerOutput<String>('project');
    replicationFactor = registerOutput<int>('replicationFactor');
    topicId = registerOutput<String>('topicId');
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(
    String name,
    pulumi.Input<String> id, {
    TopicState? state,
  }) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    configs = registerOutput<Map<String, String>?>('configs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int?>('partitionCount');
    project = registerOutput<String>('project');
    replicationFactor = registerOutput<int>('replicationFactor');
    topicId = registerOutput<String>('topicId');
  }
}
