import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_binding_args.dart';
import 'acl_binding_state.dart';

/// A single grant (principal, operation, permission type and host) on a
/// Managed Service for Apache Kafka ACL. Unlike `gcp.managedkafka.Acl`,
/// whose `Update` call (`UpdateAcl`) replaces the entire `aclEntries` list,
/// this resource adds and removes exactly one entry via the `AddAclEntry` and
/// `RemoveAclEntry` RPCs, so multiple independently-managed Terraform
/// configurations can each own one grant on the same ACL without clobbering
/// each other's entries on `apply`. Apache Kafka is a trademark owned by the
/// Apache Software Foundation.
///
///
/// To get more information about AclBinding, see:
///
/// * [API documentation](https://cloud.google.com/managed-service-for-apache-kafka/docs/reference/rest/v1/projects.locations.clusters.acls/addAclEntry)
///
/// &gt; **Warning:** `gcp.managedkafka.AclBinding` cannot be used in conjunction with
/// `gcp.managedkafka.Acl` for the same ACL (same `cluster` and
/// `aclId`), or they will fight over which ACL entries are set.
/// `gcp.managedkafka.Acl` is authoritative and will remove any entry
/// managed by this resource on its next apply. Multiple
/// `gcp.managedkafka.AclBinding` resources on the same ACL are safe.
///
/// ## Example Usage
///
/// ### Managedkafka Acl Binding Basic
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
/// const example = new gcp.managedkafka.AclBinding("example", {
///     location: "us-central1",
///     cluster: cluster.clusterId,
///     aclId: "topic/mytopic",
///     principal: "User:producer-client@my-project.iam.gserviceaccount.com",
///     operation: "WRITE",
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
/// example = gcp.managedkafka.AclBinding("example",
///     location="us-central1",
///     cluster=cluster.cluster_id,
///     acl_id="topic/mytopic",
///     principal="User:producer-client@my-project.iam.gserviceaccount.com",
///     operation="WRITE")
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
///     var example = new Gcp.ManagedKafka.AclBinding("example", new()
///     {
///         Location = "us-central1",
///         Cluster = cluster.ClusterId,
///         AclId = "topic/mytopic",
///         Principal = "User:producer-client@my-project.iam.gserviceaccount.com",
///         Operation = "WRITE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/managedkafka"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
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
/// 		_, err = managedkafka.NewAclBinding(ctx, "example", &managedkafka.AclBindingArgs{
/// 			Location:  pulumi.String("us-central1"),
/// 			Cluster:   cluster.ClusterId,
/// 			AclId:     pulumi.String("topic/mytopic"),
/// 			Principal: pulumi.String("User:producer-client@my-project.iam.gserviceaccount.com"),
/// 			Operation: pulumi.String("WRITE"),
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_managedkafka_cluster" "cluster" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster_id = "my-cluster"
///   location   = "us-central1"
///   capacity_config = {
///     vcpu_count   = 3
///     memory_bytes = 3221225472
///   }
///   gcp_config = {
///     access_config = {
///       network_configs = [{
///         subnet ="projects/${data.gcp_organizations_project.project.number}/regions/us-central1/subnetworks/default"
///       }]
///     }
///   }
/// }
/// resource "gcp_managedkafka_acl_binding" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location  = "us-central1"
///   cluster   = gcp_managedkafka_cluster.cluster.cluster_id
///   acl_id    = "topic/mytopic"
///   principal = "User:producer-client@my-project.iam.gserviceaccount.com"
///   operation = "WRITE"
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
/// import com.pulumi.gcp.managedkafka.AclBinding;
/// import com.pulumi.gcp.managedkafka.AclBindingArgs;
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
///         var example = new AclBinding("example", AclBindingArgs.builder()
///             .location("us-central1")
///             .cluster(cluster.clusterId())
///             .aclId("topic/mytopic")
///             .principal("User:producer-client@my-project.iam.gserviceaccount.com")
///             .operation("WRITE")
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
///     type: gcp:managedkafka:AclBinding
///     properties:
///       location: us-central1
///       cluster: ${cluster.clusterId}
///       aclId: topic/mytopic
///       principal: User:producer-client@my-project.iam.gserviceaccount.com
///       operation: WRITE
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
/// AclBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}/aclEntry/{{principal}}/{{operation}}/{{permission_type}}`
///
///
/// When using the `pulumi import` command, AclBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/aclBinding:AclBinding default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}/aclEntry/{{principal}}/{{operation}}/{{permission_type}}
/// ```
class AclBinding extends pulumi.CustomResource {
  /// The ID of the acl this entry belongs to, which is the final component
  /// of the acl's name. The structure of `aclId` defines the Resource
  /// Pattern (resource_type, resource_name, pattern_type) of the acl.
  /// `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  late final pulumi.Output<String> aclId;
  /// The cluster name.
  late final pulumi.Output<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The host. Must be set to "*" for Managed Service for Apache Kafka.
  late final pulumi.Output<String?> host;
  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;
  /// The operation type. Allowed values are (case insensitive): ALL, READ,
  /// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS,
  /// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See
  /// https://kafka.apache.org/documentation/#operations_resources_and_protocols
  /// for valid combinations of resourceType and operation for different
  /// Kafka API requests.
  late final pulumi.Output<String> operation;
  /// The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  late final pulumi.Output<String?> permissionType;
  /// The principal. Specified as a Google Cloud account, with the Kafka
  /// StandardAuthorizer prefix "User:". For example:
  /// "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be
  /// the wildcard "User:*" to refer to all users.
  late final pulumi.Output<String> principal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [AclBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclBinding]. {@macro pulumi_managedkafka_acl_binding_acl_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclBinding(
    String name, {
    AclBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/aclBinding:AclBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    aclId = registerOutput<String>('aclId');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String?>('host');
    location = registerOutput<String>('location');
    operation = registerOutput<String>('operation');
    permissionType = registerOutput<String?>('permissionType');
    principal = registerOutput<String>('principal');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AclBinding] resource's state with the given [name] and [id].
  static AclBinding get(
    String name,
    pulumi.Input<String> id, {
    AclBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AclBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AclBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/aclBinding:AclBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclId = registerOutput<String>('aclId');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String?>('host');
    location = registerOutput<String>('location');
    operation = registerOutput<String>('operation');
    permissionType = registerOutput<String?>('permissionType');
    principal = registerOutput<String>('principal');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [AclBinding] resource.
  AclBinding.reference(String urn)
    : super(
        'gcp:managedkafka/aclBinding:AclBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aclId = registerOutput<String>('aclId');
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    host = registerOutput<String?>('host');
    location = registerOutput<String>('location');
    operation = registerOutput<String>('operation');
    permissionType = registerOutput<String?>('permissionType');
    principal = registerOutput<String>('principal');
    project = registerOutput<String>('project');
  }
}
