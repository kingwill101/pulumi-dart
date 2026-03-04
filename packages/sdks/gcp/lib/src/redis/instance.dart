import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_maintenance_policy.dart';
import 'instance_persistence_config.dart';
import 'instance_state.dart';

/// A Google Cloud Redis instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memorystore/docs/redis/)
///
/// ## Example Usage
///
/// ### Redis Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cache = new gcp.redis.Instance("cache", {
///     name: "memory-cache",
///     memorySizeGb: 1,
///     deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cache = gcp.redis.Instance("cache",
///     name="memory-cache",
///     memory_size_gb=1,
///     deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cache = new Gcp.Redis.Instance("cache", new()
///     {
///         Name = "memory-cache",
///         MemorySizeGb = 1,
///         DeletionProtection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewInstance(ctx, "cache", &redis.InstanceArgs{
/// 			Name:               pulumi.String("memory-cache"),
/// 			MemorySizeGb:       pulumi.Int(1),
/// 			DeletionProtection: pulumi.Bool(false),
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
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
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
///         var cache = new Instance("cache", InstanceArgs.builder()
///             .name("memory-cache")
///             .memorySizeGb(1)
///             .deletionProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache:
///     type: gcp:redis:Instance
///     properties:
///       name: memory-cache
///       memorySizeGb: 1
///       deletionProtection: false
/// ```
///
/// ### Redis Instance Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Redis instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const redis_network = gcp.compute.getNetwork({
///     name: "redis-test-network",
/// });
/// const cache = new gcp.redis.Instance("cache", {
///     name: "ha-memory-cache",
///     tier: "STANDARD_HA",
///     memorySizeGb: 1,
///     locationId: "us-central1-a",
///     alternativeLocationId: "us-central1-f",
///     authorizedNetwork: redis_network.then(redis_network => redis_network.id),
///     redisVersion: "REDIS_7_2",
///     displayName: "Test Instance",
///     reservedIpRange: "192.168.0.0/29",
///     labels: {
///         my_key: "my_val",
///         other_key: "other_val",
///     },
///     maintenancePolicy: {
///         weeklyMaintenanceWindows: [{
///             day: "TUESDAY",
///             startTime: {
///                 hours: 0,
///                 minutes: 30,
///                 seconds: 0,
///                 nanos: 0,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Redis instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// redis_network = gcp.compute.get_network(name="redis-test-network")
/// cache = gcp.redis.Instance("cache",
///     name="ha-memory-cache",
///     tier="STANDARD_HA",
///     memory_size_gb=1,
///     location_id="us-central1-a",
///     alternative_location_id="us-central1-f",
///     authorized_network=redis_network.id,
///     redis_version="REDIS_7_2",
///     display_name="Test Instance",
///     reserved_ip_range="192.168.0.0/29",
///     labels={
///         "my_key": "my_val",
///         "other_key": "other_val",
///     },
///     maintenance_policy={
///         "weekly_maintenance_windows": [{
///             "day": "TUESDAY",
///             "start_time": {
///                 "hours": 0,
///                 "minutes": 30,
///                 "seconds": 0,
///                 "nanos": 0,
///             },
///         }],
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
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Redis instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var redis_network = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "redis-test-network",
///     });
///
///     var cache = new Gcp.Redis.Instance("cache", new()
///     {
///         Name = "ha-memory-cache",
///         Tier = "STANDARD_HA",
///         MemorySizeGb = 1,
///         LocationId = "us-central1-a",
///         AlternativeLocationId = "us-central1-f",
///         AuthorizedNetwork = redis_network.Apply(redis_network => redis_network.Apply(getNetworkResult => getNetworkResult.Id)),
///         RedisVersion = "REDIS_7_2",
///         DisplayName = "Test Instance",
///         ReservedIpRange = "192.168.0.0/29",
///         Labels =
///         {
///             { "my_key", "my_val" },
///             { "other_key", "other_val" },
///         },
///         MaintenancePolicy = new Gcp.Redis.Inputs.InstanceMaintenancePolicyArgs
///         {
///             WeeklyMaintenanceWindows = new[]
///             {
///                 new Gcp.Redis.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs
///                 {
///                     Day = "TUESDAY",
///                     StartTime = new Gcp.Redis.Inputs.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs
///                     {
///                         Hours = 0,
///                         Minutes = 30,
///                         Seconds = 0,
///                         Nanos = 0,
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Redis instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		redis_network, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "redis-test-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewInstance(ctx, "cache", &redis.InstanceArgs{
/// 			Name:                  pulumi.String("ha-memory-cache"),
/// 			Tier:                  pulumi.String("STANDARD_HA"),
/// 			MemorySizeGb:          pulumi.Int(1),
/// 			LocationId:            pulumi.String("us-central1-a"),
/// 			AlternativeLocationId: pulumi.String("us-central1-f"),
/// 			AuthorizedNetwork:     pulumi.String(redis_network.Id),
/// 			RedisVersion:          pulumi.String("REDIS_7_2"),
/// 			DisplayName:           pulumi.String("Test Instance"),
/// 			ReservedIpRange:       pulumi.String("192.168.0.0/29"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":    pulumi.String("my_val"),
/// 				"other_key": pulumi.String("other_val"),
/// 			},
/// 			MaintenancePolicy: &redis.InstanceMaintenancePolicyArgs{
/// 				WeeklyMaintenanceWindows: redis.InstanceMaintenancePolicyWeeklyMaintenanceWindowArray{
/// 					&redis.InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs{
/// 						Day: pulumi.String("TUESDAY"),
/// 						StartTime: &redis.InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs{
/// 							Hours:   pulumi.Int(0),
/// 							Minutes: pulumi.Int(30),
/// 							Seconds: pulumi.Int(0),
/// 							Nanos:   pulumi.Int(0),
/// 						},
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
/// import com.pulumi.gcp.redis.inputs.InstanceMaintenancePolicyArgs;
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
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Redis instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         final var redis-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("redis-test-network")
///             .build());
///
///         var cache = new Instance("cache", InstanceArgs.builder()
///             .name("ha-memory-cache")
///             .tier("STANDARD_HA")
///             .memorySizeGb(1)
///             .locationId("us-central1-a")
///             .alternativeLocationId("us-central1-f")
///             .authorizedNetwork(redis_network.id())
///             .redisVersion("REDIS_7_2")
///             .displayName("Test Instance")
///             .reservedIpRange("192.168.0.0/29")
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "my_val"),
///                 Map.entry("other_key", "other_val")
///             ))
///             .maintenancePolicy(InstanceMaintenancePolicyArgs.builder()
///                 .weeklyMaintenanceWindows(InstanceMaintenancePolicyWeeklyMaintenanceWindowArgs.builder()
///                     .day("TUESDAY")
///                     .startTime(InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTimeArgs.builder()
///                         .hours(0)
///                         .minutes(30)
///                         .seconds(0)
///                         .nanos(0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache:
///     type: gcp:redis:Instance
///     properties:
///       name: ha-memory-cache
///       tier: STANDARD_HA
///       memorySizeGb: 1
///       locationId: us-central1-a
///       alternativeLocationId: us-central1-f
///       authorizedNetwork: ${["redis-network"].id}
///       redisVersion: REDIS_7_2
///       displayName: Test Instance
///       reservedIpRange: 192.168.0.0/29
///       labels:
///         my_key: my_val
///         other_key: other_val
///       maintenancePolicy:
///         weeklyMaintenanceWindows:
///           - day: TUESDAY
///             startTime:
///               hours: 0
///               minutes: 30
///               seconds: 0
///               nanos: 0
/// variables:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Redis instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   redis-network:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: redis-test-network
/// ```
///
/// ### Redis Instance Full With Persistence Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cache_persis = new gcp.redis.Instance("cache-persis", {
///     name: "ha-memory-cache-persis",
///     tier: "STANDARD_HA",
///     memorySizeGb: 1,
///     locationId: "us-central1-a",
///     alternativeLocationId: "us-central1-f",
///     persistenceConfig: {
///         persistenceMode: "RDB",
///         rdbSnapshotPeriod: "TWELVE_HOURS",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cache_persis = gcp.redis.Instance("cache-persis",
///     name="ha-memory-cache-persis",
///     tier="STANDARD_HA",
///     memory_size_gb=1,
///     location_id="us-central1-a",
///     alternative_location_id="us-central1-f",
///     persistence_config={
///         "persistence_mode": "RDB",
///         "rdb_snapshot_period": "TWELVE_HOURS",
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
///     var cache_persis = new Gcp.Redis.Instance("cache-persis", new()
///     {
///         Name = "ha-memory-cache-persis",
///         Tier = "STANDARD_HA",
///         MemorySizeGb = 1,
///         LocationId = "us-central1-a",
///         AlternativeLocationId = "us-central1-f",
///         PersistenceConfig = new Gcp.Redis.Inputs.InstancePersistenceConfigArgs
///         {
///             PersistenceMode = "RDB",
///             RdbSnapshotPeriod = "TWELVE_HOURS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewInstance(ctx, "cache-persis", &redis.InstanceArgs{
/// 			Name:                  pulumi.String("ha-memory-cache-persis"),
/// 			Tier:                  pulumi.String("STANDARD_HA"),
/// 			MemorySizeGb:          pulumi.Int(1),
/// 			LocationId:            pulumi.String("us-central1-a"),
/// 			AlternativeLocationId: pulumi.String("us-central1-f"),
/// 			PersistenceConfig: &redis.InstancePersistenceConfigArgs{
/// 				PersistenceMode:   pulumi.String("RDB"),
/// 				RdbSnapshotPeriod: pulumi.String("TWELVE_HOURS"),
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
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
/// import com.pulumi.gcp.redis.inputs.InstancePersistenceConfigArgs;
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
///         var cache_persis = new Instance("cache-persis", InstanceArgs.builder()
///             .name("ha-memory-cache-persis")
///             .tier("STANDARD_HA")
///             .memorySizeGb(1)
///             .locationId("us-central1-a")
///             .alternativeLocationId("us-central1-f")
///             .persistenceConfig(InstancePersistenceConfigArgs.builder()
///                 .persistenceMode("RDB")
///                 .rdbSnapshotPeriod("TWELVE_HOURS")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache-persis:
///     type: gcp:redis:Instance
///     properties:
///       name: ha-memory-cache-persis
///       tier: STANDARD_HA
///       memorySizeGb: 1
///       locationId: us-central1-a
///       alternativeLocationId: us-central1-f
///       persistenceConfig:
///         persistenceMode: RDB
///         rdbSnapshotPeriod: TWELVE_HOURS
/// ```
///
/// ### Redis Instance Private Service
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Redis instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const redis_network = new gcp.compute.Network("redis-network", {name: "redis-test-network"});
/// const serviceRange = new gcp.compute.GlobalAddress("service_range", {
///     name: "address",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: redis_network.id,
/// });
/// const privateServiceConnection = new gcp.servicenetworking.Connection("private_service_connection", {
///     network: redis_network.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [serviceRange.name],
/// });
/// const cache = new gcp.redis.Instance("cache", {
///     name: "private-cache",
///     tier: "STANDARD_HA",
///     memorySizeGb: 1,
///     locationId: "us-central1-a",
///     alternativeLocationId: "us-central1-f",
///     authorizedNetwork: redis_network.id,
///     connectMode: "PRIVATE_SERVICE_ACCESS",
///     redisVersion: "REDIS_7_2",
///     displayName: "Test Instance",
/// }, {
///     dependsOn: [privateServiceConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Redis instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// redis_network = gcp.compute.Network("redis-network", name="redis-test-network")
/// service_range = gcp.compute.GlobalAddress("service_range",
///     name="address",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=redis_network.id)
/// private_service_connection = gcp.servicenetworking.Connection("private_service_connection",
///     network=redis_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[service_range.name])
/// cache = gcp.redis.Instance("cache",
///     name="private-cache",
///     tier="STANDARD_HA",
///     memory_size_gb=1,
///     location_id="us-central1-a",
///     alternative_location_id="us-central1-f",
///     authorized_network=redis_network.id,
///     connect_mode="PRIVATE_SERVICE_ACCESS",
///     redis_version="REDIS_7_2",
///     display_name="Test Instance",
///     opts = pulumi.ResourceOptions(depends_on=[private_service_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Redis instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var redis_network = new Gcp.Compute.Network("redis-network", new()
///     {
///         Name = "redis-test-network",
///     });
///
///     var serviceRange = new Gcp.Compute.GlobalAddress("service_range", new()
///     {
///         Name = "address",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = redis_network.Id,
///     });
///
///     var privateServiceConnection = new Gcp.ServiceNetworking.Connection("private_service_connection", new()
///     {
///         Network = redis_network.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             serviceRange.Name,
///         },
///     });
///
///     var cache = new Gcp.Redis.Instance("cache", new()
///     {
///         Name = "private-cache",
///         Tier = "STANDARD_HA",
///         MemorySizeGb = 1,
///         LocationId = "us-central1-a",
///         AlternativeLocationId = "us-central1-f",
///         AuthorizedNetwork = redis_network.Id,
///         ConnectMode = "PRIVATE_SERVICE_ACCESS",
///         RedisVersion = "REDIS_7_2",
///         DisplayName = "Test Instance",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             privateServiceConnection,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Redis instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		redis_network, err := compute.NewNetwork(ctx, "redis-network", &compute.NetworkArgs{
/// 			Name: pulumi.String("redis-test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceRange, err := compute.NewGlobalAddress(ctx, "service_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("address"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      redis_network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateServiceConnection, err := servicenetworking.NewConnection(ctx, "private_service_connection", &servicenetworking.ConnectionArgs{
/// 			Network: redis_network.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				serviceRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewInstance(ctx, "cache", &redis.InstanceArgs{
/// 			Name:                  pulumi.String("private-cache"),
/// 			Tier:                  pulumi.String("STANDARD_HA"),
/// 			MemorySizeGb:          pulumi.Int(1),
/// 			LocationId:            pulumi.String("us-central1-a"),
/// 			AlternativeLocationId: pulumi.String("us-central1-f"),
/// 			AuthorizedNetwork:     redis_network.ID(),
/// 			ConnectMode:           pulumi.String("PRIVATE_SERVICE_ACCESS"),
/// 			RedisVersion:          pulumi.String("REDIS_7_2"),
/// 			DisplayName:           pulumi.String("Test Instance"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			privateServiceConnection,
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
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
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Redis instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         var redis_network = new Network("redis-network", NetworkArgs.builder()
///             .name("redis-test-network")
///             .build());
///
///         var serviceRange = new GlobalAddress("serviceRange", GlobalAddressArgs.builder()
///             .name("address")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(redis_network.id())
///             .build());
///
///         var privateServiceConnection = new Connection("privateServiceConnection", ConnectionArgs.builder()
///             .network(redis_network.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(serviceRange.name())
///             .build());
///
///         var cache = new Instance("cache", InstanceArgs.builder()
///             .name("private-cache")
///             .tier("STANDARD_HA")
///             .memorySizeGb(1)
///             .locationId("us-central1-a")
///             .alternativeLocationId("us-central1-f")
///             .authorizedNetwork(redis_network.id())
///             .connectMode("PRIVATE_SERVICE_ACCESS")
///             .redisVersion("REDIS_7_2")
///             .displayName("Test Instance")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(privateServiceConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Redis instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   redis-network:
///     type: gcp:compute:Network
///     properties:
///       name: redis-test-network
///   serviceRange:
///     type: gcp:compute:GlobalAddress
///     name: service_range
///     properties:
///       name: address
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${["redis-network"].id}
///   privateServiceConnection:
///     type: gcp:servicenetworking:Connection
///     name: private_service_connection
///     properties:
///       network: ${["redis-network"].id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${serviceRange.name}
///   cache:
///     type: gcp:redis:Instance
///     properties:
///       name: private-cache
///       tier: STANDARD_HA
///       memorySizeGb: 1
///       locationId: us-central1-a
///       alternativeLocationId: us-central1-f
///       authorizedNetwork: ${["redis-network"].id}
///       connectMode: PRIVATE_SERVICE_ACCESS
///       redisVersion: REDIS_7_2
///       displayName: Test Instance
///     options:
///       dependsOn:
///         - ${privateServiceConnection}
/// ```
///
/// ### Redis Instance Mrr
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Redis instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const redis_network = gcp.compute.getNetwork({
///     name: "redis-test-network",
/// });
/// const cache = new gcp.redis.Instance("cache", {
///     name: "mrr-memory-cache",
///     tier: "STANDARD_HA",
///     memorySizeGb: 5,
///     locationId: "us-central1-a",
///     alternativeLocationId: "us-central1-f",
///     authorizedNetwork: redis_network.then(redis_network => redis_network.id),
///     redisVersion: "REDIS_7_2",
///     displayName: "Terraform Test Instance",
///     replicaCount: 5,
///     readReplicasMode: "READ_REPLICAS_ENABLED",
///     labels: {
///         my_key: "my_val",
///         other_key: "other_val",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Redis instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// redis_network = gcp.compute.get_network(name="redis-test-network")
/// cache = gcp.redis.Instance("cache",
///     name="mrr-memory-cache",
///     tier="STANDARD_HA",
///     memory_size_gb=5,
///     location_id="us-central1-a",
///     alternative_location_id="us-central1-f",
///     authorized_network=redis_network.id,
///     redis_version="REDIS_7_2",
///     display_name="Terraform Test Instance",
///     replica_count=5,
///     read_replicas_mode="READ_REPLICAS_ENABLED",
///     labels={
///         "my_key": "my_val",
///         "other_key": "other_val",
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
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Redis instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var redis_network = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "redis-test-network",
///     });
///
///     var cache = new Gcp.Redis.Instance("cache", new()
///     {
///         Name = "mrr-memory-cache",
///         Tier = "STANDARD_HA",
///         MemorySizeGb = 5,
///         LocationId = "us-central1-a",
///         AlternativeLocationId = "us-central1-f",
///         AuthorizedNetwork = redis_network.Apply(redis_network => redis_network.Apply(getNetworkResult => getNetworkResult.Id)),
///         RedisVersion = "REDIS_7_2",
///         DisplayName = "Terraform Test Instance",
///         ReplicaCount = 5,
///         ReadReplicasMode = "READ_REPLICAS_ENABLED",
///         Labels =
///         {
///             { "my_key", "my_val" },
///             { "other_key", "other_val" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Redis instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		redis_network, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "redis-test-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewInstance(ctx, "cache", &redis.InstanceArgs{
/// 			Name:                  pulumi.String("mrr-memory-cache"),
/// 			Tier:                  pulumi.String("STANDARD_HA"),
/// 			MemorySizeGb:          pulumi.Int(5),
/// 			LocationId:            pulumi.String("us-central1-a"),
/// 			AlternativeLocationId: pulumi.String("us-central1-f"),
/// 			AuthorizedNetwork:     pulumi.String(redis_network.Id),
/// 			RedisVersion:          pulumi.String("REDIS_7_2"),
/// 			DisplayName:           pulumi.String("Terraform Test Instance"),
/// 			ReplicaCount:          pulumi.Int(5),
/// 			ReadReplicasMode:      pulumi.String("READ_REPLICAS_ENABLED"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":    pulumi.String("my_val"),
/// 				"other_key": pulumi.String("other_val"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
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
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Redis instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         final var redis-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("redis-test-network")
///             .build());
///
///         var cache = new Instance("cache", InstanceArgs.builder()
///             .name("mrr-memory-cache")
///             .tier("STANDARD_HA")
///             .memorySizeGb(5)
///             .locationId("us-central1-a")
///             .alternativeLocationId("us-central1-f")
///             .authorizedNetwork(redis_network.id())
///             .redisVersion("REDIS_7_2")
///             .displayName("Terraform Test Instance")
///             .replicaCount(5)
///             .readReplicasMode("READ_REPLICAS_ENABLED")
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "my_val"),
///                 Map.entry("other_key", "other_val")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache:
///     type: gcp:redis:Instance
///     properties:
///       name: mrr-memory-cache
///       tier: STANDARD_HA
///       memorySizeGb: 5
///       locationId: us-central1-a
///       alternativeLocationId: us-central1-f
///       authorizedNetwork: ${["redis-network"].id}
///       redisVersion: REDIS_7_2
///       displayName: Terraform Test Instance
///       replicaCount: 5
///       readReplicasMode: READ_REPLICAS_ENABLED
///       labels:
///         my_key: my_val
///         other_key: other_val
/// variables:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Redis instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   redis-network:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: redis-test-network
/// ```
///
/// ### Redis Instance Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const redisKeyring = new gcp.kms.KeyRing("redis_keyring", {
///     name: "redis-keyring",
///     location: "us-central1",
/// });
/// const redisKey = new gcp.kms.CryptoKey("redis_key", {
///     name: "redis-key",
///     keyRing: redisKeyring.id,
/// });
/// // This example assumes this network already exists.
/// // The API creates a tenant network per network authorized for a
/// // Redis instance and that network is not deleted when the user-created
/// // network (authorized_network) is deleted, so this prevents issues
/// // with tenant network quota.
/// // If this network hasn't been created and you are using this example in your
/// // config, add an additional network resource or change
/// // this from "data"to "resource"
/// const redis_network = gcp.compute.getNetwork({
///     name: "redis-test-network",
/// });
/// const cache = new gcp.redis.Instance("cache", {
///     name: "cmek-memory-cache",
///     tier: "STANDARD_HA",
///     memorySizeGb: 1,
///     locationId: "us-central1-a",
///     alternativeLocationId: "us-central1-f",
///     authorizedNetwork: redis_network.then(redis_network => redis_network.id),
///     redisVersion: "REDIS_7_2",
///     displayName: "Terraform Test Instance",
///     labels: {
///         my_key: "my_val",
///         other_key: "other_val",
///     },
///     customerManagedKey: redisKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// redis_keyring = gcp.kms.KeyRing("redis_keyring",
///     name="redis-keyring",
///     location="us-central1")
/// redis_key = gcp.kms.CryptoKey("redis_key",
///     name="redis-key",
///     key_ring=redis_keyring.id)
/// # This example assumes this network already exists.
/// # The API creates a tenant network per network authorized for a
/// # Redis instance and that network is not deleted when the user-created
/// # network (authorized_network) is deleted, so this prevents issues
/// # with tenant network quota.
/// # If this network hasn't been created and you are using this example in your
/// # config, add an additional network resource or change
/// # this from "data"to "resource"
/// redis_network = gcp.compute.get_network(name="redis-test-network")
/// cache = gcp.redis.Instance("cache",
///     name="cmek-memory-cache",
///     tier="STANDARD_HA",
///     memory_size_gb=1,
///     location_id="us-central1-a",
///     alternative_location_id="us-central1-f",
///     authorized_network=redis_network.id,
///     redis_version="REDIS_7_2",
///     display_name="Terraform Test Instance",
///     labels={
///         "my_key": "my_val",
///         "other_key": "other_val",
///     },
///     customer_managed_key=redis_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redisKeyring = new Gcp.Kms.KeyRing("redis_keyring", new()
///     {
///         Name = "redis-keyring",
///         Location = "us-central1",
///     });
///
///     var redisKey = new Gcp.Kms.CryptoKey("redis_key", new()
///     {
///         Name = "redis-key",
///         KeyRing = redisKeyring.Id,
///     });
///
///     // This example assumes this network already exists.
///     // The API creates a tenant network per network authorized for a
///     // Redis instance and that network is not deleted when the user-created
///     // network (authorized_network) is deleted, so this prevents issues
///     // with tenant network quota.
///     // If this network hasn't been created and you are using this example in your
///     // config, add an additional network resource or change
///     // this from "data"to "resource"
///     var redis_network = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "redis-test-network",
///     });
///
///     var cache = new Gcp.Redis.Instance("cache", new()
///     {
///         Name = "cmek-memory-cache",
///         Tier = "STANDARD_HA",
///         MemorySizeGb = 1,
///         LocationId = "us-central1-a",
///         AlternativeLocationId = "us-central1-f",
///         AuthorizedNetwork = redis_network.Apply(redis_network => redis_network.Apply(getNetworkResult => getNetworkResult.Id)),
///         RedisVersion = "REDIS_7_2",
///         DisplayName = "Terraform Test Instance",
///         Labels =
///         {
///             { "my_key", "my_val" },
///             { "other_key", "other_val" },
///         },
///         CustomerManagedKey = redisKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		redisKeyring, err := kms.NewKeyRing(ctx, "redis_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("redis-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		redisKey, err := kms.NewCryptoKey(ctx, "redis_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("redis-key"),
/// 			KeyRing: redisKeyring.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// This example assumes this network already exists.
/// 		// The API creates a tenant network per network authorized for a
/// 		// Redis instance and that network is not deleted when the user-created
/// 		// network (authorized_network) is deleted, so this prevents issues
/// 		// with tenant network quota.
/// 		// If this network hasn't been created and you are using this example in your
/// 		// config, add an additional network resource or change
/// 		// this from "data"to "resource"
/// 		redis_network, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "redis-test-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewInstance(ctx, "cache", &redis.InstanceArgs{
/// 			Name:                  pulumi.String("cmek-memory-cache"),
/// 			Tier:                  pulumi.String("STANDARD_HA"),
/// 			MemorySizeGb:          pulumi.Int(1),
/// 			LocationId:            pulumi.String("us-central1-a"),
/// 			AlternativeLocationId: pulumi.String("us-central1-f"),
/// 			AuthorizedNetwork:     pulumi.String(redis_network.Id),
/// 			RedisVersion:          pulumi.String("REDIS_7_2"),
/// 			DisplayName:           pulumi.String("Terraform Test Instance"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":    pulumi.String("my_val"),
/// 				"other_key": pulumi.String("other_val"),
/// 			},
/// 			CustomerManagedKey: redisKey.ID(),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.redis.Instance;
/// import com.pulumi.gcp.redis.InstanceArgs;
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
///         var redisKeyring = new KeyRing("redisKeyring", KeyRingArgs.builder()
///             .name("redis-keyring")
///             .location("us-central1")
///             .build());
///
///         var redisKey = new CryptoKey("redisKey", CryptoKeyArgs.builder()
///             .name("redis-key")
///             .keyRing(redisKeyring.id())
///             .build());
///
///         // This example assumes this network already exists.
///         // The API creates a tenant network per network authorized for a
///         // Redis instance and that network is not deleted when the user-created
///         // network (authorized_network) is deleted, so this prevents issues
///         // with tenant network quota.
///         // If this network hasn't been created and you are using this example in your
///         // config, add an additional network resource or change
///         // this from "data"to "resource"
///         final var redis-network = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("redis-test-network")
///             .build());
///
///         var cache = new Instance("cache", InstanceArgs.builder()
///             .name("cmek-memory-cache")
///             .tier("STANDARD_HA")
///             .memorySizeGb(1)
///             .locationId("us-central1-a")
///             .alternativeLocationId("us-central1-f")
///             .authorizedNetwork(redis_network.id())
///             .redisVersion("REDIS_7_2")
///             .displayName("Terraform Test Instance")
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "my_val"),
///                 Map.entry("other_key", "other_val")
///             ))
///             .customerManagedKey(redisKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cache:
///     type: gcp:redis:Instance
///     properties:
///       name: cmek-memory-cache
///       tier: STANDARD_HA
///       memorySizeGb: 1
///       locationId: us-central1-a
///       alternativeLocationId: us-central1-f
///       authorizedNetwork: ${["redis-network"].id}
///       redisVersion: REDIS_7_2
///       displayName: Terraform Test Instance
///       labels:
///         my_key: my_val
///         other_key: other_val
///       customerManagedKey: ${redisKey.id}
///   redisKeyring:
///     type: gcp:kms:KeyRing
///     name: redis_keyring
///     properties:
///       name: redis-keyring
///       location: us-central1
///   redisKey:
///     type: gcp:kms:CryptoKey
///     name: redis_key
///     properties:
///       name: redis-key
///       keyRing: ${redisKeyring.id}
/// variables:
///   # This example assumes this network already exists.
///   # // The API creates a tenant network per network authorized for a
///   # // Redis instance and that network is not deleted when the user-created
///   # // network (authorized_network) is deleted, so this prevents issues
///   # // with tenant network quota.
///   # // If this network hasn't been created and you are using this example in your
///   # // config, add an additional network resource or change
///   # // this from "data"to "resource"
///   redis-network:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: redis-test-network
/// ```
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/instance:Instance default {{name}}
/// ```
class Instance extends pulumi.CustomResource {
  /// Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones.
  /// If provided, it must be a different zone from the one provided in
  /// [locationId].
  late final pulumi.Output<String> alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// instance. If set to "true" AUTH is enabled on the instance.
  /// Default value is "false" meaning AUTH is disabled.
  late final pulumi.Output<bool?> authEnabled;

  /// AUTH String set on the instance. This field will only be populated if auth_enabled is true.
  late final pulumi.Output<String> authString;

  /// The full name of the Google Compute Engine network to which the
  /// instance is connected. If left unspecified, the default network
  /// will be used.
  late final pulumi.Output<String> authorizedNetwork;

  /// The connection mode of the Redis instance.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`.
  late final pulumi.Output<String?> connectMode;

  /// (Output)
  /// The time when the certificate was created.
  late final pulumi.Output<String> createTime;

  /// The current zone where the Redis endpoint is placed.
  /// For Basic Tier instances, this will always be the same as the
  /// [locationId] provided by the user at creation time. For Standard Tier
  /// instances, this can be either [locationId] or [alternativeLocationId]
  /// and can change after a failover event.
  late final pulumi.Output<String> currentLocationId;

  /// Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// instance. If this is provided, CMEK is enabled.
  late final pulumi.Output<String?> customerManagedKey;
  late final pulumi.Output<bool?> deletionProtection;

  /// An arbitrary and optional user-provided name for the instance.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  late final pulumi.Output<String> effectiveReservedIpRange;

  /// Hostname or IP address of the exposed Redis endpoint used by clients
  /// to connect to the service.
  late final pulumi.Output<String> host;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The zone where the instance will be provisioned. If not provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against
  /// zonal failures. If [alternativeLocationId] is also provided, it must
  /// be different from [locationId].
  late final pulumi.Output<String> locationId;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> maintenanceSchedules;

  /// The self service update maintenance version.
  late final pulumi.Output<String> maintenanceVersion;

  /// Redis memory size in GiB.
  late final pulumi.Output<int> memorySizeGb;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final pulumi.Output<String> name;

  /// Output only. Info per node.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> nodes;

  /// Persistence configuration for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstancePersistenceConfig> persistenceConfig;

  /// Output only. Cloud IAM identity used by import / export operations
  /// to transfer data to/from Cloud Storage. Format is "serviceAccount:".
  /// The value may change over time for a given instance so should be
  /// checked before each import/export operation.
  late final pulumi.Output<String> persistenceIamIdentity;

  /// The port number of the exposed Redis endpoint.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only.
  /// Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes
  /// will exhibit some lag behind the primary. Write requests must target 'host'.
  late final pulumi.Output<String> readEndpoint;

  /// Output only. The port number of the exposed readonly redis endpoint. Standard tier only.
  /// Write requests should target 'port'.
  late final pulumi.Output<int> readEndpointPort;

  /// Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
  /// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
  /// instance cannot scale up or down the number of replicas.
  /// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
  /// can scale up and down the number of replicas.
  /// Possible values are: `READ_REPLICAS_DISABLED`, `READ_REPLICAS_ENABLED`.
  late final pulumi.Output<String> readReplicasMode;

  /// Redis configuration parameters, according to http://redis.io/topics/config.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
  late final pulumi.Output<Map<String, String>?> redisConfigs;

  /// The version of Redis software. If not provided, latest supported
  /// version will be used. Please check the API documentation linked
  /// at the top for the latest valid values.
  late final pulumi.Output<String> redisVersion;

  /// The name of the Redis region of the instance.
  late final pulumi.Output<String> region;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
  /// for a Standard Tier instance, the only valid value is 1 and the default is 1.
  /// The valid value for basic tier is 0 and the default is also 0.
  late final pulumi.Output<int> replicaCount;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  late final pulumi.Output<String> reservedIpRange;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
  /// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  late final pulumi.Output<String> secondaryIpRange;

  /// List of server CA certificates for the instance.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> serverCaCerts;

  /// The service tier of the instance. Must be one of these values:
  /// - BASIC: standalone instance
  /// - STANDARD_HA: highly available primary/replica instances
  /// Default value is `BASIC`.
  /// Possible values are: `BASIC`, `STANDARD_HA`.
  late final pulumi.Output<String?> tier;

  /// The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  /// - SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication
  /// Default value is `DISABLED`.
  /// Possible values are: `SERVER_AUTHENTICATION`, `DISABLED`.
  late final pulumi.Output<String?> transitEncryptionMode;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_redis_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:redis/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alternativeLocationId = registerOutput<String>('alternativeLocationId');
    authEnabled = registerOutput<bool?>('authEnabled');
    authString = registerOutput<String>('authString');
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    connectMode = registerOutput<String?>('connectMode');
    createTime = registerOutput<String>('createTime');
    currentLocationId = registerOutput<String>('currentLocationId');
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveReservedIpRange = registerOutput<String>(
      'effectiveReservedIpRange',
    );
    host = registerOutput<String>('host');
    labels = registerOutput<Map<String, String>?>('labels');
    locationId = registerOutput<String>('locationId');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>(
      'maintenancePolicy',
    );
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>(
      'maintenanceSchedules',
    );
    maintenanceVersion = registerOutput<String>('maintenanceVersion');
    memorySizeGb = registerOutput<int>('memorySizeGb');
    this.name = registerOutput<String>('name');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    persistenceConfig = registerOutput<InstancePersistenceConfig>(
      'persistenceConfig',
    );
    persistenceIamIdentity = registerOutput<String>('persistenceIamIdentity');
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    readEndpoint = registerOutput<String>('readEndpoint');
    readEndpointPort = registerOutput<int>('readEndpointPort');
    readReplicasMode = registerOutput<String>('readReplicasMode');
    redisConfigs = registerOutput<Map<String, String>?>('redisConfigs');
    redisVersion = registerOutput<String>('redisVersion');
    region = registerOutput<String>('region');
    replicaCount = registerOutput<int>('replicaCount');
    reservedIpRange = registerOutput<String>('reservedIpRange');
    secondaryIpRange = registerOutput<String>('secondaryIpRange');
    serverCaCerts = registerOutput<List<Map<String, dynamic>>>('serverCaCerts');
    tier = registerOutput<String?>('tier');
    transitEncryptionMode = registerOutput<String?>('transitEncryptionMode');
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
         'gcp:redis/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alternativeLocationId = registerOutput<String>('alternativeLocationId');
    authEnabled = registerOutput<bool?>('authEnabled');
    authString = registerOutput<String>('authString');
    authorizedNetwork = registerOutput<String>('authorizedNetwork');
    connectMode = registerOutput<String?>('connectMode');
    createTime = registerOutput<String>('createTime');
    currentLocationId = registerOutput<String>('currentLocationId');
    customerManagedKey = registerOutput<String?>('customerManagedKey');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    effectiveReservedIpRange = registerOutput<String>(
      'effectiveReservedIpRange',
    );
    host = registerOutput<String>('host');
    labels = registerOutput<Map<String, String>?>('labels');
    locationId = registerOutput<String>('locationId');
    maintenancePolicy = registerOutput<InstanceMaintenancePolicy?>(
      'maintenancePolicy',
    );
    maintenanceSchedules = registerOutput<List<Map<String, dynamic>>>(
      'maintenanceSchedules',
    );
    maintenanceVersion = registerOutput<String>('maintenanceVersion');
    memorySizeGb = registerOutput<int>('memorySizeGb');
    this.name = registerOutput<String>('name');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    persistenceConfig = registerOutput<InstancePersistenceConfig>(
      'persistenceConfig',
    );
    persistenceIamIdentity = registerOutput<String>('persistenceIamIdentity');
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    readEndpoint = registerOutput<String>('readEndpoint');
    readEndpointPort = registerOutput<int>('readEndpointPort');
    readReplicasMode = registerOutput<String>('readReplicasMode');
    redisConfigs = registerOutput<Map<String, String>?>('redisConfigs');
    redisVersion = registerOutput<String>('redisVersion');
    region = registerOutput<String>('region');
    replicaCount = registerOutput<int>('replicaCount');
    reservedIpRange = registerOutput<String>('reservedIpRange');
    secondaryIpRange = registerOutput<String>('secondaryIpRange');
    serverCaCerts = registerOutput<List<Map<String, dynamic>>>('serverCaCerts');
    tier = registerOutput<String?>('tier');
    transitEncryptionMode = registerOutput<String?>('transitEncryptionMode');
  }
}
