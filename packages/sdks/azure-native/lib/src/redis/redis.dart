import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'redis_access_keys_response.dart';
import 'redis_args.dart';
import 'redis_common_properties_redis_configuration_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// A single Redis item in List or Get Operation.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2015-08-01, 2016-04-01, 2017-02-01, 2017-10-01, 2018-03-01, 2019-07-01, 2020-06-01, 2020-12-01, 2021-06-01, 2022-05-01, 2022-06-01, 2023-04-01, 2023-05-01-preview, 2023-08-01, 2024-03-01, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RedisCacheCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         RedisVersion = "4",
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			RedisVersion:       pulumi.String("4"),
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP: pulumi.String("192.168.0.5"),
/// 			SubnetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .redisVersion("4")
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zones("1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     redisVersion: "4",
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     redis_version="4",
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       redisVersion: '4'
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisCacheCreateAutomaticZonalAllocationPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         ZonalAllocationPolicy = AzureNative.Redis.ZonalAllocationPolicy.Automatic,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP:              pulumi.String("192.168.0.5"),
/// 			SubnetId:              pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			ZonalAllocationPolicy: pulumi.String(redis.ZonalAllocationPolicyAutomatic),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zonalAllocationPolicy("Automatic")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonalAllocationPolicy: azure_native.redis.ZonalAllocationPolicy.Automatic,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonal_allocation_policy=azure_native.redis.ZonalAllocationPolicy.AUTOMATIC)
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zonalAllocationPolicy: Automatic
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisCacheCreateDefaultVersion
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP: pulumi.String("192.168.0.5"),
/// 			SubnetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zones("1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisCacheCreateLatestVersion
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         RedisVersion = "Latest",
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			RedisVersion:       pulumi.String("Latest"),
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP: pulumi.String("192.168.0.5"),
/// 			SubnetId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .redisVersion("Latest")
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zones("1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     redisVersion: "Latest",
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     redis_version="Latest",
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       redisVersion: Latest
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisCacheCreateNoZonesZonalAllocationPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         ZonalAllocationPolicy = AzureNative.Redis.ZonalAllocationPolicy.NoZones,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP:              pulumi.String("192.168.0.5"),
/// 			SubnetId:              pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			ZonalAllocationPolicy: pulumi.String(redis.ZonalAllocationPolicyNoZones),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zonalAllocationPolicy("NoZones")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonalAllocationPolicy: azure_native.redis.ZonalAllocationPolicy.NoZones,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonal_allocation_policy=azure_native.redis.ZonalAllocationPolicy.NO_ZONES)
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zonalAllocationPolicy: NoZones
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### RedisCacheCreateUserDefinedZonalAllocationPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var redis = new AzureNative.Redis.Redis("redis", new()
///     {
///         EnableNonSslPort = true,
///         Location = "East US",
///         MinimumTlsVersion = AzureNative.Redis.TlsVersion.TlsVersion_1_2,
///         Name = "cache1",
///         RedisConfiguration = new AzureNative.Redis.Inputs.RedisCommonPropertiesRedisConfigurationArgs
///         {
///             MaxmemoryPolicy = "allkeys-lru",
///         },
///         RedisVersion = "Latest",
///         ReplicasPerPrimary = 2,
///         ResourceGroupName = "rg1",
///         ShardCount = 2,
///         Sku = new AzureNative.Redis.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Family = AzureNative.Redis.SkuFamily.P,
///             Name = AzureNative.Redis.SkuName.Premium,
///         },
///         StaticIP = "192.168.0.5",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///         ZonalAllocationPolicy = AzureNative.Redis.ZonalAllocationPolicy.UserDefined,
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	redis "github.com/pulumi/pulumi-azure-native-sdk/redis/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redis.NewRedis(ctx, "redis", &redis.RedisArgs{
/// 			EnableNonSslPort:  pulumi.Bool(true),
/// 			Location:          pulumi.String("East US"),
/// 			MinimumTlsVersion: pulumi.String(redis.TlsVersion_1_2),
/// 			Name:              pulumi.String("cache1"),
/// 			RedisConfiguration: &redis.RedisCommonPropertiesRedisConfigurationArgs{
/// 				MaxmemoryPolicy: pulumi.String("allkeys-lru"),
/// 			},
/// 			RedisVersion:       pulumi.String("Latest"),
/// 			ReplicasPerPrimary: pulumi.Int(2),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			ShardCount:         pulumi.Int(2),
/// 			Sku: &redis.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String(redis.SkuFamilyP),
/// 				Name:     pulumi.String(redis.SkuNamePremium),
/// 			},
/// 			StaticIP:              pulumi.String("192.168.0.5"),
/// 			SubnetId:              pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1"),
/// 			ZonalAllocationPolicy: pulumi.String(redis.ZonalAllocationPolicyUserDefined),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.redis.Redis;
/// import com.pulumi.azurenative.redis.RedisArgs;
/// import com.pulumi.azurenative.redis.inputs.RedisCommonPropertiesRedisConfigurationArgs;
/// import com.pulumi.azurenative.redis.inputs.SkuArgs;
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
///         var redis = new Redis("redis", RedisArgs.builder()
///             .enableNonSslPort(true)
///             .location("East US")
///             .minimumTlsVersion("1.2")
///             .name("cache1")
///             .redisConfiguration(RedisCommonPropertiesRedisConfigurationArgs.builder()
///                 .maxmemoryPolicy("allkeys-lru")
///                 .build())
///             .redisVersion("Latest")
///             .replicasPerPrimary(2)
///             .resourceGroupName("rg1")
///             .shardCount(2)
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("Premium")
///                 .build())
///             .staticIP("192.168.0.5")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1")
///             .zonalAllocationPolicy("UserDefined")
///             .zones("1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const redis = new azure_native.redis.Redis("redis", {
///     enableNonSslPort: true,
///     location: "East US",
///     minimumTlsVersion: azure_native.redis.TlsVersion.TlsVersion_1_2,
///     name: "cache1",
///     redisConfiguration: {
///         maxmemoryPolicy: "allkeys-lru",
///     },
///     redisVersion: "Latest",
///     replicasPerPrimary: 2,
///     resourceGroupName: "rg1",
///     shardCount: 2,
///     sku: {
///         capacity: 1,
///         family: azure_native.redis.SkuFamily.P,
///         name: azure_native.redis.SkuName.Premium,
///     },
///     staticIP: "192.168.0.5",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonalAllocationPolicy: azure_native.redis.ZonalAllocationPolicy.UserDefined,
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// redis = azure_native.redis.Redis("redis",
///     enable_non_ssl_port=True,
///     location="East US",
///     minimum_tls_version=azure_native.redis.TlsVersion.TLS_VERSION_1_2,
///     name="cache1",
///     redis_configuration={
///         "maxmemory_policy": "allkeys-lru",
///     },
///     redis_version="Latest",
///     replicas_per_primary=2,
///     resource_group_name="rg1",
///     shard_count=2,
///     sku={
///         "capacity": 1,
///         "family": azure_native.redis.SkuFamily.P,
///         "name": azure_native.redis.SkuName.PREMIUM,
///     },
///     static_ip="192.168.0.5",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1",
///     zonal_allocation_policy=azure_native.redis.ZonalAllocationPolicy.USER_DEFINED,
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   redis:
///     type: azure-native:redis:Redis
///     properties:
///       enableNonSslPort: true
///       location: East US
///       minimumTlsVersion: '1.2'
///       name: cache1
///       redisConfiguration:
///         maxmemoryPolicy: allkeys-lru
///       redisVersion: Latest
///       replicasPerPrimary: 2
///       resourceGroupName: rg1
///       shardCount: 2
///       sku:
///         capacity: 1
///         family: P
///         name: Premium
///       staticIP: 192.168.0.5
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg2/providers/Microsoft.Network/virtualNetworks/network1/subnets/subnet1
///       zonalAllocationPolicy: UserDefined
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:redis:Redis cache1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redis/{name}
/// ```
class Redis extends pulumi.CustomResource {
  /// The keys of the Redis cache - not set if this object is not the response to Create or Update redis cache
  late final pulumi.Output<RedisAccessKeysResponse> accessKeys;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Authentication to Redis through access keys is disabled when set as true. Default value is false.
  late final pulumi.Output<bool?> disableAccessKeyAuthentication;

  /// Specifies whether the non-ssl Redis server port (6379) is enabled.
  late final pulumi.Output<bool?> enableNonSslPort;

  /// Redis host name.
  late final pulumi.Output<String> hostName;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// List of the Redis instances associated with the cache
  late final pulumi.Output<List<Map<String, dynamic>>> instances;

  /// List of the linked servers associated with the cache
  late final pulumi.Output<List<Map<String, dynamic>>> linkedServers;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2')
  late final pulumi.Output<String?> minimumTlsVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Redis non-SSL port.
  late final pulumi.Output<int> port;

  /// List of private endpoint connection associated with the specified redis cache
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Redis instance provisioning status.
  late final pulumi.Output<String> provisioningState;

  /// Whether or not public endpoint access is allowed for this cache.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
  late final pulumi.Output<RedisCommonPropertiesRedisConfigurationResponse?>
  redisConfiguration;

  /// Redis version. This should be in the form 'major[.minor]' (only 'major' is required) or the value 'latest' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is 'latest'.
  late final pulumi.Output<String?> redisVersion;

  /// The number of replicas to be created per primary.
  late final pulumi.Output<int?> replicasPerMaster;

  /// The number of replicas to be created per primary.
  late final pulumi.Output<int?> replicasPerPrimary;

  /// The number of shards to be created on a Premium Cluster Cache.
  late final pulumi.Output<int?> shardCount;

  /// The SKU of the Redis cache to deploy.
  late final pulumi.Output<SkuResponse> sku;

  /// Redis SSL port.
  late final pulumi.Output<int> sslPort;

  /// Static IP address. Optionally, may be specified when deploying a Redis cache inside an existing Azure Virtual Network; auto assigned by default.
  late final pulumi.Output<String?> staticIP;

  /// The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
  late final pulumi.Output<String?> subnetId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A dictionary of tenant settings
  late final pulumi.Output<Map<String, String>?> tenantSettings;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
  late final pulumi.Output<String?> updateChannel;

  /// Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
  late final pulumi.Output<String?> zonalAllocationPolicy;

  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Redis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Redis]. {@macro pulumi_redis_redis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Redis(String name, {RedisArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:redis:Redis',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessKeys = registerOutput<RedisAccessKeysResponse>(
      'accessKeys',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RedisAccessKeysResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableAccessKeyAuthentication = registerOutput<bool?>(
      'disableAccessKeyAuthentication',
    );
    enableNonSslPort = registerOutput<bool?>('enableNonSslPort');
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instances = registerOutput<List<Map<String, dynamic>>>('instances');
    linkedServers = registerOutput<List<Map<String, dynamic>>>('linkedServers');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    redisConfiguration =
        registerOutput<RedisCommonPropertiesRedisConfigurationResponse?>(
          'redisConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RedisCommonPropertiesRedisConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    redisVersion = registerOutput<String?>('redisVersion');
    replicasPerMaster = registerOutput<int?>('replicasPerMaster');
    replicasPerPrimary = registerOutput<int?>('replicasPerPrimary');
    shardCount = registerOutput<int?>('shardCount');
    sku = registerOutput<SkuResponse>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sslPort = registerOutput<int>('sslPort');
    staticIP = registerOutput<String?>('staticIP');
    subnetId = registerOutput<String?>('subnetId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tenantSettings = registerOutput<Map<String, String>?>('tenantSettings');
    type = registerOutput<String>('type');
    updateChannel = registerOutput<String?>('updateChannel');
    zonalAllocationPolicy = registerOutput<String?>('zonalAllocationPolicy');
    zones = registerOutput<List<String>?>('zones');
  }
}
