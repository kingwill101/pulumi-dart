import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cluster_args.dart';
import 'database_cluster_backup_restore.dart';
import 'database_cluster_state.dart';

/// Provides a DigitalOcean database cluster resource.
///
/// ## Example Usage
///
/// ### Create a new PostgreSQL database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### Create a new MySQL database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const mysql_example = new digitalocean.DatabaseCluster("mysql-example", {
///     name: "example-mysql-cluster",
///     engine: "mysql",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// mysql_example = digitalocean.DatabaseCluster("mysql-example",
///     name="example-mysql-cluster",
///     engine="mysql",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mysql_example = new DigitalOcean.DatabaseCluster("mysql-example", new()
///     {
///         Name = "example-mysql-cluster",
///         Engine = "mysql",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "mysql-example", &digitalocean.DatabaseClusterArgs{
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
///         var mysql_example = new DatabaseCluster("mysql-example", DatabaseClusterArgs.builder()
///             .name("example-mysql-cluster")
///             .engine("mysql")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mysql-example:
///     type: digitalocean:DatabaseCluster
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
/// ### Create a new Valkey database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const valkey_example = new digitalocean.DatabaseCluster("valkey-example", {
///     name: "example-valkey-cluster",
///     engine: "valkey",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// valkey_example = digitalocean.DatabaseCluster("valkey-example",
///     name="example-valkey-cluster",
///     engine="valkey",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var valkey_example = new DigitalOcean.DatabaseCluster("valkey-example", new()
///     {
///         Name = "example-valkey-cluster",
///         Engine = "valkey",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "valkey-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-valkey-cluster"),
/// 			Engine:    pulumi.String("valkey"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
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
///         var valkey_example = new DatabaseCluster("valkey-example", DatabaseClusterArgs.builder()
///             .name("example-valkey-cluster")
///             .engine("valkey")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   valkey-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-valkey-cluster
///       engine: valkey
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### Create a new Kafka database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const kafka_example = new digitalocean.DatabaseCluster("kafka-example", {
///     name: "example-kafka-cluster",
///     engine: "kafka",
///     version: "3.5",
///     size: "db-s-2vcpu-2gb",
///     region: digitalocean.Region.NYC1,
///     nodeCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// kafka_example = digitalocean.DatabaseCluster("kafka-example",
///     name="example-kafka-cluster",
///     engine="kafka",
///     version="3.5",
///     size="db-s-2vcpu-2gb",
///     region=digitalocean.Region.NYC1,
///     node_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kafka_example = new DigitalOcean.DatabaseCluster("kafka-example", new()
///     {
///         Name = "example-kafka-cluster",
///         Engine = "kafka",
///         Version = "3.5",
///         Size = "db-s-2vcpu-2gb",
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 3,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "kafka-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-kafka-cluster"),
/// 			Engine:    pulumi.String("kafka"),
/// 			Version:   pulumi.String("3.5"),
/// 			Size:      pulumi.String("db-s-2vcpu-2gb"),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(3),
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
///         var kafka_example = new DatabaseCluster("kafka-example", DatabaseClusterArgs.builder()
///             .name("example-kafka-cluster")
///             .engine("kafka")
///             .version("3.5")
///             .size("db-s-2vcpu-2gb")
///             .region("nyc1")
///             .nodeCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kafka-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-kafka-cluster
///       engine: kafka
///       version: '3.5'
///       size: db-s-2vcpu-2gb
///       region: nyc1
///       nodeCount: 3
/// ```
///
///
/// ### Create a new MongoDB database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const mongodb_example = new digitalocean.DatabaseCluster("mongodb-example", {
///     name: "example-mongo-cluster",
///     engine: "mongodb",
///     version: "6",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC3,
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// mongodb_example = digitalocean.DatabaseCluster("mongodb-example",
///     name="example-mongo-cluster",
///     engine="mongodb",
///     version="6",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC3,
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongodb_example = new DigitalOcean.DatabaseCluster("mongodb-example", new()
///     {
///         Name = "example-mongo-cluster",
///         Engine = "mongodb",
///         Version = "6",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC3,
///         NodeCount = 1,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "mongodb-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-mongo-cluster"),
/// 			Engine:    pulumi.String("mongodb"),
/// 			Version:   pulumi.String("6"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC3),
/// 			NodeCount: pulumi.Int(1),
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
///         var mongodb_example = new DatabaseCluster("mongodb-example", DatabaseClusterArgs.builder()
///             .name("example-mongo-cluster")
///             .engine("mongodb")
///             .version("6")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc3")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mongodb-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-mongo-cluster
///       engine: mongodb
///       version: '6'
///       size: db-s-1vcpu-1gb
///       region: nyc3
///       nodeCount: 1
/// ```
///
///
/// ### Create a new OpenSearch database cluster
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const opensearch_example = new digitalocean.DatabaseCluster("opensearch-example", {
///     name: "example-opensearch-cluster",
///     engine: "opensearch",
///     version: "2",
///     size: digitalocean.DatabaseSlug.DB_1VPCU2GB,
///     region: digitalocean.Region.NYC3,
///     nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// opensearch_example = digitalocean.DatabaseCluster("opensearch-example",
///     name="example-opensearch-cluster",
///     engine="opensearch",
///     version="2",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU2_GB,
///     region=digitalocean.Region.NYC3,
///     node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var opensearch_example = new DigitalOcean.DatabaseCluster("opensearch-example", new()
///     {
///         Name = "example-opensearch-cluster",
///         Engine = "opensearch",
///         Version = "2",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU2GB,
///         Region = DigitalOcean.Region.NYC3,
///         NodeCount = 1,
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
/// 		_, err := digitalocean.NewDatabaseCluster(ctx, "opensearch-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-opensearch-cluster"),
/// 			Engine:    pulumi.String("opensearch"),
/// 			Version:   pulumi.String("2"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU2GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC3),
/// 			NodeCount: pulumi.Int(1),
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
///         var opensearch_example = new DatabaseCluster("opensearch-example", DatabaseClusterArgs.builder()
///             .name("example-opensearch-cluster")
///             .engine("opensearch")
///             .version("2")
///             .size("db-s-1vcpu-2gb")
///             .region("nyc3")
///             .nodeCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   opensearch-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-opensearch-cluster
///       engine: opensearch
///       version: '2'
///       size: db-s-1vcpu-2gb
///       region: nyc3
///       nodeCount: 1
/// ```
///
///
/// ## Create a new database cluster based on a backup of an existing cluster.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const doby = new digitalocean.DatabaseCluster("doby", {
///     name: "dobydb",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU2GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
///     tags: ["production"],
/// });
/// const dobyBackup = new digitalocean.DatabaseCluster("doby_backup", {
///     name: "dobydupe",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU2GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
///     tags: ["production"],
///     backupRestore: {
///         databaseName: "dobydb",
///     },
/// }, {
///     dependsOn: [doby],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// doby = digitalocean.DatabaseCluster("doby",
///     name="dobydb",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU2_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1,
///     tags=["production"])
/// doby_backup = digitalocean.DatabaseCluster("doby_backup",
///     name="dobydupe",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU2_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1,
///     tags=["production"],
///     backup_restore={
///         "database_name": "dobydb",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[doby]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var doby = new DigitalOcean.DatabaseCluster("doby", new()
///     {
///         Name = "dobydb",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU2GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///         Tags = new[]
///         {
///             "production",
///         },
///     });
///
///     var dobyBackup = new DigitalOcean.DatabaseCluster("doby_backup", new()
///     {
///         Name = "dobydupe",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU2GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///         Tags = new[]
///         {
///             "production",
///         },
///         BackupRestore = new DigitalOcean.Inputs.DatabaseClusterBackupRestoreArgs
///         {
///             DatabaseName = "dobydb",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             doby,
///         },
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
/// 		doby, err := digitalocean.NewDatabaseCluster(ctx, "doby", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("dobydb"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU2GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseCluster(ctx, "doby_backup", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("dobydupe"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU2GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 			BackupRestore: &digitalocean.DatabaseClusterBackupRestoreArgs{
/// 				DatabaseName: pulumi.String("dobydb"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			doby,
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseClusterBackupRestoreArgs;
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
///         var doby = new DatabaseCluster("doby", DatabaseClusterArgs.builder()
///             .name("dobydb")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-2gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .tags("production")
///             .build());
///
///         var dobyBackup = new DatabaseCluster("dobyBackup", DatabaseClusterArgs.builder()
///             .name("dobydupe")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-2gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .tags("production")
///             .backupRestore(DatabaseClusterBackupRestoreArgs.builder()
///                 .databaseName("dobydb")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(doby)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   doby:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: dobydb
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-2gb
///       region: nyc1
///       nodeCount: 1
///       tags:
///         - production
///   dobyBackup:
///     type: digitalocean:DatabaseCluster
///     name: doby_backup
///     properties:
///       name: dobydupe
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-2gb
///       region: nyc1
///       nodeCount: 1
///       tags:
///         - production
///       backupRestore:
///         databaseName: dobydb
///     options:
///       dependsOn:
///         - ${doby}
/// ```
///
///
/// ## Import
///
/// Database clusters can be imported using the `id` returned from DigitalOcean, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseCluster:DatabaseCluster mycluster 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
class DatabaseCluster extends pulumi.CustomResource {
  late final pulumi.Output<DatabaseClusterBackupRestore?> backupRestore;

  /// The uniform resource name of the database cluster.
  late final pulumi.Output<String> clusterUrn;

  /// Name of the cluster's default database.
  late final pulumi.Output<String> database;

  /// Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  late final pulumi.Output<String> engine;

  /// A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
  late final pulumi.Output<String?> evictionPolicy;

  /// Database cluster's hostname.
  late final pulumi.Output<String> host;

  /// Defines when the automatic maintenance should be performed for the database cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> maintenanceWindows;

  /// A list of metrics endpoints for the database cluster, providing URLs to access Prometheus-compatible metrics.
  late final pulumi.Output<List<String>> metricsEndpoints;

  /// The name of the database cluster.
  late final pulumi.Output<String> name;

  /// Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  late final pulumi.Output<int> nodeCount;

  /// Password for the cluster's default user.
  late final pulumi.Output<String> password;

  /// Network port that the database cluster is listening on.
  late final pulumi.Output<int> port;

  /// Same as `host`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateHost;

  /// The ID of the VPC where the database cluster will be located.
  late final pulumi.Output<String> privateNetworkUuid;

  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateUri;

  /// The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  late final pulumi.Output<String> projectId;

  /// DigitalOcean region where the cluster will reside.
  late final pulumi.Output<String> region;

  /// Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  late final pulumi.Output<String> size;

  /// A comma separated string specifying the  SQL modes for a MySQL cluster.
  late final pulumi.Output<String?> sqlMode;

  /// Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  late final pulumi.Output<String> storageSizeMib;

  /// A list of tag names to be applied to the database cluster.
  late final pulumi.Output<List<String>?> tags;

  /// Name of the OpenSearch dashboard db.
  late final pulumi.Output<String> uiDatabase;

  /// Hostname for the OpenSearch dashboard.
  late final pulumi.Output<String> uiHost;

  /// Password for the OpenSearch dashboard's default user.
  late final pulumi.Output<String> uiPassword;

  /// Network port that the OpenSearch dashboard is listening on.
  late final pulumi.Output<int> uiPort;

  /// The full URI for connecting to the OpenSearch dashboard.
  late final pulumi.Output<String> uiUri;

  /// Username for OpenSearch dashboard's default user.
  late final pulumi.Output<String> uiUser;

  /// The full URI for connecting to the database cluster.
  late final pulumi.Output<String> uri;

  /// Username for the cluster's default user.
  late final pulumi.Output<String> user;

  /// Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  /// When this value is changed, a call to the [Upgrade major Version for a Database](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_update_major_version) API operation is made with the new version.
  late final pulumi.Output<String?> version;

  /// Creates a new [DatabaseCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseCluster]. {@macro pulumi_index_database_cluster_database_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseCluster(
    String name, {
    DatabaseClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseCluster:DatabaseCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupRestore = registerOutput<DatabaseClusterBackupRestore?>(
      'backupRestore',
    );
    clusterUrn = registerOutput<String>('clusterUrn');
    database = registerOutput<String>('database');
    engine = registerOutput<String>('engine');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    host = registerOutput<String>('host');
    maintenanceWindows = registerOutput<List<Map<String, dynamic>>?>(
      'maintenanceWindows',
    );
    metricsEndpoints = registerOutput<List<String>>('metricsEndpoints');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateNetworkUuid = registerOutput<String>('privateNetworkUuid');
    privateUri = registerOutput<String>('privateUri');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<String>('size');
    sqlMode = registerOutput<String?>('sqlMode');
    storageSizeMib = registerOutput<String>('storageSizeMib');
    tags = registerOutput<List<String>?>('tags');
    uiDatabase = registerOutput<String>('uiDatabase');
    uiHost = registerOutput<String>('uiHost');
    uiPassword = registerOutput<String>('uiPassword');
    uiPort = registerOutput<int>('uiPort');
    uiUri = registerOutput<String>('uiUri');
    uiUser = registerOutput<String>('uiUser');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [DatabaseCluster] resource's state with the given [name] and [id].
  static DatabaseCluster get(
    String name,
    pulumi.Input<String> id, {
    DatabaseClusterState? state,
  }) {
    return DatabaseCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseCluster:DatabaseCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupRestore = registerOutput<DatabaseClusterBackupRestore?>(
      'backupRestore',
    );
    clusterUrn = registerOutput<String>('clusterUrn');
    database = registerOutput<String>('database');
    engine = registerOutput<String>('engine');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    host = registerOutput<String>('host');
    maintenanceWindows = registerOutput<List<Map<String, dynamic>>?>(
      'maintenanceWindows',
    );
    metricsEndpoints = registerOutput<List<String>>('metricsEndpoints');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateNetworkUuid = registerOutput<String>('privateNetworkUuid');
    privateUri = registerOutput<String>('privateUri');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    size = registerOutput<String>('size');
    sqlMode = registerOutput<String?>('sqlMode');
    storageSizeMib = registerOutput<String>('storageSizeMib');
    tags = registerOutput<List<String>?>('tags');
    uiDatabase = registerOutput<String>('uiDatabase');
    uiHost = registerOutput<String>('uiHost');
    uiPassword = registerOutput<String>('uiPassword');
    uiPort = registerOutput<int>('uiPort');
    uiUri = registerOutput<String>('uiUri');
    uiUser = registerOutput<String>('uiUser');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
    version = registerOutput<String?>('version');
  }
}
