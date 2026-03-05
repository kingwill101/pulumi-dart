import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Manages a V3 User resource within OpenStack Keystone.
///
/// &gt; **Note:** All arguments including the user password will be stored in the
/// raw state as plain-text. Read more about sensitive data in
/// state.
///
/// &gt; **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const user1 = new openstack.identity.User("user_1", {
///     defaultProjectId: project1.id,
///     name: "user_1",
///     description: "A user",
///     password: "password123",
///     ignoreChangePasswordUponFirstUse: true,
///     multiFactorAuthEnabled: true,
///     multiFactorAuthRules: [
///         {
///             rules: [
///                 "password",
///                 "totp",
///             ],
///         },
///         {
///             rules: ["password"],
///         },
///     ],
///     extra: {
///         email: "user_1@foobar.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// user1 = openstack.identity.User("user_1",
///     default_project_id=project1.id,
///     name="user_1",
///     description="A user",
///     password="password123",
///     ignore_change_password_upon_first_use=True,
///     multi_factor_auth_enabled=True,
///     multi_factor_auth_rules=[
///         {
///             "rules": [
///                 "password",
///                 "totp",
///             ],
///         },
///         {
///             "rules": ["password"],
///         },
///     ],
///     extra={
///         "email": "user_1@foobar.com",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var user1 = new OpenStack.Identity.User("user_1", new()
///     {
///         DefaultProjectId = project1.Id,
///         Name = "user_1",
///         Description = "A user",
///         Password = "password123",
///         IgnoreChangePasswordUponFirstUse = true,
///         MultiFactorAuthEnabled = true,
///         MultiFactorAuthRules = new[]
///         {
///             new OpenStack.Identity.Inputs.UserMultiFactorAuthRuleArgs
///             {
///                 Rules = new[]
///                 {
///                     "password",
///                     "totp",
///                 },
///             },
///             new OpenStack.Identity.Inputs.UserMultiFactorAuthRuleArgs
///             {
///                 Rules = new[]
///                 {
///                     "password",
///                 },
///             },
///         },
///         Extra =
///         {
///             { "email", "user_1@foobar.com" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewUser(ctx, "user_1", &identity.UserArgs{
/// 			DefaultProjectId:                 project1.ID(),
/// 			Name:                             pulumi.String("user_1"),
/// 			Description:                      pulumi.String("A user"),
/// 			Password:                         pulumi.String("password123"),
/// 			IgnoreChangePasswordUponFirstUse: pulumi.Bool(true),
/// 			MultiFactorAuthEnabled:           pulumi.Bool(true),
/// 			MultiFactorAuthRules: identity.UserMultiFactorAuthRuleArray{
/// 				&identity.UserMultiFactorAuthRuleArgs{
/// 					Rules: pulumi.StringArray{
/// 						pulumi.String("password"),
/// 						pulumi.String("totp"),
/// 					},
/// 				},
/// 				&identity.UserMultiFactorAuthRuleArgs{
/// 					Rules: pulumi.StringArray{
/// 						pulumi.String("password"),
/// 					},
/// 				},
/// 			},
/// 			Extra: pulumi.StringMap{
/// 				"email": pulumi.String("user_1@foobar.com"),
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
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.identity.User;
/// import com.pulumi.openstack.identity.UserArgs;
/// import com.pulumi.openstack.identity.inputs.UserMultiFactorAuthRuleArgs;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var user1 = new User("user1", UserArgs.builder()
///             .defaultProjectId(project1.id())
///             .name("user_1")
///             .description("A user")
///             .password("password123")
///             .ignoreChangePasswordUponFirstUse(true)
///             .multiFactorAuthEnabled(true)
///             .multiFactorAuthRules(
///                 UserMultiFactorAuthRuleArgs.builder()
///                     .rules(
///                         "password",
///                         "totp")
///                     .build(),
///                 UserMultiFactorAuthRuleArgs.builder()
///                     .rules("password")
///                     .build())
///             .extra(Map.of("email", "user_1@foobar.com"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: project_1
///   user1:
///     type: openstack:identity:User
///     name: user_1
///     properties:
///       defaultProjectId: ${project1.id}
///       name: user_1
///       description: A user
///       password: password123
///       ignoreChangePasswordUponFirstUse: true
///       multiFactorAuthEnabled: true
///       multiFactorAuthRules:
///         - rules:
///             - password
///             - totp
///         - rules:
///             - password
///       extra:
///         email: user_1@foobar.com
/// ```
///
///
/// ## Import
///
/// Users can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/user:User user_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class User extends pulumi.CustomResource {
  /// The default project this user belongs to.
  late final pulumi.Output<String> defaultProjectId;
  /// A description of the user.
  late final pulumi.Output<String?> description;
  /// The domain this user belongs to.
  late final pulumi.Output<String> domainId;
  /// Whether the user is enabled or disabled. Valid
  /// values are `true` and `false`.
  late final pulumi.Output<bool?> enabled;
  /// Free-form key/value pairs of extra information.
  late final pulumi.Output<Map<String, String>?> extra;
  /// User will not have to
  /// change their password upon first use. Valid values are `true` and `false`.
  late final pulumi.Output<bool?> ignoreChangePasswordUponFirstUse;
  /// User will not have a failure
  /// lockout placed on their account. Valid values are `true` and `false`.
  late final pulumi.Output<bool?> ignoreLockoutFailureAttempts;
  /// User's password will not expire.
  /// Valid values are `true` and `false`.
  late final pulumi.Output<bool?> ignorePasswordExpiry;
  /// Whether to enable multi-factor
  /// authentication. Valid values are `true` and `false`.
  late final pulumi.Output<bool?> multiFactorAuthEnabled;
  /// A multi-factor authentication rule.
  /// The structure is documented below. Please see the
  /// [Ocata release notes](https://docs.openstack.org/releasenotes/keystone/ocata.html)
  /// for more information on how to use mulit-factor rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> multiFactorAuthRules;
  /// The name of the user.
  late final pulumi.Output<String> name;
  /// The password for the user.
  late final pulumi.Output<String?> password;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new User.
  late final pulumi.Output<String> region;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_identity_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultProjectId = registerOutput<String>('defaultProjectId');
    description = registerOutput<String?>('description');
    domainId = registerOutput<String>('domainId');
    enabled = registerOutput<bool?>('enabled');
    extra = registerOutput<Map<String, String>?>('extra');
    ignoreChangePasswordUponFirstUse = registerOutput<bool?>('ignoreChangePasswordUponFirstUse');
    ignoreLockoutFailureAttempts = registerOutput<bool?>('ignoreLockoutFailureAttempts');
    ignorePasswordExpiry = registerOutput<bool?>('ignorePasswordExpiry');
    multiFactorAuthEnabled = registerOutput<bool?>('multiFactorAuthEnabled');
    multiFactorAuthRules = registerOutput<List<Map<String, dynamic>>?>('multiFactorAuthRules');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    region = registerOutput<String>('region');
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
          'openstack:identity/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultProjectId = registerOutput<String>('defaultProjectId');
    description = registerOutput<String?>('description');
    domainId = registerOutput<String>('domainId');
    enabled = registerOutput<bool?>('enabled');
    extra = registerOutput<Map<String, String>?>('extra');
    ignoreChangePasswordUponFirstUse = registerOutput<bool?>('ignoreChangePasswordUponFirstUse');
    ignoreLockoutFailureAttempts = registerOutput<bool?>('ignoreLockoutFailureAttempts');
    ignorePasswordExpiry = registerOutput<bool?>('ignorePasswordExpiry');
    multiFactorAuthEnabled = registerOutput<bool?>('multiFactorAuthEnabled');
    multiFactorAuthRules = registerOutput<List<Map<String, dynamic>>?>('multiFactorAuthRules');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    region = registerOutput<String>('region');
  }
}
