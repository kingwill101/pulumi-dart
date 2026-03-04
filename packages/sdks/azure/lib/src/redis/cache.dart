import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_args.dart';
import 'cache_identity.dart';
import 'cache_redis_configuration.dart';
import 'cache_state.dart';

/// Manages a Redis Cache.
///
/// &gt; **Note:** Redis version 4 is being retired and no longer supports creating new instances. Version 4 will be removed in a future release. [Redis Version 4 Retirement](https://learn.microsoft.com/azure/azure-cache-for-redis/cache-retired-features#important-upgrade-timelines)
///
/// ## Example Usage
///
/// This example provisions a Standard Redis Cache.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// // NOTE: the Name used for Redis needs to be globally unique
/// const exampleCache = new azure.redis.Cache("example", {
///     name: "example-cache",
///     location: example.location,
///     resourceGroupName: example.name,
///     capacity: 2,
///     family: "C",
///     skuName: "Standard",
///     nonSslPortEnabled: false,
///     minimumTlsVersion: "1.2",
///     redisConfiguration: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// # NOTE: the Name used for Redis needs to be globally unique
/// example_cache = azure.redis.Cache("example",
///     name="example-cache",
///     location=example.location,
///     resource_group_name=example.name,
///     capacity=2,
///     family="C",
///     sku_name="Standard",
///     non_ssl_port_enabled=False,
///     minimum_tls_version="1.2",
///     redis_configuration={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     // NOTE: the Name used for Redis needs to be globally unique
///     var exampleCache = new Azure.Redis.Cache("example", new()
///     {
///         Name = "example-cache",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Capacity = 2,
///         Family = "C",
///         SkuName = "Standard",
///         NonSslPortEnabled = false,
///         MinimumTlsVersion = "1.2",
///         RedisConfiguration = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// NOTE: the Name used for Redis needs to be globally unique
/// 		_, err = redis.NewCache(ctx, "example", &redis.CacheArgs{
/// 			Name:               pulumi.String("example-cache"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			Capacity:           pulumi.Int(2),
/// 			Family:             pulumi.String("C"),
/// 			SkuName:            pulumi.String("Standard"),
/// 			NonSslPortEnabled:  pulumi.Bool(false),
/// 			MinimumTlsVersion:  pulumi.String("1.2"),
/// 			RedisConfiguration: &redis.CacheRedisConfigurationArgs{},
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.redis.Cache;
/// import com.pulumi.azure.redis.CacheArgs;
/// import com.pulumi.azure.redis.inputs.CacheRedisConfigurationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         // NOTE: the Name used for Redis needs to be globally unique
///         var exampleCache = new Cache("exampleCache", CacheArgs.builder()
///             .name("example-cache")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .capacity(2)
///             .family("C")
///             .skuName("Standard")
///             .nonSslPortEnabled(false)
///             .minimumTlsVersion("1.2")
///             .redisConfiguration(CacheRedisConfigurationArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   # NOTE: the Name used for Redis needs to be globally unique
///   exampleCache:
///     type: azure:redis:Cache
///     name: example
///     properties:
///       name: example-cache
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       capacity: 2
///       family: C
///       skuName: Standard
///       nonSslPortEnabled: false
///       minimumTlsVersion: '1.2'
///       redisConfiguration: {}
/// ```
///
///
/// ## Relevant Links
///
/// * [Azure Cache for Redis planning](https://docs.microsoft.com/azure/azure-cache-for-redis/cache-planning-faq)
/// * [Redis: Available Configuration Settings](https://redis.io/topics/config)
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Cache` - 2024-11-01
///
/// ## Import
///
/// Redis Cache's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:redis/cache:Cache cache1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Cache/redis/cache1
/// ```
class Cache extends pulumi.CustomResource {
  /// Whether access key authentication is enabled? Defaults to `true`. `active_directory_authentication_enabled` must be set to `true` to disable access key authentication.
  late final pulumi.Output<bool?> accessKeysAuthenticationEnabled;

  /// The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`.
  late final pulumi.Output<int> capacity;

  /// The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  late final pulumi.Output<String> family;

  /// The Hostname of the Redis Instance
  late final pulumi.Output<String> hostname;

  /// An `identity` block as defined below.
  late final pulumi.Output<CacheIdentity?> identity;

  /// The location of the resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`.
  ///
  /// &gt; **NOTE:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;

  /// The name of the Redis instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Enable the non-SSL port (6379) - disabled by default.
  late final pulumi.Output<bool?> nonSslPortEnabled;

  /// A list of `patch_schedule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> patchSchedules;

  /// The non-SSL Port of the Redis Instance
  late final pulumi.Output<int> port;

  /// The Primary Access Key for the Redis Instance
  late final pulumi.Output<String> primaryAccessKey;

  /// The primary connection string of the Redis Instance.
  late final pulumi.Output<String> primaryConnectionString;

  /// The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> privateStaticIpAddress;

  /// Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;

  /// A `redis_configuration` block as defined below - with some limitations by SKU - defaults/details are shown below.
  late final pulumi.Output<CacheRedisConfiguration> redisConfiguration;

  /// Redis version. Only major version needed. Possible values are `4` and `6`. Defaults to `6`.
  late final pulumi.Output<String?> redisVersion;

  /// Amount of replicas to create per master for this Redis Cache.
  ///
  /// &gt; **Note:** Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards.
  late final pulumi.Output<int> replicasPerMaster;

  /// Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal.
  late final pulumi.Output<int> replicasPerPrimary;

  /// The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The Secondary Access Key for the Redis Instance
  late final pulumi.Output<String> secondaryAccessKey;

  /// The secondary connection string of the Redis Instance.
  late final pulumi.Output<String> secondaryConnectionString;

  /// *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster.
  late final pulumi.Output<int?> shardCount;

  /// The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`.
  ///
  /// &gt; **Note** Downgrading the SKU will force a new resource to be created.
  late final pulumi.Output<String> skuName;

  /// The SSL Port of the Redis Instance
  late final pulumi.Output<int> sslPort;

  /// *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> subnetId;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A mapping of tenant settings to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tenantSettings;

  /// Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created.
  ///
  /// &gt; **Please Note:** Availability Zones are [in Preview and only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview) - as such you must be opted into the Preview to use this functionality. You can [opt into the Availability Zones Preview in the Azure Portal](https://aka.ms/azenroll).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Cache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cache]. {@macro pulumi_redis_cache_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cache(String name, {CacheArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:redis/cache:Cache',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessKeysAuthenticationEnabled = registerOutput<bool?>(
      'accessKeysAuthenticationEnabled',
    );
    capacity = registerOutput<int>('capacity');
    family = registerOutput<String>('family');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<CacheIdentity?>('identity');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    nonSslPortEnabled = registerOutput<bool?>('nonSslPortEnabled');
    patchSchedules = registerOutput<List<Map<String, dynamic>>?>(
      'patchSchedules',
    );
    port = registerOutput<int>('port');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    privateStaticIpAddress = registerOutput<String>('privateStaticIpAddress');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    redisConfiguration = registerOutput<CacheRedisConfiguration>(
      'redisConfiguration',
    );
    redisVersion = registerOutput<String?>('redisVersion');
    replicasPerMaster = registerOutput<int>('replicasPerMaster');
    replicasPerPrimary = registerOutput<int>('replicasPerPrimary');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>(
      'secondaryConnectionString',
    );
    shardCount = registerOutput<int?>('shardCount');
    skuName = registerOutput<String>('skuName');
    sslPort = registerOutput<int>('sslPort');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantSettings = registerOutput<Map<String, String>?>('tenantSettings');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [Cache] resource's state with the given [name] and [id].
  static Cache get(String name, pulumi.Input<String> id, {CacheState? state}) {
    return Cache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:redis/cache:Cache',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessKeysAuthenticationEnabled = registerOutput<bool?>(
      'accessKeysAuthenticationEnabled',
    );
    capacity = registerOutput<int>('capacity');
    family = registerOutput<String>('family');
    hostname = registerOutput<String>('hostname');
    identity = registerOutput<CacheIdentity?>('identity');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    nonSslPortEnabled = registerOutput<bool?>('nonSslPortEnabled');
    patchSchedules = registerOutput<List<Map<String, dynamic>>?>(
      'patchSchedules',
    );
    port = registerOutput<int>('port');
    primaryAccessKey = registerOutput<String>('primaryAccessKey');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    privateStaticIpAddress = registerOutput<String>('privateStaticIpAddress');
    publicNetworkAccessEnabled = registerOutput<bool?>(
      'publicNetworkAccessEnabled',
    );
    redisConfiguration = registerOutput<CacheRedisConfiguration>(
      'redisConfiguration',
    );
    redisVersion = registerOutput<String?>('redisVersion');
    replicasPerMaster = registerOutput<int>('replicasPerMaster');
    replicasPerPrimary = registerOutput<int>('replicasPerPrimary');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryAccessKey = registerOutput<String>('secondaryAccessKey');
    secondaryConnectionString = registerOutput<String>(
      'secondaryConnectionString',
    );
    shardCount = registerOutput<int?>('shardCount');
    skuName = registerOutput<String>('skuName');
    sslPort = registerOutput<int>('sslPort');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantSettings = registerOutput<Map<String, String>?>('tenantSettings');
    zones = registerOutput<List<String>?>('zones');
  }
}
