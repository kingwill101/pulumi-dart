import 'package:pulumi/pulumi.dart' as pulumi;
import 'grant_role_args.dart';
import 'grant_role_state.dart';

/// The ``postgresql.GrantRole`` resource creates and manages membership in a role to one or more other roles in a non-authoritative way.
///
/// When using ``postgresql.GrantRole`` resource it is likely because the PostgreSQL role you are modifying was created outside of this provider.
///
/// &gt; **Note:** This resource needs PostgreSQL version 9 or above.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const grantRoot = new postgresql.GrantRole("grant_root", {
///     role: "root",
///     grantRole: "application",
///     withAdminOption: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// grant_root = postgresql.GrantRole("grant_root",
///     role="root",
///     grant_role="application",
///     with_admin_option=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var grantRoot = new PostgreSql.GrantRole("grant_root", new()
///     {
///         Role = "root",
///         GrantRoleName = "application",
///         WithAdminOption = true,
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
/// 		_, err := postgresql.NewGrantRole(ctx, "grant_root", &postgresql.GrantRoleArgs{
/// 			Role:            pulumi.String("root"),
/// 			GrantRole:       pulumi.String("application"),
/// 			WithAdminOption: pulumi.Bool(true),
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
/// import com.pulumi.postgresql.GrantRole;
/// import com.pulumi.postgresql.GrantRoleArgs;
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
///         var grantRoot = new GrantRole("grantRoot", GrantRoleArgs.builder()
///             .role("root")
///             .grantRole("application")
///             .withAdminOption(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   grantRoot:
///     type: postgresql:GrantRole
///     name: grant_root
///     properties:
///       role: root
///       grantRole: application
///       withAdminOption: true
/// ```
///
///
/// &gt; **Note:** If you use `postgresql.GrantRole` for a role that you also manage with a `postgresql.Role` resource, you need to ignore the changes of the `roles` attribute in the `postgresql.Role` resource or they will fight over what your role grants should be. e.g.:
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const bob = new postgresql.Role("bob", {name: "bob"});
/// const bobAdmin = new postgresql.GrantRole("bob_admin", {
///     role: "bob",
///     grantRole: "admin",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// bob = postgresql.Role("bob", name="bob")
/// bob_admin = postgresql.GrantRole("bob_admin",
///     role="bob",
///     grant_role="admin")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bob = new PostgreSql.Role("bob", new()
///     {
///         Name = "bob",
///     });
///
///     var bobAdmin = new PostgreSql.GrantRole("bob_admin", new()
///     {
///         Role = "bob",
///         GrantRoleName = "admin",
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
/// 		_, err := postgresql.NewRole(ctx, "bob", &postgresql.RoleArgs{
/// 			Name: pulumi.String("bob"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewGrantRole(ctx, "bob_admin", &postgresql.GrantRoleArgs{
/// 			Role:      pulumi.String("bob"),
/// 			GrantRole: pulumi.String("admin"),
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
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
/// import com.pulumi.postgresql.GrantRole;
/// import com.pulumi.postgresql.GrantRoleArgs;
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
///         var bob = new Role("bob", RoleArgs.builder()
///             .name("bob")
///             .build());
///
///         var bobAdmin = new GrantRole("bobAdmin", GrantRoleArgs.builder()
///             .role("bob")
///             .grantRole("admin")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bob:
///     type: postgresql:Role
///     properties:
///       name: bob
///   bobAdmin:
///     type: postgresql:GrantRole
///     name: bob_admin
///     properties:
///       role: bob
///       grantRole: admin
/// ```
class GrantRole extends pulumi.CustomResource {
  /// The name of the role that is added to `role`.
  late final pulumi.Output<String> grantRole;
  /// The name of the role that is granted a new membership.
  late final pulumi.Output<String> role;
  /// Giving ability to grant membership to others or not for `role`. (Default: false)
  late final pulumi.Output<bool?> withAdminOption;

  /// Creates a new [GrantRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GrantRole]. {@macro pulumi_index_grant_role_grant_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GrantRole(
    String name, {
    GrantRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/grantRole:GrantRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    grantRole = registerOutput<String>('grantRole');
    role = registerOutput<String>('role');
    withAdminOption = registerOutput<bool?>('withAdminOption');
  }

  /// Gets an existing [GrantRole] resource's state with the given [name] and [id].
  static GrantRole get(
    String name,
    pulumi.Input<String> id, {
    GrantRoleState? state,
  }) {
    return GrantRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GrantRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/grantRole:GrantRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    grantRole = registerOutput<String>('grantRole');
    role = registerOutput<String>('role');
    withAdminOption = registerOutput<bool?>('withAdminOption');
  }
}
