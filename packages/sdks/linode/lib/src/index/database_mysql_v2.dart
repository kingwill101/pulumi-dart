import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_v2_args.dart';
import 'database_mysql_v2_pending_update.dart';
import 'database_mysql_v2_private_network.dart';
import 'database_mysql_v2_state.dart';
import 'database_mysql_v2_timeouts.dart';
import 'database_mysql_v2_updates.dart';

/// Provides a Linode MySQL Database resource. This can be used to create, modify, and delete Linode MySQL Databases.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-databases-mysql-instances).
///
/// Please keep in mind that Managed Databases can take up to half an hour to provision.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/8",
///     region: "us-mia",
///     type: "g6-nanode-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/8",
///     region="us-mia",
///     type="g6-nanode-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("mysql/8"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/8")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/8
///       region: us-mia
///       type: g6-nanode-1
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/8",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     allowLists: ["0.0.0.0/0"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/8",
///     region="us-mia",
///     type="g6-nanode-1",
///     allow_lists=["0.0.0.0/0"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         AllowLists = new[]
///         {
///             "0.0.0.0/0",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("mysql/8"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			AllowLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/8")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .allowLists("0.0.0.0/0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/8
///       region: us-mia
///       type: g6-nanode-1
///       allowLists:
///         - 0.0.0.0/0
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/8",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     allowLists: ["10.0.0.3/32"],
///     clusterSize: 3,
///     updates: {
///         duration: 4,
///         frequency: "weekly",
///         hourOfDay: 22,
///         dayOfWeek: 3,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/8",
///     region="us-mia",
///     type="g6-nanode-1",
///     allow_lists=["10.0.0.3/32"],
///     cluster_size=3,
///     updates={
///         "duration": 4,
///         "frequency": "weekly",
///         "hour_of_day": 22,
///         "day_of_week": 3,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         AllowLists = new[]
///         {
///             "10.0.0.3/32",
///         },
///         ClusterSize = 3,
///         Updates = new Linode.Inputs.DatabaseMysqlV2UpdatesArgs
///         {
///             Duration = 4,
///             Frequency = "weekly",
///             HourOfDay = 22,
///             DayOfWeek = 3,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("mysql/8"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			AllowLists: pulumi.StringArray{
/// 				pulumi.String("10.0.0.3/32"),
/// 			},
/// 			ClusterSize: pulumi.Int(3),
/// 			Updates: &linode.DatabaseMysqlV2UpdatesArgs{
/// 				Duration:  pulumi.Int(4),
/// 				Frequency: pulumi.String("weekly"),
/// 				HourOfDay: pulumi.Int(22),
/// 				DayOfWeek: pulumi.Int(3),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
/// import com.pulumi.linode.inputs.DatabaseMysqlV2UpdatesArgs;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/8")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .allowLists("10.0.0.3/32")
///             .clusterSize(3)
///             .updates(DatabaseMysqlV2UpdatesArgs.builder()
///                 .duration(4)
///                 .frequency("weekly")
///                 .hourOfDay(22)
///                 .dayOfWeek(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/8
///       region: us-mia
///       type: g6-nanode-1
///       allowLists:
///         - 10.0.0.3/32
///       clusterSize: 3
///       updates:
///         duration: 4
///         frequency: weekly
///         hourOfDay: 22
///         dayOfWeek: 3
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/8",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     engineConfigBinlogRetentionPeriod: 3600,
///     engineConfigMysqlConnectTimeout: 10,
///     engineConfigMysqlDefaultTimeZone: "+00:00",
///     engineConfigMysqlGroupConcatMaxLen: 4096,
///     engineConfigMysqlInformationSchemaStatsExpiry: 3600,
///     engineConfigMysqlInnodbChangeBufferMaxSize: 25,
///     engineConfigMysqlInnodbFlushNeighbors: 0,
///     engineConfigMysqlInnodbFtMinTokenSize: 7,
///     engineConfigMysqlInnodbFtServerStopwordTable: "mysql/innodb_ft_default_stopword",
///     engineConfigMysqlInnodbLockWaitTimeout: 300,
///     engineConfigMysqlInnodbLogBufferSize: 16777216,
///     engineConfigMysqlInnodbOnlineAlterLogMaxSize: 268435456,
///     engineConfigMysqlInnodbReadIoThreads: 4,
///     engineConfigMysqlInnodbRollbackOnTimeout: true,
///     engineConfigMysqlInnodbThreadConcurrency: 8,
///     engineConfigMysqlInnodbWriteIoThreads: 4,
///     engineConfigMysqlInteractiveTimeout: 300,
///     engineConfigMysqlInternalTmpMemStorageEngine: "TempTable",
///     engineConfigMysqlMaxAllowedPacket: 67108864,
///     engineConfigMysqlMaxHeapTableSize: 16777216,
///     engineConfigMysqlNetBufferLength: 16384,
///     engineConfigMysqlNetReadTimeout: 30,
///     engineConfigMysqlNetWriteTimeout: 30,
///     engineConfigMysqlSortBufferSize: 262144,
///     engineConfigMysqlSqlMode: "TRADITIONAL,ANSI",
///     engineConfigMysqlSqlRequirePrimaryKey: false,
///     engineConfigMysqlTmpTableSize: 16777216,
///     engineConfigMysqlWaitTimeout: 28800,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/8",
///     region="us-mia",
///     type="g6-nanode-1",
///     engine_config_binlog_retention_period=3600,
///     engine_config_mysql_connect_timeout=10,
///     engine_config_mysql_default_time_zone="+00:00",
///     engine_config_mysql_group_concat_max_len=4096,
///     engine_config_mysql_information_schema_stats_expiry=3600,
///     engine_config_mysql_innodb_change_buffer_max_size=25,
///     engine_config_mysql_innodb_flush_neighbors=0,
///     engine_config_mysql_innodb_ft_min_token_size=7,
///     engine_config_mysql_innodb_ft_server_stopword_table="mysql/innodb_ft_default_stopword",
///     engine_config_mysql_innodb_lock_wait_timeout=300,
///     engine_config_mysql_innodb_log_buffer_size=16777216,
///     engine_config_mysql_innodb_online_alter_log_max_size=268435456,
///     engine_config_mysql_innodb_read_io_threads=4,
///     engine_config_mysql_innodb_rollback_on_timeout=True,
///     engine_config_mysql_innodb_thread_concurrency=8,
///     engine_config_mysql_innodb_write_io_threads=4,
///     engine_config_mysql_interactive_timeout=300,
///     engine_config_mysql_internal_tmp_mem_storage_engine="TempTable",
///     engine_config_mysql_max_allowed_packet=67108864,
///     engine_config_mysql_max_heap_table_size=16777216,
///     engine_config_mysql_net_buffer_length=16384,
///     engine_config_mysql_net_read_timeout=30,
///     engine_config_mysql_net_write_timeout=30,
///     engine_config_mysql_sort_buffer_size=262144,
///     engine_config_mysql_sql_mode="TRADITIONAL,ANSI",
///     engine_config_mysql_sql_require_primary_key=False,
///     engine_config_mysql_tmp_table_size=16777216,
///     engine_config_mysql_wait_timeout=28800)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         EngineConfigBinlogRetentionPeriod = 3600,
///         EngineConfigMysqlConnectTimeout = 10,
///         EngineConfigMysqlDefaultTimeZone = "+00:00",
///         EngineConfigMysqlGroupConcatMaxLen = 4096,
///         EngineConfigMysqlInformationSchemaStatsExpiry = 3600,
///         EngineConfigMysqlInnodbChangeBufferMaxSize = 25,
///         EngineConfigMysqlInnodbFlushNeighbors = 0,
///         EngineConfigMysqlInnodbFtMinTokenSize = 7,
///         EngineConfigMysqlInnodbFtServerStopwordTable = "mysql/innodb_ft_default_stopword",
///         EngineConfigMysqlInnodbLockWaitTimeout = 300,
///         EngineConfigMysqlInnodbLogBufferSize = 16777216,
///         EngineConfigMysqlInnodbOnlineAlterLogMaxSize = 268435456,
///         EngineConfigMysqlInnodbReadIoThreads = 4,
///         EngineConfigMysqlInnodbRollbackOnTimeout = true,
///         EngineConfigMysqlInnodbThreadConcurrency = 8,
///         EngineConfigMysqlInnodbWriteIoThreads = 4,
///         EngineConfigMysqlInteractiveTimeout = 300,
///         EngineConfigMysqlInternalTmpMemStorageEngine = "TempTable",
///         EngineConfigMysqlMaxAllowedPacket = 67108864,
///         EngineConfigMysqlMaxHeapTableSize = 16777216,
///         EngineConfigMysqlNetBufferLength = 16384,
///         EngineConfigMysqlNetReadTimeout = 30,
///         EngineConfigMysqlNetWriteTimeout = 30,
///         EngineConfigMysqlSortBufferSize = 262144,
///         EngineConfigMysqlSqlMode = "TRADITIONAL,ANSI",
///         EngineConfigMysqlSqlRequirePrimaryKey = false,
///         EngineConfigMysqlTmpTableSize = 16777216,
///         EngineConfigMysqlWaitTimeout = 28800,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:                              pulumi.String("mydatabase"),
/// 			EngineId:                           pulumi.String("mysql/8"),
/// 			Region:                             pulumi.String("us-mia"),
/// 			Type:                               pulumi.String("g6-nanode-1"),
/// 			EngineConfigBinlogRetentionPeriod:  pulumi.Int(3600),
/// 			EngineConfigMysqlConnectTimeout:    pulumi.Int(10),
/// 			EngineConfigMysqlDefaultTimeZone:   pulumi.String("+00:00"),
/// 			EngineConfigMysqlGroupConcatMaxLen: pulumi.Float64(4096),
/// 			EngineConfigMysqlInformationSchemaStatsExpiry: pulumi.Int(3600),
/// 			EngineConfigMysqlInnodbChangeBufferMaxSize:    pulumi.Int(25),
/// 			EngineConfigMysqlInnodbFlushNeighbors:         pulumi.Int(0),
/// 			EngineConfigMysqlInnodbFtMinTokenSize:         pulumi.Int(7),
/// 			EngineConfigMysqlInnodbFtServerStopwordTable:  pulumi.String("mysql/innodb_ft_default_stopword"),
/// 			EngineConfigMysqlInnodbLockWaitTimeout:        pulumi.Int(300),
/// 			EngineConfigMysqlInnodbLogBufferSize:          pulumi.Int(16777216),
/// 			EngineConfigMysqlInnodbOnlineAlterLogMaxSize:  pulumi.Int(268435456),
/// 			EngineConfigMysqlInnodbReadIoThreads:          pulumi.Int(4),
/// 			EngineConfigMysqlInnodbRollbackOnTimeout:      pulumi.Bool(true),
/// 			EngineConfigMysqlInnodbThreadConcurrency:      pulumi.Int(8),
/// 			EngineConfigMysqlInnodbWriteIoThreads:         pulumi.Int(4),
/// 			EngineConfigMysqlInteractiveTimeout:           pulumi.Int(300),
/// 			EngineConfigMysqlInternalTmpMemStorageEngine:  pulumi.String("TempTable"),
/// 			EngineConfigMysqlMaxAllowedPacket:             pulumi.Int(67108864),
/// 			EngineConfigMysqlMaxHeapTableSize:             pulumi.Int(16777216),
/// 			EngineConfigMysqlNetBufferLength:              pulumi.Int(16384),
/// 			EngineConfigMysqlNetReadTimeout:               pulumi.Int(30),
/// 			EngineConfigMysqlNetWriteTimeout:              pulumi.Int(30),
/// 			EngineConfigMysqlSortBufferSize:               pulumi.Int(262144),
/// 			EngineConfigMysqlSqlMode:                      pulumi.String("TRADITIONAL,ANSI"),
/// 			EngineConfigMysqlSqlRequirePrimaryKey:         pulumi.Bool(false),
/// 			EngineConfigMysqlTmpTableSize:                 pulumi.Int(16777216),
/// 			EngineConfigMysqlWaitTimeout:                  pulumi.Int(28800),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/8")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .engineConfigBinlogRetentionPeriod(3600)
///             .engineConfigMysqlConnectTimeout(10)
///             .engineConfigMysqlDefaultTimeZone("+00:00")
///             .engineConfigMysqlGroupConcatMaxLen(4096.0)
///             .engineConfigMysqlInformationSchemaStatsExpiry(3600)
///             .engineConfigMysqlInnodbChangeBufferMaxSize(25)
///             .engineConfigMysqlInnodbFlushNeighbors(0)
///             .engineConfigMysqlInnodbFtMinTokenSize(7)
///             .engineConfigMysqlInnodbFtServerStopwordTable("mysql/innodb_ft_default_stopword")
///             .engineConfigMysqlInnodbLockWaitTimeout(300)
///             .engineConfigMysqlInnodbLogBufferSize(16777216)
///             .engineConfigMysqlInnodbOnlineAlterLogMaxSize(268435456)
///             .engineConfigMysqlInnodbReadIoThreads(4)
///             .engineConfigMysqlInnodbRollbackOnTimeout(true)
///             .engineConfigMysqlInnodbThreadConcurrency(8)
///             .engineConfigMysqlInnodbWriteIoThreads(4)
///             .engineConfigMysqlInteractiveTimeout(300)
///             .engineConfigMysqlInternalTmpMemStorageEngine("TempTable")
///             .engineConfigMysqlMaxAllowedPacket(67108864)
///             .engineConfigMysqlMaxHeapTableSize(16777216)
///             .engineConfigMysqlNetBufferLength(16384)
///             .engineConfigMysqlNetReadTimeout(30)
///             .engineConfigMysqlNetWriteTimeout(30)
///             .engineConfigMysqlSortBufferSize(262144)
///             .engineConfigMysqlSqlMode("TRADITIONAL,ANSI")
///             .engineConfigMysqlSqlRequirePrimaryKey(false)
///             .engineConfigMysqlTmpTableSize(16777216)
///             .engineConfigMysqlWaitTimeout(28800)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/8
///       region: us-mia
///       type: g6-nanode-1
///       engineConfigBinlogRetentionPeriod: 3600
///       engineConfigMysqlConnectTimeout: 10
///       engineConfigMysqlDefaultTimeZone: +00:00
///       engineConfigMysqlGroupConcatMaxLen: 4096
///       engineConfigMysqlInformationSchemaStatsExpiry: 3600
///       engineConfigMysqlInnodbChangeBufferMaxSize: 25
///       engineConfigMysqlInnodbFlushNeighbors: 0
///       engineConfigMysqlInnodbFtMinTokenSize: 7
///       engineConfigMysqlInnodbFtServerStopwordTable: mysql/innodb_ft_default_stopword
///       engineConfigMysqlInnodbLockWaitTimeout: 300
///       engineConfigMysqlInnodbLogBufferSize: 1.6777216e+07
///       engineConfigMysqlInnodbOnlineAlterLogMaxSize: 2.68435456e+08
///       engineConfigMysqlInnodbReadIoThreads: 4
///       engineConfigMysqlInnodbRollbackOnTimeout: true
///       engineConfigMysqlInnodbThreadConcurrency: 8
///       engineConfigMysqlInnodbWriteIoThreads: 4
///       engineConfigMysqlInteractiveTimeout: 300
///       engineConfigMysqlInternalTmpMemStorageEngine: TempTable
///       engineConfigMysqlMaxAllowedPacket: 6.7108864e+07
///       engineConfigMysqlMaxHeapTableSize: 1.6777216e+07
///       engineConfigMysqlNetBufferLength: 16384
///       engineConfigMysqlNetReadTimeout: 30
///       engineConfigMysqlNetWriteTimeout: 30
///       engineConfigMysqlSortBufferSize: 262144
///       engineConfigMysqlSqlMode: TRADITIONAL,ANSI
///       engineConfigMysqlSqlRequirePrimaryKey: false
///       engineConfigMysqlTmpTableSize: 1.6777216e+07
///       engineConfigMysqlWaitTimeout: 28800
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/8",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     forkSource: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/8",
///     region="us-mia",
///     type="g6-nanode-1",
///     fork_source=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         ForkSource = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:      pulumi.String("mydatabase"),
/// 			EngineId:   pulumi.String("mysql/8"),
/// 			Region:     pulumi.String("us-mia"),
/// 			Type:       pulumi.String("g6-nanode-1"),
/// 			ForkSource: pulumi.Int(12345),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/8")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .forkSource(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/8
///       region: us-mia
///       type: g6-nanode-1
///       forkSource: 12345
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabaseMysqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "mysql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     privateNetwork: {
///         vpcId: 123,
///         subnetId: 456,
///         publicAccess: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabaseMysqlV2("foobar",
///     label="mydatabase",
///     engine_id="mysql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     private_network={
///         "vpc_id": 123,
///         "subnet_id": 456,
///         "public_access": False,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabaseMysqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         PrivateNetwork = new Linode.Inputs.DatabaseMysqlV2PrivateNetworkArgs
///         {
///             VpcId = 123,
///             SubnetId = 456,
///             PublicAccess = false,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabaseMysqlV2(ctx, "foobar", &linode.DatabaseMysqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("mysql/16"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			PrivateNetwork: &linode.DatabaseMysqlV2PrivateNetworkArgs{
/// 				VpcId:        pulumi.Int(123),
/// 				SubnetId:     pulumi.Int(456),
/// 				PublicAccess: pulumi.Bool(false),
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
/// import com.pulumi.linode.DatabaseMysqlV2;
/// import com.pulumi.linode.DatabaseMysqlV2Args;
/// import com.pulumi.linode.inputs.DatabaseMysqlV2PrivateNetworkArgs;
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
///         var foobar = new DatabaseMysqlV2("foobar", DatabaseMysqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("mysql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .privateNetwork(DatabaseMysqlV2PrivateNetworkArgs.builder()
///                 .vpcId(123)
///                 .subnetId(456)
///                 .publicAccess(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabaseMysqlV2
///     properties:
///       label: mydatabase
///       engineId: mysql/16
///       region: us-mia
///       type: g6-nanode-1
///       privateNetwork:
///         vpcId: 123
///         subnetId: 456
///         publicAccess: false
/// ```
///
///
/// > **_NOTE:_** The name of the default database in the returned database cluster is `defaultdb`.
///
/// ## pending_updates
///
/// The following arguments are exposed by each entry in the `pending_updates` attribute:
///
/// * `deadline` - The time when a mandatory update needs to be applied.
///
/// * `description` - A description of the update.
///
/// * `planned_for` - The date and time a maintenance update will be applied.
///
/// ## updates
///
/// The following arguments are supported in the `updates` specification block:
///
/// * `day_of_week` - (Required) The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - (Required) The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - (Required) The frequency at which maintenance occurs. (`weekly`)
///
/// * `hour_of_day` - (Required) The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// ## private_network
///
/// The following arguments are supported in the `private_network` specification block:
///
/// * `vpc_id` - (Required) The ID of the virtual private cloud (VPC) to restrict access to this database using.
///
/// * `subnet_id` - (Required) The ID of the VPC subnet to restrict access to this database using.
///
/// * `public_access` - (Optional) Set to `true` to allow clients outside the VPC to connect to the database using a public IP address. (Default `false`)
///
/// ## Import
///
/// Linode MySQL Databases can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/databaseMysqlV2:DatabaseMysqlV2 foobar 1234567
/// ```
class DatabaseMysqlV2 extends pulumi.CustomResource {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  late final pulumi.Output<List<String>> allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database.
  late final pulumi.Output<String> caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  late final pulumi.Output<int> clusterSize;
  /// When this Managed Database was created.
  late final pulumi.Output<String> created;
  /// Whether the Managed Databases is encrypted.
  late final pulumi.Output<bool> encrypted;
  /// The Managed Database engine. (e.g. `mysql`)
  late final pulumi.Output<String> engine;
  /// The minimum amount of time in seconds to keep binlog entries before deletion. This may be extended for services that require binlog entries for longer than the default, for example if using the MySQL Debezium Kafka connector.
  late final pulumi.Output<int> engineConfigBinlogRetentionPeriod;
  /// The number of seconds that the mysqld server waits for a connect packet before responding with "Bad handshake".
  late final pulumi.Output<int> engineConfigMysqlConnectTimeout;
  /// Default server time zone as an offset from UTC (from -12:00 to +12:00), a time zone name, or `SYSTEM` to use the MySQL server default.
  late final pulumi.Output<String> engineConfigMysqlDefaultTimeZone;
  /// The maximum permitted result length in bytes for the `GROUP_CONCAT()` function.
  late final pulumi.Output<double> engineConfigMysqlGroupConcatMaxLen;
  /// The time, in seconds, before cached statistics expire.
  late final pulumi.Output<int> engineConfigMysqlInformationSchemaStatsExpiry;
  /// Maximum size for the InnoDB change buffer, as a percentage of the total size of the buffer pool. Default is 25.
  late final pulumi.Output<int> engineConfigMysqlInnodbChangeBufferMaxSize;
  /// Specifies whether flushing a page from the InnoDB buffer pool also flushes other dirty pages in the same extent (default is 1): 0 - dirty pages in the same extent are not flushed, 1 - flush contiguous dirty pages in the same extent, 2 - flush dirty pages in the same extent.
  late final pulumi.Output<int> engineConfigMysqlInnodbFlushNeighbors;
  /// Minimum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service.
  late final pulumi.Output<int> engineConfigMysqlInnodbFtMinTokenSize;
  /// This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables. This field is nullable.
  late final pulumi.Output<String?> engineConfigMysqlInnodbFtServerStopwordTable;
  /// The length of time in seconds an InnoDB transaction waits for a row lock before giving up. Default is 120.
  late final pulumi.Output<int> engineConfigMysqlInnodbLockWaitTimeout;
  /// The size in bytes of the buffer that InnoDB uses to write to the log files on disk.
  late final pulumi.Output<int> engineConfigMysqlInnodbLogBufferSize;
  /// The upper limit in bytes on the size of the temporary log files used during online DDL operations for InnoDB tables.
  late final pulumi.Output<int> engineConfigMysqlInnodbOnlineAlterLogMaxSize;
  /// The number of I/O threads for read operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  late final pulumi.Output<int> engineConfigMysqlInnodbReadIoThreads;
  /// When enabled, a transaction timeout causes InnoDB to abort and roll back the entire transaction. Changing this parameter will lead to a restart of the MySQL service.
  late final pulumi.Output<bool> engineConfigMysqlInnodbRollbackOnTimeout;
  /// Defines the maximum number of threads permitted inside of InnoDB. Default is 0 (infinite concurrency - no limit).
  late final pulumi.Output<int> engineConfigMysqlInnodbThreadConcurrency;
  /// The number of I/O threads for write operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
  late final pulumi.Output<int> engineConfigMysqlInnodbWriteIoThreads;
  /// The number of seconds the server waits for activity on an interactive connection before closing it.
  late final pulumi.Output<int> engineConfigMysqlInteractiveTimeout;
  /// The storage engine for in-memory internal temporary tables.
  late final pulumi.Output<String> engineConfigMysqlInternalTmpMemStorageEngine;
  /// Size of the largest message in bytes that can be received by the server. Default is 67108864 (64M).
  late final pulumi.Output<int> engineConfigMysqlMaxAllowedPacket;
  /// Limits the size of internal in-memory tables. Also set tmp_table_size. Default is 16777216 (16M).
  late final pulumi.Output<int> engineConfigMysqlMaxHeapTableSize;
  /// Start sizes of connection buffer and result buffer. Default is 16384 (16K). Changing this parameter will lead to a restart of the MySQL service.
  late final pulumi.Output<int> engineConfigMysqlNetBufferLength;
  /// The number of seconds to wait for more data from a connection before aborting the read.
  late final pulumi.Output<int> engineConfigMysqlNetReadTimeout;
  /// The number of seconds to wait for a block to be written to a connection before aborting the write.
  late final pulumi.Output<int> engineConfigMysqlNetWriteTimeout;
  /// Sort buffer size in bytes for ORDER BY optimization. Default is 262144 (256K).
  late final pulumi.Output<int> engineConfigMysqlSortBufferSize;
  /// Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned. (default `ANSI,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE,STRICT_ALL_TABLES`)
  late final pulumi.Output<String> engineConfigMysqlSqlMode;
  /// Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them. (default `true`)
  late final pulumi.Output<bool> engineConfigMysqlSqlRequirePrimaryKey;
  /// Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
  late final pulumi.Output<int> engineConfigMysqlTmpTableSize;
  /// The number of seconds the server waits for activity on a noninteractive connection before closing it.
  late final pulumi.Output<int> engineConfigMysqlWaitTimeout;
  /// The Managed Database engine in engine/version format. (e.g. `mysql`)
  late final pulumi.Output<String> engineId;
  /// The database timestamp from which it was restored.
  late final pulumi.Output<String> forkRestoreTime;
  /// The ID of the database that was forked from.
  ///
  /// * `private_network` - (Optional) Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<int?> forkSource;
  /// The primary host for the Managed Database.
  late final pulumi.Output<String> hostPrimary;
  /// The secondary/private host for the managed database.
  late final pulumi.Output<String> hostSecondary;
  /// A unique, user-defined string referring to the Managed Database.
  late final pulumi.Output<String> label;
  /// A mapping between IP addresses and strings designating them as primary or failover.
  late final pulumi.Output<Map<String, String>> members;
  /// The oldest time to which a database can be restored.
  late final pulumi.Output<String> oldestRestoreTime;
  /// A set of pending updates.
  late final pulumi.Output<List<DatabaseMysqlV2PendingUpdate>> pendingUpdates;
  /// The back-end platform for relational databases used by the service.
  late final pulumi.Output<String> platform;
  /// The access port for this Managed Database.
  late final pulumi.Output<int> port;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  late final pulumi.Output<DatabaseMysqlV2PrivateNetwork?> privateNetwork;
  /// The region to use for the Managed Database.
  late final pulumi.Output<String> region;
  /// The randomly-generated root password for the Managed Database instance.
  late final pulumi.Output<String> rootPassword;
  /// The root username for the Managed Database instance.
  late final pulumi.Output<String> rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  late final pulumi.Output<bool> sslConnection;
  /// The operating status of the Managed Database.
  late final pulumi.Output<String> status;
  /// Whether this Managed Database should be suspended.
  late final pulumi.Output<bool> suspended;
  late final pulumi.Output<DatabaseMysqlV2Timeouts?> timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  late final pulumi.Output<String> type;
  /// When this Managed Database was last updated.
  late final pulumi.Output<String> updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<DatabaseMysqlV2Updates> updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  late final pulumi.Output<String> version;

  /// Creates a new [DatabaseMysqlV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMysqlV2]. {@macro pulumi_index_database_mysql_v2_database_mysql_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMysqlV2(
    String name, {
    DatabaseMysqlV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/databaseMysqlV2:DatabaseMysqlV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowLists = registerOutput<List<String>>('allowLists');
    this.caCert = registerOutput<String>('caCert');
    this.clusterSize = registerOutput<int>('clusterSize');
    this.created = registerOutput<String>('created');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineConfigBinlogRetentionPeriod = registerOutput<int>('engineConfigBinlogRetentionPeriod');
    this.engineConfigMysqlConnectTimeout = registerOutput<int>('engineConfigMysqlConnectTimeout');
    this.engineConfigMysqlDefaultTimeZone = registerOutput<String>('engineConfigMysqlDefaultTimeZone');
    this.engineConfigMysqlGroupConcatMaxLen = registerOutput<double>('engineConfigMysqlGroupConcatMaxLen');
    this.engineConfigMysqlInformationSchemaStatsExpiry = registerOutput<int>('engineConfigMysqlInformationSchemaStatsExpiry');
    this.engineConfigMysqlInnodbChangeBufferMaxSize = registerOutput<int>('engineConfigMysqlInnodbChangeBufferMaxSize');
    this.engineConfigMysqlInnodbFlushNeighbors = registerOutput<int>('engineConfigMysqlInnodbFlushNeighbors');
    this.engineConfigMysqlInnodbFtMinTokenSize = registerOutput<int>('engineConfigMysqlInnodbFtMinTokenSize');
    this.engineConfigMysqlInnodbFtServerStopwordTable = registerOutput<String?>('engineConfigMysqlInnodbFtServerStopwordTable');
    this.engineConfigMysqlInnodbLockWaitTimeout = registerOutput<int>('engineConfigMysqlInnodbLockWaitTimeout');
    this.engineConfigMysqlInnodbLogBufferSize = registerOutput<int>('engineConfigMysqlInnodbLogBufferSize');
    this.engineConfigMysqlInnodbOnlineAlterLogMaxSize = registerOutput<int>('engineConfigMysqlInnodbOnlineAlterLogMaxSize');
    this.engineConfigMysqlInnodbReadIoThreads = registerOutput<int>('engineConfigMysqlInnodbReadIoThreads');
    this.engineConfigMysqlInnodbRollbackOnTimeout = registerOutput<bool>('engineConfigMysqlInnodbRollbackOnTimeout');
    this.engineConfigMysqlInnodbThreadConcurrency = registerOutput<int>('engineConfigMysqlInnodbThreadConcurrency');
    this.engineConfigMysqlInnodbWriteIoThreads = registerOutput<int>('engineConfigMysqlInnodbWriteIoThreads');
    this.engineConfigMysqlInteractiveTimeout = registerOutput<int>('engineConfigMysqlInteractiveTimeout');
    this.engineConfigMysqlInternalTmpMemStorageEngine = registerOutput<String>('engineConfigMysqlInternalTmpMemStorageEngine');
    this.engineConfigMysqlMaxAllowedPacket = registerOutput<int>('engineConfigMysqlMaxAllowedPacket');
    this.engineConfigMysqlMaxHeapTableSize = registerOutput<int>('engineConfigMysqlMaxHeapTableSize');
    this.engineConfigMysqlNetBufferLength = registerOutput<int>('engineConfigMysqlNetBufferLength');
    this.engineConfigMysqlNetReadTimeout = registerOutput<int>('engineConfigMysqlNetReadTimeout');
    this.engineConfigMysqlNetWriteTimeout = registerOutput<int>('engineConfigMysqlNetWriteTimeout');
    this.engineConfigMysqlSortBufferSize = registerOutput<int>('engineConfigMysqlSortBufferSize');
    this.engineConfigMysqlSqlMode = registerOutput<String>('engineConfigMysqlSqlMode');
    this.engineConfigMysqlSqlRequirePrimaryKey = registerOutput<bool>('engineConfigMysqlSqlRequirePrimaryKey');
    this.engineConfigMysqlTmpTableSize = registerOutput<int>('engineConfigMysqlTmpTableSize');
    this.engineConfigMysqlWaitTimeout = registerOutput<int>('engineConfigMysqlWaitTimeout');
    this.engineId = registerOutput<String>('engineId');
    this.forkRestoreTime = registerOutput<String>('forkRestoreTime');
    this.forkSource = registerOutput<int?>('forkSource');
    this.hostPrimary = registerOutput<String>('hostPrimary');
    this.hostSecondary = registerOutput<String>('hostSecondary');
    this.label = registerOutput<String>('label');
    this.members = registerOutput<Map<String, String>>('members');
    this.oldestRestoreTime = registerOutput<String>('oldestRestoreTime');
    this.pendingUpdates = registerOutput<List<DatabaseMysqlV2PendingUpdate>>('pendingUpdates');
    this.platform = registerOutput<String>('platform');
    this.port = registerOutput<int>('port');
    this.privateNetwork = registerOutput<DatabaseMysqlV2PrivateNetwork?>('privateNetwork');
    this.region = registerOutput<String>('region');
    this.rootPassword = registerOutput<String>('rootPassword');
    this.rootUsername = registerOutput<String>('rootUsername');
    this.sslConnection = registerOutput<bool>('sslConnection');
    this.status = registerOutput<String>('status');
    this.suspended = registerOutput<bool>('suspended');
    this.timeouts = registerOutput<DatabaseMysqlV2Timeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.updated = registerOutput<String>('updated');
    this.updates = registerOutput<DatabaseMysqlV2Updates>('updates');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [DatabaseMysqlV2] resource's state with the given [name] and [id].
  static DatabaseMysqlV2 get(
    String name,
    pulumi.Input<String> id, {
    DatabaseMysqlV2State? state,
  }) {
    return DatabaseMysqlV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseMysqlV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/databaseMysqlV2:DatabaseMysqlV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowLists = registerOutput<List<String>>('allowLists');
    this.caCert = registerOutput<String>('caCert');
    this.clusterSize = registerOutput<int>('clusterSize');
    this.created = registerOutput<String>('created');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineConfigBinlogRetentionPeriod = registerOutput<int>('engineConfigBinlogRetentionPeriod');
    this.engineConfigMysqlConnectTimeout = registerOutput<int>('engineConfigMysqlConnectTimeout');
    this.engineConfigMysqlDefaultTimeZone = registerOutput<String>('engineConfigMysqlDefaultTimeZone');
    this.engineConfigMysqlGroupConcatMaxLen = registerOutput<double>('engineConfigMysqlGroupConcatMaxLen');
    this.engineConfigMysqlInformationSchemaStatsExpiry = registerOutput<int>('engineConfigMysqlInformationSchemaStatsExpiry');
    this.engineConfigMysqlInnodbChangeBufferMaxSize = registerOutput<int>('engineConfigMysqlInnodbChangeBufferMaxSize');
    this.engineConfigMysqlInnodbFlushNeighbors = registerOutput<int>('engineConfigMysqlInnodbFlushNeighbors');
    this.engineConfigMysqlInnodbFtMinTokenSize = registerOutput<int>('engineConfigMysqlInnodbFtMinTokenSize');
    this.engineConfigMysqlInnodbFtServerStopwordTable = registerOutput<String?>('engineConfigMysqlInnodbFtServerStopwordTable');
    this.engineConfigMysqlInnodbLockWaitTimeout = registerOutput<int>('engineConfigMysqlInnodbLockWaitTimeout');
    this.engineConfigMysqlInnodbLogBufferSize = registerOutput<int>('engineConfigMysqlInnodbLogBufferSize');
    this.engineConfigMysqlInnodbOnlineAlterLogMaxSize = registerOutput<int>('engineConfigMysqlInnodbOnlineAlterLogMaxSize');
    this.engineConfigMysqlInnodbReadIoThreads = registerOutput<int>('engineConfigMysqlInnodbReadIoThreads');
    this.engineConfigMysqlInnodbRollbackOnTimeout = registerOutput<bool>('engineConfigMysqlInnodbRollbackOnTimeout');
    this.engineConfigMysqlInnodbThreadConcurrency = registerOutput<int>('engineConfigMysqlInnodbThreadConcurrency');
    this.engineConfigMysqlInnodbWriteIoThreads = registerOutput<int>('engineConfigMysqlInnodbWriteIoThreads');
    this.engineConfigMysqlInteractiveTimeout = registerOutput<int>('engineConfigMysqlInteractiveTimeout');
    this.engineConfigMysqlInternalTmpMemStorageEngine = registerOutput<String>('engineConfigMysqlInternalTmpMemStorageEngine');
    this.engineConfigMysqlMaxAllowedPacket = registerOutput<int>('engineConfigMysqlMaxAllowedPacket');
    this.engineConfigMysqlMaxHeapTableSize = registerOutput<int>('engineConfigMysqlMaxHeapTableSize');
    this.engineConfigMysqlNetBufferLength = registerOutput<int>('engineConfigMysqlNetBufferLength');
    this.engineConfigMysqlNetReadTimeout = registerOutput<int>('engineConfigMysqlNetReadTimeout');
    this.engineConfigMysqlNetWriteTimeout = registerOutput<int>('engineConfigMysqlNetWriteTimeout');
    this.engineConfigMysqlSortBufferSize = registerOutput<int>('engineConfigMysqlSortBufferSize');
    this.engineConfigMysqlSqlMode = registerOutput<String>('engineConfigMysqlSqlMode');
    this.engineConfigMysqlSqlRequirePrimaryKey = registerOutput<bool>('engineConfigMysqlSqlRequirePrimaryKey');
    this.engineConfigMysqlTmpTableSize = registerOutput<int>('engineConfigMysqlTmpTableSize');
    this.engineConfigMysqlWaitTimeout = registerOutput<int>('engineConfigMysqlWaitTimeout');
    this.engineId = registerOutput<String>('engineId');
    this.forkRestoreTime = registerOutput<String>('forkRestoreTime');
    this.forkSource = registerOutput<int?>('forkSource');
    this.hostPrimary = registerOutput<String>('hostPrimary');
    this.hostSecondary = registerOutput<String>('hostSecondary');
    this.label = registerOutput<String>('label');
    this.members = registerOutput<Map<String, String>>('members');
    this.oldestRestoreTime = registerOutput<String>('oldestRestoreTime');
    this.pendingUpdates = registerOutput<List<DatabaseMysqlV2PendingUpdate>>('pendingUpdates');
    this.platform = registerOutput<String>('platform');
    this.port = registerOutput<int>('port');
    this.privateNetwork = registerOutput<DatabaseMysqlV2PrivateNetwork?>('privateNetwork');
    this.region = registerOutput<String>('region');
    this.rootPassword = registerOutput<String>('rootPassword');
    this.rootUsername = registerOutput<String>('rootUsername');
    this.sslConnection = registerOutput<bool>('sslConnection');
    this.status = registerOutput<String>('status');
    this.suspended = registerOutput<bool>('suspended');
    this.timeouts = registerOutput<DatabaseMysqlV2Timeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.updated = registerOutput<String>('updated');
    this.updates = registerOutput<DatabaseMysqlV2Updates>('updates');
    this.version = registerOutput<String>('version');
  }
}
