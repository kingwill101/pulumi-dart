import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_state.dart';

/// The ``postgresql.Function`` resource creates and manages a function on a PostgreSQL
/// server.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const increment = new postgresql.Function("increment", {
///     name: "increment",
///     args: [{
///         name: "i",
///         type: "integer",
///     }],
///     returns: "integer",
///     language: "plpgsql",
///     body: `BEGIN
///     RETURN i + 1;
/// END;
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// increment = postgresql.Function("increment",
///     name="increment",
///     args=[{
///         "name": "i",
///         "type": "integer",
///     }],
///     returns="integer",
///     language="plpgsql",
///     body="""BEGIN
///     RETURN i + 1;
/// END;
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var increment = new PostgreSql.Function("increment", new()
///     {
///         Name = "increment",
///         Args = new[]
///         {
///             new PostgreSql.Inputs.FunctionArgArgs
///             {
///                 Name = "i",
///                 Type = "integer",
///             },
///         },
///         Returns = "integer",
///         Language = "plpgsql",
///         Body = @"BEGIN
///     RETURN i + 1;
/// END;
/// ",
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
/// 		_, err := postgresql.NewFunction(ctx, "increment", &postgresql.FunctionArgs{
/// 			Name: pulumi.String("increment"),
/// 			Args: postgresql.FunctionArgArray{
/// 				&postgresql.FunctionArgArgs{
/// 					Name: pulumi.String("i"),
/// 					Type: pulumi.String("integer"),
/// 				},
/// 			},
/// 			Returns:  pulumi.String("integer"),
/// 			Language: pulumi.String("plpgsql"),
/// 			Body:     pulumi.String("BEGIN\n    RETURN i + 1;\nEND;\n"),
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
/// import com.pulumi.postgresql.Function;
/// import com.pulumi.postgresql.FunctionArgs;
/// import com.pulumi.postgresql.inputs.FunctionArgArgs;
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
///         var increment = new Function("increment", FunctionArgs.builder()
///             .name("increment")
///             .args(FunctionArgArgs.builder()
///                 .name("i")
///                 .type("integer")
///                 .build())
///             .returns("integer")
///             .language("plpgsql")
///             .body("""
/// BEGIN
///     RETURN i + 1;
/// END;
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   increment:
///     type: postgresql:Function
///     properties:
///       name: increment
///       args:
///         - name: i
///           type: integer
///       returns: integer
///       language: plpgsql
///       body: |
///         BEGIN
///             RETURN i + 1;
///         END;
/// ```
///
///
/// ## Import
///
/// It is possible to import a `postgresql_function` resource with the following
/// command:
///
/// ```sh
/// $ pulumi import postgresql:index/function:Function function_foo "my_database.my_schema.my_function_name(arguments)"
/// ```
/// Where `my_database` is the name of the database containing the schema,
/// `my_schema` is the name of the schema in the PostgreSQL database, `my_function_name` is the function name to be imported, `arguments` is the argument signature of the function including all non OUT types and
/// `postgresql_schema.function_foo` is the name of the resource whose state will be
/// populated as a result of the command.
class FunctionType extends pulumi.CustomResource {
  /// List of arguments for the function.
  late final pulumi.Output<List<Map<String, dynamic>>?> args;
  /// Function body.
  /// This should be the body content within the `AS $$` and the final `$$`. It will also accept the `AS $$` and `$$` if added.
  late final pulumi.Output<String> body;
  /// The database where the function is located.
  /// If not specified, the function is created in the current database.
  late final pulumi.Output<String> database;
  /// True to automatically drop objects that depend on the function (such as
  /// operators or triggers), and in turn all objects that depend on those objects. Default is false.
  late final pulumi.Output<bool?> dropCascade;
  /// The function programming language. Can be one of internal, sql, c, plpgsql. Default is plpgsql.
  late final pulumi.Output<String?> language;
  /// The name of the function.
  late final pulumi.Output<String> name;
  /// Indicates if the function is parallel safe. Can be one of UNSAFE, RESTRICTED, or SAFE. Default is UNSAFE.
  late final pulumi.Output<String?> parallel;
  /// Type that the function returns. It can be computed from the OUT arguments. Default is void.
  late final pulumi.Output<String> returns;
  /// The schema where the function is located.
  /// If not specified, the function is created in the current schema.
  late final pulumi.Output<String> schema;
  /// If the function should execute with the permissions of the owner, rather than the permissions of the caller. Default is false.
  late final pulumi.Output<bool?> securityDefiner;
  /// If the function should always return NULL when any of the inputs is NULL. Default is false.
  late final pulumi.Output<bool?> strict;
  /// Defines the volatility of the function. Can be one of VOLATILE, STABLE, or IMMUTABLE. Default is VOLATILE.
  late final pulumi.Output<String?> volatility;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_index_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.args = registerOutput<List<Map<String, dynamic>>?>('args');
    body = registerOutput<String>('body');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    parallel = registerOutput<String?>('parallel');
    returns = registerOutput<String>('returns');
    schema = registerOutput<String>('schema');
    securityDefiner = registerOutput<bool?>('securityDefiner');
    strict = registerOutput<bool?>('strict');
    volatility = registerOutput<String?>('volatility');
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    args = registerOutput<List<Map<String, dynamic>>?>('args');
    body = registerOutput<String>('body');
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    parallel = registerOutput<String?>('parallel');
    returns = registerOutput<String>('returns');
    schema = registerOutput<String>('schema');
    securityDefiner = registerOutput<bool?>('securityDefiner');
    strict = registerOutput<bool?>('strict');
    volatility = registerOutput<String?>('volatility');
  }
}
