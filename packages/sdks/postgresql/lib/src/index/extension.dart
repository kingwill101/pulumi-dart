import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_args.dart';
import 'extension_state.dart';

/// The ``postgresql.Extension`` resource creates and manages an extension on a PostgreSQL
/// server.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const myExtension = new postgresql.Extension("my_extension", {name: "pg_trgm"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_extension = postgresql.Extension("my_extension", name="pg_trgm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myExtension = new PostgreSql.Extension("my_extension", new()
///     {
///         Name = "pg_trgm",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.NewExtension(ctx, "my_extension", &postgresql.ExtensionArgs{
/// 			Name: pulumi.String("pg_trgm"),
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// resource "postgresql_extension" "my_extension" {
///   name = "pg_trgm"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Extension;
/// import com.pulumi.postgresql.ExtensionArgs;
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
///         var myExtension = new Extension("myExtension", ExtensionArgs.builder()
///             .name("pg_trgm")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myExtension:
///     type: postgresql:Extension
///     name: my_extension
///     properties:
///       name: pg_trgm
/// ```
///
///
/// ## Import
///
/// PostgreSQL Extensions can be imported using the database name and the extension's resource name, e.g.
///
/// `terraform import postgresql_extension.uuid_ossp example-database.uuid-ossp`
class Extension extends pulumi.CustomResource {
  /// When true, will also create any extensions that this extension depends on that are not already installed. (Default: false)
  late final pulumi.Output<bool?> createCascade;
  /// Which database to create the extension on. Defaults to provider database.
  late final pulumi.Output<String> database;
  /// When true, will also drop all the objects that depend on the extension, and in turn all objects that depend on those objects. (Default: false)
  late final pulumi.Output<bool?> dropCascade;
  /// The name of the extension.
  late final pulumi.Output<String> name;
  /// Sets the schema of an extension.
  late final pulumi.Output<String> schema;
  /// Sets the version number of the extension.
  late final pulumi.Output<String> version;

  /// Creates a new [Extension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Extension]. {@macro pulumi_index_extension_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Extension(
    String name, {
    ExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/extension:Extension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createCascade = registerOutput<bool?>('createCascade');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    this.name = registerOutput<String>('name');
    schema = registerOutput<String>('schema');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [Extension] resource's state with the given [name] and [id].
  static Extension get(
    String name,
    pulumi.Input<String> id, {
    ExtensionState? state,
  }) {
    return Extension._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Extension._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/extension:Extension',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createCascade = registerOutput<bool?>('createCascade');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    this.name = registerOutput<String>('name');
    schema = registerOutput<String>('schema');
    version = registerOutput<String>('version');
  }
}
