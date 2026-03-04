import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// Manages a V1 DB database resource within OpenStack.
///
/// ## Example Usage
///
/// ### Database
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const mydb = new openstack.database.Database("mydb", {
///     name: "mydb",
///     instanceId: basic.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// mydb = openstack.database.Database("mydb",
///     name="mydb",
///     instance_id=basic["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mydb = new OpenStack.Database.Database("mydb", new()
///     {
///         Name = "mydb",
///         InstanceId = basic.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/database"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := database.NewDatabase(ctx, "mydb", &database.DatabaseArgs{
/// 			Name:       pulumi.String("mydb"),
/// 			InstanceId: pulumi.Any(basic.Id),
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
/// import com.pulumi.openstack.database.Database;
/// import com.pulumi.openstack.database.DatabaseArgs;
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
///         var mydb = new Database("mydb", DatabaseArgs.builder()
///             .name("mydb")
///             .instanceId(basic.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mydb:
///     type: openstack:database:Database
///     properties:
///       name: mydb
///       instanceId: ${basic.id}
/// ```
///
///
/// ## Import
///
/// Databases can be imported by using `instance-id/db-name`, e.g.
///
/// ```sh
/// $ pulumi import openstack:database/database:Database mydb 7b9e3cd3-00d9-449c-b074-8439f8e274fa/mydb
/// ```
class Database extends pulumi.CustomResource {
  /// The ID for the database instance.
  late final pulumi.Output<String> instanceId;

  /// A unique name for the resource.
  late final pulumi.Output<String> name;

  /// The region in which to create the database. Changing
  /// this creates a new database.
  late final pulumi.Output<String> region;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_database_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:database/database:Database',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:database/database:Database',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
