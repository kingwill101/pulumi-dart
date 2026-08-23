import 'package:pulumi/pulumi.dart' as pulumi;
import 'publication_args.dart';
import 'publication_state.dart';

/// The `postgresql.Publication` resource creates and manages a publication on a PostgreSQL
/// server.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const publication = new postgresql.Publication("publication", {
///     name: "publication",
///     tables: [
///         "public.test",
///         "another_schema.test",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// publication = postgresql.Publication("publication",
///     name="publication",
///     tables=[
///         "public.test",
///         "another_schema.test",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publication = new PostgreSql.Publication("publication", new()
///     {
///         Name = "publication",
///         Tables = new[]
///         {
///             "public.test",
///             "another_schema.test",
///         },
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
/// 		_, err := postgresql.NewPublication(ctx, "publication", &postgresql.PublicationArgs{
/// 			Name: pulumi.String("publication"),
/// 			Tables: pulumi.StringArray{
/// 				pulumi.String("public.test"),
/// 				pulumi.String("another_schema.test"),
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// resource "postgresql_publication" "publication" {
///   name   = "publication"
///   tables = ["public.test", "another_schema.test"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Publication;
/// import com.pulumi.postgresql.PublicationArgs;
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
///         var publication = new Publication("publication", PublicationArgs.builder()
///             .name("publication")
///             .tables(
///                 "public.test",
///                 "another_schema.test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   publication:
///     type: postgresql:Publication
///     properties:
///       name: publication
///       tables:
///         - public.test
///         - another_schema.test
/// ```
///
///
/// ## Import Example
///
/// Publication can be imported using this format:
///
/// ```
/// $ terraform import postgresql_publication.publication {{database_name}}.{{publication_name}}
/// ```
class Publication extends pulumi.CustomResource {
  /// Should be ALL TABLES added to the publication. Defaults to 'false'
  late final pulumi.Output<bool> allTables;
  /// Which database to create the publication on. Defaults to provider database.
  late final pulumi.Output<String> database;
  /// Should all subsequent resources of the publication be dropped. Defaults to 'false'
  late final pulumi.Output<bool?> dropCascade;
  /// The name of the publication.
  late final pulumi.Output<String> name;
  /// Who owns the publication. Defaults to provider user.
  late final pulumi.Output<String> owner;
  /// Which 'publish' options should be turned on. Default to 'insert','update','delete'
  late final pulumi.Output<List<String>> publishParams;
  /// Should be option 'publish_via_partition_root' be turned on. Default to 'false'
  late final pulumi.Output<bool?> publishViaPartitionRootParam;
  /// Which tables add to the publication. By defaults no tables added. Format of table is `&lt;schema_name&gt;.&lt;table_name&gt;`. If `&lt;schema_name&gt;` is not specified - default database schema will be used.  Table string must be listed in alphabetical order.
  late final pulumi.Output<List<String>> tables;

  /// Creates a new [Publication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Publication]. {@macro pulumi_index_publication_publication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Publication(
    String name, {
    PublicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/publication:Publication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allTables = registerOutput<bool>('allTables');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    publishParams = registerOutput<List<String>>('publishParams');
    publishViaPartitionRootParam = registerOutput<bool?>('publishViaPartitionRootParam');
    tables = registerOutput<List<String>>('tables');
  }

  /// Gets an existing [Publication] resource's state with the given [name] and [id].
  static Publication get(
    String name,
    pulumi.Input<String> id, {
    PublicationState? state,
  }) {
    return Publication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Publication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/publication:Publication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allTables = registerOutput<bool>('allTables');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    publishParams = registerOutput<List<String>>('publishParams');
    publishViaPartitionRootParam = registerOutput<bool?>('publishViaPartitionRootParam');
    tables = registerOutput<List<String>>('tables');
  }
}
