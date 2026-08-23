import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_replica_args.dart';
import 'database_replica_state.dart';

/// Provides a DigitalOcean database replica resource.
///
/// ## Example Usage
///
/// ### Create a new PostgreSQL database replica
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
/// const replica_example = new digitalocean.DatabaseReplica("replica-example", {
///     clusterId: postgres_example.id,
///     name: "replica-example",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
/// });
/// export const UUID = replica_example.uuid;
/// // Create firewall rule for database replica
/// const example_fw = new digitalocean.DatabaseFirewall("example-fw", {
///     clusterId: replica_example.uuid,
///     rules: [{
///         type: "ip_addr",
///         value: "192.168.1.1",
///     }],
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
/// replica_example = digitalocean.DatabaseReplica("replica-example",
///     cluster_id=postgres_example.id,
///     name="replica-example",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1)
/// pulumi.export("UUID", replica_example.uuid)
/// # Create firewall rule for database replica
/// example_fw = digitalocean.DatabaseFirewall("example-fw",
///     cluster_id=replica_example.uuid,
///     rules=[{
///         "type": "ip_addr",
///         "value": "192.168.1.1",
///     }])
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
///     var replica_example = new DigitalOcean.DatabaseReplica("replica-example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "replica-example",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///     });
///
///     // Create firewall rule for database replica
///     var example_fw = new DigitalOcean.DatabaseFirewall("example-fw", new()
///     {
///         ClusterId = replica_example.Uuid,
///         Rules = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseFirewallRuleArgs
///             {
///                 Type = "ip_addr",
///                 Value = "192.168.1.1",
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["UUID"] = replica_example.Uuid,
///     };
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
/// 		replica_example, err := digitalocean.NewDatabaseReplica(ctx, "replica-example", &digitalocean.DatabaseReplicaArgs{
/// 			ClusterId: postgres_example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:      pulumi.String("replica-example"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("UUID", replica_example.Uuid)
/// 		// Create firewall rule for database replica
/// 		_, err = digitalocean.NewDatabaseFirewall(ctx, "example-fw", &digitalocean.DatabaseFirewallArgs{
/// 			ClusterId: replica_example.Uuid,
/// 			Rules: digitalocean.DatabaseFirewallRuleArray{
/// 				&digitalocean.DatabaseFirewallRuleArgs{
/// 					Type:  pulumi.String("ip_addr"),
/// 					Value: pulumi.String("192.168.1.1"),
/// 				},
/// 			},
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
/// resource "digitalocean_databasecluster" "postgres-example" {
///   name       = "example-postgres-cluster"
///   engine     = "pg"
///   version    = "15"
///   size       = "db-s-1vcpu-1gb"
///   region     = "nyc1"
///   node_count = 1
/// }
/// resource "digitalocean_databasereplica" "replica-example" {
///   cluster_id = digitalocean_databasecluster.postgres-example.id
///   name       = "replica-example"
///   size       = "db-s-1vcpu-1gb"
///   region     = "nyc1"
/// }
/// # Create firewall rule for database replica
/// resource "digitalocean_databasefirewall" "example-fw" {
///   cluster_id = digitalocean_databasereplica.replica-example.uuid
///   rules {
///     type  = "ip_addr"
///     value = "192.168.1.1"
///   }
/// }
/// output "UUID" {
///   value = digitalocean_databasereplica.replica-example.uuid
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
/// import com.pulumi.digitalocean.DatabaseReplica;
/// import com.pulumi.digitalocean.DatabaseReplicaArgs;
/// import com.pulumi.digitalocean.DatabaseFirewall;
/// import com.pulumi.digitalocean.DatabaseFirewallArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseFirewallRuleArgs;
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
///         var replica_example = new DatabaseReplica("replica-example", DatabaseReplicaArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("replica-example")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .build());
///
///         ctx.export("UUID", replica_example.uuid());
///         // Create firewall rule for database replica
///         var example_fw = new DatabaseFirewall("example-fw", DatabaseFirewallArgs.builder()
///             .clusterId(replica_example.uuid())
///             .rules(DatabaseFirewallRuleArgs.builder()
///                 .type("ip_addr")
///                 .value("192.168.1.1")
///                 .build())
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
///   replica-example:
///     type: digitalocean:DatabaseReplica
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: replica-example
///       size: db-s-1vcpu-1gb
///       region: nyc1
///   # Create firewall rule for database replica
///   example-fw:
///     type: digitalocean:DatabaseFirewall
///     properties:
///       clusterId: ${["replica-example"].uuid}
///       rules:
///         - type: ip_addr
///           value: 192.168.1.1
/// outputs:
///   UUID: ${["replica-example"].uuid}
/// ```
///
///
/// ## Import
///
/// Database replicas can be imported using the `id` of the source database cluster
/// and the `name` of the replica joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseReplica:DatabaseReplica read-replica 245bcfd0-7f31-4ce6-a2bc-475a116cca97,read-replica
/// ```
class DatabaseReplica extends pulumi.CustomResource {
  /// The ID of the original source database cluster.
  late final pulumi.Output<String> clusterId;
  /// Name of the replica's default database.
  late final pulumi.Output<String> database;
  /// Database replica's hostname.
  late final pulumi.Output<String> host;
  /// The name for the database replica.
  late final pulumi.Output<String> name;
  /// Password for the replica's default user.
  late final pulumi.Output<String> password;
  /// Network port that the database replica is listening on.
  late final pulumi.Output<int> port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateHost;
  /// The ID of the VPC where the database replica will be located.
  late final pulumi.Output<String> privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  late final pulumi.Output<String> privateUri;
  /// DigitalOcean region where the replica will reside.
  late final pulumi.Output<String?> region;
  /// Database Droplet size associated with the replica (ex. `db-s-1vcpu-1gb`). Note that when resizing an existing replica, its size can only be increased. Decreasing its size is not supported.
  late final pulumi.Output<String?> size;
  late final pulumi.Output<String> storageSizeMib;
  /// A list of tag names to be applied to the database replica.
  late final pulumi.Output<List<String>?> tags;
  /// The full URI for connecting to the database replica.
  late final pulumi.Output<String> uri;
  /// Username for the replica's default user.
  late final pulumi.Output<String> user;
  /// The UUID of the database replica. The uuid can be used to reference the database replica as the target database cluster in other resources. See example  "Create firewall rule for database replica" above.
  late final pulumi.Output<String> uuid;

  /// Creates a new [DatabaseReplica].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseReplica]. {@macro pulumi_index_database_replica_database_replica_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseReplica(
    String name, {
    DatabaseReplicaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseReplica:DatabaseReplica',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    database = registerOutput<String>('database');
    host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateNetworkUuid = registerOutput<String>('privateNetworkUuid');
    privateUri = registerOutput<String>('privateUri');
    region = registerOutput<String?>('region');
    size = registerOutput<String?>('size');
    storageSizeMib = registerOutput<String>('storageSizeMib');
    tags = registerOutput<List<String>?>('tags');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [DatabaseReplica] resource's state with the given [name] and [id].
  static DatabaseReplica get(
    String name,
    pulumi.Input<String> id, {
    DatabaseReplicaState? state,
  }) {
    return DatabaseReplica._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseReplica._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseReplica:DatabaseReplica',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    database = registerOutput<String>('database');
    host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    port = registerOutput<int>('port');
    privateHost = registerOutput<String>('privateHost');
    privateNetworkUuid = registerOutput<String>('privateNetworkUuid');
    privateUri = registerOutput<String>('privateUri');
    region = registerOutput<String?>('region');
    size = registerOutput<String?>('size');
    storageSizeMib = registerOutput<String>('storageSizeMib');
    tags = registerOutput<List<String>?>('tags');
    uri = registerOutput<String>('uri');
    user = registerOutput<String>('user');
    uuid = registerOutput<String>('uuid');
  }
}
