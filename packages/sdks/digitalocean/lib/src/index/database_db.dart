import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_db_args.dart';
import 'database_db_state.dart';

/// Provides a DigitalOcean database resource. When creating a new database cluster, a default database with name `defaultdb` will be created. Then, this resource can be used to provide additional database inside the cluster.
///
/// ## Example Usage
///
/// ### Create a new PostgreSQL database
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
/// const database_example = new digitalocean.DatabaseDb("database-example", {
///     clusterId: postgres_example.id,
///     name: "foobar",
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
/// database_example = digitalocean.DatabaseDb("database-example",
///     cluster_id=postgres_example.id,
///     name="foobar")
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
///     var database_example = new DigitalOcean.DatabaseDb("database-example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "foobar",
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
/// 		_, err = digitalocean.NewDatabaseDb(ctx, "database-example", &digitalocean.DatabaseDbArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Name:      pulumi.String("foobar"),
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
/// import com.pulumi.digitalocean.DatabaseDb;
/// import com.pulumi.digitalocean.DatabaseDbArgs;
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
///         var database_example = new DatabaseDb("database-example", DatabaseDbArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database-example:
///     type: digitalocean:DatabaseDb
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: foobar
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
/// Database can be imported using the `id` of the source database cluster
/// and the `name` of the database joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseDb:DatabaseDb database-example 245bcfd0-7f31-4ce6-a2bc-475a116cca97,foobar
/// ```
class DatabaseDb extends pulumi.CustomResource {
  /// The ID of the original source database cluster.
  late final pulumi.Output<String> clusterId;

  /// The name for the database.
  late final pulumi.Output<String> name;

  /// Creates a new [DatabaseDb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseDb]. {@macro pulumi_index_database_db_database_db_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseDb(
    String name, {
    DatabaseDbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseDb:DatabaseDb',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [DatabaseDb] resource's state with the given [name] and [id].
  static DatabaseDb get(
    String name,
    pulumi.Input<String> id, {
    DatabaseDbState? state,
  }) {
    return DatabaseDb._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseDb._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseDb:DatabaseDb',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    this.name = registerOutput<String>('name');
  }
}
