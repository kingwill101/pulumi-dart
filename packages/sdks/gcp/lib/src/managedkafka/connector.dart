import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_state.dart';
import 'connector_task_restart_policy.dart';

/// A Managed Service for Kafka Connect Connectors.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Connector Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const mkcSecondarySubnet = new gcp.compute.Subnetwork("mkc_secondary_subnet", {
///     project: project.then(project => project.projectId),
///     name: "my-secondary-subnetwork-00",
///     ipCidrRange: "10.5.0.0/16",
///     region: "us-central1",
///     network: "default",
/// });
/// const cpsTopic = new gcp.pubsub.Topic("cps_topic", {
///     project: project.then(project => project.projectId),
///     name: "my-cps-topic",
///     messageRetentionDuration: "86600s",
/// });
/// const gmkCluster = new gcp.managedkafka.Cluster("gmk_cluster", {
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
/// const gmkTopic = new gcp.managedkafka.Topic("gmk_topic", {
///     topicId: "my-topic",
///     cluster: gmkCluster.clusterId,
///     location: "us-central1",
///     partitionCount: 2,
///     replicationFactor: 3,
/// });
/// const mkcCluster = new gcp.managedkafka.ConnectCluster("mkc_cluster", {
///     connectClusterId: "my-connect-cluster",
///     kafkaCluster: pulumi.all([project, gmkCluster.clusterId]).apply(([project, clusterId]) => `projects/${project.projectId}/locations/us-central1/clusters/${clusterId}`),
///     location: "us-central1",
///     capacityConfig: {
///         vcpuCount: "12",
///         memoryBytes: "21474836480",
///     },
///     gcpConfig: {
///         accessConfig: {
///             networkConfigs: [{
///                 primarySubnet: project.then(project => `projects/${project.number}/regions/us-central1/subnetworks/default`),
///                 additionalSubnets: [mkcSecondarySubnet.id],
///                 dnsDomainNames: [Promise.all([gmkCluster.clusterId, project]).then(([clusterId, project]) => `${clusterId}.us-central1.managedkafka.${project.projectId}.cloud.goog`)],
///             }],
///         },
///     },
///     labels: {
///         key: "value",
///     },
/// });
/// const example = new gcp.managedkafka.Connector("example", {
///     connectorId: "my-connector",
///     connectCluster: mkcCluster.connectClusterId,
///     location: "us-central1",
///     configs: {
///         "connector.class": "com.google.pubsub.kafka.sink.CloudPubSubSinkConnector",
///         name: "my-connector",
///         "tasks.max": "3",
///         topics: gmkTopic.topicId,
///         "cps.topic": cpsTopic.name,
///         "cps.project": project.then(project => project.projectId),
///         "value.converter": "org.apache.kafka.connect.storage.StringConverter",
///         "key.converter": "org.apache.kafka.connect.storage.StringConverter",
///     },
///     taskRestartPolicy: {
///         minimumBackoff: "60s",
///         maximumBackoff: "1800s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// mkc_secondary_subnet = gcp.compute.Subnetwork("mkc_secondary_subnet",
///     project=project.project_id,
///     name="my-secondary-subnetwork-00",
///     ip_cidr_range="10.5.0.0/16",
///     region="us-central1",
///     network="default")
/// cps_topic = gcp.pubsub.Topic("cps_topic",
///     project=project.project_id,
///     name="my-cps-topic",
///     message_retention_duration="86600s")
/// gmk_cluster = gcp.managedkafka.Cluster("gmk_cluster",
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
/// gmk_topic = gcp.managedkafka.Topic("gmk_topic",
///     topic_id="my-topic",
///     cluster=gmk_cluster.cluster_id,
///     location="us-central1",
///     partition_count=2,
///     replication_factor=3)
/// mkc_cluster = gcp.managedkafka.ConnectCluster("mkc_cluster",
///     connect_cluster_id="my-connect-cluster",
///     kafka_cluster=gmk_cluster.cluster_id.apply(lambda cluster_id: f"projects/{project.project_id}/locations/us-central1/clusters/{cluster_id}"),
///     location="us-central1",
///     capacity_config={
///         "vcpu_count": "12",
///         "memory_bytes": "21474836480",
///     },
///     gcp_config={
///         "access_config": {
///             "network_configs": [{
///                 "primary_subnet": f"projects/{project.number}/regions/us-central1/subnetworks/default",
///                 "additional_subnets": [mkc_secondary_subnet.id],
///                 "dns_domain_names": [gmk_cluster.cluster_id.apply(lambda cluster_id: f"{cluster_id}.us-central1.managedkafka.{project.project_id}.cloud.goog")],
///             }],
///         },
///     },
///     labels={
///         "key": "value",
///     })
/// example = gcp.managedkafka.Connector("example",
///     connector_id="my-connector",
///     connect_cluster=mkc_cluster.connect_cluster_id,
///     location="us-central1",
///     configs={
///         "connector.class": "com.google.pubsub.kafka.sink.CloudPubSubSinkConnector",
///         "name": "my-connector",
///         "tasks.max": "3",
///         "topics": gmk_topic.topic_id,
///         "cps.topic": cps_topic.name,
///         "cps.project": project.project_id,
///         "value.converter": "org.apache.kafka.connect.storage.StringConverter",
///         "key.converter": "org.apache.kafka.connect.storage.StringConverter",
///     },
///     task_restart_policy={
///         "minimum_backoff": "60s",
///         "maximum_backoff": "1800s",
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
///     var mkcSecondarySubnet = new Gcp.Compute.Subnetwork("mkc_secondary_subnet", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Name = "my-secondary-subnetwork-00",
///         IpCidrRange = "10.5.0.0/16",
///         Region = "us-central1",
///         Network = "default",
///     });
///
///     var cpsTopic = new Gcp.PubSub.Topic("cps_topic", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Name = "my-cps-topic",
///         MessageRetentionDuration = "86600s",
///     });
///
///     var gmkCluster = new Gcp.ManagedKafka.Cluster("gmk_cluster", new()
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
///     var gmkTopic = new Gcp.ManagedKafka.Topic("gmk_topic", new()
///     {
///         TopicId = "my-topic",
///         Cluster = gmkCluster.ClusterId,
///         Location = "us-central1",
///         PartitionCount = 2,
///         ReplicationFactor = 3,
///     });
///
///     var mkcCluster = new Gcp.ManagedKafka.ConnectCluster("mkc_cluster", new()
///     {
///         ConnectClusterId = "my-connect-cluster",
///         KafkaCluster = Output.Tuple(project, gmkCluster.ClusterId).Apply(values =>
///         {
///             var project = values.Item1;
///             var clusterId = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-central1/clusters/{clusterId}";
///         }),
///         Location = "us-central1",
///         CapacityConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterCapacityConfigArgs
///         {
///             VcpuCount = "12",
///             MemoryBytes = "21474836480",
///         },
///         GcpConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigArgs
///         {
///             AccessConfig = new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigAccessConfigArgs
///             {
///                 NetworkConfigs = new[]
///                 {
///                     new Gcp.ManagedKafka.Inputs.ConnectClusterGcpConfigAccessConfigNetworkConfigArgs
///                     {
///                         PrimarySubnet = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/default",
///                         AdditionalSubnets = new[]
///                         {
///                             mkcSecondarySubnet.Id,
///                         },
///                         DnsDomainNames = new[]
///                         {
///                             Output.Tuple(gmkCluster.ClusterId, project).Apply(values =>
///                             {
///                                 var clusterId = values.Item1;
///                                 var project = values.Item2;
///                                 return $"{clusterId}.us-central1.managedkafka.{project.Apply(getProjectResult => getProjectResult.ProjectId)}.cloud.goog";
///                             }),
///                         },
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
///     var example = new Gcp.ManagedKafka.Connector("example", new()
///     {
///         ConnectorId = "my-connector",
///         ConnectCluster = mkcCluster.ConnectClusterId,
///         Location = "us-central1",
///         Configs =
///         {
///             { "connector.class", "com.google.pubsub.kafka.sink.CloudPubSubSinkConnector" },
///             { "name", "my-connector" },
///             { "tasks.max", "3" },
///             { "topics", gmkTopic.TopicId },
///             { "cps.topic", cpsTopic.Name },
///             { "cps.project", project.Apply(getProjectResult => getProjectResult.ProjectId) },
///             { "value.converter", "org.apache.kafka.connect.storage.StringConverter" },
///             { "key.converter", "org.apache.kafka.connect.storage.StringConverter" },
///         },
///         TaskRestartPolicy = new Gcp.ManagedKafka.Inputs.ConnectorTaskRestartPolicyArgs
///         {
///             MinimumBackoff = "60s",
///             MaximumBackoff = "1800s",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mkcSecondarySubnet, err := compute.NewSubnetwork(ctx, "mkc_secondary_subnet", &compute.SubnetworkArgs{
/// 			Project:     pulumi.String(project.ProjectId),
/// 			Name:        pulumi.String("my-secondary-subnetwork-00"),
/// 			IpCidrRange: pulumi.String("10.5.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cpsTopic, err := pubsub.NewTopic(ctx, "cps_topic", &pubsub.TopicArgs{
/// 			Project:                  pulumi.String(project.ProjectId),
/// 			Name:                     pulumi.String("my-cps-topic"),
/// 			MessageRetentionDuration: pulumi.String("86600s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gmkCluster, err := managedkafka.NewCluster(ctx, "gmk_cluster", &managedkafka.ClusterArgs{
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
/// 		gmkTopic, err := managedkafka.NewTopic(ctx, "gmk_topic", &managedkafka.TopicArgs{
/// 			TopicId:           pulumi.String("my-topic"),
/// 			Cluster:           gmkCluster.ClusterId,
/// 			Location:          pulumi.String("us-central1"),
/// 			PartitionCount:    pulumi.Int(2),
/// 			ReplicationFactor: pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mkcCluster, err := managedkafka.NewConnectCluster(ctx, "mkc_cluster", &managedkafka.ConnectClusterArgs{
/// 			ConnectClusterId: pulumi.String("my-connect-cluster"),
/// 			KafkaCluster: gmkCluster.ClusterId.ApplyT(func(clusterId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/us-central1/clusters/%v", project.ProjectId, clusterId), nil
/// 			}).(pulumi.StringOutput),
/// 			Location: pulumi.String("us-central1"),
/// 			CapacityConfig: &managedkafka.ConnectClusterCapacityConfigArgs{
/// 				VcpuCount:   pulumi.String("12"),
/// 				MemoryBytes: pulumi.String("21474836480"),
/// 			},
/// 			GcpConfig: &managedkafka.ConnectClusterGcpConfigArgs{
/// 				AccessConfig: &managedkafka.ConnectClusterGcpConfigAccessConfigArgs{
/// 					NetworkConfigs: managedkafka.ConnectClusterGcpConfigAccessConfigNetworkConfigArray{
/// 						&managedkafka.ConnectClusterGcpConfigAccessConfigNetworkConfigArgs{
/// 							PrimarySubnet: pulumi.Sprintf("projects/%v/regions/us-central1/subnetworks/default", project.Number),
/// 							AdditionalSubnets: pulumi.StringArray{
/// 								mkcSecondarySubnet.ID(),
/// 							},
/// 							DnsDomainNames: pulumi.StringArray{
/// 								gmkCluster.ClusterId.ApplyT(func(clusterId string) (string, error) {
/// 									return fmt.Sprintf("%v.us-central1.managedkafka.%v.cloud.goog", clusterId, project.ProjectId), nil
/// 								}).(pulumi.StringOutput),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = managedkafka.NewConnector(ctx, "example", &managedkafka.ConnectorArgs{
/// 			ConnectorId:    pulumi.String("my-connector"),
/// 			ConnectCluster: mkcCluster.ConnectClusterId,
/// 			Location:       pulumi.String("us-central1"),
/// 			Configs: pulumi.StringMap{
/// 				"connector.class": pulumi.String("com.google.pubsub.kafka.sink.CloudPubSubSinkConnector"),
/// 				"name":            pulumi.String("my-connector"),
/// 				"tasks.max":       pulumi.String("3"),
/// 				"topics":          gmkTopic.TopicId,
/// 				"cps.topic":       cpsTopic.Name,
/// 				"cps.project":     pulumi.String(project.ProjectId),
/// 				"value.converter": pulumi.String("org.apache.kafka.connect.storage.StringConverter"),
/// 				"key.converter":   pulumi.String("org.apache.kafka.connect.storage.StringConverter"),
/// 			},
/// 			TaskRestartPolicy: &managedkafka.ConnectorTaskRestartPolicyArgs{
/// 				MinimumBackoff: pulumi.String("60s"),
/// 				MaximumBackoff: pulumi.String("1800s"),
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.ConnectCluster;
/// import com.pulumi.gcp.managedkafka.ConnectClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.Connector;
/// import com.pulumi.gcp.managedkafka.ConnectorArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ConnectorTaskRestartPolicyArgs;
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
///         var mkcSecondarySubnet = new Subnetwork("mkcSecondarySubnet", SubnetworkArgs.builder()
///             .project(project.projectId())
///             .name("my-secondary-subnetwork-00")
///             .ipCidrRange("10.5.0.0/16")
///             .region("us-central1")
///             .network("default")
///             .build());
///
///         var cpsTopic = new com.pulumi.gcp.pubsub.Topic("cpsTopic", com.pulumi.gcp.pubsub.TopicArgs.builder()
///             .project(project.projectId())
///             .name("my-cps-topic")
///             .messageRetentionDuration("86600s")
///             .build());
///
///         var gmkCluster = new Cluster("gmkCluster", ClusterArgs.builder()
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
///         var gmkTopic = new com.pulumi.gcp.managedkafka.Topic("gmkTopic", com.pulumi.gcp.managedkafka.TopicArgs.builder()
///             .topicId("my-topic")
///             .cluster(gmkCluster.clusterId())
///             .location("us-central1")
///             .partitionCount(2)
///             .replicationFactor(3)
///             .build());
///
///         var mkcCluster = new ConnectCluster("mkcCluster", ConnectClusterArgs.builder()
///             .connectClusterId("my-connect-cluster")
///             .kafkaCluster(gmkCluster.clusterId().applyValue(_clusterId -> String.format("projects/%s/locations/us-central1/clusters/%s", project.projectId(),_clusterId)))
///             .location("us-central1")
///             .capacityConfig(ConnectClusterCapacityConfigArgs.builder()
///                 .vcpuCount("12")
///                 .memoryBytes("21474836480")
///                 .build())
///             .gcpConfig(ConnectClusterGcpConfigArgs.builder()
///                 .accessConfig(ConnectClusterGcpConfigAccessConfigArgs.builder()
///                     .networkConfigs(ConnectClusterGcpConfigAccessConfigNetworkConfigArgs.builder()
///                         .primarySubnet(String.format("projects/%s/regions/us-central1/subnetworks/default", project.number()))
///                         .additionalSubnets(mkcSecondarySubnet.id())
///                         .dnsDomainNames(gmkCluster.clusterId().applyValue(_clusterId -> String.format("%s.us-central1.managedkafka.%s.cloud.goog", _clusterId,project.projectId())))
///                         .build())
///                     .build())
///                 .build())
///             .labels(Map.of("key", "value"))
///             .build());
///
///         var example = new Connector("example", ConnectorArgs.builder()
///             .connectorId("my-connector")
///             .connectCluster(mkcCluster.connectClusterId())
///             .location("us-central1")
///             .configs(Map.ofEntries(
///                 Map.entry("connector.class", "com.google.pubsub.kafka.sink.CloudPubSubSinkConnector"),
///                 Map.entry("name", "my-connector"),
///                 Map.entry("tasks.max", "3"),
///                 Map.entry("topics", gmkTopic.topicId()),
///                 Map.entry("cps.topic", cpsTopic.name()),
///                 Map.entry("cps.project", project.projectId()),
///                 Map.entry("value.converter", "org.apache.kafka.connect.storage.StringConverter"),
///                 Map.entry("key.converter", "org.apache.kafka.connect.storage.StringConverter")
///             ))
///             .taskRestartPolicy(ConnectorTaskRestartPolicyArgs.builder()
///                 .minimumBackoff("60s")
///                 .maximumBackoff("1800s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mkcSecondarySubnet:
///     type: gcp:compute:Subnetwork
///     name: mkc_secondary_subnet
///     properties:
///       project: ${project.projectId}
///       name: my-secondary-subnetwork-00
///       ipCidrRange: 10.5.0.0/16
///       region: us-central1
///       network: default
///   cpsTopic:
///     type: gcp:pubsub:Topic
///     name: cps_topic
///     properties:
///       project: ${project.projectId}
///       name: my-cps-topic
///       messageRetentionDuration: 86600s
///   gmkCluster:
///     type: gcp:managedkafka:Cluster
///     name: gmk_cluster
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
///   gmkTopic:
///     type: gcp:managedkafka:Topic
///     name: gmk_topic
///     properties:
///       topicId: my-topic
///       cluster: ${gmkCluster.clusterId}
///       location: us-central1
///       partitionCount: 2
///       replicationFactor: 3
///   mkcCluster:
///     type: gcp:managedkafka:ConnectCluster
///     name: mkc_cluster
///     properties:
///       connectClusterId: my-connect-cluster
///       kafkaCluster: projects/${project.projectId}/locations/us-central1/clusters/${gmkCluster.clusterId}
///       location: us-central1
///       capacityConfig:
///         vcpuCount: 12
///         memoryBytes: 2.147483648e+10
///       gcpConfig:
///         accessConfig:
///           networkConfigs:
///             - primarySubnet: projects/${project.number}/regions/us-central1/subnetworks/default
///               additionalSubnets:
///                 - ${mkcSecondarySubnet.id}
///               dnsDomainNames:
///                 - ${gmkCluster.clusterId}.us-central1.managedkafka.${project.projectId}.cloud.goog
///       labels:
///         key: value
///   example:
///     type: gcp:managedkafka:Connector
///     properties:
///       connectorId: my-connector
///       connectCluster: ${mkcCluster.connectClusterId}
///       location: us-central1
///       configs:
///         connector.class: com.google.pubsub.kafka.sink.CloudPubSubSinkConnector
///         name: my-connector
///         tasks.max: '3'
///         topics: ${gmkTopic.topicId}
///         cps.topic: ${cpsTopic.name}
///         cps.project: ${project.projectId}
///         value.converter: org.apache.kafka.connect.storage.StringConverter
///         key.converter: org.apache.kafka.connect.storage.StringConverter
///       taskRestartPolicy:
///         minimumBackoff: 60s
///         maximumBackoff: 1800s
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
/// Connector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster}}/connectors/{{connector_id}}`
///
/// * `{{project}}/{{location}}/{{connect_cluster}}/{{connector_id}}`
///
/// * `{{location}}/{{connect_cluster}}/{{connector_id}}`
///
/// When using the `pulumi import` command, Connector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster}}/connectors/{{connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default {{project}}/{{location}}/{{connect_cluster}}/{{connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default {{location}}/{{connect_cluster}}/{{connector_id}}
/// ```
class Connector extends pulumi.CustomResource {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  late final pulumi.Output<Map<String, String>?> configs;
  /// The connect cluster name.
  late final pulumi.Output<String> connectCluster;
  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  late final pulumi.Output<String> connectorId;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;
  /// The name of the connector. The `connector` segment is used when connecting directly to the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The current state of the connect. Possible values: `STATE_UNSPECIFIED`, `UNASSIGNED`, `RUNNING`, `PAUSED`, `FAILED`, `RESTARTING`, and `STOPPED`.
  late final pulumi.Output<String> state;
  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  late final pulumi.Output<ConnectorTaskRestartPolicy?> taskRestartPolicy;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_managedkafka_connector_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configs = registerOutput<Map<String, String>?>('configs');
    this.connectCluster = registerOutput<String>('connectCluster');
    this.connectorId = registerOutput<String>('connectorId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.taskRestartPolicy = registerOutput<ConnectorTaskRestartPolicy?>('taskRestartPolicy');
  }

  /// Gets an existing [Connector] resource's state with the given [name] and [id].
  static Connector get(
    String name,
    pulumi.Input<String> id, {
    ConnectorState? state,
  }) {
    return Connector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/connector:Connector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configs = registerOutput<Map<String, String>?>('configs');
    this.connectCluster = registerOutput<String>('connectCluster');
    this.connectorId = registerOutput<String>('connectorId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.taskRestartPolicy = registerOutput<ConnectorTaskRestartPolicy?>('taskRestartPolicy');
  }
}
