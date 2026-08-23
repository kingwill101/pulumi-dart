import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_connection_pool_args.dart';
import 'database_connection_pool_state.dart';

/// Provides a DigitalOcean database connection pool resource.
///
/// ## Example Usage
///
/// ### Create a new PostgreSQL database connection pool
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
/// const pool_01 = new digitalocean.DatabaseConnectionPool("pool-01", {
///     clusterId: postgres_example.id,
///     name: "pool-01",
///     mode: "transaction",
///     size: 20,
///     dbName: "defaultdb",
///     user: "doadmin",
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
/// pool_01 = digitalocean.DatabaseConnectionPool("pool-01",
///     cluster_id=postgres_example.id,
///     name="pool-01",
///     mode="transaction",
///     size=20,
///     db_name="defaultdb",
///     user="doadmin")
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
///     var pool_01 = new DigitalOcean.DatabaseConnectionPool("pool-01", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "pool-01",
///         Mode = "transaction",
///         Size = 20,
///         DbName = "defaultdb",
///         User = "doadmin",
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
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
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
/// 		_, err = digitalocean.NewDatabaseConnectionPool(ctx, "pool-01", &digitalocean.DatabaseConnectionPoolArgs{
/// 			ClusterId: postgres_example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:      pulumi.String("pool-01"),
/// 			Mode:      pulumi.String("transaction"),
/// 			Size:      pulumi.Int(20),
/// 			DbName:    pulumi.String("defaultdb"),
/// 			User:      pulumi.String("doadmin"),
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
/// resource "digitalocean_databaseconnectionpool" "pool-01" {
///   cluster_id = digitalocean_databasecluster.postgres-example.id
///   name       = "pool-01"
///   mode       = "transaction"
///   size       = 20
///   db_name    = "defaultdb"
///   user       = "doadmin"
/// }
/// resource "digitalocean_databasecluster" "postgres-example" {
///   name       = "example-postgres-cluster"
///   engine     = "pg"
///   version    = "15"
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
/// import com.pulumi.digitalocean.DatabaseConnectionPool;
/// import com.pulumi.digitalocean.DatabaseConnectionPoolArgs;
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var pool_01 = new DatabaseConnectionPool("pool-01", DatabaseConnectionPoolArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("pool-01")
///             .mode("transaction")
///             .size(20)
///             .dbName("defaultdb")
///             .user("doadmin")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool-01:
///     type: digitalocean:DatabaseConnectionPool
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: pool-01
///       mode: transaction
///       size: 20
///       dbName: defaultdb
///       user: doadmin
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
/// ## Import
///
/// Database connection pools can be imported using the `id` of the source database cluster
/// and the `name` of the connection pool joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseConnectionPool:DatabaseConnectionPool pool-01 245bcfd0-7f31-4ce6-a2bc-475a116cca97,pool-01
/// ```
class DatabaseConnectionPool extends pulumi.CustomResource {
  /// The ID of the source database cluster. Note: This must be a PostgreSQL cluster.
  late final pulumi.Output<String> clusterId;
  /// The database for use with the connection pool.
  late final pulumi.Output<String> dbName;
  /// The hostname used to connect to the database connection pool.
  late final pulumi.Output<String> host;
  /// The PGBouncer transaction mode for the connection pool. The allowed values are session, transaction, and statement.
  late final pulumi.Output<String> mode;
  /// The name for the database connection pool.
  late final pulumi.Output<String> name;
  /// Password for the connection pool's user.
  late final pulumi.Output<String> password;
  /// Network port that the database connection pool is listening on.
  late final pulumi.Output<int> port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateHost;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateUri;
  /// The desired size of the PGBouncer connection pool.
  late final pulumi.Output<int> size;
  /// The full URI for connecting to the database connection pool.
  late final pulumi.Output<String> uri;
  /// The name of the database user for use with the connection pool. When excluded, all sessions connect to the database as the inbound user.
  late final pulumi.Output<String?> user;

  /// Creates a new [DatabaseConnectionPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseConnectionPool]. {@macro pulumi_index_database_connection_pool_database_connection_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseConnectionPool(
    String name, {
    DatabaseConnectionPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseConnectionPool:DatabaseConnectionPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    dbName = registerOutput<String>('dbName');
    host = registerOutput<String>('host');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateUri = registerOutput<String>('privateUri');
    size = registerOutput<int>('size');
    uri = registerOutput<String>('uri');
    user = registerOutput<String?>('user');
  }

  /// Gets an existing [DatabaseConnectionPool] resource's state with the given [name] and [id].
  static DatabaseConnectionPool get(
    String name,
    pulumi.Input<String> id, {
    DatabaseConnectionPoolState? state,
  }) {
    return DatabaseConnectionPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseConnectionPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseConnectionPool:DatabaseConnectionPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    dbName = registerOutput<String>('dbName');
    host = registerOutput<String>('host');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateUri = registerOutput<String>('privateUri');
    size = registerOutput<int>('size');
    uri = registerOutput<String>('uri');
    user = registerOutput<String?>('user');
  }
}
