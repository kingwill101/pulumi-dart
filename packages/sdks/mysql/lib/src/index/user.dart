import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// The ``mysql.User`` resource creates and manages a user on a MySQL
/// server.
///
/// &gt; **Note:** The password for the user is provided in plain text, and is
/// obscured by an unsalted hash in the state
/// [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
/// Care is required when using this resource, to avoid disclosing the password.
///
/// ## Example Usage
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// jdoe = mysql.User("jdoe",
///     user="jdoe",
///     host="example.com",
///     plaintext_password="password")
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
/// 		_, err := mysql.NewUser(ctx, "jdoe", &mysql.UserArgs{
/// 			User:              pulumi.String("jdoe"),
/// 			Host:              pulumi.String("example.com"),
/// 			PlaintextPassword: pulumi.String("password"),
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
///     mysql = {
///       source = "pulumi/mysql"
///     }
///   }
/// }
///
/// resource "mysql_user" "jdoe" {
///   user               = "jdoe"
///   host               = "example.com"
///   plaintext_password = "password"
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
///         var jdoe = new User("jdoe", UserArgs.builder()
///             .user("jdoe")
///             .host("example.com")
///             .plaintextPassword("password")
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
/// ```
///
///
///
/// ### With An Authentication Plugin
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const nologin = new mysql.User("nologin", {
///     user: "nologin",
///     host: "example.com",
///     authPlugin: "mysql_no_login",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// nologin = mysql.User("nologin",
///     user="nologin",
///     host="example.com",
///     auth_plugin="mysql_no_login")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using MySql = Pulumi.MySql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nologin = new MySql.User("nologin", new()
///     {
///         UserName = "nologin",
///         Host = "example.com",
///         AuthPlugin = "mysql_no_login",
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
/// 		_, err := mysql.NewUser(ctx, "nologin", &mysql.UserArgs{
/// 			User:       pulumi.String("nologin"),
/// 			Host:       pulumi.String("example.com"),
/// 			AuthPlugin: pulumi.String("mysql_no_login"),
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
///     mysql = {
///       source = "pulumi/mysql"
///     }
///   }
/// }
///
/// resource "mysql_user" "nologin" {
///   user        = "nologin"
///   host        = "example.com"
///   auth_plugin = "mysql_no_login"
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
///         var nologin = new User("nologin", UserArgs.builder()
///             .user("nologin")
///             .host("example.com")
///             .authPlugin("mysql_no_login")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   nologin:
///     type: mysql:User
///     properties:
///       user: nologin
///       host: example.com
///       authPlugin: mysql_no_login
/// ```
class User extends pulumi.CustomResource {
  /// Use an [authentication plugin][ref-auth-plugins] to authenticate the user instead of using password authentication.  Description of the fields allowed in the block below. Conflicts with `password` and `plaintextPassword`.
  late final pulumi.Output<String?> authPlugin;
  /// The source host of the user. Defaults to "localhost".
  late final pulumi.Output<String?> host;
  /// Deprecated alias of `plaintextPassword`, whose value is *stored as plaintext in state*. Prefer to use `plaintextPassword` instead, which stores the password as an unsalted hash. Conflicts with `authPlugin`.
  late final pulumi.Output<String?> password;
  /// The password for the user. This must be provided in plain text, so the data source for it must be secured. An _unsalted_ hash of the provided password is stored in state. Conflicts with `authPlugin`.
  late final pulumi.Output<String?> plaintextPassword;
  /// An TLS-Option for the `CREATE USER` or `ALTER USER` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `CREATE USER ... REQUIRE SSL` statement. See the [MYSQL `CREATE USER` documentation](https://dev.mysql.com/doc/refman/5.7/en/create-user.html) for more. Ignored if MySQL version is under 5.7.0.
  ///
  /// [ref-auth-plugins]: https://dev.mysql.com/doc/refman/5.7/en/authentication-plugins.html
  late final pulumi.Output<String?> tlsOption;
  /// The name of the user.
  late final pulumi.Output<String> user;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_index_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'mysql:index/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authPlugin = registerOutput<String?>('authPlugin');
    host = registerOutput<String?>('host');
    password = registerOutput<String?>('password');
    plaintextPassword = registerOutput<String?>('plaintextPassword');
    tlsOption = registerOutput<String?>('tlsOption');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'mysql:index/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authPlugin = registerOutput<String?>('authPlugin');
    host = registerOutput<String?>('host');
    password = registerOutput<String?>('password');
    plaintextPassword = registerOutput<String?>('plaintextPassword');
    tlsOption = registerOutput<String?>('tlsOption');
    user = registerOutput<String>('user');
  }
}
