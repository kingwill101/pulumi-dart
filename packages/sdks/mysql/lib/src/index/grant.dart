import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_args.dart';
import 'grant_state.dart';

/// The ``mysql.Grant`` resource creates and manages privileges given to
/// a user on a MySQL server.
///
/// ## Granting Privileges to a User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const jdoe = new mysql.User("jdoe", {
///     user: "jdoe",
///     host: "example.com",
///     plaintextPassword: "password",
/// });
/// const jdoeGrant = new mysql.Grant("jdoe", {
///     user: jdoe.user,
///     host: jdoe.host,
///     database: "app",
///     privileges: [
///         "SELECT",
///         "UPDATE",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// jdoe = mysql.User("jdoe",
///     user="jdoe",
///     host="example.com",
///     plaintext_password="password")
/// jdoe_grant = mysql.Grant("jdoe",
///     user=jdoe.user,
///     host=jdoe.host,
///     database="app",
///     privileges=[
///         "SELECT",
///         "UPDATE",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using MySql = Pulumi.MySql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jdoe = new MySql.User("jdoe", new()
///     {
///         UserName = "jdoe",
///         Host = "example.com",
///         PlaintextPassword = "password",
///     });
///
///     var jdoeGrant = new MySql.Grant("jdoe", new()
///     {
///         User = jdoe.UserName,
///         Host = jdoe.Host,
///         Database = "app",
///         Privileges = new[]
///         {
///             "SELECT",
///             "UPDATE",
///         },
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
/// 		jdoe, err := mysql.NewUser(ctx, "jdoe", &mysql.UserArgs{
/// 			User:              pulumi.String("jdoe"),
/// 			Host:              pulumi.String("example.com"),
/// 			PlaintextPassword: pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewGrant(ctx, "jdoe", &mysql.GrantArgs{
/// 			User:     jdoe.User,
/// 			Host:     jdoe.Host,
/// 			Database: pulumi.String("app"),
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 				pulumi.String("UPDATE"),
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
/// import com.pulumi.mysql.User;
/// import com.pulumi.mysql.UserArgs;
/// import com.pulumi.mysql.Grant;
/// import com.pulumi.mysql.GrantArgs;
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
///         var jdoe = new User("jdoe", UserArgs.builder()
///             .user("jdoe")
///             .host("example.com")
///             .plaintextPassword("password")
///             .build());
///
///         var jdoeGrant = new Grant("jdoeGrant", GrantArgs.builder()
///             .user(jdoe.user())
///             .host(jdoe.host())
///             .database("app")
///             .privileges(
///                 "SELECT",
///                 "UPDATE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   jdoe:
///     type: mysql:User
///     properties:
///       user: jdoe
///       host: example.com
///       plaintextPassword: password
///   jdoeGrant:
///     type: mysql:Grant
///     name: jdoe
///     properties:
///       user: ${jdoe.user}
///       host: ${jdoe.host}
///       database: app
///       privileges:
///         - SELECT
///         - UPDATE
/// ```
///
///
/// ## Granting Privileges to a Role
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const developer = new mysql.Role("developer", {name: "developer"});
/// const developerGrant = new mysql.Grant("developer", {
///     role: developer.name,
///     database: "app",
///     privileges: [
///         "SELECT",
///         "UPDATE",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// developer = mysql.Role("developer", name="developer")
/// developer_grant = mysql.Grant("developer",
///     role=developer.name,
///     database="app",
///     privileges=[
///         "SELECT",
///         "UPDATE",
///     ])
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
///     var developerGrant = new MySql.Grant("developer", new()
///     {
///         Role = developer.Name,
///         Database = "app",
///         Privileges = new[]
///         {
///             "SELECT",
///             "UPDATE",
///         },
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
/// 		developer, err := mysql.NewRole(ctx, "developer", &mysql.RoleArgs{
/// 			Name: pulumi.String("developer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewGrant(ctx, "developer", &mysql.GrantArgs{
/// 			Role:     developer.Name,
/// 			Database: pulumi.String("app"),
/// 			Privileges: pulumi.StringArray{
/// 				pulumi.String("SELECT"),
/// 				pulumi.String("UPDATE"),
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
/// import com.pulumi.mysql.Role;
/// import com.pulumi.mysql.RoleArgs;
/// import com.pulumi.mysql.Grant;
/// import com.pulumi.mysql.GrantArgs;
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
///         var developerGrant = new Grant("developerGrant", GrantArgs.builder()
///             .role(developer.name())
///             .database("app")
///             .privileges(
///                 "SELECT",
///                 "UPDATE")
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
///   developerGrant:
///     type: mysql:Grant
///     name: developer
///     properties:
///       role: ${developer.name}
///       database: app
///       privileges:
///         - SELECT
///         - UPDATE
/// ```
///
///
/// ## Adding a Role to a User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const jdoe = new mysql.User("jdoe", {
///     user: "jdoe",
///     host: "example.com",
///     plaintextPassword: "password",
/// });
/// const developer = new mysql.Role("developer", {name: "developer"});
/// const developerGrant = new mysql.Grant("developer", {
///     user: jdoe.user,
///     host: jdoe.host,
///     database: "app",
///     roles: [developer.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// jdoe = mysql.User("jdoe",
///     user="jdoe",
///     host="example.com",
///     plaintext_password="password")
/// developer = mysql.Role("developer", name="developer")
/// developer_grant = mysql.Grant("developer",
///     user=jdoe.user,
///     host=jdoe.host,
///     database="app",
///     roles=[developer.name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using MySql = Pulumi.MySql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jdoe = new MySql.User("jdoe", new()
///     {
///         UserName = "jdoe",
///         Host = "example.com",
///         PlaintextPassword = "password",
///     });
///
///     var developer = new MySql.Role("developer", new()
///     {
///         Name = "developer",
///     });
///
///     var developerGrant = new MySql.Grant("developer", new()
///     {
///         User = jdoe.UserName,
///         Host = jdoe.Host,
///         Database = "app",
///         Roles = new[]
///         {
///             developer.Name,
///         },
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
/// 		jdoe, err := mysql.NewUser(ctx, "jdoe", &mysql.UserArgs{
/// 			User:              pulumi.String("jdoe"),
/// 			Host:              pulumi.String("example.com"),
/// 			PlaintextPassword: pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		developer, err := mysql.NewRole(ctx, "developer", &mysql.RoleArgs{
/// 			Name: pulumi.String("developer"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewGrant(ctx, "developer", &mysql.GrantArgs{
/// 			User:     jdoe.User,
/// 			Host:     jdoe.Host,
/// 			Database: pulumi.String("app"),
/// 			Roles: pulumi.StringArray{
/// 				developer.Name,
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
/// import com.pulumi.mysql.User;
/// import com.pulumi.mysql.UserArgs;
/// import com.pulumi.mysql.Role;
/// import com.pulumi.mysql.RoleArgs;
/// import com.pulumi.mysql.Grant;
/// import com.pulumi.mysql.GrantArgs;
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
///         var jdoe = new User("jdoe", UserArgs.builder()
///             .user("jdoe")
///             .host("example.com")
///             .plaintextPassword("password")
///             .build());
///
///         var developer = new Role("developer", RoleArgs.builder()
///             .name("developer")
///             .build());
///
///         var developerGrant = new Grant("developerGrant", GrantArgs.builder()
///             .user(jdoe.user())
///             .host(jdoe.host())
///             .database("app")
///             .roles(developer.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   jdoe:
///     type: mysql:User
///     properties:
///       user: jdoe
///       host: example.com
///       plaintextPassword: password
///   developer:
///     type: mysql:Role
///     properties:
///       name: developer
///   developerGrant:
///     type: mysql:Grant
///     name: developer
///     properties:
///       user: ${jdoe.user}
///       host: ${jdoe.host}
///       database: app
///       roles:
///         - ${developer.name}
/// ```
class Grant extends pulumi.CustomResource {
  /// The database to grant privileges on.
  late final pulumi.Output<String> database;

  /// Whether to also give the user privileges to grant the same privileges to other users.
  late final pulumi.Output<bool?> grant;

  /// The source host of the user. Defaults to "localhost". Conflicts with `role`.
  late final pulumi.Output<String?> host;

  /// A list of privileges to grant to the user. Refer to a list of privileges (such as [here](https://dev.mysql.com/doc/refman/5.5/en/grant.html)) for applicable privileges. Conflicts with `roles`.
  late final pulumi.Output<List<String>?> privileges;

  /// The role to grant `privileges` to. Conflicts with `user` and `host`.
  late final pulumi.Output<String?> role;

  /// A list of rols to grant to the user. Conflicts with `privileges`.
  late final pulumi.Output<List<String>?> roles;

  /// Which table to grant `privileges` on. Defaults to `*`, which is all tables.
  late final pulumi.Output<String?> table;

  /// An TLS-Option for the `GRANT` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `GRANT ... REQUIRE SSL` statement. See the [MYSQL `GRANT` documentation](https://dev.mysql.com/doc/refman/5.7/en/grant.html) for more. Ignored if MySQL version is under 5.7.0.
  late final pulumi.Output<String?> tlsOption;

  /// The name of the user. Conflicts with `role`.
  late final pulumi.Output<String?> user;

  /// Creates a new [Grant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Grant]. {@macro pulumi_index_grant_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Grant(String name, {GrantArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'mysql:index/grant:Grant',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    database = registerOutput<String>('database');
    grant = registerOutput<bool?>('grant');
    host = registerOutput<String?>('host');
    privileges = registerOutput<List<String>?>('privileges');
    role = registerOutput<String?>('role');
    roles = registerOutput<List<String>?>('roles');
    table = registerOutput<String?>('table');
    tlsOption = registerOutput<String?>('tlsOption');
    user = registerOutput<String?>('user');
  }

  /// Gets an existing [Grant] resource's state with the given [name] and [id].
  static Grant get(String name, pulumi.Input<String> id, {GrantState? state}) {
    return Grant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Grant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'mysql:index/grant:Grant',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    database = registerOutput<String>('database');
    grant = registerOutput<bool?>('grant');
    host = registerOutput<String?>('host');
    privileges = registerOutput<List<String>?>('privileges');
    role = registerOutput<String?>('role');
    roles = registerOutput<List<String>?>('roles');
    table = registerOutput<String?>('table');
    tlsOption = registerOutput<String?>('tlsOption');
    user = registerOutput<String?>('user');
  }
}
