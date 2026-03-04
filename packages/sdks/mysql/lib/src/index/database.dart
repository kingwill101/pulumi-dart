import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// The ``mysql.Database`` resource creates and manages a database on a MySQL
/// server.
///
/// &gt; **Caution:** The ``mysql.Database`` resource can completely delete your
/// database just as easily as it can create it. To avoid costly accidents,
/// consider setting
/// [``prevent_destroy``](https://www.terraform.io/docs/configuration/resources.html#prevent_destroy)
/// on your database resources as an extra safety measure.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const app = new mysql.Database("app", {name: "my_awesome_app"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// app = mysql.Database("app", name="my_awesome_app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using MySql = Pulumi.MySql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new MySql.Database("app", new()
///     {
///         Name = "my_awesome_app",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-mysql/sdk/v3/go/mysql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mysql.NewDatabase(ctx, "app", &mysql.DatabaseArgs{
/// 			Name: pulumi.String("my_awesome_app"),
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
/// import com.pulumi.mysql.Database;
/// import com.pulumi.mysql.DatabaseArgs;
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
///         var app = new Database("app", DatabaseArgs.builder()
///             .name("my_awesome_app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: mysql:Database
///     properties:
///       name: my_awesome_app
/// ```
///
///
/// ## Import
///
/// Databases can be imported using their name, e.g.
///
/// ```sh
/// $ pulumi import mysql:index/database:Database example my-example-database
/// ```
class Database extends pulumi.CustomResource {
  /// The default character set to use when
  /// a table is created without specifying an explicit character set. Defaults
  /// to "utf8".
  late final pulumi.Output<String?> defaultCharacterSet;

  /// The default collation to use when a table
  /// is created without specifying an explicit collation. Defaults to
  /// ``utf8_general_ci``. Each character set has its own set of collations, so
  /// changing the character set requires also changing the collation.
  ///
  /// Note that the defaults for character set and collation above do not respect
  /// any defaults set on the MySQL server, so that the configuration can be set
  /// appropriately even though Terraform cannot see the server-level defaults. If
  /// you wish to use the server's defaults you must consult the server's
  /// configuration and then set the ``default_character_set`` and
  /// ``default_collation`` to match.
  late final pulumi.Output<String?> defaultCollation;

  /// The name of the database. This must be unique within
  /// a given MySQL server and may or may not be case-sensitive depending on
  /// the operating system on which the MySQL server is running.
  late final pulumi.Output<String> name;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_index_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'mysql:index/database:Database',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    defaultCharacterSet = registerOutput<String?>('defaultCharacterSet');
    defaultCollation = registerOutput<String?>('defaultCollation');
    this.name = registerOutput<String>('name');
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
         'mysql:index/database:Database',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    defaultCharacterSet = registerOutput<String?>('defaultCharacterSet');
    defaultCollation = registerOutput<String?>('defaultCollation');
    this.name = registerOutput<String>('name');
  }
}
