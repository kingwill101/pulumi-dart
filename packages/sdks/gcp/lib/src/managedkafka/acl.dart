import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_state.dart';

/// A Managed Service for Apache Kafka ACL. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Acl Basic
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
/// const example = new gcp.managedkafka.Acl("example", {
///     aclId: "topic/mytopic",
///     cluster: cluster.clusterId,
///     location: "us-central1",
///     aclEntries: [
///         {
///             principal: "User:admin@my-project.iam.gserviceaccount.com",
///             permissionType: "ALLOW",
///             operation: "ALL",
///             host: "*",
///         },
///         {
///             principal: "User:producer-client@my-project.iam.gserviceaccount.com",
///             permissionType: "ALLOW",
///             operation: "WRITE",
///             host: "*",
///         },
///     ],
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
/// example = gcp.managedkafka.Acl("example",
///     acl_id="topic/mytopic",
///     cluster=cluster.cluster_id,
///     location="us-central1",
///     acl_entries=[
///         {
///             "principal": "User:admin@my-project.iam.gserviceaccount.com",
///             "permission_type": "ALLOW",
///             "operation": "ALL",
///             "host": "*",
///         },
///         {
///             "principal": "User:producer-client@my-project.iam.gserviceaccount.com",
///             "permission_type": "ALLOW",
///             "operation": "WRITE",
///             "host": "*",
///         },
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
///     var example = new Gcp.ManagedKafka.Acl("example", new()
///     {
///         AclId = "topic/mytopic",
///         Cluster = cluster.ClusterId,
///         Location = "us-central1",
///         AclEntries = new[]
///         {
///             new Gcp.ManagedKafka.Inputs.AclAclEntryArgs
///             {
///                 Principal = "User:admin@my-project.iam.gserviceaccount.com",
///                 PermissionType = "ALLOW",
///                 Operation = "ALL",
///                 Host = "*",
///             },
///             new Gcp.ManagedKafka.Inputs.AclAclEntryArgs
///             {
///                 Principal = "User:producer-client@my-project.iam.gserviceaccount.com",
///                 PermissionType = "ALLOW",
///                 Operation = "WRITE",
///                 Host = "*",
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
/// 	"fmt"
///
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
/// 		_, err = managedkafka.NewAcl(ctx, "example", &managedkafka.AclArgs{
/// 			AclId:    pulumi.String("topic/mytopic"),
/// 			Cluster:  cluster.ClusterId,
/// 			Location: pulumi.String("us-central1"),
/// 			AclEntries: managedkafka.AclAclEntryArray{
/// 				&managedkafka.AclAclEntryArgs{
/// 					Principal:      pulumi.String("User:admin@my-project.iam.gserviceaccount.com"),
/// 					PermissionType: pulumi.String("ALLOW"),
/// 					Operation:      pulumi.String("ALL"),
/// 					Host:           pulumi.String("*"),
/// 				},
/// 				&managedkafka.AclAclEntryArgs{
/// 					Principal:      pulumi.String("User:producer-client@my-project.iam.gserviceaccount.com"),
/// 					PermissionType: pulumi.String("ALLOW"),
/// 					Operation:      pulumi.String("WRITE"),
/// 					Host:           pulumi.String("*"),
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
/// import com.pulumi.gcp.managedkafka.Cluster;
/// import com.pulumi.gcp.managedkafka.ClusterArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterCapacityConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigArgs;
/// import com.pulumi.gcp.managedkafka.inputs.ClusterGcpConfigAccessConfigArgs;
/// import com.pulumi.gcp.managedkafka.Acl;
/// import com.pulumi.gcp.managedkafka.AclArgs;
/// import com.pulumi.gcp.managedkafka.inputs.AclAclEntryArgs;
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
///         var example = new Acl("example", AclArgs.builder()
///             .aclId("topic/mytopic")
///             .cluster(cluster.clusterId())
///             .location("us-central1")
///             .aclEntries(
///                 AclAclEntryArgs.builder()
///                     .principal("User:admin@my-project.iam.gserviceaccount.com")
///                     .permissionType("ALLOW")
///                     .operation("ALL")
///                     .host("*")
///                     .build(),
///                 AclAclEntryArgs.builder()
///                     .principal("User:producer-client@my-project.iam.gserviceaccount.com")
///                     .permissionType("ALLOW")
///                     .operation("WRITE")
///                     .host("*")
///                     .build())
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
///     type: gcp:managedkafka:Acl
///     properties:
///       aclId: topic/mytopic
///       cluster: ${cluster.clusterId}
///       location: us-central1
///       aclEntries:
///         - principal: User:admin@my-project.iam.gserviceaccount.com
///           permissionType: ALLOW
///           operation: ALL
///           host: '*'
///         - principal: User:producer-client@my-project.iam.gserviceaccount.com
///           permissionType: ALLOW
///           operation: WRITE
///           host: '*'
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
/// Acl can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}`
///
/// When using the `pulumi import` command, Acl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/acl:Acl default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}
/// ```
class Acl extends pulumi.CustomResource {
  /// The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> aclEntries;

  /// The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  late final pulumi.Output<String> aclId;

  /// The cluster name.
  late final pulumi.Output<String> cluster;

  /// `etag` is used for concurrency control. An `etag` is returned in the
  /// response to `GetAcl` and `CreateAcl`. Callers are required to put that etag
  /// in the request to `UpdateAcl` to ensure that their change will be applied
  /// to the same version of the acl that exists in the Kafka Cluster.
  /// A terminal 'T' character in the etag indicates that the AclEntries were
  /// truncated due to repeated field limits.
  late final pulumi.Output<String> etag;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the acl. The `ACL_ID` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/acls/ACL_ID`.
  late final pulumi.Output<String> name;

  /// The acl pattern type derived from the name. One of: LITERAL, PREFIXED.
  late final pulumi.Output<String> patternType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The acl resource name derived from the name. For cluster resource_type, this is always "kafka-cluster". Can be the wildcard literal "*".
  late final pulumi.Output<String> resourceName;

  /// The acl resource type derived from the name. One of: CLUSTER, TOPIC, GROUP, TRANSACTIONAL_ID.
  late final pulumi.Output<String> resourceType;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_managedkafka_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(String name, {AclArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:managedkafka/acl:Acl',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclId = registerOutput<String>('aclId');
    cluster = registerOutput<String>('cluster');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    patternType = registerOutput<String>('patternType');
    project = registerOutput<String>('project');
    resourceName = registerOutput<String>('resourceName');
    resourceType = registerOutput<String>('resourceType');
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(String name, pulumi.Input<String> id, {AclState? state}) {
    return Acl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Acl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:managedkafka/acl:Acl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclEntries = registerOutput<List<Map<String, dynamic>>>('aclEntries');
    aclId = registerOutput<String>('aclId');
    cluster = registerOutput<String>('cluster');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    patternType = registerOutput<String>('patternType');
    project = registerOutput<String>('project');
    resourceName = registerOutput<String>('resourceName');
    resourceType = registerOutput<String>('resourceType');
  }
}
