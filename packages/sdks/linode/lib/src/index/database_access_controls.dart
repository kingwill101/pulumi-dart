import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_access_controls_args.dart';
import 'database_access_controls_state.dart';

/// Manages the access control for a Linode Database. Only one `linode.DatabaseAccessControls` resource should be defined per-database.
/// For more information, see the Linode APIv4 docs for [MySQL](https://techdocs.akamai.com/linode-api/reference/put-databases-mysql-instance) and [PostgreSQL](https://techdocs.akamai.com/linode-api/reference/put-databases-postgre-sql-instance).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {
///     label: "myinstance",
///     region: "us-southeast",
///     type: "g6-nanode-1",
///     image: "linode/alpine3.19",
/// });
/// const my_db = new linode.DatabaseMysql("my-db", {
///     label: "mydatabase",
///     engineId: "mysql/8.0.30",
///     region: "us-southeast",
///     type: "g6-nanode-1",
/// });
/// const my_access = new linode.DatabaseAccessControls("my-access", {
///     databaseId: my_db.id,
///     databaseType: "mysql",
///     allowLists: [my_instance.ipAddress],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance",
///     label="myinstance",
///     region="us-southeast",
///     type="g6-nanode-1",
///     image="linode/alpine3.19")
/// my_db = linode.DatabaseMysql("my-db",
///     label="mydatabase",
///     engine_id="mysql/8.0.30",
///     region="us-southeast",
///     type="g6-nanode-1")
/// my_access = linode.DatabaseAccessControls("my-access",
///     database_id=my_db.id,
///     database_type="mysql",
///     allow_lists=[my_instance.ip_address])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = new Linode.Instance("my-instance", new()
///     {
///         Label = "myinstance",
///         Region = "us-southeast",
///         Type = "g6-nanode-1",
///         Image = "linode/alpine3.19",
///     });
///
///     var my_db = new Linode.DatabaseMysql("my-db", new()
///     {
///         Label = "mydatabase",
///         EngineId = "mysql/8.0.30",
///         Region = "us-southeast",
///         Type = "g6-nanode-1",
///     });
///
///     var my_access = new Linode.DatabaseAccessControls("my-access", new()
///     {
///         DatabaseId = my_db.Id,
///         DatabaseType = "mysql",
///         AllowLists = new[]
///         {
///             my_instance.IpAddress,
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
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("myinstance"),
/// 			Region: pulumi.String("us-southeast"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 			Image:  pulumi.String("linode/alpine3.19"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_db, err := linode.NewDatabaseMysql(ctx, "my-db", &linode.DatabaseMysqlArgs{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("mysql/8.0.30"),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewDatabaseAccessControls(ctx, "my-access", &linode.DatabaseAccessControlsArgs{
/// 			DatabaseId:   my_db.ID(),
/// 			DatabaseType: pulumi.String("mysql"),
/// 			AllowLists: pulumi.StringArray{
/// 				my_instance.IpAddress,
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.DatabaseMysql;
/// import com.pulumi.linode.DatabaseMysqlArgs;
/// import com.pulumi.linode.DatabaseAccessControls;
/// import com.pulumi.linode.DatabaseAccessControlsArgs;
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
///         var my_instance = new Instance("my-instance", InstanceArgs.builder()
///             .label("myinstance")
///             .region("us-southeast")
///             .type("g6-nanode-1")
///             .image("linode/alpine3.19")
///             .build());
///
///         var my_db = new DatabaseMysql("my-db", DatabaseMysqlArgs.builder()
///             .label("mydatabase")
///             .engineId("mysql/8.0.30")
///             .region("us-southeast")
///             .type("g6-nanode-1")
///             .build());
///
///         var my_access = new DatabaseAccessControls("my-access", DatabaseAccessControlsArgs.builder()
///             .databaseId(my_db.id())
///             .databaseType("mysql")
///             .allowLists(my_instance.ipAddress())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-access:
///     type: linode:DatabaseAccessControls
///     properties:
///       databaseId: ${["my-db"].id}
///       databaseType: mysql
///       allowLists:
///         - ${["my-instance"].ipAddress}
///   my-instance:
///     type: linode:Instance
///     properties:
///       label: myinstance
///       region: us-southeast
///       type: g6-nanode-1
///       image: linode/alpine3.19
///   my-db:
///     type: linode:DatabaseMysql
///     properties:
///       label: mydatabase
///       engineId: mysql/8.0.30
///       region: us-southeast
///       type: g6-nanode-1
/// ```
class DatabaseAccessControls extends pulumi.CustomResource {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  late final pulumi.Output<List<String>> allowLists;

  /// The unique ID of the target database.
  late final pulumi.Output<int> databaseId;

  /// The unique type of the target database. (`mysql`, `postgresql`)
  late final pulumi.Output<String> databaseType;

  /// Creates a new [DatabaseAccessControls].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccessControls]. {@macro pulumi_index_database_access_controls_database_access_controls_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccessControls(
    String name, {
    DatabaseAccessControlsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/databaseAccessControls:DatabaseAccessControls',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowLists = registerOutput<List<String>>('allowLists');
    databaseId = registerOutput<int>('databaseId');
    databaseType = registerOutput<String>('databaseType');
  }

  /// Gets an existing [DatabaseAccessControls] resource's state with the given [name] and [id].
  static DatabaseAccessControls get(
    String name,
    pulumi.Input<String> id, {
    DatabaseAccessControlsState? state,
  }) {
    return DatabaseAccessControls._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseAccessControls._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/databaseAccessControls:DatabaseAccessControls',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowLists = registerOutput<List<String>>('allowLists');
    databaseId = registerOutput<int>('databaseId');
    databaseType = registerOutput<String>('databaseType');
  }
}
