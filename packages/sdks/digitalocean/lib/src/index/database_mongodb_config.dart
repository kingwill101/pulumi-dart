import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mongodb_config_args.dart';
import 'database_mongodb_config_state.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed MongoDB database cluster.
///
/// &gt; **Note** MongoDB configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-mongodb-cluster",
///     engine: "mongodb",
///     version: "7",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC3,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseMongodbConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     defaultReadConcern: "majority",
///     defaultWriteConcern: "majority",
///     transactionLifetimeLimitSeconds: 100,
///     slowOpThresholdMs: 100,
///     verbosity: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-mongodb-cluster",
///     engine="mongodb",
///     version="7",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC3,
///     node_count=1)
/// example = digitalocean.DatabaseMongodbConfig("example",
///     cluster_id=example_database_cluster.id,
///     default_read_concern="majority",
///     default_write_concern="majority",
///     transaction_lifetime_limit_seconds=100,
///     slow_op_threshold_ms=100,
///     verbosity=3)
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
///         Name = "example-mongodb-cluster",
///         Engine = "mongodb",
///         Version = "7",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC3,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseMongodbConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         DefaultReadConcern = "majority",
///         DefaultWriteConcern = "majority",
///         TransactionLifetimeLimitSeconds = 100,
///         SlowOpThresholdMs = 100,
///         Verbosity = 3,
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
/// 			Name:      pulumi.String("example-mongodb-cluster"),
/// 			Engine:    pulumi.String("mongodb"),
/// 			Version:   pulumi.String("7"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC3),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseMongodbConfig(ctx, "example", &digitalocean.DatabaseMongodbConfigArgs{
/// 			ClusterId:                       exampleDatabaseCluster.ID(),
/// 			DefaultReadConcern:              pulumi.String("majority"),
/// 			DefaultWriteConcern:             pulumi.String("majority"),
/// 			TransactionLifetimeLimitSeconds: pulumi.Int(100),
/// 			SlowOpThresholdMs:               pulumi.Int(100),
/// 			Verbosity:                       pulumi.Int(3),
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
/// import com.pulumi.digitalocean.DatabaseMongodbConfig;
/// import com.pulumi.digitalocean.DatabaseMongodbConfigArgs;
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
///             .name("example-mongodb-cluster")
///             .engine("mongodb")
///             .version("7")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc3")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseMongodbConfig("example", DatabaseMongodbConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .defaultReadConcern("majority")
///             .defaultWriteConcern("majority")
///             .transactionLifetimeLimitSeconds(100)
///             .slowOpThresholdMs(100)
///             .verbosity(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseMongodbConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       defaultReadConcern: majority
///       defaultWriteConcern: majority
///       transactionLifetimeLimitSeconds: 100
///       slowOpThresholdMs: 100
///       verbosity: 3
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-mongodb-cluster
///       engine: mongodb
///       version: '7'
///       size: db-s-1vcpu-1gb
///       region: nyc3
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A MongoDB database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseMongodbConfig:DatabaseMongodbConfig example 4b62829a-9c42-465b-aaa3-84051048e712
/// ```
class DatabaseMongodbConfig extends pulumi.CustomResource {
  /// The ID of the target MongoDB cluster.
  late final pulumi.Output<String> clusterId;

  /// Specifies the default consistency behavior of reads from the database. Data that is returned from the query with may or may not have been acknowledged by all nodes in the replicaset depending on this value. Learn more [here](https://www.mongodb.com/docs/manual/reference/read-concern/).
  late final pulumi.Output<String> defaultReadConcern;

  /// Describes the level of acknowledgment requested from MongoDB for write operations clusters. This field can set to either `majority` or a number`0...n` which will describe the number of nodes that must acknowledge the write operation before it is fully accepted. Setting to `0` will request no acknowledgement of the write operation. Learn more [here](https://www.mongodb.com/docs/manual/reference/write-concern/).
  late final pulumi.Output<String> defaultWriteConcern;

  /// Operations that run for longer than this threshold are considered slow which are then recorded to the diagnostic logs. Higher log levels (verbosity) will record all operations regardless of this threshold on the primary node. &lt;em&gt;Changing this parameter will lead to a restart of the MongoDB service.&lt;/em&gt; Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-operationProfiling.slowOpThresholdMs).
  late final pulumi.Output<int> slowOpThresholdMs;

  /// Specifies the lifetime of multi-document transactions. Transactions that exceed this limit are considered expired and will be aborted by a periodic cleanup process. The cleanup process runs every `transactionLifetimeLimitSeconds/2 seconds` or at least once every 60 seconds. &lt;em&gt;Changing this parameter will lead to a restart of the MongoDB service.&lt;/em&gt; Learn more [here](https://www.mongodb.com/docs/manual/reference/parameters/#mongodb-parameter-param.transactionLifetimeLimitSeconds).
  late final pulumi.Output<int> transactionLifetimeLimitSeconds;

  /// The log message verbosity level. The verbosity level determines the amount of Informational and Debug messages MongoDB outputs. 0 includes informational messages while 1...5 increases the level to include debug messages. &lt;em&gt;Changing this parameter will lead to a restart of the MongoDB service.&lt;/em&gt; Learn more [here](https://www.mongodb.com/docs/manual/reference/configuration-options/#mongodb-setting-systemLog.verbosity).
  late final pulumi.Output<int> verbosity;

  /// Creates a new [DatabaseMongodbConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMongodbConfig]. {@macro pulumi_index_database_mongodb_config_database_mongodb_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMongodbConfig(
    String name, {
    DatabaseMongodbConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseMongodbConfig:DatabaseMongodbConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    defaultReadConcern = registerOutput<String>('defaultReadConcern');
    defaultWriteConcern = registerOutput<String>('defaultWriteConcern');
    slowOpThresholdMs = registerOutput<int>('slowOpThresholdMs');
    transactionLifetimeLimitSeconds = registerOutput<int>(
      'transactionLifetimeLimitSeconds',
    );
    verbosity = registerOutput<int>('verbosity');
  }

  /// Gets an existing [DatabaseMongodbConfig] resource's state with the given [name] and [id].
  static DatabaseMongodbConfig get(
    String name,
    pulumi.Input<String> id, {
    DatabaseMongodbConfigState? state,
  }) {
    return DatabaseMongodbConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseMongodbConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseMongodbConfig:DatabaseMongodbConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    defaultReadConcern = registerOutput<String>('defaultReadConcern');
    defaultWriteConcern = registerOutput<String>('defaultWriteConcern');
    slowOpThresholdMs = registerOutput<int>('slowOpThresholdMs');
    transactionLifetimeLimitSeconds = registerOutput<int>(
      'transactionLifetimeLimitSeconds',
    );
    verbosity = registerOutput<int>('verbosity');
  }
}
