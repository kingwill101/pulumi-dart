import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_config_args.dart';
import 'database_mysql_config_state.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed MySQL database cluster.
///
/// &gt; **Note** MySQL configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-mysql-cluster",
///     engine: "mysql",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseMysqlConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     connectTimeout: 10,
///     defaultTimeZone: "UTC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-mysql-cluster",
///     engine="mysql",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabaseMysqlConfig("example",
///     cluster_id=example_database_cluster.id,
///     connect_timeout=10,
///     default_time_zone="UTC")
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
///         Name = "example-mysql-cluster",
///         Engine = "mysql",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseMysqlConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         ConnectTimeout = 10,
///         DefaultTimeZone = "UTC",
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
/// 			Name:      pulumi.String("example-mysql-cluster"),
/// 			Engine:    pulumi.String("mysql"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseMysqlConfig(ctx, "example", &digitalocean.DatabaseMysqlConfigArgs{
/// 			ClusterId:       exampleDatabaseCluster.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectTimeout:  pulumi.Int(10),
/// 			DefaultTimeZone: pulumi.String("UTC"),
/// 		})
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
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_databasemysqlconfig" "example" {
///   cluster_id        = digitalocean_databasecluster.example.id
///   connect_timeout   = 10
///   default_time_zone = "UTC"
/// }
/// resource "digitalocean_databasecluster" "example" {
///   name       = "example-mysql-cluster"
///   engine     = "mysql"
///   version    = "8"
///   size       = "db-s-1vcpu-1gb"
///   region     = "nyc1"
///   node_count = 1
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
/// import com.pulumi.digitalocean.DatabaseMysqlConfig;
/// import com.pulumi.digitalocean.DatabaseMysqlConfigArgs;
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
///         var exampleDatabaseCluster = new DatabaseCluster("exampleDatabaseCluster", DatabaseClusterArgs.builder()
///             .name("example-mysql-cluster")
///             .engine("mysql")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseMysqlConfig("example", DatabaseMysqlConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .connectTimeout(10)
///             .defaultTimeZone("UTC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseMysqlConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       connectTimeout: 10
///       defaultTimeZone: UTC
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-mysql-cluster
///       engine: mysql
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A MySQL database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseMysqlConfig:DatabaseMysqlConfig example 4b62829a-9c42-465b-aaa3-84051048e712
/// ```
class DatabaseMysqlConfig extends pulumi.CustomResource {
  /// The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  late final pulumi.Output<int> backupHour;
  /// The minute of the backup hour when backup for the service starts. New backup only starts if previous backup has already completed.
  late final pulumi.Output<int> backupMinute;
  /// The minimum amount of time, in seconds, to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  late final pulumi.Output<int> binlogRetentionPeriod;
  /// The ID of the target MySQL cluster.
  late final pulumi.Output<String> clusterId;
  /// The number of seconds that the mysqld server waits for a connect packet before responding with bad handshake.
  late final pulumi.Output<int> connectTimeout;
  /// Default server time zone, in the form of an offset from UTC (from -12:00 to +12:00), a time zone name (EST), or `SYSTEM` to use the MySQL server default.
  late final pulumi.Output<String> defaultTimeZone;
  /// The maximum permitted result length, in bytes, for the `GROUP_CONCAT()` function.
  late final pulumi.Output<int> groupConcatMaxLen;
  /// The time, in seconds, before cached statistics expire.
  late final pulumi.Output<int> informationSchemaStatsExpiry;
  /// The minimum length of words that an InnoDB FULLTEXT index stores.
  late final pulumi.Output<int> innodbFtMinTokenSize;
  /// The InnoDB FULLTEXT index stopword list for all InnoDB tables.
  late final pulumi.Output<String> innodbFtServerStopwordTable;
  /// The time, in seconds, that an InnoDB transaction waits for a row lock. before giving up.
  late final pulumi.Output<int> innodbLockWaitTimeout;
  /// The size of the buffer, in bytes, that InnoDB uses to write to the log files. on disk.
  late final pulumi.Output<int> innodbLogBufferSize;
  /// The upper limit, in bytes, of the size of the temporary log files used during online DDL operations for InnoDB tables.
  late final pulumi.Output<int> innodbOnlineAlterLogMaxSize;
  /// When enabled, records information about all deadlocks in InnoDB user transactions in the error log. Disabled by default.
  late final pulumi.Output<bool> innodbPrintAllDeadlocks;
  /// When enabled, transaction timeouts cause InnoDB to abort and roll back the entire transaction.
  late final pulumi.Output<bool> innodbRollbackOnTimeout;
  /// The time, in seconds, the server waits for activity on an interactive. connection before closing it.
  late final pulumi.Output<int> interactiveTimeout;
  /// The storage engine for in-memory internal temporary tables. Supported values are: `TempTable`, `MEMORY`.
  late final pulumi.Output<String> internalTmpMemStorageEngine;
  /// The time, in seconds, for a query to take to execute before being captured by `slowQueryLogs`. Default is `10` seconds.
  late final pulumi.Output<double> longQueryTime;
  /// The size of the largest message, in bytes, that can be received by the server. Default is `67108864` (64M).
  late final pulumi.Output<int> maxAllowedPacket;
  /// The maximum size, in bytes, of internal in-memory tables. Also set `tmpTableSize`. Default is `16777216` (16M)
  late final pulumi.Output<int> maxHeapTableSize;
  /// The time, in seconds, to wait for more data from an existing connection. aborting the read.
  late final pulumi.Output<int> netReadTimeout;
  /// The number of seconds to wait for a block to be written to a connection before aborting the write.
  late final pulumi.Output<int> netWriteTimeout;
  /// When enabled, captures slow queries. When disabled, also truncates the mysql.slow_log table. Default is false.
  late final pulumi.Output<bool> slowQueryLog;
  /// The sort buffer size, in bytes, for `ORDER BY` optimization. Default is `262144`. (256K).
  late final pulumi.Output<int> sortBufferSize;
  /// Global SQL mode. If empty, uses MySQL server defaults. Must only include uppercase alphabetic characters, underscores, and commas.
  late final pulumi.Output<String> sqlMode;
  /// Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
  late final pulumi.Output<bool> sqlRequirePrimaryKey;
  /// The maximum size, in bytes, of internal in-memory tables. Also set `maxHeapTableSize`. Default is `16777216` (16M).
  late final pulumi.Output<int> tmpTableSize;
  /// The number of seconds the server waits for activity on a noninteractive connection before closing it.
  late final pulumi.Output<int> waitTimeout;

  /// Creates a new [DatabaseMysqlConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMysqlConfig]. {@macro pulumi_index_database_mysql_config_database_mysql_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMysqlConfig(
    String name, {
    DatabaseMysqlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseMysqlConfig:DatabaseMysqlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupHour = registerOutput<int>('backupHour');
    backupMinute = registerOutput<int>('backupMinute');
    binlogRetentionPeriod = registerOutput<int>('binlogRetentionPeriod');
    clusterId = registerOutput<String>('clusterId');
    connectTimeout = registerOutput<int>('connectTimeout');
    defaultTimeZone = registerOutput<String>('defaultTimeZone');
    groupConcatMaxLen = registerOutput<int>('groupConcatMaxLen');
    informationSchemaStatsExpiry = registerOutput<int>('informationSchemaStatsExpiry');
    innodbFtMinTokenSize = registerOutput<int>('innodbFtMinTokenSize');
    innodbFtServerStopwordTable = registerOutput<String>('innodbFtServerStopwordTable');
    innodbLockWaitTimeout = registerOutput<int>('innodbLockWaitTimeout');
    innodbLogBufferSize = registerOutput<int>('innodbLogBufferSize');
    innodbOnlineAlterLogMaxSize = registerOutput<int>('innodbOnlineAlterLogMaxSize');
    innodbPrintAllDeadlocks = registerOutput<bool>('innodbPrintAllDeadlocks');
    innodbRollbackOnTimeout = registerOutput<bool>('innodbRollbackOnTimeout');
    interactiveTimeout = registerOutput<int>('interactiveTimeout');
    internalTmpMemStorageEngine = registerOutput<String>('internalTmpMemStorageEngine');
    longQueryTime = registerOutput<double>('longQueryTime');
    maxAllowedPacket = registerOutput<int>('maxAllowedPacket');
    maxHeapTableSize = registerOutput<int>('maxHeapTableSize');
    netReadTimeout = registerOutput<int>('netReadTimeout');
    netWriteTimeout = registerOutput<int>('netWriteTimeout');
    slowQueryLog = registerOutput<bool>('slowQueryLog');
    sortBufferSize = registerOutput<int>('sortBufferSize');
    sqlMode = registerOutput<String>('sqlMode');
    sqlRequirePrimaryKey = registerOutput<bool>('sqlRequirePrimaryKey');
    tmpTableSize = registerOutput<int>('tmpTableSize');
    waitTimeout = registerOutput<int>('waitTimeout');
  }

  /// Gets an existing [DatabaseMysqlConfig] resource's state with the given [name] and [id].
  static DatabaseMysqlConfig get(
    String name,
    pulumi.Input<String> id, {
    DatabaseMysqlConfigState? state,
  }) {
    return DatabaseMysqlConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseMysqlConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseMysqlConfig:DatabaseMysqlConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupHour = registerOutput<int>('backupHour');
    backupMinute = registerOutput<int>('backupMinute');
    binlogRetentionPeriod = registerOutput<int>('binlogRetentionPeriod');
    clusterId = registerOutput<String>('clusterId');
    connectTimeout = registerOutput<int>('connectTimeout');
    defaultTimeZone = registerOutput<String>('defaultTimeZone');
    groupConcatMaxLen = registerOutput<int>('groupConcatMaxLen');
    informationSchemaStatsExpiry = registerOutput<int>('informationSchemaStatsExpiry');
    innodbFtMinTokenSize = registerOutput<int>('innodbFtMinTokenSize');
    innodbFtServerStopwordTable = registerOutput<String>('innodbFtServerStopwordTable');
    innodbLockWaitTimeout = registerOutput<int>('innodbLockWaitTimeout');
    innodbLogBufferSize = registerOutput<int>('innodbLogBufferSize');
    innodbOnlineAlterLogMaxSize = registerOutput<int>('innodbOnlineAlterLogMaxSize');
    innodbPrintAllDeadlocks = registerOutput<bool>('innodbPrintAllDeadlocks');
    innodbRollbackOnTimeout = registerOutput<bool>('innodbRollbackOnTimeout');
    interactiveTimeout = registerOutput<int>('interactiveTimeout');
    internalTmpMemStorageEngine = registerOutput<String>('internalTmpMemStorageEngine');
    longQueryTime = registerOutput<double>('longQueryTime');
    maxAllowedPacket = registerOutput<int>('maxAllowedPacket');
    maxHeapTableSize = registerOutput<int>('maxHeapTableSize');
    netReadTimeout = registerOutput<int>('netReadTimeout');
    netWriteTimeout = registerOutput<int>('netWriteTimeout');
    slowQueryLog = registerOutput<bool>('slowQueryLog');
    sortBufferSize = registerOutput<int>('sortBufferSize');
    sqlMode = registerOutput<String>('sqlMode');
    sqlRequirePrimaryKey = registerOutput<bool>('sqlRequirePrimaryKey');
    tmpTableSize = registerOutput<int>('tmpTableSize');
    waitTimeout = registerOutput<int>('waitTimeout');
  }
}
