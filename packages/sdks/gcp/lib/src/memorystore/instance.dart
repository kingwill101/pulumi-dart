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
/// 			Network:     producerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Network:   producerNet.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_memorystore_instance" "instance-basic" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.default]
///   instance_id = "basic-instance"
///   shard_count = 1
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   location                    = "us-central1"
///   deletion_protection_enabled = false
///   maintenance_policy = {
///     weekly_maintenance_windows = [{
///       "day" = "MONDAY"
///       "startTime" = {
///         "hours"   = 1
///         "minutes" = 0
///         "seconds" = 0
///         "nanos"   = 0
///       }
///     }]
///   }
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "default" {
///   name          = "my-policy"
///   location      = "us-central1"
///   service_class = "gcp-memorystore"
///   description   = "my basic service connection policy"
///   network       = gcp_compute_network.producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "producer_subnet" {
///   name          = "my-subnet"
///   ip_cidr_range = "10.0.0.248/29"
///   region        = "us-central1"
///   network       = gcp_compute_network.producer_net.id
/// }
/// resource "gcp_compute_network" "producer_net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// 			Network:     producerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Network:   producerNet.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_memorystore_instance" "instance-full" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.default]
///   instance_id = "full-instance"
///   shard_count = 1
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   location                = "us-central1"
///   replica_count           = 1
///   node_type               = "SHARED_CORE_NANO"
///   transit_encryption_mode = "TRANSIT_ENCRYPTION_DISABLED"
///   authorization_mode      = "AUTH_DISABLED"
///   kms_key                 = "my-key"
///   engine_configs = {
///     "maxmemory-policy" = "volatile-ttl"
///   }
///   zone_distribution_config = {
///     mode = "SINGLE_ZONE"
///     zone = "us-central1-b"
///   }
///   maintenance_policy = {
///     weekly_maintenance_windows = [{
///       "day" = "MONDAY"
///       "startTime" = {
///         "hours"   = 1
///         "minutes" = 0
///         "seconds" = 0
///         "nanos"   = 0
///       }
///     }]
///   }
///   engine_version              = "VALKEY_7_2"
///   deletion_protection_enabled = false
///   mode                        = "CLUSTER"
///   persistence_config = {
///     mode = "RDB"
///     rdb_config = {
///       rdb_snapshot_period     = "ONE_HOUR"
///       rdb_snapshot_start_time = "2024-10-02T15:01:23Z"
///     }
///   }
///   labels = {
///     "abc" = "xyz"
///   }
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "default" {
///   name          = "my-policy"
///   location      = "us-central1"
///   service_class = "gcp-memorystore"
///   description   = "my basic service connection policy"
///   network       = gcp_compute_network.producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "producer_subnet" {
///   name          = "my-subnet"
///   ip_cidr_range = "10.0.0.248/29"
///   region        = "us-central1"
///   network       = gcp_compute_network.producer_net.id
/// }
/// resource "gcp_compute_network" "producer_net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstancePersistenceConfigRdbConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// 			Network:     producerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      producerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Network:   producerNet.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_memorystore_instance" "instance-persistence-aof" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.default]
///   instance_id = "aof-instance"
///   shard_count = 1
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   location = "us-central1"
///   persistence_config = {
///     mode = "AOF"
///     aof_config = {
///       append_fsync = "EVERY_SEC"
///     }
///   }
///   deletion_protection_enabled = false
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "default" {
///   name          = "my-policy"
///   location      = "us-central1"
///   service_class = "gcp-memorystore"
///   description   = "my basic service connection policy"
///   network       = gcp_compute_network.producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "producer_subnet" {
///   name          = "my-subnet"
///   ip_cidr_range = "10.0.0.248/29"
///   region        = "us-central1"
///   network       = gcp_compute_network.producer_net.id
/// }
/// resource "gcp_compute_network" "producer_net" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
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
/// 			Network:     primaryProducerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryPolicy, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "primary_policy", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy-primary-instance"),
/// 			Location:     pulumi.String("asia-east1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      primaryProducerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					primaryProducerSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Network:   primaryProducerNet.ID().ToIDOutput().ToStringOutput(),
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
/// 			Network:     secondaryProducerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryPolicy, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "secondary_policy", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("my-policy-secondary-instance"),
/// 			Location:     pulumi.String("europe-north1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Description:  pulumi.String("my basic service connection policy"),
/// 			Network:      secondaryProducerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					secondaryProducerSubnet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Network:   secondaryProducerNet.ID().ToIDOutput().ToStringOutput(),
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
/// 					Instance: primaryInstance.ID().ToIDOutput().ToStringOutput(),
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
/// // Primary instance
/// resource "gcp_memorystore_instance" "primary_instance" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.primary_policy]
///   instance_id = "primary-instance"
///   shard_count = 1
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.primary_producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   location                = "asia-east1"
///   replica_count           = 1
///   node_type               = "SHARED_CORE_NANO"
///   transit_encryption_mode = "TRANSIT_ENCRYPTION_DISABLED"
///   authorization_mode      = "AUTH_DISABLED"
///   engine_configs = {
///     "maxmemory-policy" = "volatile-ttl"
///   }
///   zone_distribution_config = {
///     mode = "SINGLE_ZONE"
///     zone = "asia-east1-c"
///   }
///   deletion_protection_enabled = true
///   persistence_config = {
///     mode = "RDB"
///     rdb_config = {
///       rdb_snapshot_period     = "ONE_HOUR"
///       rdb_snapshot_start_time = "2024-10-02T15:01:23Z"
///     }
///   }
///   labels = {
///     "abc" = "xyz"
///   }
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "primary_policy" {
///   name          = "my-policy-primary-instance"
///   location      = "asia-east1"
///   service_class = "gcp-memorystore"
///   description   = "my basic service connection policy"
///   network       = gcp_compute_network.primary_producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.primary_producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "primary_producer_subnet" {
///   name          = "my-subnet-primary-instance"
///   ip_cidr_range = "10.0.1.0/29"
///   region        = "asia-east1"
///   network       = gcp_compute_network.primary_producer_net.id
/// }
/// resource "gcp_compute_network" "primary_producer_net" {
///   name                    = "my-network-primary-instance"
///   auto_create_subnetworks = false
/// }
/// // Secondary instance
/// resource "gcp_memorystore_instance" "secondary_instance" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.secondary_policy]
///   instance_id = "secondary-instance"
///   shard_count = 1
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.secondary_producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   location                = "europe-north1"
///   replica_count           = 1
///   node_type               = "SHARED_CORE_NANO"
///   transit_encryption_mode = "TRANSIT_ENCRYPTION_DISABLED"
///   authorization_mode      = "AUTH_DISABLED"
///   engine_configs = {
///     "maxmemory-policy" = "volatile-ttl"
///   }
///   zone_distribution_config = {
///     mode = "SINGLE_ZONE"
///     zone = "europe-north1-c"
///   }
///   deletion_protection_enabled = true
///   // Cross instance replication config
///   cross_instance_replication_config = {
///     instance_role = "SECONDARY"
///     primary_instance = {
///       instance = gcp_memorystore_instance.primary_instance.id
///     }
///   }
///   persistence_config = {
///     mode = "RDB"
///     rdb_config = {
///       rdb_snapshot_period     = "ONE_HOUR"
///       rdb_snapshot_start_time = "2024-10-02T15:01:23Z"
///     }
///   }
///   labels = {
///     "abc" = "xyz"
///   }
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "secondary_policy" {
///   name          = "my-policy-secondary-instance"
///   location      = "europe-north1"
///   service_class = "gcp-memorystore"
///   description   = "my basic service connection policy"
///   network       = gcp_compute_network.secondary_producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.secondary_producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "secondary_producer_subnet" {
///   name          = "my-subnet-secondary-instance"
///   ip_cidr_range = "10.0.2.0/29"
///   region        = "europe-north1"
///   network       = gcp_compute_network.secondary_producer_net.id
/// }
/// resource "gcp_compute_network" "secondary_producer_net" {
///   name                    = "my-network-secondary-instance"
///   auto_create_subnetworks = false
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
/// ### Memorystore Instance Flexible Ca
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.certificateauthority.CaPool("default", {
///     name: "ca-pool",
///     location: "us-central1",
///     tier: "ENTERPRISE",
/// });
/// const memorystoreP4saRequester = new gcp.certificateauthority.CaPoolIamMember("memorystore_p4sa_requester", {
///     caPool: _default.id,
///     role: "roles/privateca.certificateRequester",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-memorystore.iam.gserviceaccount.com`),
/// });
/// const defaultAuthority = new gcp.certificateauthority.Authority("default", {
///     pool: _default.name,
///     certificateAuthorityId: "ca-auth",
///     location: "us-central1",
///     config: {
///         subjectConfig: {
///             subject: {
///                 organization: "Google",
///                 commonName: "my-memorystore-ca",
///             },
///         },
///         x509Config: {
///             caOptions: {
///                 isCa: true,
///             },
///             keyUsage: {
///                 baseKeyUsage: {
///                     certSign: true,
///                     crlSign: true,
///                 },
///                 extendedKeyUsage: {
///                     serverAuth: true,
///                 },
///             },
///         },
///     },
///     keySpec: {
///         algorithm: "RSA_PKCS1_4096_SHA256",
///     },
///     ignoreActiveCertificatesOnDeletion: true,
///     deletionProtection: false,
///     skipGracePeriod: true,
/// });
/// const producerNet = new gcp.compute.Network("producer_net", {
///     name: "ca-network",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnet = new gcp.compute.Subnetwork("producer_subnet", {
///     name: "ca-subnet",
///     ipCidrRange: "10.0.0.248/29",
///     region: "us-central1",
///     network: producerNet.id,
/// });
/// const defaultServiceConnectionPolicy = new gcp.networkconnectivity.ServiceConnectionPolicy("default", {
///     name: "ca-policy",
///     location: "us-central1",
///     serviceClass: "gcp-memorystore",
///     network: producerNet.id,
///     pscConfig: {
///         subnetworks: [producerSubnet.id],
///     },
/// });
/// const test_instance = new gcp.memorystore.Instance("test-instance", {
///     instanceId: "ca-instance",
///     shardCount: 3,
///     location: "us-central1",
///     desiredAutoCreatedEndpoints: [{
///         network: producerNet.id,
///         projectId: project.then(project => project.projectId),
///     }],
///     transitEncryptionMode: "SERVER_AUTHENTICATION",
///     serverCaMode: "CUSTOMER_MANAGED_CAS_CA",
///     serverCaPool: _default.id,
///     deletionProtectionEnabled: true,
/// }, {
///     dependsOn: [
///         defaultServiceConnectionPolicy,
///         defaultAuthority,
///         memorystoreP4saRequester,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.certificateauthority.CaPool("default",
///     name="ca-pool",
///     location="us-central1",
///     tier="ENTERPRISE")
/// memorystore_p4sa_requester = gcp.certificateauthority.CaPoolIamMember("memorystore_p4sa_requester",
///     ca_pool=default.id,
///     role="roles/privateca.certificateRequester",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-memorystore.iam.gserviceaccount.com")
/// default_authority = gcp.certificateauthority.Authority("default",
///     pool=default.name,
///     certificate_authority_id="ca-auth",
///     location="us-central1",
///     config={
///         "subject_config": {
///             "subject": {
///                 "organization": "Google",
///                 "common_name": "my-memorystore-ca",
///             },
///         },
///         "x509_config": {
///             "ca_options": {
///                 "is_ca": True,
///             },
///             "key_usage": {
///                 "base_key_usage": {
///                     "cert_sign": True,
///                     "crl_sign": True,
///                 },
///                 "extended_key_usage": {
///                     "server_auth": True,
///                 },
///             },
///         },
///     },
///     key_spec={
///         "algorithm": "RSA_PKCS1_4096_SHA256",
///     },
///     ignore_active_certificates_on_deletion=True,
///     deletion_protection=False,
///     skip_grace_period=True)
/// producer_net = gcp.compute.Network("producer_net",
///     name="ca-network",
///     auto_create_subnetworks=False)
/// producer_subnet = gcp.compute.Subnetwork("producer_subnet",
///     name="ca-subnet",
///     ip_cidr_range="10.0.0.248/29",
///     region="us-central1",
///     network=producer_net.id)
/// default_service_connection_policy = gcp.networkconnectivity.ServiceConnectionPolicy("default",
///     name="ca-policy",
///     location="us-central1",
///     service_class="gcp-memorystore",
///     network=producer_net.id,
///     psc_config={
///         "subnetworks": [producer_subnet.id],
///     })
/// test_instance = gcp.memorystore.Instance("test-instance",
///     instance_id="ca-instance",
///     shard_count=3,
///     location="us-central1",
///     desired_auto_created_endpoints=[{
///         "network": producer_net.id,
///         "project_id": project.project_id,
///     }],
///     transit_encryption_mode="SERVER_AUTHENTICATION",
///     server_ca_mode="CUSTOMER_MANAGED_CAS_CA",
///     server_ca_pool=default.id,
///     deletion_protection_enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[
///             default_service_connection_policy,
///             default_authority,
///             memorystore_p4sa_requester,
///         ]))
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
///     var @default = new Gcp.CertificateAuthority.CaPool("default", new()
///     {
///         Name = "ca-pool",
///         Location = "us-central1",
///         Tier = "ENTERPRISE",
///     });
///
///     var memorystoreP4saRequester = new Gcp.CertificateAuthority.CaPoolIamMember("memorystore_p4sa_requester", new()
///     {
///         CaPool = @default.Id,
///         Role = "roles/privateca.certificateRequester",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-memorystore.iam.gserviceaccount.com",
///     });
///
///     var defaultAuthority = new Gcp.CertificateAuthority.Authority("default", new()
///     {
///         Pool = @default.Name,
///         CertificateAuthorityId = "ca-auth",
///         Location = "us-central1",
///         Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigArgs
///         {
///             SubjectConfig = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigArgs
///             {
///                 Subject = new Gcp.CertificateAuthority.Inputs.AuthorityConfigSubjectConfigSubjectArgs
///                 {
///                     Organization = "Google",
///                     CommonName = "my-memorystore-ca",
///                 },
///             },
///             X509Config = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigArgs
///             {
///                 CaOptions = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigCaOptionsArgs
///                 {
///                     IsCa = true,
///                 },
///                 KeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageArgs
///                 {
///                     BaseKeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs
///                     {
///                         CertSign = true,
///                         CrlSign = true,
///                     },
///                     ExtendedKeyUsage = new Gcp.CertificateAuthority.Inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs
///                     {
///                         ServerAuth = true,
///                     },
///                 },
///             },
///         },
///         KeySpec = new Gcp.CertificateAuthority.Inputs.AuthorityKeySpecArgs
///         {
///             Algorithm = "RSA_PKCS1_4096_SHA256",
///         },
///         IgnoreActiveCertificatesOnDeletion = true,
///         DeletionProtection = false,
///         SkipGracePeriod = true,
///     });
///
///     var producerNet = new Gcp.Compute.Network("producer_net", new()
///     {
///         Name = "ca-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnet = new Gcp.Compute.Subnetwork("producer_subnet", new()
///     {
///         Name = "ca-subnet",
///         IpCidrRange = "10.0.0.248/29",
///         Region = "us-central1",
///         Network = producerNet.Id,
///     });
///
///     var defaultServiceConnectionPolicy = new Gcp.NetworkConnectivity.ServiceConnectionPolicy("default", new()
///     {
///         Name = "ca-policy",
///         Location = "us-central1",
///         ServiceClass = "gcp-memorystore",
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
///     var test_instance = new Gcp.MemoryStore.Instance("test-instance", new()
///     {
///         InstanceId = "ca-instance",
///         ShardCount = 3,
///         Location = "us-central1",
///         DesiredAutoCreatedEndpoints = new[]
///         {
///             new Gcp.MemoryStore.Inputs.InstanceDesiredAutoCreatedEndpointArgs
///             {
///                 Network = producerNet.Id,
///                 ProjectId = project.Apply(getProjectResult => getProjectResult.ProjectId),
///             },
///         },
///         TransitEncryptionMode = "SERVER_AUTHENTICATION",
///         ServerCaMode = "CUSTOMER_MANAGED_CAS_CA",
///         ServerCaPool = @default.Id,
///         DeletionProtectionEnabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultServiceConnectionPolicy,
///             defaultAuthority,
///             memorystoreP4saRequester,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/memorystore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
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
/// 		_default, err := certificateauthority.NewCaPool(ctx, "default", &certificateauthority.CaPoolArgs{
/// 			Name:     pulumi.String("ca-pool"),
/// 			Location: pulumi.String("us-central1"),
/// 			Tier:     pulumi.String("ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		memorystoreP4saRequester, err := certificateauthority.NewCaPoolIamMember(ctx, "memorystore_p4sa_requester", &certificateauthority.CaPoolIamMemberArgs{
/// 			CaPool: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Role:   pulumi.String("roles/privateca.certificateRequester"),
/// 			Member: pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-memorystore.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAuthority, err := certificateauthority.NewAuthority(ctx, "default", &certificateauthority.AuthorityArgs{
/// 			Pool:                   _default.Name,
/// 			CertificateAuthorityId: pulumi.String("ca-auth"),
/// 			Location:               pulumi.String("us-central1"),
/// 			Config: &certificateauthority.AuthorityConfigArgs{
/// 				SubjectConfig: &certificateauthority.AuthorityConfigSubjectConfigArgs{
/// 					Subject: &certificateauthority.AuthorityConfigSubjectConfigSubjectArgs{
/// 						Organization: pulumi.String("Google"),
/// 						CommonName:   pulumi.String("my-memorystore-ca"),
/// 					},
/// 				},
/// 				X509Config: &certificateauthority.AuthorityConfigX509ConfigArgs{
/// 					CaOptions: &certificateauthority.AuthorityConfigX509ConfigCaOptionsArgs{
/// 						IsCa: pulumi.Bool(true),
/// 					},
/// 					KeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageArgs{
/// 						BaseKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs{
/// 							CertSign: pulumi.Bool(true),
/// 							CrlSign:  pulumi.Bool(true),
/// 						},
/// 						ExtendedKeyUsage: &certificateauthority.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs{
/// 							ServerAuth: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			KeySpec: &certificateauthority.AuthorityKeySpecArgs{
/// 				Algorithm: pulumi.String("RSA_PKCS1_4096_SHA256"),
/// 			},
/// 			IgnoreActiveCertificatesOnDeletion: pulumi.Bool(true),
/// 			DeletionProtection:                 pulumi.Bool(false),
/// 			SkipGracePeriod:                    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerNet, err := compute.NewNetwork(ctx, "producer_net", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("ca-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnet, err := compute.NewSubnetwork(ctx, "producer_subnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("ca-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.0.248/29"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producerNet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServiceConnectionPolicy, err := networkconnectivity.NewServiceConnectionPolicy(ctx, "default", &networkconnectivity.ServiceConnectionPolicyArgs{
/// 			Name:         pulumi.String("ca-policy"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ServiceClass: pulumi.String("gcp-memorystore"),
/// 			Network:      producerNet.ID().ToIDOutput().ToStringOutput(),
/// 			PscConfig: &networkconnectivity.ServiceConnectionPolicyPscConfigArgs{
/// 				Subnetworks: pulumi.StringArray{
/// 					producerSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorystore.NewInstance(ctx, "test-instance", &memorystore.InstanceArgs{
/// 			InstanceId: pulumi.String("ca-instance"),
/// 			ShardCount: pulumi.Int(3),
/// 			Location:   pulumi.String("us-central1"),
/// 			DesiredAutoCreatedEndpoints: memorystore.InstanceDesiredAutoCreatedEndpointArray{
/// 				&memorystore.InstanceDesiredAutoCreatedEndpointArgs{
/// 					Network:   producerNet.ID().ToIDOutput().ToStringOutput(),
/// 					ProjectId: pulumi.String(project.ProjectId),
/// 				},
/// 			},
/// 			TransitEncryptionMode:     pulumi.String("SERVER_AUTHENTICATION"),
/// 			ServerCaMode:              pulumi.String("CUSTOMER_MANAGED_CAS_CA"),
/// 			ServerCaPool:              _default.ID().ToIDOutput().ToStringOutput(),
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultServiceConnectionPolicy,
/// 			defaultAuthority,
/// 			memorystoreP4saRequester,
/// 		}))
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
/// resource "gcp_memorystore_instance" "test-instance" {
///   depends_on  = [gcp_networkconnectivity_serviceconnectionpolicy.default, gcp_certificateauthority_authority.default, gcp_certificateauthority_capooliammember.memorystore_p4sa_requester]
///   instance_id = "ca-instance"
///   shard_count = 3
///   location    = "us-central1"
///   desired_auto_created_endpoints {
///     network    = gcp_compute_network.producer_net.id
///     project_id = data.gcp_organizations_getproject.project.project_id
///   }
///   transit_encryption_mode     = "SERVER_AUTHENTICATION"
///   server_ca_mode              = "CUSTOMER_MANAGED_CAS_CA"
///   server_ca_pool              = gcp_certificateauthority_capool.default.id
///   deletion_protection_enabled = true
/// }
/// resource "gcp_certificateauthority_capool" "default" {
///   name     = "ca-pool"
///   location = "us-central1"
///   tier     = "ENTERPRISE"
/// }
/// resource "gcp_certificateauthority_capooliammember" "memorystore_p4sa_requester" {
///   ca_pool = gcp_certificateauthority_capool.default.id
///   role    = "roles/privateca.certificateRequester"
///   member  ="serviceAccount:service-${data.gcp_organizations_getproject.project.number}@gcp-sa-memorystore.iam.gserviceaccount.com"
/// }
/// resource "gcp_certificateauthority_authority" "default" {
///   pool                     = gcp_certificateauthority_capool.default.name
///   certificate_authority_id = "ca-auth"
///   location                 = "us-central1"
///   config = {
///     subject_config = {
///       subject = {
///         organization = "Google"
///         common_name  = "my-memorystore-ca"
///       }
///     }
///     x509_config = {
///       ca_options = {
///         is_ca = true
///       }
///       key_usage = {
///         base_key_usage = {
///           cert_sign = true
///           crl_sign  = true
///         }
///         extended_key_usage = {
///           server_auth = true
///         }
///       }
///     }
///   }
///   key_spec = {
///     algorithm = "RSA_PKCS1_4096_SHA256"
///   }
///   ignore_active_certificates_on_deletion = true
///   deletion_protection                    = false
///   skip_grace_period                      = true
/// }
/// resource "gcp_networkconnectivity_serviceconnectionpolicy" "default" {
///   name          = "ca-policy"
///   location      = "us-central1"
///   service_class = "gcp-memorystore"
///   network       = gcp_compute_network.producer_net.id
///   psc_config = {
///     subnetworks = [gcp_compute_subnetwork.producer_subnet.id]
///   }
/// }
/// resource "gcp_compute_subnetwork" "producer_subnet" {
///   name          = "ca-subnet"
///   ip_cidr_range = "10.0.0.248/29"
///   region        = "us-central1"
///   network       = gcp_compute_network.producer_net.id
/// }
/// resource "gcp_compute_network" "producer_net" {
///   name                    = "ca-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.certificateauthority.CaPool;
/// import com.pulumi.gcp.certificateauthority.CaPoolArgs;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMember;
/// import com.pulumi.gcp.certificateauthority.CaPoolIamMemberArgs;
/// import com.pulumi.gcp.certificateauthority.Authority;
/// import com.pulumi.gcp.certificateauthority.AuthorityArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigSubjectConfigSubjectArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigCaOptionsArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs;
/// import com.pulumi.gcp.certificateauthority.inputs.AuthorityKeySpecArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicy;
/// import com.pulumi.gcp.networkconnectivity.ServiceConnectionPolicyArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.ServiceConnectionPolicyPscConfigArgs;
/// import com.pulumi.gcp.memorystore.Instance;
/// import com.pulumi.gcp.memorystore.InstanceArgs;
/// import com.pulumi.gcp.memorystore.inputs.InstanceDesiredAutoCreatedEndpointArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new CaPool("default", CaPoolArgs.builder()
///             .name("ca-pool")
///             .location("us-central1")
///             .tier("ENTERPRISE")
///             .build());
///
///         var memorystoreP4saRequester = new CaPoolIamMember("memorystoreP4saRequester", CaPoolIamMemberArgs.builder()
///             .caPool(default_.id())
///             .role("roles/privateca.certificateRequester")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-memorystore.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var defaultAuthority = new Authority("defaultAuthority", AuthorityArgs.builder()
///             .pool(default_.name())
///             .certificateAuthorityId("ca-auth")
///             .location("us-central1")
///             .config(AuthorityConfigArgs.builder()
///                 .subjectConfig(AuthorityConfigSubjectConfigArgs.builder()
///                     .subject(AuthorityConfigSubjectConfigSubjectArgs.builder()
///                         .organization("Google")
///                         .commonName("my-memorystore-ca")
///                         .build())
///                     .build())
///                 .x509Config(AuthorityConfigX509ConfigArgs.builder()
///                     .caOptions(AuthorityConfigX509ConfigCaOptionsArgs.builder()
///                         .isCa(true)
///                         .build())
///                     .keyUsage(AuthorityConfigX509ConfigKeyUsageArgs.builder()
///                         .baseKeyUsage(AuthorityConfigX509ConfigKeyUsageBaseKeyUsageArgs.builder()
///                             .certSign(true)
///                             .crlSign(true)
///                             .build())
///                         .extendedKeyUsage(AuthorityConfigX509ConfigKeyUsageExtendedKeyUsageArgs.builder()
///                             .serverAuth(true)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .keySpec(AuthorityKeySpecArgs.builder()
///                 .algorithm("RSA_PKCS1_4096_SHA256")
///                 .build())
///             .ignoreActiveCertificatesOnDeletion(true)
///             .deletionProtection(false)
///             .skipGracePeriod(true)
///             .build());
///
///         var producerNet = new Network("producerNet", NetworkArgs.builder()
///             .name("ca-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnet = new Subnetwork("producerSubnet", SubnetworkArgs.builder()
///             .name("ca-subnet")
///             .ipCidrRange("10.0.0.248/29")
///             .region("us-central1")
///             .network(producerNet.id())
///             .build());
///
///         var defaultServiceConnectionPolicy = new ServiceConnectionPolicy("defaultServiceConnectionPolicy", ServiceConnectionPolicyArgs.builder()
///             .name("ca-policy")
///             .location("us-central1")
///             .serviceClass("gcp-memorystore")
///             .network(producerNet.id())
///             .pscConfig(ServiceConnectionPolicyPscConfigArgs.builder()
///                 .subnetworks(producerSubnet.id())
///                 .build())
///             .build());
///
///         var test_instance = new Instance("test-instance", InstanceArgs.builder()
///             .instanceId("ca-instance")
///             .shardCount(3)
///             .location("us-central1")
///             .desiredAutoCreatedEndpoints(InstanceDesiredAutoCreatedEndpointArgs.builder()
///                 .network(producerNet.id())
///                 .projectId(project.projectId())
///                 .build())
///             .transitEncryptionMode("SERVER_AUTHENTICATION")
///             .serverCaMode("CUSTOMER_MANAGED_CAS_CA")
///             .serverCaPool(default_.id())
///             .deletionProtectionEnabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     defaultServiceConnectionPolicy,
///                     defaultAuthority,
///                     memorystoreP4saRequester)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-instance:
///     type: gcp:memorystore:Instance
///     properties:
///       instanceId: ca-instance
///       shardCount: 3
///       location: us-central1
///       desiredAutoCreatedEndpoints:
///         - network: ${producerNet.id}
///           projectId: ${project.projectId}
///       transitEncryptionMode: SERVER_AUTHENTICATION
///       serverCaMode: CUSTOMER_MANAGED_CAS_CA
///       serverCaPool: ${default.id}
///       deletionProtectionEnabled: true
///     options:
///       dependsOn:
///         - ${defaultServiceConnectionPolicy}
///         - ${defaultAuthority}
///         - ${memorystoreP4saRequester}
///   default:
///     type: gcp:certificateauthority:CaPool
///     properties:
///       name: ca-pool
///       location: us-central1
///       tier: ENTERPRISE
///   memorystoreP4saRequester:
///     type: gcp:certificateauthority:CaPoolIamMember
///     name: memorystore_p4sa_requester
///     properties:
///       caPool: ${default.id}
///       role: roles/privateca.certificateRequester
///       member: serviceAccount:service-${project.number}@gcp-sa-memorystore.iam.gserviceaccount.com
///   defaultAuthority:
///     type: gcp:certificateauthority:Authority
///     name: default
///     properties:
///       pool: ${default.name}
///       certificateAuthorityId: ca-auth
///       location: us-central1
///       config:
///         subjectConfig:
///           subject:
///             organization: Google
///             commonName: my-memorystore-ca
///         x509Config:
///           caOptions:
///             isCa: true
///           keyUsage:
///             baseKeyUsage:
///               certSign: true
///               crlSign: true
///             extendedKeyUsage:
///               serverAuth: true
///       keySpec:
///         algorithm: RSA_PKCS1_4096_SHA256
///       ignoreActiveCertificatesOnDeletion: true
///       deletionProtection: false
///       skipGracePeriod: true
///   defaultServiceConnectionPolicy:
///     type: gcp:networkconnectivity:ServiceConnectionPolicy
///     name: default
///     properties:
///       name: ca-policy
///       location: us-central1
///       serviceClass: gcp-memorystore
///       network: ${producerNet.id}
///       pscConfig:
///         subnetworks:
///           - ${producerSubnet.id}
///   producerSubnet:
///     type: gcp:compute:Subnetwork
///     name: producer_subnet
///     properties:
///       name: ca-subnet
///       ipCidrRange: 10.0.0.248/29
///       region: us-central1
///       network: ${producerNet.id}
///   producerNet:
///     type: gcp:compute:Network
///     name: producer_net
///     properties:
///       name: ca-network
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
/// * `{{project}}/{{location}}/{{instance_id}}`
/// * `{{location}}/{{instance_id}}`
///
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// $ pulumi import gcp:memorystore/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// $ pulumi import gcp:memorystore/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH.
  /// TOKEN_AUTH is also supported, but only available in the google-beta provider.
  late final pulumi.Output<String> authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAutomatedBackupConfig?> automatedBackupConfig;
  /// This field is used to determine the available maintenance versions for the self service update.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;
  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  late final pulumi.Output<String> backupCollection;
  /// Output only. Creation timestamp of the instance.
  late final pulumi.Output<String> createTime;
  /// Cross instance replication config
  /// Structure is documented below.
  late final pulumi.Output<InstanceCrossInstanceReplicationConfig> crossInstanceReplicationConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. If set to true deletion of the instance will fail.
  late final pulumi.Output<bool?> deletionProtectionEnabled;
  /// Immutable. User inputs for the auto-created endpoints connections.
  late final pulumi.Output<List<Map<String, dynamic>>?> desiredAutoCreatedEndpoints;
  /// `desiredPscAutoConnections` is deprecated  Use `desiredAutoCreatedEndpoints` instead `pulumi import` will only work with desiredAutoCreatedEndpoints`.
  late final pulumi.Output<List<Map<String, dynamic>>?> desiredPscAutoConnections;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  late final pulumi.Output<String> location;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;
  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> maintenanceSchedules;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  late final pulumi.Output<String?> maintenanceVersion;
  /// Managed backup source for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceManagedBackupSource?> managedBackupSource;
  /// Instance's Certificate Authority. This field will only be populated if instance's transitEncryptionMode is SERVER_AUTHENTICATION
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
  /// CUSTOM_PICO
  /// CUSTOM_MICRO
  /// CUSTOM_MINI
  /// HIGHMEM_MEDIUM
  /// HIGHCPU_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  /// STANDARD_LARGE
  /// HIGHMEM_2XLARGE
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
  /// The serverCaMode for the TLS enabled Memorystore instance.
  /// If not provided, GOOGLE_MANAGED_PER_INSTANCE_CA will be used as default
  /// Possible values are: `GOOGLE_MANAGED_PER_INSTANCE_CA`, `GOOGLE_MANAGED_SHARED_CA`, `CUSTOMER_MANAGED_CAS_CA`, `SERVER_CA_MODE_UNSPECIFIED`.
  late final pulumi.Output<String> serverCaMode;
  /// The resource name of the server CA pool for an instance with CUSTOMER_MANAGED_CAS_CA
  /// as the server_ca_mode.
  /// Format: projects/{project}/locations/{region}/caPools/{caPoolId}
  late final pulumi.Output<String?> serverCaPool;
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
  late final pulumi.Output<InstanceZoneDistributionConfig> zoneDistributionConfig;

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
    automatedBackupConfig = registerOutput<InstanceAutomatedBackupConfig?>('automatedBackupConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAutomatedBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availableMaintenanceVersions = registerOutput<List<String>>('availableMaintenanceVersions');
    backupCollection = registerOutput<String>('backupCollection');
    createTime = registerOutput<String>('createTime');
    crossInstanceReplicationConfig = registerOutput<InstanceCrossInstanceReplicationConfig>('crossInstanceReplicationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceCrossInstanceReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    desiredAutoCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>('desiredAutoCreatedEndpoints');
    desiredPscAutoConnections = registerOutput<List<Map<String, dynamic>>?>('desiredPscAutoConnections');
    discoveryEndpoints = registerOutput<List<Map<String, dynamic>>>('discoveryEndpoints');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveMaintenanceVersion = registerOutput<String>('effectiveMaintenanceVersion');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineConfigs = registerOutput<Map<String, String>?>('engineConfigs');
    engineVersion = registerOutput<String>('engineVersion');
    gcsSource = registerOutput<InstanceGcsSource?>('gcsSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>('maintenanceSchedules');
    maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    managedBackupSource = registerOutput<InstanceManagedBackupSource?>('managedBackupSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceManagedBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedServerCas = registerOutput<List<Map<String, dynamic>>>('managedServerCas');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    nodeConfigs = registerOutput<List<Map<String, dynamic>>>('nodeConfigs');
    nodeType = registerOutput<String>('nodeType');
    persistenceConfig = registerOutput<InstancePersistenceConfig>('persistenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pscAttachmentDetails = registerOutput<List<Map<String, dynamic>>>('pscAttachmentDetails');
    pscAutoConnections = registerOutput<List<Map<String, dynamic>>>('pscAutoConnections');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaCount = registerOutput<int>('replicaCount');
    serverCaMode = registerOutput<String>('serverCaMode');
    serverCaPool = registerOutput<String?>('serverCaPool');
    shardCount = registerOutput<int>('shardCount');
    state = registerOutput<String>('state');
    stateInfos = registerOutput<List<Map<String, dynamic>>>('stateInfos');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zoneDistributionConfig = registerOutput<InstanceZoneDistributionConfig>('zoneDistributionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceZoneDistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
    automatedBackupConfig = registerOutput<InstanceAutomatedBackupConfig?>('automatedBackupConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceAutomatedBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availableMaintenanceVersions = registerOutput<List<String>>('availableMaintenanceVersions');
    backupCollection = registerOutput<String>('backupCollection');
    createTime = registerOutput<String>('createTime');
    crossInstanceReplicationConfig = registerOutput<InstanceCrossInstanceReplicationConfig>('crossInstanceReplicationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceCrossInstanceReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtectionEnabled = registerOutput<bool?>('deletionProtectionEnabled');
    desiredAutoCreatedEndpoints = registerOutput<List<Map<String, dynamic>>?>('desiredAutoCreatedEndpoints');
    desiredPscAutoConnections = registerOutput<List<Map<String, dynamic>>?>('desiredPscAutoConnections');
    discoveryEndpoints = registerOutput<List<Map<String, dynamic>>>('discoveryEndpoints');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveMaintenanceVersion = registerOutput<String>('effectiveMaintenanceVersion');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineConfigs = registerOutput<Map<String, String>?>('engineConfigs');
    engineVersion = registerOutput<String>('engineVersion');
    gcsSource = registerOutput<InstanceGcsSource?>('gcsSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    kmsKey = registerOutput<String?>('kmsKey');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>('maintenanceSchedules');
    maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    managedBackupSource = registerOutput<InstanceManagedBackupSource?>('managedBackupSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceManagedBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedServerCas = registerOutput<List<Map<String, dynamic>>>('managedServerCas');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    nodeConfigs = registerOutput<List<Map<String, dynamic>>>('nodeConfigs');
    nodeType = registerOutput<String>('nodeType');
    persistenceConfig = registerOutput<InstancePersistenceConfig>('persistenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pscAttachmentDetails = registerOutput<List<Map<String, dynamic>>>('pscAttachmentDetails');
    pscAutoConnections = registerOutput<List<Map<String, dynamic>>>('pscAutoConnections');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaCount = registerOutput<int>('replicaCount');
    serverCaMode = registerOutput<String>('serverCaMode');
    serverCaPool = registerOutput<String?>('serverCaPool');
    shardCount = registerOutput<int>('shardCount');
    this.state = registerOutput<String>('state');
    stateInfos = registerOutput<List<Map<String, dynamic>>>('stateInfos');
    transitEncryptionMode = registerOutput<String>('transitEncryptionMode');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    zoneDistributionConfig = registerOutput<InstanceZoneDistributionConfig>('zoneDistributionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceZoneDistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
