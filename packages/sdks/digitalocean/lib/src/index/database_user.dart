import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_user_args.dart';
import 'database_user_state.dart';

/// Provides a DigitalOcean database user resource. When creating a new database cluster, a default admin user with name `doadmin` will be created. Then, this resource can be used to provide additional normal users inside the cluster.
///
/// &gt; **NOTE:** Any new users created will always have `normal` role, only the default user that comes with database cluster creation has `primary` role. Additional permissions must be managed manually.
///
/// ## Example Usage
///
/// ### Create a new PostgreSQL database user
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
/// const user_example = new digitalocean.DatabaseUser("user-example", {
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
/// user_example = digitalocean.DatabaseUser("user-example",
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
///     var user_example = new DigitalOcean.DatabaseUser("user-example", new()
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
/// 		_, err = digitalocean.NewDatabaseUser(ctx, "user-example", &digitalocean.DatabaseUserArgs{
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
/// import com.pulumi.digitalocean.DatabaseUser;
/// import com.pulumi.digitalocean.DatabaseUserArgs;
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
///         var user_example = new DatabaseUser("user-example", DatabaseUserArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   user-example:
///     type: digitalocean:DatabaseUser
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
/// ### Create a new user for a PostgreSQL database replica
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
/// const user_example = new digitalocean.DatabaseUser("user-example", {
///     clusterId: replica_example.uuid,
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
/// replica_example = digitalocean.DatabaseReplica("replica-example",
///     cluster_id=postgres_example.id,
///     name="replica-example",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1)
/// user_example = digitalocean.DatabaseUser("user-example",
///     cluster_id=replica_example.uuid,
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
///     var replica_example = new DigitalOcean.DatabaseReplica("replica-example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "replica-example",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///     });
///
///     var user_example = new DigitalOcean.DatabaseUser("user-example", new()
///     {
///         ClusterId = replica_example.Uuid,
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
/// 		replica_example, err := digitalocean.NewDatabaseReplica(ctx, "replica-example", &digitalocean.DatabaseReplicaArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Name:      pulumi.String("replica-example"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseUser(ctx, "user-example", &digitalocean.DatabaseUserArgs{
/// 			ClusterId: replica_example.Uuid,
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
/// import com.pulumi.digitalocean.DatabaseReplica;
/// import com.pulumi.digitalocean.DatabaseReplicaArgs;
/// import com.pulumi.digitalocean.DatabaseUser;
/// import com.pulumi.digitalocean.DatabaseUserArgs;
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
///         var replica_example = new DatabaseReplica("replica-example", DatabaseReplicaArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("replica-example")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .build());
///
///         var user_example = new DatabaseUser("user-example", DatabaseUserArgs.builder()
///             .clusterId(replica_example.uuid())
///             .name("foobar")
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
///   user-example:
///     type: digitalocean:DatabaseUser
///     properties:
///       clusterId: ${["replica-example"].uuid}
///       name: foobar
/// ```
///
///
/// ### Create a new user for a Kafka database cluster
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
/// const foobarTopic = new digitalocean.DatabaseKafkaTopic("foobar_topic", {
///     clusterId: foobar.id,
///     name: "topic-1",
/// });
/// const foobarUser = new digitalocean.DatabaseUser("foobar_user", {
///     clusterId: foobar.id,
///     name: "example-user",
///     settings: [{
///         acls: [
///             {
///                 topic: "topic-1",
///                 permission: "produce",
///             },
///             {
///                 topic: "topic-2",
///                 permission: "produceconsume",
///             },
///             {
///                 topic: "topic-*",
///                 permission: "consume",
///             },
///         ],
///     }],
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
/// foobar_topic = digitalocean.DatabaseKafkaTopic("foobar_topic",
///     cluster_id=foobar["id"],
///     name="topic-1")
/// foobar_user = digitalocean.DatabaseUser("foobar_user",
///     cluster_id=foobar["id"],
///     name="example-user",
///     settings=[{
///         "acls": [
///             {
///                 "topic": "topic-1",
///                 "permission": "produce",
///             },
///             {
///                 "topic": "topic-2",
///                 "permission": "produceconsume",
///             },
///             {
///                 "topic": "topic-*",
///                 "permission": "consume",
///             },
///         ],
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
///     var foobarTopic = new DigitalOcean.DatabaseKafkaTopic("foobar_topic", new()
///     {
///         ClusterId = foobar.Id,
///         Name = "topic-1",
///     });
///
///     var foobarUser = new DigitalOcean.DatabaseUser("foobar_user", new()
///     {
///         ClusterId = foobar.Id,
///         Name = "example-user",
///         Settings = new[]
///         {
///             new DigitalOcean.Inputs.DatabaseUserSettingArgs
///             {
///                 Acls = new[]
///                 {
///                     new DigitalOcean.Inputs.DatabaseUserSettingAclArgs
///                     {
///                         Topic = "topic-1",
///                         Permission = "produce",
///                     },
///                     new DigitalOcean.Inputs.DatabaseUserSettingAclArgs
///                     {
///                         Topic = "topic-2",
///                         Permission = "produceconsume",
///                     },
///                     new DigitalOcean.Inputs.DatabaseUserSettingAclArgs
///                     {
///                         Topic = "topic-*",
///                         Permission = "consume",
///                     },
///                 },
///             },
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
/// 		_, err = digitalocean.NewDatabaseKafkaTopic(ctx, "foobar_topic", &digitalocean.DatabaseKafkaTopicArgs{
/// 			ClusterId: pulumi.Any(foobar.Id),
/// 			Name:      pulumi.String("topic-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseUser(ctx, "foobar_user", &digitalocean.DatabaseUserArgs{
/// 			ClusterId: pulumi.Any(foobar.Id),
/// 			Name:      pulumi.String("example-user"),
/// 			Settings: digitalocean.DatabaseUserSettingArray{
/// 				&digitalocean.DatabaseUserSettingArgs{
/// 					Acls: digitalocean.DatabaseUserSettingAclArray{
/// 						&digitalocean.DatabaseUserSettingAclArgs{
/// 							Topic:      pulumi.String("topic-1"),
/// 							Permission: pulumi.String("produce"),
/// 						},
/// 						&digitalocean.DatabaseUserSettingAclArgs{
/// 							Topic:      pulumi.String("topic-2"),
/// 							Permission: pulumi.String("produceconsume"),
/// 						},
/// 						&digitalocean.DatabaseUserSettingAclArgs{
/// 							Topic:      pulumi.String("topic-*"),
/// 							Permission: pulumi.String("consume"),
/// 						},
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseKafkaTopic;
/// import com.pulumi.digitalocean.DatabaseKafkaTopicArgs;
/// import com.pulumi.digitalocean.DatabaseUser;
/// import com.pulumi.digitalocean.DatabaseUserArgs;
/// import com.pulumi.digitalocean.inputs.DatabaseUserSettingArgs;
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
///         var foobarTopic = new DatabaseKafkaTopic("foobarTopic", DatabaseKafkaTopicArgs.builder()
///             .clusterId(foobar.id())
///             .name("topic-1")
///             .build());
///
///         var foobarUser = new DatabaseUser("foobarUser", DatabaseUserArgs.builder()
///             .clusterId(foobar.id())
///             .name("example-user")
///             .settings(DatabaseUserSettingArgs.builder()
///                 .acls(
///                     DatabaseUserSettingAclArgs.builder()
///                         .topic("topic-1")
///                         .permission("produce")
///                         .build(),
///                     DatabaseUserSettingAclArgs.builder()
///                         .topic("topic-2")
///                         .permission("produceconsume")
///                         .build(),
///                     DatabaseUserSettingAclArgs.builder()
///                         .topic("topic-*")
///                         .permission("consume")
///                         .build())
///                 .build())
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
///   foobarTopic:
///     type: digitalocean:DatabaseKafkaTopic
///     name: foobar_topic
///     properties:
///       clusterId: ${foobar.id}
///       name: topic-1
///   foobarUser:
///     type: digitalocean:DatabaseUser
///     name: foobar_user
///     properties:
///       clusterId: ${foobar.id}
///       name: example-user
///       settings:
///         - acls:
///             - topic: topic-1
///               permission: produce
///             - topic: topic-2
///               permission: produceconsume
///             - topic: topic-*
///               permission: consume
/// ```
///
///
/// ## Import
///
/// Database user can be imported using the `id` of the source database cluster
/// and the `name` of the user joined with a comma. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseUser:DatabaseUser user-example 245bcfd0-7f31-4ce6-a2bc-475a116cca97,foobar
/// ```
///
/// &gt; **Note:** MongoDB user passwords are only available when the user is created. An existing MongoDB user that is imported will not have its `password` attribute exported. Recreate the user if it is necessary to access the password with Terraform.
class DatabaseUser extends pulumi.CustomResource {
  /// Access certificate for TLS client authentication. (Kafka only)
  late final pulumi.Output<String> accessCert;

  /// Access key for TLS client authentication. (Kafka only)
  late final pulumi.Output<String> accessKey;

  /// The ID of the original source database cluster.
  late final pulumi.Output<String> clusterId;

  /// The authentication method to use for connections to the MySQL user account. The valid values are `mysql_native_password` or `caching_sha2_password` (this is the default).
  late final pulumi.Output<String?> mysqlAuthPlugin;

  /// The name for the database user.
  late final pulumi.Output<String> name;

  /// Password for the database user.
  late final pulumi.Output<String> password;

  /// Role for the database user. The value will be either "primary" or "normal".
  late final pulumi.Output<String> role;

  /// Contains optional settings for the user.
  /// The `settings` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> settings;

  /// Creates a new [DatabaseUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseUser]. {@macro pulumi_index_database_user_database_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseUser(
    String name, {
    DatabaseUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseUser:DatabaseUser',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessCert = registerOutput<String>('accessCert');
    accessKey = registerOutput<String>('accessKey');
    clusterId = registerOutput<String>('clusterId');
    mysqlAuthPlugin = registerOutput<String?>('mysqlAuthPlugin');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    role = registerOutput<String>('role');
    settings = registerOutput<List<Map<String, dynamic>>?>('settings');
  }

  /// Gets an existing [DatabaseUser] resource's state with the given [name] and [id].
  static DatabaseUser get(
    String name,
    pulumi.Input<String> id, {
    DatabaseUserState? state,
  }) {
    return DatabaseUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/databaseUser:DatabaseUser',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessCert = registerOutput<String>('accessCert');
    accessKey = registerOutput<String>('accessKey');
    clusterId = registerOutput<String>('clusterId');
    mysqlAuthPlugin = registerOutput<String?>('mysqlAuthPlugin');
    this.name = registerOutput<String>('name');
    password = registerOutput<String>('password');
    role = registerOutput<String>('role');
    settings = registerOutput<List<Map<String, dynamic>>?>('settings');
  }
}
