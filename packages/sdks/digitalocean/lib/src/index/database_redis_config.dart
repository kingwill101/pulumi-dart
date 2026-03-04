import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_redis_config_args.dart';
import 'database_redis_config_state.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed Redis database cluster.
///
/// &gt; **Note** DigitalOcean managed Redis cluster product is discontinued as of 30 June 2025 and is replaced by the Managed Valkey product. Use the `digitalocean.DatabaseValkeyConfig` resource instead of `digitalocean.DatabaseRedisConfig`
///
/// &gt; **Note** Redis configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-redis-cluster",
///     engine: "redis",
///     version: "7",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseRedisConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     maxmemoryPolicy: "allkeys-lru",
///     notifyKeyspaceEvents: "KEA",
///     timeout: 90,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-redis-cluster",
///     engine="redis",
///     version="7",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabaseRedisConfig("example",
///     cluster_id=example_database_cluster.id,
///     maxmemory_policy="allkeys-lru",
///     notify_keyspace_events="KEA",
///     timeout=90)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDatabaseCluster = new DigitalOcean.DatabaseCluster("example", new()
///     {
///         Name = "example-redis-cluster",
///         Engine = "redis",
///         Version = "7",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseRedisConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         MaxmemoryPolicy = "allkeys-lru",
///         NotifyKeyspaceEvents = "KEA",
///         Timeout = 90,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDatabaseCluster, err := digitalocean.NewDatabaseCluster(ctx, "example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-redis-cluster"),
/// 			Engine:    pulumi.String("redis"),
/// 			Version:   pulumi.String("7"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseRedisConfig(ctx, "example", &digitalocean.DatabaseRedisConfigArgs{
/// 			ClusterId:            exampleDatabaseCluster.ID(),
/// 			MaxmemoryPolicy:      pulumi.String("allkeys-lru"),
/// 			NotifyKeyspaceEvents: pulumi.String("KEA"),
/// 			Timeout:              pulumi.Int(90),
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseRedisConfig;
/// import com.pulumi.digitalocean.DatabaseRedisConfigArgs;
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
///         var exampleDatabaseCluster = new DatabaseCluster("exampleDatabaseCluster", DatabaseClusterArgs.builder()
///             .name("example-redis-cluster")
///             .engine("redis")
///             .version("7")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseRedisConfig("example", DatabaseRedisConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .maxmemoryPolicy("allkeys-lru")
///             .notifyKeyspaceEvents("KEA")
///             .timeout(90)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseRedisConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       maxmemoryPolicy: allkeys-lru
///       notifyKeyspaceEvents: KEA
///       timeout: 90
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-redis-cluster
///       engine: redis
///       version: '7'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A Redis database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseRedisConfig:DatabaseRedisConfig example 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
class DatabaseRedisConfig extends pulumi.CustomResource {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Redis' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  late final pulumi.Output<String> aclChannelsDefault;

  /// The ID of the target Redis cluster.
  late final pulumi.Output<String> clusterId;

  /// The Redis IO thread count.
  late final pulumi.Output<int> ioThreads;

  /// The LFU maxmemory policy counter decay time in minutes.
  late final pulumi.Output<int> lfuDecayTime;

  /// The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  late final pulumi.Output<int> lfuLogFactor;

  /// A string specifying the desired eviction policy for the Redis cluster.Supported values are: `noeviction`, `allkeys-lru`, `allkeys-random`, `volatile-lru`, `volatile-random`, `volatile-ttl`
  late final pulumi.Output<String> maxmemoryPolicy;

  /// The `notify-keyspace-events` option. Requires at least `K` or `E`.
  late final pulumi.Output<String> notifyKeyspaceEvents;

  /// The number of Redis databases. Changing this will cause a restart of Redis service.
  late final pulumi.Output<int> numberOfDatabases;

  /// When persistence is `rdb`, Redis does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is `off`, no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  late final pulumi.Output<String> persistence;

  /// The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  late final pulumi.Output<int> pubsubClientOutputBufferLimit;

  /// A boolean indicating whether to require SSL to access Redis.
  /// - When enabled, Redis accepts only SSL connections on port `25061`.
  /// - When disabled, port `25060` is opened for non-SSL connections, while port `25061` remains available for SSL connections.
  late final pulumi.Output<bool> ssl;

  /// The Redis idle connection timeout in seconds.
  late final pulumi.Output<int> timeout;

  /// Creates a new [DatabaseRedisConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseRedisConfig]. {@macro pulumi_index_database_redis_config_database_redis_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseRedisConfig(
    String name, {
    DatabaseRedisConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseRedisConfig:DatabaseRedisConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclChannelsDefault = registerOutput<String>('aclChannelsDefault');
    clusterId = registerOutput<String>('clusterId');
    ioThreads = registerOutput<int>('ioThreads');
    lfuDecayTime = registerOutput<int>('lfuDecayTime');
    lfuLogFactor = registerOutput<int>('lfuLogFactor');
    maxmemoryPolicy = registerOutput<String>('maxmemoryPolicy');
    notifyKeyspaceEvents = registerOutput<String>('notifyKeyspaceEvents');
    numberOfDatabases = registerOutput<int>('numberOfDatabases');
    persistence = registerOutput<String>('persistence');
    pubsubClientOutputBufferLimit = registerOutput<int>(
      'pubsubClientOutputBufferLimit',
    );
    ssl = registerOutput<bool>('ssl');
    timeout = registerOutput<int>('timeout');
  }

  /// Gets an existing [DatabaseRedisConfig] resource's state with the given [name] and [id].
  static DatabaseRedisConfig get(
    String name,
    pulumi.Input<String> id, {
    DatabaseRedisConfigState? state,
  }) {
    return DatabaseRedisConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseRedisConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseRedisConfig:DatabaseRedisConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclChannelsDefault = registerOutput<String>('aclChannelsDefault');
    clusterId = registerOutput<String>('clusterId');
    ioThreads = registerOutput<int>('ioThreads');
    lfuDecayTime = registerOutput<int>('lfuDecayTime');
    lfuLogFactor = registerOutput<int>('lfuLogFactor');
    maxmemoryPolicy = registerOutput<String>('maxmemoryPolicy');
    notifyKeyspaceEvents = registerOutput<String>('notifyKeyspaceEvents');
    numberOfDatabases = registerOutput<int>('numberOfDatabases');
    persistence = registerOutput<String>('persistence');
    pubsubClientOutputBufferLimit = registerOutput<int>(
      'pubsubClientOutputBufferLimit',
    );
    ssl = registerOutput<bool>('ssl');
    timeout = registerOutput<int>('timeout');
  }
}
