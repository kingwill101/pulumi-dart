import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_online_migration_args.dart';
import 'database_online_migration_source.dart';
import 'database_online_migration_state.dart';

/// Provides a virtual resource that can be used to start an online migration
/// for a DigitalOcean managed database cluster. Migrating a cluster establishes a
/// connection with an existing cluster and replicates its contents to the target
/// cluster. If the existing database is continuously being written to, the migration
/// process will continue for up to two weeks unless it is manually stopped.
/// Online migration is only available for MySQL, PostgreSQL, Caching, and Valkey clusters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const source = new digitalocean.DatabaseCluster("source", {
///     name: "st01",
///     engine: "mysql",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
///     tags: ["production"],
/// });
/// const destination = new digitalocean.DatabaseCluster("destination", {
///     name: "dt01",
///     engine: "mysql",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
///     tags: ["production"],
/// });
/// const sourceDb = new digitalocean.DatabaseDb("source_db", {
///     clusterId: source.id,
///     name: "terraform-db-om-source",
/// });
/// const foobar = new digitalocean.DatabaseOnlineMigration("foobar", {
///     clusterId: destination.id,
///     source: {
///         host: source.host,
///         dbName: sourceDb.name,
///         port: source.port,
///         username: source.user,
///         password: source.password,
///     },
/// }, {
///     dependsOn: [
///         destination,
///         source,
///         sourceDb,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// source = digitalocean.DatabaseCluster("source",
///     name="st01",
///     engine="mysql",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1,
///     tags=["production"])
/// destination = digitalocean.DatabaseCluster("destination",
///     name="dt01",
///     engine="mysql",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1,
///     tags=["production"])
/// source_db = digitalocean.DatabaseDb("source_db",
///     cluster_id=source.id,
///     name="terraform-db-om-source")
/// foobar = digitalocean.DatabaseOnlineMigration("foobar",
///     cluster_id=destination.id,
///     source={
///         "host": source.host,
///         "db_name": source_db.name,
///         "port": source.port,
///         "username": source.user,
///         "password": source.password,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             destination,
///             source,
///             source_db,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = new DigitalOcean.DatabaseCluster("source", new()
///     {
///         Name = "st01",
///         Engine = "mysql",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///         Tags = new[]
///         {
///             "production",
///         },
///     });
///
///     var destination = new DigitalOcean.DatabaseCluster("destination", new()
///     {
///         Name = "dt01",
///         Engine = "mysql",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///         Tags = new[]
///         {
///             "production",
///         },
///     });
///
///     var sourceDb = new DigitalOcean.DatabaseDb("source_db", new()
///     {
///         ClusterId = source.Id,
///         Name = "terraform-db-om-source",
///     });
///
///     var foobar = new DigitalOcean.DatabaseOnlineMigration("foobar", new()
///     {
///         ClusterId = destination.Id,
///         Source = new DigitalOcean.Inputs.DatabaseOnlineMigrationSourceArgs
///         {
///             Host = source.Host,
///             DbName = sourceDb.Name,
///             Port = source.Port,
///             Username = source.User,
///             Password = source.Password,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             destination,
///             source,
///             sourceDb,
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
/// 		source, err := digitalocean.NewDatabaseCluster(ctx, "source", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("st01"),
/// 			Engine:    pulumi.String("mysql"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := digitalocean.NewDatabaseCluster(ctx, "destination", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("dt01"),
/// 			Engine:    pulumi.String("mysql"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceDb, err := digitalocean.NewDatabaseDb(ctx, "source_db", &digitalocean.DatabaseDbArgs{
/// 			ClusterId: source.ID(),
/// 			Name:      pulumi.String("terraform-db-om-source"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseOnlineMigration(ctx, "foobar", &digitalocean.DatabaseOnlineMigrationArgs{
/// 			ClusterId: destination.ID(),
/// 			Source: &digitalocean.DatabaseOnlineMigrationSourceArgs{
/// 				Host:     source.Host,
/// 				DbName:   sourceDb.Name,
/// 				Port:     source.Port,
/// 				Username: source.User,
/// 				Password: source.Password,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			destination,
/// 			source,
/// 			sourceDb,
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
/// import com.pulumi.digitalocean.DatabaseDb;
/// import com.pulumi.digitalocean.DatabaseDbArgs;
/// import com.pulumi.digitalocean.DatabaseOnlineMigration;
/// import com.pulumi.digitalocean.DatabaseOnlineMigrationArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseOnlineMigrationSourceArgs;
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
///         var source = new DatabaseCluster("source", DatabaseClusterArgs.builder()
///             .name("st01")
///             .engine("mysql")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .tags("production")
///             .build());
///
///         var destination = new DatabaseCluster("destination", DatabaseClusterArgs.builder()
///             .name("dt01")
///             .engine("mysql")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .tags("production")
///             .build());
///
///         var sourceDb = new DatabaseDb("sourceDb", DatabaseDbArgs.builder()
///             .clusterId(source.id())
///             .name("terraform-db-om-source")
///             .build());
///
///         var foobar = new DatabaseOnlineMigration("foobar", DatabaseOnlineMigrationArgs.builder()
///             .clusterId(destination.id())
///             .source(DatabaseOnlineMigrationSourceArgs.builder()
///                 .host(source.host())
///                 .dbName(sourceDb.name())
///                 .port(source.port())
///                 .username(source.user())
///                 .password(source.password())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     destination,
///                     source,
///                     sourceDb)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: st01
///       engine: mysql
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
///       tags:
///         - production
///   destination:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: dt01
///       engine: mysql
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
///       tags:
///         - production
///   sourceDb:
///     type: digitalocean:DatabaseDb
///     name: source_db
///     properties:
///       clusterId: ${source.id}
///       name: terraform-db-om-source
///   foobar:
///     type: digitalocean:DatabaseOnlineMigration
///     properties:
///       clusterId: ${destination.id}
///       source:
///         host: ${source.host}
///         dbName: ${sourceDb.name}
///         port: ${source.port}
///         username: ${source.user}
///         password: ${source.password}
///     options:
///       dependsOn:
///         - ${destination}
///         - ${source}
///         - ${sourceDb}
/// ```
///
///
/// ## Import
///
/// A MySQL database cluster's online_migration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseOnlineMigration:DatabaseOnlineMigration example 4b62829a-9c42-465b-aaa3-84051048e712
/// ```
class DatabaseOnlineMigration extends pulumi.CustomResource {
  /// The ID of the target MySQL cluster.
  late final pulumi.Output<String> clusterId;

  /// The date and time when the online migration was created
  late final pulumi.Output<String> createdAt;

  /// When set to true, enables SSL encryption when connecting to the source database.
  late final pulumi.Output<bool?> disableSsl;

  /// A list of databases that should be ignored during migration.
  late final pulumi.Output<List<String>?> ignoreDbs;

  /// Configuration for migration
  late final pulumi.Output<DatabaseOnlineMigrationSource> source;

  /// The status of the online migration
  late final pulumi.Output<String> status;

  /// Creates a new [DatabaseOnlineMigration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseOnlineMigration]. {@macro pulumi_index_database_online_migration_database_online_migration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseOnlineMigration(
    String name, {
    DatabaseOnlineMigrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseOnlineMigration:DatabaseOnlineMigration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    createdAt = registerOutput<String>('createdAt');
    disableSsl = registerOutput<bool?>('disableSsl');
    ignoreDbs = registerOutput<List<String>?>('ignoreDbs');
    source = registerOutput<DatabaseOnlineMigrationSource>('source');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [DatabaseOnlineMigration] resource's state with the given [name] and [id].
  static DatabaseOnlineMigration get(
    String name,
    pulumi.Input<String> id, {
    DatabaseOnlineMigrationState? state,
  }) {
    return DatabaseOnlineMigration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseOnlineMigration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseOnlineMigration:DatabaseOnlineMigration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    createdAt = registerOutput<String>('createdAt');
    disableSsl = registerOutput<bool?>('disableSsl');
    ignoreDbs = registerOutput<List<String>?>('ignoreDbs');
    source = registerOutput<DatabaseOnlineMigrationSource>('source');
    status = registerOutput<String>('status');
  }
}
