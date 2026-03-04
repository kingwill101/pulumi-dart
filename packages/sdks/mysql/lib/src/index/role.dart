import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';
import 'role_state.dart';

/// The ``mysql.Role`` resource creates and manages a user on a MySQL
/// server.
///
/// &gt; **Note:** MySQL introduced roles in version 8. They do not work on MySQL 5 and lower.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const developer = new mysql.Role("developer", {name: "developer"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// developer = mysql.Role("developer", name="developer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using MySql = Pulumi.MySql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var developer = new MySql.Role("developer", new()
///     {
///         Name = "developer",
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
/// 		_, err := mysql.NewRole(ctx, "developer", &mysql.RoleArgs{
/// 			Name: pulumi.String("developer"),
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
/// import com.pulumi.mysql.Role;
/// import com.pulumi.mysql.RoleArgs;
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
///         var developer = new Role("developer", RoleArgs.builder()
///             .name("developer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   developer:
///     type: mysql:Role
///     properties:
///       name: developer
/// ```
class Role extends pulumi.CustomResource {
  /// The name of the role.
  late final pulumi.Output<String> name;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_index_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(String name, {RoleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'mysql:index/role:Role',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Role] resource's state with the given [name] and [id].
  static Role get(String name, pulumi.Input<String> id, {RoleState? state}) {
    return Role._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Role._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'mysql:index/role:Role',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
  }
}
