import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_automated_backup_config.dart';
import 'instance_cross_instance_replication_config.dart';
import 'instance_gcs_source.dart';
import 'instance_maintenance_policy.dart';
import 'instance_managed_backup_source.dart';
import 'instance_persistence_config.dart';
import 'instance_state.dart';
import 'instance_zone_distribution_config.dart';

/// A Google Cloud Memorystore instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/valkey/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memorystore/docs/valkey/create-instances)
///
/// ## Example Usage
///
/// ### Memorystore Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNet = new gcp.compute.Network("producer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: producerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: producerNet.id,
///     pscConfig: {
///         subnetworks: [producerSubnet.id],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const instance_basic = new gcp.memorystore.Instance("instance-basic", {
///     instanceId: "basic-instance",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: producerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "us-central1",
///     deletionProtectionEnabled: false,
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_net = gcp.compute.Network("producer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=producer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=producer_net.id,
///     psc_config={
///         "subnetworks": [producer_subnet.id],
///     })
/// project = gcp.organizations.get_project()
/// instance_basic = gcp.memorystore.Instance("instance-basic",
///     instance_id="basic-instance",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": producer_net.id,
///         "project_id": project.project_id,
///     }],
///     location="us-central1",
///     deletion_protection_enabled=False,
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerNet = new Gcp.Compute.Network("producer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = producerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = producerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 producerSubnet.Id,
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance_basic = new Gcp.MemoryStore.Instance("instance-basic", new()
///     {
///         InstanceId = "basic-instance",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = producerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "us-central1",
///         DeletionProtectionEnabled = false,
///         MaintenancePolicy = new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstance(ctx, "instance-basic", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("basic-instance"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   producerNet.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location:                  pulumi.String("us-central1"),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 			MaintenancePolicy: &memorystore.InstanceMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var producerNet = new Network("producerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(producerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(producerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(producerSubnet.id())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance_basic = new Instance("instance-basic", InstanceArgs.builder()
///             .instanceId("basic-instance")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(producerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("us-central1")
///             .deletionProtectionEnabled(false)
///             .maintenancePolicy(InstanceMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-basic:
///     type: gcp:memorystore:Instance
///     properties:
///       instanceId: basic-instance
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${producerNet.id}
///           projectId: ${project.projectId}
///       location: us-central1
///       deletionProtectionEnabled: false
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${producerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${producerSubnet.id}
///   producerSubnet:
///     type: gcp:compute:Subnetwork
///     name: producer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${producerNet.id}
///   producerNet:
///     type: gcp:compute:Network
///     name: producer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Memorystore Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNet = new gcp.compute.Network("producer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: producerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: producerNet.id,
///     pscConfig: {
///         subnetworks: [producerSubnet.id],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const instance_full = new gcp.memorystore.Instance("instance-full", {
///     instanceId: "full-instance",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: producerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "us-central1",
///     replicaCount: 1,
///     nodeType: "SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_DISABLED",
///     authorizationMode: "AUTH_DISABLED",
///     kmsKey: "my-key",
///     engineConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zoneDistributionConfig: {
///         mode: "SINGLE_ZONE",
///         zone: "us-central1-b",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "MONDAY",
///             startTime: {
///                 hours: 1,
///                 minutes: 0,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
///     engineVersion: "VALKEY_7_2",
///     deletionProtectionEnabled: false,
///     mode: "CLUSTER",
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
///     labels: {
///         abc: "xyz",
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_net = gcp.compute.Network("producer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=producer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=producer_net.id,
///     psc_config={
///         "subnetworks": [producer_subnet.id],
///     })
/// project = gcp.organizations.get_project()
/// instance_full = gcp.memorystore.Instance("instance-full",
///     instance_id="full-instance",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": producer_net.id,
///         "project_id": project.project_id,
///     }],
///     location="us-central1",
///     replica_count=1,
///     node_type="SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_DISABLED",
///     authorization_mode="AUTH_DISABLED",
///     kms_key="my-key",
///     engine_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zone_distribution_config={
///         "mode": "SINGLE_ZONE",
///         "zone": "us-central1-b",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "MONDAY",
///             "start_time": {
///                 "hours": 1,
///                 "minutes": 0,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
///     },
///     engine_version="VALKEY_7_2",
///     deletion_protection_enabled=False,
///     mode="CLUSTER",
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     labels={
///         "abc": "xyz",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerNet = new Gcp.Compute.Network("producer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = producerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = producerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 producerSubnet.Id,
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance_full = new Gcp.MemoryStore.Instance("instance-full", new()
///     {
///         InstanceId = "full-instance",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = producerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "us-central1",
///         ReplicaCount = 1,
///         NodeType = "SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_DISABLED",
///         AuthorizationMode = "AUTH_DISABLED",
///         KmsKey = "my-key",
///         EngineConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         ZoneDistributionConfig = new Gcp.MemoryStore.Inputs.InstanceZoneDistributionConfigArgs
///         {
///             Mode = "SINGLE_ZONE",
///             Zone = "us-central1-b",
///         },
///         MaintenancePolicy = new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "MONDAY",
///                     StartTime = new Gcp.MemoryStore.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 1,
///                         Minutes = 0,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
///                 },
///             },
///         },
///         EngineVersion = "VALKEY_7_2",
///         DeletionProtectionEnabled = false,
///         Mode = "CLUSTER",
///         PersistenceConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///         Labels =
///         {
///             { "abc", "xyz" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstance(ctx, "instance-full", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("full-instance"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   producerNet.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location:              pulumi.String("us-central1"),
/// 			ReplicaCount:          pulumi.Int(1),
/// 			NodeType:              pulumi.String("SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_DISABLED"),
/// 			KmsKey:                pulumi.String("my-key"),
/// 			EngineConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			ZoneDistributionConfig: &memorystore.InstanceZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("SINGLE_ZONE"),
/// 				Zone: pulumi.String("us-central1-b"),
/// 			},
/// 			MaintenancePolicy: &memorystore.InstanceMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("MONDAY"),
/// 						StartTime: &memorystore.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(1),
/// 							Minutes: pulumi.Int(0),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EngineVersion:             pulumi.String("VALKEY_7_2"),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 			Mode:                      pulumi.String("CLUSTER"),
/// 			PersistenceConfig: &memorystore.InstancePersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &memorystore.InstancePersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"abc": pulumi.String("xyz"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceZoneDistributionConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigRdbConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var producerNet = new Network("producerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(producerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(producerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(producerSubnet.id())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance_full = new Instance("instance-full", InstanceArgs.builder()
///             .instanceId("full-instance")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(producerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("us-central1")
///             .replicaCount(1)
///             .nodeType("SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_DISABLED")
///             .authorizationMode("AUTH_DISABLED")
///             .kmsKey("my-key")
///             .engineConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .zoneDistributionConfig(InstanceZoneDistributionConfigArgs.builder()
///                 .mode("SINGLE_ZONE")
///                 .zone("us-central1-b")
///                 .build())
///             .maintenancePolicy(InstanceMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("MONDAY")
///                     .startTime(InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(1)
///                         .minutes(0)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .engineVersion("VALKEY_7_2")
///             .deletionProtectionEnabled(false)
///             .mode("CLUSTER")
///             .persistenceConfig(InstancePersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(InstancePersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .labels(Map.of("abc", "xyz"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-full:
///     type: gcp:memorystore:Instance
///     properties:
///       instanceId: full-instance
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${producerNet.id}
///           projectId: ${project.projectId}
///       location: us-central1
///       replicaCount: 1
///       nodeType: SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_DISABLED
///       authorizationMode: AUTH_DISABLED
///       kmsKey: my-key
///       engineConfigs:
///         maxmemory-policy: volatile-ttl
///       zoneDistributionConfig:
///         mode: SINGLE_ZONE
///         zone: us-central1-b
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: MONDAY
///             startTime:
///               hours: 1
///               minutes: 0
///               seconds: 0
///               nanos: 0
///       engineVersion: VALKEY_7_2
///       deletionProtectionEnabled: false
///       mode: CLUSTER
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///       labels:
///         abc: xyz
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${producerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${producerSubnet.id}
///   producerSubnet:
///     type: gcp:compute:Subnetwork
///     name: producer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${producerNet.id}
///   producerNet:
///     type: gcp:compute:Network
///     name: producer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Memorystore Instance Persistence Aof
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producerNet = new gcp.compute.Network("producer_net", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
///     name: "my-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: producerNet.id,
/// });
/// const _default = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "my-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: producerNet.id,
///     pscConfig: {
///         subnetworks: [producerSubnet.id],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const instance_persistence_aof = new gcp.memorystore.Instance("instance-persistence-aof", {
///     instanceId: "aof-instance",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: producerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "us-central1",
///     persistenceConfig: {
///         mode: "AOF",
///         aofConfig: {
///             appendFsync: "EVERY_SEC",
///         },
///     },
///     deletionProtectionEnabled: false,
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer_net = gcp.compute.Network("producer_net",
///     name="my-network",
///     auto_create_subnetworks=False)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
///     name="my-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=producer_net.id)
/// default = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="my-policy",
///     location="us-central1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=producer_net.id,
///     psc_config={
///         "subnetworks": [producer_subnet.id],
///     })
/// project = gcp.organizations.get_project()
/// instance_persistence_aof = gcp.memorystore.Instance("instance-persistence-aof",
///     instance_id="aof-instance",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": producer_net.id,
///         "project_id": project.project_id,
///     }],
///     location="us-central1",
///     persistence_config={
///         "mode": "AOF",
///         "aof_config": {
///             "append_fsync": "EVERY_SEC",
///         },
///     },
///     deletion_protection_enabled=False,
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var producerNet = new Gcp.Compute.Network("producer_net", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
///     {
///         Name = "my-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = producerNet.Id,
///     });
///
///     var @default = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "my-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = producerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 producerSubnet.Id,
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var instance_persistence_aof = new Gcp.MemoryStore.Instance("instance-persistence-aof", new()
///     {
///         InstanceId = "aof-instance",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = producerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "us-central1",
///         PersistenceConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigArgs
///         {
///             Mode = "AOF",
///             AofConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigAofConfigArgs
///             {
///                 AppendFsync = "EVERY_SEC",
///             },
///         },
///         DeletionProtectionEnabled = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstance(ctx, "instance-persistence-aof", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("aof-instance"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   producerNet.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location: pulumi.String("us-central1"),
/// 			PersistenceConfig: &memorystore.InstancePersistenceConfigArgs{
/// 				Mode: pulumi.String("AOF"),
/// 				AofConfig: &memorystore.InstancePersistenceConfigAofConfigArgs{
/// 					AppendFsync: pulumi.String("EVERY_SEC"),
/// 				},
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigAofConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var producerNet = new Network("producerNet", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(producerNet.id())
///             .build());
///
///         var default_ = new ServiceConnectionPolicy("default", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(producerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(producerSubnet.id())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var instance_persistence_aof = new Instance("instance-persistence-aof", InstanceArgs.builder()
///             .instanceId("aof-instance")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(producerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("us-central1")
///             .persistenceConfig(InstancePersistenceConfigArgs.builder()
///                 .mode("AOF")
///                 .aofConfig(InstancePersistenceConfigAofConfigArgs.builder()
///                     .appendFsync("EVERY_SEC")
///                     .build())
///                 .build())
///             .deletionProtectionEnabled(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance-persistence-aof:
///     type: gcp:memorystore:Instance
///     properties:
///       instanceId: aof-instance
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${producerNet.id}
///           projectId: ${project.projectId}
///       location: us-central1
///       persistenceConfig:
///         mode: AOF
///         aofConfig:
///           appendFsync: EVERY_SEC
///       deletionProtectionEnabled: false
///     options:
///       dependsOn:
///         - ${default}
///   default:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     properties:
///       name: my-policy
///       location: us-central1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${producerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${producerSubnet.id}
///   producerSubnet:
///     type: gcp:compute:Subnetwork
///     name: producer_subnet
///     properties:
///       name: my-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${producerNet.id}
///   producerNet:
///     type: gcp:compute:Network
///     name: producer_net
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Memorystore Instance Secondary Instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primaryProducerNet = new gcp.compute.Network("primary_producer_net", {
///     name: "my-network-primary-instance",
///     autoCreateSubnetworks: false,
/// });
/// const primaryProducerSubnet = new gcp.compute.Subnetwork("primary_producer_subnet", {
///     name: "my-subnet-primary-instance",
///     ipCidrRange: "10.0.1.0/29",
///     region: "asia-east1",
///     network: primaryProducerNet.id,
/// });
/// const primaryPolicy = new gcp.networkconnectivity.ServiceConnectionPolicy("primary_policy", {
///     name: "my-policy-primary-instance",
///     location: "asia-east1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: primaryProducerNet.id,
///     pscConfig: {
///         subnetworks: [primaryProducerSubnet.id],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// // Primary instance
/// const primaryInstance = new gcp.memorystore.Instance("primary_instance", {
///     instanceId: "primary-instance",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: primaryProducerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "asia-east1",
///     replicaCount: 1,
///     nodeType: "SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_DISABLED",
///     authorizationMode: "AUTH_DISABLED",
///     engineConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zoneDistributionConfig: {
///         mode: "SINGLE_ZONE",
///         zone: "asia-east1-c",
///     },
///     deletionProtectionEnabled: true,
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
///     labels: {
///         abc: "xyz",
///     },
/// }, {
///     dependsOn: [primaryPolicy],
/// });
/// const secondaryProducerNet = new gcp.compute.Network("secondary_producer_net", {
///     name: "my-network-secondary-instance",
///     autoCreateSubnetworks: false,
/// });
/// const secondaryProducerSubnet = new gcp.compute.Subnetwork("secondary_producer_subnet", {
///     name: "my-subnet-secondary-instance",
///     ipCidrRange: "10.0.2.0/29",
///     region: "europe-north1",
///     network: secondaryProducerNet.id,
/// });
/// const secondaryPolicy = new gcp.networkconnectivity.ServiceConnectionPolicy("secondary_policy", {
///     name: "my-policy-secondary-instance",
///     location: "europe-north1",
///     serviceClass: "gcp-memorystore",
///     description: "my basic service connection policy",
///     network: secondaryProducerNet.id,
///     pscConfig: {
///         subnetworks: [secondaryProducerSubnet.id],
///     },
/// });
/// // Secondary instance
/// const secondaryInstance = new gcp.memorystore.Instance("secondary_instance", {
///     instanceId: "secondary-instance",
///     shardCount: 1,
///     desiredAutoCreatedEndpoints: [{
///         network: secondaryProducerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     location: "europe-north1",
///     replicaCount: 1,
///     nodeType: "SHARED_CORE_NANO",
///     transitEncryptionMode: "TRANSIT_ENCRYPTION_DISABLED",
///     authorizationMode: "AUTH_DISABLED",
///     engineConfigs: {
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zoneDistributionConfig: {
///         mode: "SINGLE_ZONE",
///         zone: "europe-north1-c",
///     },
///     deletionProtectionEnabled: true,
///     crossInstanceReplicationConfig: {
///         instanceRole: "SECONDARY",
///         primaryInstance: {
///             instance: primaryInstance.id,
///         },
///     },
///     persistenceConfig: {
///         mode: "RDB",
///         rdbConfig: {
///             rdbSnapshotPeriod: "ONE_HOUR",
///             rdbSnapshotStartTime: "2024-10-02T15:01:23Z",
///         },
///     },
///     labels: {
///         abc: "xyz",
///     },
/// }, {
///     dependsOn: [secondaryPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary_producer_net = gcp.compute.Network("primary_producer_net",
///     name="my-network-primary-instance",
///     auto_create_subnetworks=False)
/// primary_producer_subnet = gcp.compute.Subnetwork("primary_producer_subnet",
///     name="my-subnet-primary-instance",
///     ip_cidr_range="10.0.1.0/29",
///     region="asia-east1",
///     network=primary_producer_net.id)
/// primary_policy = gcp.networkconnectivity.ServiceConnectionPolicy("primary_policy",
///     name="my-policy-primary-instance",
///     location="asia-east1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=primary_producer_net.id,
///     psc_config={
///         "subnetworks": [primary_producer_subnet.id],
///     })
/// project = gcp.organizations.get_project()
/// # Primary instance
/// primary_instance = gcp.memorystore.Instance("primary_instance",
///     instance_id="primary-instance",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": primary_producer_net.id,
///         "project_id": project.project_id,
///     }],
///     location="asia-east1",
///     replica_count=1,
///     node_type="SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_DISABLED",
///     authorization_mode="AUTH_DISABLED",
///     engine_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zone_distribution_config={
///         "mode": "SINGLE_ZONE",
///         "zone": "asia-east1-c",
///     },
///     deletion_protection_enabled=True,
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     labels={
///         "abc": "xyz",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[primary_policy]))
/// secondary_producer_net = gcp.compute.Network("secondary_producer_net",
///     name="my-network-secondary-instance",
///     auto_create_subnetworks=False)
/// secondary_producer_subnet = gcp.compute.Subnetwork("secondary_producer_subnet",
///     name="my-subnet-secondary-instance",
///     ip_cidr_range="10.0.2.0/29",
///     region="europe-north1",
///     network=secondary_producer_net.id)
/// secondary_policy = gcp.networkconnectivity.ServiceConnectionPolicy("secondary_policy",
///     name="my-policy-secondary-instance",
///     location="europe-north1",
///     service_class="gcp-memorystore",
///     description="my basic service connection policy",
///     network=secondary_producer_net.id,
///     psc_config={
///         "subnetworks": [secondary_producer_subnet.id],
///     })
/// # Secondary instance
/// secondary_instance = gcp.memorystore.Instance("secondary_instance",
///     instance_id="secondary-instance",
///     shard_count=1,
///     desired_auto_created_endpoints=[{
///         "network": secondary_producer_net.id,
///         "project_id": project.project_id,
///     }],
///     location="europe-north1",
///     replica_count=1,
///     node_type="SHARED_CORE_NANO",
///     transit_encryption_mode="TRANSIT_ENCRYPTION_DISABLED",
///     authorization_mode="AUTH_DISABLED",
///     engine_configs={
///         "maxmemory-policy": "volatile-ttl",
///     },
///     zone_distribution_config={
///         "mode": "SINGLE_ZONE",
///         "zone": "europe-north1-c",
///     },
///     deletion_protection_enabled=True,
///     cross_instance_replication_config={
///         "instance_role": "SECONDARY",
///         "primary_instance": {
///             "instance": primary_instance.id,
///         },
///     },
///     persistence_config={
///         "mode": "RDB",
///         "rdb_config": {
///             "rdb_snapshot_period": "ONE_HOUR",
///             "rdb_snapshot_start_time": "2024-10-02T15:01:23Z",
///         },
///     },
///     labels={
///         "abc": "xyz",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[secondary_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primaryProducerNet = new Gcp.Compute.Network("primary_producer_net", new()
///     {
///         Name = "my-network-primary-instance",
///         AutoCreateSubnetworks = false,
///     });
///
///     var primaryProducerSubnet = new Gcp.Compute.Subnetwork("primary_producer_subnet", new()
///     {
///         Name = "my-subnet-primary-instance",
///         IpCidrRange = "10.0.1.0/29",
///         Region = "asia-east1",
///         Network = primaryProducerNet.Id,
///     });
///
///     var primaryPolicy = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("primary_policy", new()
///     {
///         Name = "my-policy-primary-instance",
///         Location = "asia-east1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = primaryProducerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 primaryProducerSubnet.Id,
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     // Primary instance
///     var primaryInstance = new Gcp.MemoryStore.Instance("primary_instance", new()
///     {
///         InstanceId = "primary-instance",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = primaryProducerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "asia-east1",
///         ReplicaCount = 1,
///         NodeType = "SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_DISABLED",
///         AuthorizationMode = "AUTH_DISABLED",
///         EngineConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         ZoneDistributionConfig = new Gcp.MemoryStore.Inputs.InstanceZoneDistributionConfigArgs
///         {
///             Mode = "SINGLE_ZONE",
///             Zone = "asia-east1-c",
///         },
///         DeletionProtectionEnabled = true,
///         PersistenceConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///         Labels =
///         {
///             { "abc", "xyz" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryPolicy,
///         },
///     });
///
///     var secondaryProducerNet = new Gcp.Compute.Network("secondary_producer_net", new()
///     {
///         Name = "my-network-secondary-instance",
///         AutoCreateSubnetworks = false,
///     });
///
///     var secondaryProducerSubnet = new Gcp.Compute.Subnetwork("secondary_producer_subnet", new()
///     {
///         Name = "my-subnet-secondary-instance",
///         IpCidrRange = "10.0.2.0/29",
///         Region = "europe-north1",
///         Network = secondaryProducerNet.Id,
///     });
///
///     var secondaryPolicy = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("secondary_policy", new()
///     {
///         Name = "my-policy-secondary-instance",
///         Location = "europe-north1",
///         ServiceClass = "gcp-memorystore",
///         Description = "my basic service connection policy",
///         Network = secondaryProducerNet.Id,
///         PscConfig = new Gcp.NetworkConnectivity.Inputs.ServiceConnectionPolicyPscConfigArgs
///         {
///             Subnetworks = new[]
///             {
///                 secondaryProducerSubnet.Id,
///             },
///         },
///     });
///
///     // Secondary instance
///     var secondaryInstance = new Gcp.MemoryStore.Instance("secondary_instance", new()
///     {
///         InstanceId = "secondary-instance",
///         ShardCount = 1,
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = secondaryProducerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         Location = "europe-north1",
///         ReplicaCount = 1,
///         NodeType = "SHARED_CORE_NANO",
///         TransitEncryptionMode = "TRANSIT_ENCRYPTION_DISABLED",
///         AuthorizationMode = "AUTH_DISABLED",
///         EngineConfigs =
///         {
///             { "maxmemory-policy", "volatile-ttl" },
///         },
///         ZoneDistributionConfig = new Gcp.MemoryStore.Inputs.InstanceZoneDistributionConfigArgs
///         {
///             Mode = "SINGLE_ZONE",
///             Zone = "europe-north1-c",
///         },
///         DeletionProtectionEnabled = true,
///         CrossInstanceReplicationConfig = new Gcp.MemoryStore.Inputs.InstanceCrossInstanceReplicationConfigArgs
///         {
///             InstanceRole = "SECONDARY",
///             PrimaryInstance = new Gcp.MemoryStore.Inputs.InstanceCrossInstanceReplicationConfigPrimaryInstanceArgs
///             {
///                 Instance = primaryInstance.Id,
///             },
///         },
///         PersistenceConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigArgs
///         {
///             Mode = "RDB",
///             RdbConfig = new Gcp.MemoryStore.Inputs.InstancePersistenceConfigRdbConfigArgs
///             {
///                 RdbSnapshotPeriod = "ONE_HOUR",
///                 RdbSnapshotStartTime = "2024-10-02T15:01:23Z",
///             },
///         },
///         Labels =
///         {
///             { "abc", "xyz" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             secondaryPolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primaryProducerNet, err := compute.NewNetwork(ctx, "primary_producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network-primary-instance"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryProducerSubnet, err := compute.NewSubnetwork(ctx, "primary_producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet-primary-instance"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/29"),
/// 			Region:      pulumi.String("asia-east1"),
/// 			Network:     primaryProducerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryPolicy, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "primary_policy", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy-primary-instance"),
/// 			Location:     pulumi.String("asia-east1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      primaryProducerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					primaryProducerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Primary instance
/// 		primaryInstance, err := memorystore.NewInstance(ctx, "primary_instance", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("primary-instance"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   primaryProducerNet.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location:              pulumi.String("asia-east1"),
/// 			ReplicaCount:          pulumi.Int(1),
/// 			NodeType:              pulumi.String("SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_DISABLED"),
/// 			EngineConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			ZoneDistributionConfig: &memorystore.InstanceZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("SINGLE_ZONE"),
/// 				Zone: pulumi.String("asia-east1-c"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			PersistenceConfig: &memorystore.InstancePersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &memorystore.InstancePersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"abc": pulumi.String("xyz"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryProducerNet, err := compute.NewNetwork(ctx, "secondary_producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network-secondary-instance"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryProducerSubnet, err := compute.NewSubnetwork(ctx, "secondary_producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnet-secondary-instance"),
/// 			IpCidrRange: pulumi.String("10.0.2.0/29"),
/// 			Region:      pulumi.String("europe-north1"),
/// 			Network:     secondaryProducerNet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryPolicy, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "secondary_policy", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy-secondary-instance"),
/// 			Location:     pulumi.String("europe-north1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      secondaryProducerNet.ID(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					secondaryProducerSubnet.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Secondary instance
/// 		_, err = memorystore.NewInstance(ctx, "secondary_instance", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("secondary-instance"),
/// 			ShardCount: pulumi.Int(1),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   secondaryProducerNet.ID(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			Location:              pulumi.String("europe-north1"),
/// 			ReplicaCount:          pulumi.Int(1),
/// 			NodeType:              pulumi.String("SHARED_CORE_NANO"),
/// 			TransitEncryptionMode: pulumi.String("TRANSIT_ENCRYPTION_DISABLED"),
/// 			AuthorizationMode:     pulumi.String("AUTH_DISABLED"),
/// 			EngineConfigs: pulumi.StringMap{
/// 				"maxmemory-policy": pulumi.String("volatile-ttl"),
/// 			},
/// 			ZoneDistributionConfig: &memorystore.InstanceZoneDistributionConfigArgs{
/// 				Mode: pulumi.String("SINGLE_ZONE"),
/// 				Zone: pulumi.String("europe-north1-c"),
/// 			},
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			CrossInstanceReplicationConfig: &memorystore.InstanceCrossInstanceReplicationConfigArgs{
/// 				InstanceRole: pulumi.String("SECONDARY"),
/// 				PrimaryInstance: &memorystore.InstanceCrossInstanceReplicationConfigPrimaryInstanceArgs{
/// 					Instance: primaryInstance.ID(),
/// 				},
/// 			},
/// 			PersistenceConfig: &memorystore.InstancePersistenceConfigArgs{
/// 				Mode: pulumi.String("RDB"),
/// 				RdbConfig: &memorystore.InstancePersistenceConfigRdbConfigArgs{
/// 					RdbSnapshotPeriod:    pulumi.String("ONE_HOUR"),
/// 					RdbSnapshotStartTime: pulumi.String("2024-10-02T15:01:23Z"),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"abc": pulumi.String("xyz"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			secondaryPolicy,
/// 		}))
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceZoneDistributionConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigRdbConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceCrossInstanceReplicationConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceCrossInstanceReplicationConfigPrimaryInstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var primaryProducerNet = new Network("primaryProducerNet", NetworkArgs.builder()
///             .name("my-network-primary-instance")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var primaryProducerSubnet = new Subnetwork("primaryProducerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet-primary-instance")
///             .ipCidrRange("10.0.1.0/29")
///             .region("asia-east1")
///             .network(primaryProducerNet.id())
///             .build());
///
///         var primaryPolicy = new ServiceConnectionPolicy("primaryPolicy", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy-primary-instance")
///             .location("asia-east1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(primaryProducerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(primaryProducerSubnet.id())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         // Primary instance
///         var primaryInstance = new Instance("primaryInstance", InstanceArgs.builder()
///             .instanceId("primary-instance")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(primaryProducerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("asia-east1")
///             .replicaCount(1)
///             .nodeType("SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_DISABLED")
///             .authorizationMode("AUTH_DISABLED")
///             .engineConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .zoneDistributionConfig(InstanceZoneDistributionConfigArgs.builder()
///                 .mode("SINGLE_ZONE")
///                 .zone("asia-east1-c")
///                 .build())
///             .deletionProtectionEnabled(true)
///             .persistenceConfig(InstancePersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(InstancePersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .labels(Map.of("abc", "xyz"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryPolicy)
///                 .build());
///
///         var secondaryProducerNet = new Network("secondaryProducerNet", NetworkArgs.builder()
///             .name("my-network-secondary-instance")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var secondaryProducerSubnet = new Subnetwork("secondaryProducerSubnet", SubnetworkArgs.builder()
///             .name("my-subnet-secondary-instance")
///             .ipCidrRange("10.0.2.0/29")
///             .region("europe-north1")
///             .network(secondaryProducerNet.id())
///             .build());
///
///         var secondaryPolicy = new ServiceConnectionPolicy("secondaryPolicy", ServiceConnectionPolicyArgs.builder()
///             .name("my-policy-secondary-instance")
///             .location("europe-north1")
///             .serviceClass("gcp-memorystore")
///             .description("my basic service connection policy")
///             .network(secondaryProducerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(secondaryProducerSubnet.id())
///                 .build())
///             .build());
///
///         // Secondary instance
///         var secondaryInstance = new Instance("secondaryInstance", InstanceArgs.builder()
///             .instanceId("secondary-instance")
///             .shardCount(1)
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(secondaryProducerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .location("europe-north1")
///             .replicaCount(1)
///             .nodeType("SHARED_CORE_NANO")
///             .transitEncryptionMode("TRANSIT_ENCRYPTION_DISABLED")
///             .authorizationMode("AUTH_DISABLED")
///             .engineConfigs(Map.of("maxmemory-policy", "volatile-ttl"))
///             .zoneDistributionConfig(InstanceZoneDistributionConfigArgs.builder()
///                 .mode("SINGLE_ZONE")
///                 .zone("europe-north1-c")
///                 .build())
///             .deletionProtectionEnabled(true)
///             .crossInstanceReplicationConfig(InstanceCrossInstanceReplicationConfigArgs.builder()
///                 .instanceRole("SECONDARY")
///                 .primaryInstance(InstanceCrossInstanceReplicationConfigPrimaryInstanceArgs.builder()
///                     .instance(primaryInstance.id())
///                     .build())
///                 .build())
///             .persistenceConfig(InstancePersistenceConfigArgs.builder()
///                 .mode("RDB")
///                 .rdbConfig(InstancePersistenceConfigRdbConfigArgs.builder()
///                     .rdbSnapshotPeriod("ONE_HOUR")
///                     .rdbSnapshotStartTime("2024-10-02T15:01:23Z")
///                     .build())
///                 .build())
///             .labels(Map.of("abc", "xyz"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(secondaryPolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Primary instance
///   primaryInstance:
///     type: gcp:memorystore:Instance
///     name: primary_instance
///     properties:
///       instanceId: primary-instance
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${primaryProducerNet.id}
///           projectId: ${project.projectId}
///       location: asia-east1
///       replicaCount: 1
///       nodeType: SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_DISABLED
///       authorizationMode: AUTH_DISABLED
///       engineConfigs:
///         maxmemory-policy: volatile-ttl
///       zoneDistributionConfig:
///         mode: SINGLE_ZONE
///         zone: asia-east1-c
///       deletionProtectionEnabled: true
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///       labels:
///         abc: xyz
///     options:
///       dependsOn:
///         - ${primaryPolicy}
///   primaryPolicy:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     name: primary_policy
///     properties:
///       name: my-policy-primary-instance
///       location: asia-east1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${primaryProducerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${primaryProducerSubnet.id}
///   primaryProducerSubnet:
///     type: gcp:compute:Subnetwork
///     name: primary_producer_subnet
///     properties:
///       name: my-subnet-primary-instance
///       ipCidrRange: 10.0.1.0/29
///       region: asia-east1
///       network: ${primaryProducerNet.id}
///   primaryProducerNet:
///     type: gcp:compute:Network
///     name: primary_producer_net
///     properties:
///       name: my-network-primary-instance
///       autoCreateSubnetworks: false
///   # Secondary instance
///   secondaryInstance:
///     type: gcp:memorystore:Instance
///     name: secondary_instance
///     properties:
///       instanceId: secondary-instance
///       shardCount: 1
///       desiredAutoCreatedEndpoints:
///         - network: ${secondaryProducerNet.id}
///           projectId: ${project.projectId}
///       location: europe-north1
///       replicaCount: 1
///       nodeType: SHARED_CORE_NANO
///       transitEncryptionMode: TRANSIT_ENCRYPTION_DISABLED
///       authorizationMode: AUTH_DISABLED
///       engineConfigs:
///         maxmemory-policy: volatile-ttl
///       zoneDistributionConfig:
///         mode: SINGLE_ZONE
///         zone: europe-north1-c
///       deletionProtectionEnabled: true # Cross instance replication config
///       crossInstanceReplicationConfig:
///         instanceRole: SECONDARY
///         primaryInstance:
///           instance: ${primaryInstance.id}
///       persistenceConfig:
///         mode: RDB
///         rdbConfig:
///           rdbSnapshotPeriod: ONE_HOUR
///           rdbSnapshotStartTime: 2024-10-02T15:01:23Z
///       labels:
///         abc: xyz
///     options:
///       dependsOn:
///         - ${secondaryPolicy}
///   secondaryPolicy:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     name: secondary_policy
///     properties:
///       name: my-policy-secondary-instance
///       location: europe-north1
///       serviceClass: gcp-memorystore
///       description: my basic service connection policy
///       network: ${secondaryProducerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${secondaryProducerSubnet.id}
///   secondaryProducerSubnet:
///     type: gcp:compute:Subnetwork
///     name: secondary_producer_subnet
///     properties:
///       name: my-subnet-secondary-instance
///       ipCidrRange: 10.0.2.0/29
///       region: europe-north1
///       network: ${secondaryProducerNet.id}
///   secondaryProducerNet:
///     type: gcp:compute:Network
///     name: secondary_producer_net
///     properties:
///       name: my-network-secondary-instance
///       autoCreateSubnetworks: false
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
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH
  late final pulumi.Output<String> authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAutomatedBackupConfig?>
  automatedBackupConfig;

  /// This field is used to determine the available maintenance versions for the self service update.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;

  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  late final pulumi.Output<String> backupCollection;

  /// Output only. Creation timestamp of the instance.
  late final pulumi.Output<String> createTime;

  /// Cross instance replication config
  /// Structure is documented below.
  late final pulumi.Output<InstanceCrossInstanceReplicationConfig>
  crossInstanceReplicationConfig;

  /// Optional. If set to true deletion of the instance will fail.
  late final pulumi.Output<bool?> deletionProtectionEnabled;

  /// Immutable. User inputs for the auto-created endpoints connections.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  desiredAutoCreatedEndpoints;

  /// `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  desiredPscAutoConnections;

  /// (Deprecated)
  /// Deprecated. Output only. Endpoints clients can connect to the instance through.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> discoveryEndpoints;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This field represents the actual maintenance version of the cluster.
  late final pulumi.Output<String> effectiveMaintenanceVersion;

  /// Endpoints for the instance.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> endpoints;

  /// Optional. User-provided engine configurations for the instance.
  late final pulumi.Output<Map<String, String>?> engineConfigs;

  /// Optional. Engine version of the instance.
  late final pulumi.Output<String> engineVersion;

  /// GCS source for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceGcsSource?> gcsSource;

  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  late final pulumi.Output<String> instanceId;

  /// The KMS key used to encrypt the at-rest data of the cluster
  late final pulumi.Output<String?> kmsKey;

  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  late final pulumi.Output<String> location;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> maintenanceSchedules;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  late final pulumi.Output<String?> maintenanceVersion;

  /// Managed backup source for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceManagedBackupSource?> managedBackupSource;

  /// Instance's Certificate Authority. This field will only be populated if instance's transit_encryption_mode is SERVER_AUTHENTICATION
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> managedServerCas;

  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  late final pulumi.Output<String> mode;

  /// Identifier. Unique name of the instance.
  /// Format: projects/{project}/locations/{location}/instances/{instance}
  late final pulumi.Output<String> name;

  /// Represents configuration for nodes of the instance.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeConfigs;

  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// HIGHMEM_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  late final pulumi.Output<String> nodeType;

  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePersistenceConfig> persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configuration of a service attachment of the cluster, for creating PSC connections.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> pscAttachmentDetails;

  /// (Deprecated)
  /// Output only. User inputs and resource details of the auto-created PSC connections.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> pscAutoConnections;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  late final pulumi.Output<int> replicaCount;

  /// Required. Number of shards for the instance.
  late final pulumi.Output<int> shardCount;

  /// Output only. Current state of the instance.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  late final pulumi.Output<String> state;

  /// Additional information about the state of the instance.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> stateInfos;

  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  late final pulumi.Output<String> transitEncryptionMode;

  /// Output only. System assigned, unique identifier for the instance.
  late final pulumi.Output<String> uid;

  /// Output only. Latest update timestamp of the instance.
  late final pulumi.Output<String> updateTime;

  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  late final pulumi.Output<InstanceZoneDistributionConfig>
  zoneDistributionConfig;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_memorystore_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:memorystore/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizationMode = registerOutput<String>('authorizationMode');
    automatedBackupConfig = registerOutput<InstanceAutomatedBackupConfig?>(
      'automatedBackupConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceAutomatedBackupConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    availableMaintenanceVersions = registerOutput<List<String>>(
      'availableMaintenanceVersions',
    );
    backupCollection = registerOutput<String>('backupCollection');
    createTime = registerOutput<String>('createTime');
    crossInstanceReplicationConfig =
        registerOutput<InstanceCrossInstanceReplicationConfig>(
          'crossInstanceReplicationConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return InstanceCrossInstanceReplicationConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    deletionProtectionEnabled = registerOutput<bool?>(
      'deletionProtectionEnabled',
    );
    desiredAutoCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>(
      'desiredAutoCreatedEndpoints',
    );
    desiredPscAutoConnections = registerOutput<List<Map<String, dynamic>>?>(
      'desiredPscAutoConnections',
    );
    discoveryEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'discoveryEndpoints',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveMaintenanceVersion = registerOutput<String>(
      'effectiveMaintenanceVersion',
    );
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineConfigs = registerOutput<Map<String, String>?>('engineConfigs');
    engineVersion = registerOutput<String>('engineVersion');
    gcsSource = registerOutput<InstanceGcsSource?>(
      'gcsSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceGcsSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>(
      'maintenancePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceMaintenancePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>(
      'maintenanceSchedules',
    );
    maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    managedBackupSource = registerOutput<InstanceManagedBackupSource?>(
      'managedBackupSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceManagedBackupSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    managedServerCas = registerOutput<List<Map<String, dynamic>>>(
      'managedServerCas',
    );
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    nodeConfigs = registerOutput<List<Map<String, dynamic>>>('nodeConfigs');
    nodeType = registerOutput<String>('nodeType');
    persistenceConfig = registerOutput<InstancePersistenceConfig>(
      'persistenceConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstancePersistenceConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    pscAttachmentDetails = registerOutput<List<Map<String, dynamic>>>(
      'pscAttachmentDetails',
    );
    pscAutoConnections = registerOutput<List<Map<String, dynamic>>>(
      'pscAutoConnections',
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaCount = registerOutput<int>('replicaCount');
    shardCount = registerOutput<int>('shardCount');
    state = registerOutput<String>('state');
    stateInfos = registerOutput<List<Map<String, dynamic>>>('stateInfos');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zoneDistributionConfig = registerOutput<InstanceZoneDistributionConfig>(
      'zoneDistributionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceZoneDistributionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
         'gcp:memorystore/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizationMode = registerOutput<String>('authorizationMode');
    automatedBackupConfig = registerOutput<InstanceAutomatedBackupConfig?>(
      'automatedBackupConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceAutomatedBackupConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    availableMaintenanceVersions = registerOutput<List<String>>(
      'availableMaintenanceVersions',
    );
    backupCollection = registerOutput<String>('backupCollection');
    createTime = registerOutput<String>('createTime');
    crossInstanceReplicationConfig =
        registerOutput<InstanceCrossInstanceReplicationConfig>(
          'crossInstanceReplicationConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return InstanceCrossInstanceReplicationConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    deletionProtectionEnabled = registerOutput<bool?>(
      'deletionProtectionEnabled',
    );
    desiredAutoCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>(
      'desiredAutoCreatedEndpoints',
    );
    desiredPscAutoConnections = registerOutput<List<Map<String, dynamic>>?>(
      'desiredPscAutoConnections',
    );
    discoveryEndpoints = registerOutput<List<Map<String, dynamic>>>(
      'discoveryEndpoints',
    );
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveMaintenanceVersion = registerOutput<String>(
      'effectiveMaintenanceVersion',
    );
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineConfigs = registerOutput<Map<String, String>?>('engineConfigs');
    engineVersion = registerOutput<String>('engineVersion');
    gcsSource = registerOutput<InstanceGcsSource?>(
      'gcsSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceGcsSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>(
      'maintenancePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceMaintenancePolicy.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>(
      'maintenanceSchedules',
    );
    maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    managedBackupSource = registerOutput<InstanceManagedBackupSource?>(
      'managedBackupSource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceManagedBackupSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    managedServerCas = registerOutput<List<Map<String, dynamic>>>(
      'managedServerCas',
    );
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    nodeConfigs = registerOutput<List<Map<String, dynamic>>>('nodeConfigs');
    nodeType = registerOutput<String>('nodeType');
    persistenceConfig = registerOutput<InstancePersistenceConfig>(
      'persistenceConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstancePersistenceConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    pscAttachmentDetails = registerOutput<List<Map<String, dynamic>>>(
      'pscAttachmentDetails',
    );
    pscAutoConnections = registerOutput<List<Map<String, dynamic>>>(
      'pscAutoConnections',
    );
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaCount = registerOutput<int>('replicaCount');
    shardCount = registerOutput<int>('shardCount');
    this.state = registerOutput<String>('state');
    stateInfos = registerOutput<List<Map<String, dynamic>>>('stateInfos');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zoneDistributionConfig = registerOutput<InstanceZoneDistributionConfig>(
      'zoneDistributionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceZoneDistributionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
