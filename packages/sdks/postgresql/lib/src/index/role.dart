import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';
import 'role_state.dart';

/// The ``postgresql.Role`` resource creates and manages a role on a PostgreSQL
/// server.
///
/// When a ``postgresql.Role`` resource is removed, the PostgreSQL ROLE will
/// automatically run a [`REASSIGN
/// OWNED`](https://www.postgresql.org/docs/current/static/sql-reassign-owned.html)
/// and [`DROP
/// OWNED`](https://www.postgresql.org/docs/current/static/sql-drop-owned.html) to
/// the `CURRENT_USER` (normally the connected user for the provider).  If the
/// specified PostgreSQL ROLE owns objects in multiple PostgreSQL databases in the
/// same PostgreSQL Cluster, one PostgreSQL provider per database must be created
/// and all but the final ``postgresql.Role`` must specify a `skipDropRole`.
///
/// &gt; **Note:** All arguments including role name and password will be stored in the raw state as plain-text.
/// Read more about sensitive data in state.
///
/// &gt; **Note:** For enhanced security, consider using the `passwordWo` and `passwordWoVersion` attributes
/// instead of `password`. The write-only password attributes prevent the password from being stored in
/// the Terraform state file while still allowing password management through version-controlled updates.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const myRole = new postgresql.Role("my_role", {
///     name: "my_role",
///     login: true,
///     password: "mypass",
/// });
/// const myReplicationRole = new postgresql.Role("my_replication_role", {
///     name: "replication_role",
///     replication: true,
///     login: true,
///     connectionLimit: 5,
///     password: "md5c98cbfeb6a347a47eb8e96cfb4c4b890",
/// });
/// // Example using write-only password (password not stored in state)
/// const secureRole = new postgresql.Role("secure_role", {
///     name: "secure_role",
///     login: true,
///     passwordWo: "secure_password_123",
///     passwordWoVersion: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_role = postgresql.Role("my_role",
///     name="my_role",
///     login=True,
///     password="mypass")
/// my_replication_role = postgresql.Role("my_replication_role",
///     name="replication_role",
///     replication=True,
///     login=True,
///     connection_limit=5,
///     password="md5c98cbfeb6a347a47eb8e96cfb4c4b890")
/// # Example using write-only password (password not stored in state)
/// secure_role = postgresql.Role("secure_role",
///     name="secure_role",
///     login=True,
///     password_wo="secure_password_123",
///     password_wo_version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRole = new PostgreSql.Role("my_role", new()
///     {
///         Name = "my_role",
///         Login = true,
///         Password = "mypass",
///     });
///
///     var myReplicationRole = new PostgreSql.Role("my_replication_role", new()
///     {
///         Name = "replication_role",
///         Replication = true,
///         Login = true,
///         ConnectionLimit = 5,
///         Password = "md5c98cbfeb6a347a47eb8e96cfb4c4b890",
///     });
///
///     // Example using write-only password (password not stored in state)
///     var secureRole = new PostgreSql.Role("secure_role", new()
///     {
///         Name = "secure_role",
///         Login = true,
///         PasswordWo = "secure_password_123",
///         PasswordWoVersion = "1",
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
/// 		_, err := postgresql.NewRole(ctx, "my_role", &postgresql.RoleArgs{
/// 			Name:     pulumi.String("my_role"),
/// 			Login:    pulumi.Bool(true),
/// 			Password: pulumi.String("mypass"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewRole(ctx, "my_replication_role", &postgresql.RoleArgs{
/// 			Name:            pulumi.String("replication_role"),
/// 			Replication:     pulumi.Bool(true),
/// 			Login:           pulumi.Bool(true),
/// 			ConnectionLimit: pulumi.Int(5),
/// 			Password:        pulumi.String("md5c98cbfeb6a347a47eb8e96cfb4c4b890"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example using write-only password (password not stored in state)
/// 		_, err = postgresql.NewRole(ctx, "secure_role", &postgresql.RoleArgs{
/// 			Name:              pulumi.String("secure_role"),
/// 			Login:             pulumi.Bool(true),
/// 			PasswordWo:        pulumi.String("secure_password_123"),
/// 			PasswordWoVersion: pulumi.String("1"),
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
/// resource "postgresql_role" "my_role" {
///   name     = "my_role"
///   login    = true
///   password = "mypass"
/// }
/// resource "postgresql_role" "my_replication_role" {
///   name             = "replication_role"
///   replication      = true
///   login            = true
///   connection_limit = 5
///   password         = "md5c98cbfeb6a347a47eb8e96cfb4c4b890"
/// }
/// # Example using write-only password (password not stored in state)
/// resource "postgresql_role" "secure_role" {
///   name                = "secure_role"
///   login               = true
///   password_wo         = "secure_password_123"
///   password_wo_version = "1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
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
///         var myRole = new Role("myRole", RoleArgs.builder()
///             .name("my_role")
///             .login(true)
///             .password("mypass")
///             .build());
///
///         var myReplicationRole = new Role("myReplicationRole", RoleArgs.builder()
///             .name("replication_role")
///             .replication(true)
///             .login(true)
///             .connectionLimit(5)
///             .password("md5c98cbfeb6a347a47eb8e96cfb4c4b890")
///             .build());
///
///         // Example using write-only password (password not stored in state)
///         var secureRole = new Role("secureRole", RoleArgs.builder()
///             .name("secure_role")
///             .login(true)
///             .passwordWo("secure_password_123")
///             .passwordWoVersion("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRole:
///     type: postgresql:Role
///     name: my_role
///     properties:
///       name: my_role
///       login: true
///       password: mypass
///   myReplicationRole:
///     type: postgresql:Role
///     name: my_replication_role
///     properties:
///       name: replication_role
///       replication: true
///       login: true
///       connectionLimit: 5
///       password: md5c98cbfeb6a347a47eb8e96cfb4c4b890
///   # Example using write-only password (password not stored in state)
///   secureRole:
///     type: postgresql:Role
///     name: secure_role
///     properties:
///       name: secure_role
///       login: true
///       passwordWo: secure_password_123
///       passwordWoVersion: '1'
/// ```
///
///
/// ## Write-Only Password Management
///
/// The `passwordWo` and `passwordWoVersion` attributes provide a secure way to manage role passwords
/// without storing them in the Terraform state file:
///
/// * **Security**: The password value is never stored in the state file, reducing the risk of exposure
/// * **Version Control**: Password updates are controlled through the `passwordWoVersion` attribute
/// * **Idempotency**: Terraform only updates the password when the version changes, not on every apply
///
/// To change a password when using write-only attributes:
///
/// 1. Update the `passwordWo` value with the new password
/// 2. Increment or change the `passwordWoVersion` value
/// 3. Apply the configuration
///
/// **Example of password rotation:**
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// // Initial password setup
/// const appUser = new postgresql.Role("app_user", {
///     name: "app_user",
///     login: true,
///     passwordWo: "initial_password_123",
///     passwordWoVersion: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// # Initial password setup
/// app_user = postgresql.Role("app_user",
///     name="app_user",
///     login=True,
///     password_wo="initial_password_123",
///     password_wo_version="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Initial password setup
///     var appUser = new PostgreSql.Role("app_user", new()
///     {
///         Name = "app_user",
///         Login = true,
///         PasswordWo = "initial_password_123",
///         PasswordWoVersion = "1",
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
/// 		// Initial password setup
/// 		_, err := postgresql.NewRole(ctx, "app_user", &postgresql.RoleArgs{
/// 			Name:              pulumi.String("app_user"),
/// 			Login:             pulumi.Bool(true),
/// 			PasswordWo:        pulumi.String("initial_password_123"),
/// 			PasswordWoVersion: pulumi.String("1"),
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
/// # Initial password setup
/// resource "postgresql_role" "app_user" {
///   name                = "app_user"
///   login               = true
///   password_wo         = "initial_password_123"
///   password_wo_version = "1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
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
///         // Initial password setup
///         var appUser = new Role("appUser", RoleArgs.builder()
///             .name("app_user")
///             .login(true)
///             .passwordWo("initial_password_123")
///             .passwordWoVersion("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Initial password setup
///   appUser:
///     type: postgresql:Role
///     name: app_user
///     properties:
///       name: app_user
///       login: true
///       passwordWo: initial_password_123
///       passwordWoVersion: '1'
/// ```
///
///
/// ## Import Example
///
/// `postgresql.Role` supports importing resources.  Supposing the following
/// Terraform:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const replicationRole = new postgresql.Role("replication_role", {name: "replication_name"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// replication_role = postgresql.Role("replication_role", name="replication_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationRole = new PostgreSql.Role("replication_role", new()
///     {
///         Name = "replication_name",
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
/// 		_, err := postgresql.NewRole(ctx, "replication_role", &postgresql.RoleArgs{
/// 			Name: pulumi.String("replication_name"),
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
/// resource "postgresql_role" "replication_role" {
///   name = "replication_name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
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
///         var replicationRole = new Role("replicationRole", RoleArgs.builder()
///             .name("replication_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationRole:
///     type: postgresql:Role
///     name: replication_role
///     properties:
///       name: replication_name
/// ```
///
///
/// It is possible to import a `postgresql.Role` resource with the following
/// command:
///
/// ```
/// $ terraform import postgresql_role.replication_role replication_name
/// ```
///
/// Where `replicationName` is the name of the role to import and
/// `postgresql_role.replication_role` is the name of the resource whose state will
/// be populated as a result of the command.
class Role extends pulumi.CustomResource {
  /// Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  late final pulumi.Output<String?> assumeRole;
  /// Defines whether a role bypasses every
  /// row-level security (RLS) policy.  Default value is `false`.
  late final pulumi.Output<bool?> bypassRowLevelSecurity;
  /// If this role can log in, this specifies how
  /// many concurrent connections the role can establish. `-1` (the default) means no
  /// limit.
  late final pulumi.Output<int?> connectionLimit;
  /// Defines a role's ability to execute `CREATE
  /// DATABASE`.  Default value is `false`.
  late final pulumi.Output<bool?> createDatabase;
  /// Defines a role's ability to execute `CREATE ROLE`.
  /// A role with this privilege can also alter and drop other roles.  Default value
  /// is `false`.
  late final pulumi.Output<bool?> createRole;
  late final pulumi.Output<String?> encrypted;
  /// Defines whether the password is stored
  /// encrypted in the system catalogs.  Default value is `true`.  NOTE: this value
  /// is always set (to the conservative and safe value), but may interfere with the
  /// behavior of
  /// [PostgreSQL's `passwordEncryption` setting](https://www.postgresql.org/docs/current/static/runtime-config-connection.html#GUC-PASSWORD-ENCRYPTION).
  late final pulumi.Output<bool?> encryptedPassword;
  /// Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  late final pulumi.Output<int?> idleInTransactionSessionTimeout;
  /// Defines whether a role "inherits" the privileges of
  /// roles it is a member of.  Default value is `true`.
  late final pulumi.Output<bool?> inherit;
  /// Defines whether role is allowed to log in.  Roles without
  /// this attribute are useful for managing database privileges, but are not users
  /// in the usual sense of the word.  Default value is `false`.
  late final pulumi.Output<bool?> login;
  /// The name of the role. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  late final pulumi.Output<String> name;
  /// Sets the role's password. A password is only of use
  /// for roles having the `login` attribute set to true.
  late final pulumi.Output<String?> password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sets the role's password without storing it in the state file.
  /// This is useful for managing passwords securely. Must be used together with `passwordWoVersion`.
  /// Conflicts with `password`.
  late final pulumi.Output<String?> passwordWo;
  /// Prevents applies from updating the role password on every
  /// apply unless the value changes. This version string should be updated whenever you want to
  /// change the password specified in `passwordWo`. Must be used together with `passwordWo`.
  /// Conflicts with `password`.
  late final pulumi.Output<String?> passwordWoVersion;
  /// Defines whether a role is allowed to initiate
  /// streaming replication or put the system in and out of backup mode.  Default
  /// value is `false`
  late final pulumi.Output<bool?> replication;
  /// Defines list of roles which will be granted to this new role.
  late final pulumi.Output<List<String>?> roles;
  /// Alters the search path of this new role. Note that
  /// due to limitations in the implementation, values cannot contain the substring
  /// `", "`.
  late final pulumi.Output<List<String>?> searchPaths;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, the
  /// [cleanup of ownership of objects](https://www.postgresql.org/docs/current/static/role-removal.html)
  /// in each of the respective databases must occur before the ROLE can be dropped
  /// from the catalog.  Set this option to true when there are multiple databases
  /// in a PostgreSQL cluster using the same PostgreSQL ROLE for object ownership.
  /// This is the third and final step taken when removing a ROLE from a database.
  late final pulumi.Output<bool?> skipDropRole;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, a
  /// [`REASSIGN OWNED`](https://www.postgresql.org/docs/current/static/sql-reassign-owned.html) in
  /// must be executed on each of the respective databases before the `DROP ROLE`
  /// can be executed to drop the ROLE from the catalog.  This is the first and
  /// second steps taken when removing a ROLE from a database (the second step being
  /// an implicit
  /// [`DROP OWNED`](https://www.postgresql.org/docs/current/static/sql-drop-owned.html)).
  late final pulumi.Output<bool?> skipReassignOwned;
  /// Defines [`statementTimeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  late final pulumi.Output<int?> statementTimeout;
  /// Defines whether the role is a "superuser", and
  /// therefore can override all access restrictions within the database.  Default
  /// value is `false`.
  late final pulumi.Output<bool?> superuser;
  /// Defines the date and time after which the role's
  /// password is no longer valid.  Established connections past this `validTime`
  /// will have to be manually terminated.  This value corresponds to a PostgreSQL
  /// datetime. If omitted or the magic value `NULL` is used, `validUntil` will be
  /// set to `infinity`.  Default is `NULL`, therefore `infinity`.
  late final pulumi.Output<String?> validUntil;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_index_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assumeRole = registerOutput<String?>('assumeRole');
    bypassRowLevelSecurity = registerOutput<bool?>('bypassRowLevelSecurity');
    connectionLimit = registerOutput<int?>('connectionLimit');
    createDatabase = registerOutput<bool?>('createDatabase');
    createRole = registerOutput<bool?>('createRole');
    encrypted = registerOutput<String?>('encrypted');
    encryptedPassword = registerOutput<bool?>('encryptedPassword');
    idleInTransactionSessionTimeout = registerOutput<int?>('idleInTransactionSessionTimeout');
    inherit = registerOutput<bool?>('inherit');
    login = registerOutput<bool?>('login');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    replication = registerOutput<bool?>('replication');
    roles = registerOutput<List<String>?>('roles');
    searchPaths = registerOutput<List<String>?>('searchPaths');
    skipDropRole = registerOutput<bool?>('skipDropRole');
    skipReassignOwned = registerOutput<bool?>('skipReassignOwned');
    statementTimeout = registerOutput<int?>('statementTimeout');
    superuser = registerOutput<bool?>('superuser');
    validUntil = registerOutput<String?>('validUntil');
  }

  /// Gets an existing [Role] resource's state with the given [name] and [id].
  static Role get(
    String name,
    pulumi.Input<String> id, {
    RoleState? state,
  }) {
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
          'postgresql:index/role:Role',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assumeRole = registerOutput<String?>('assumeRole');
    bypassRowLevelSecurity = registerOutput<bool?>('bypassRowLevelSecurity');
    connectionLimit = registerOutput<int?>('connectionLimit');
    createDatabase = registerOutput<bool?>('createDatabase');
    createRole = registerOutput<bool?>('createRole');
    encrypted = registerOutput<String?>('encrypted');
    encryptedPassword = registerOutput<bool?>('encryptedPassword');
    idleInTransactionSessionTimeout = registerOutput<int?>('idleInTransactionSessionTimeout');
    inherit = registerOutput<bool?>('inherit');
    login = registerOutput<bool?>('login');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    replication = registerOutput<bool?>('replication');
    roles = registerOutput<List<String>?>('roles');
    searchPaths = registerOutput<List<String>?>('searchPaths');
    skipDropRole = registerOutput<bool?>('skipDropRole');
    skipReassignOwned = registerOutput<bool?>('skipReassignOwned');
    statementTimeout = registerOutput<int?>('statementTimeout');
    superuser = registerOutput<bool?>('superuser');
    validUntil = registerOutput<String?>('validUntil');
  }
}
