import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_password_args.dart';
import 'user_password_state.dart';

/// The `mysql.UserPassword` resource sets and manages a password for a given
/// user on a MySQL server.
///
/// > **NOTE on MySQL Passwords:** This resource conflicts with the `password`
/// argument for `mysql.User`. This resource uses PGP encryption to avoid
/// storing unencrypted passwords in Terraform state.
///
/// > **NOTE on How Passwords are Created:** This resource **automatically**
/// generates a **random** password. The password will be a random UUID.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as mysql from "@pulumi/mysql";
///
/// const jdoe = new mysql.User("jdoe", {user: "jdoe"});
/// const jdoeUserPassword = new mysql.UserPassword("jdoe", {
///     user: jdoe.user,
///     pgpKey: "keybase:joestump",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_mysql as mysql
///
/// jdoe = mysql.User("jdoe", user="jdoe")
/// jdoe_user_password = mysql.UserPassword("jdoe",
///     user=jdoe.user,
///     pgp_key="keybase:joestump")
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
///     });
///
///     var jdoeUserPassword = new MySql.UserPassword("jdoe", new()
///     {
///         User = jdoe.UserName,
///         PgpKey = "keybase:joestump",
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
/// 			User: pulumi.String("jdoe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mysql.NewUserPassword(ctx, "jdoe", &mysql.UserPasswordArgs{
/// 			User:   jdoe.User,
/// 			PgpKey: pulumi.String("keybase:joestump"),
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
/// import com.pulumi.mysql.UserPassword;
/// import com.pulumi.mysql.UserPasswordArgs;
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
///             .build());
///
///         var jdoeUserPassword = new UserPassword("jdoeUserPassword", UserPasswordArgs.builder()
///             .user(jdoe.user())
///             .pgpKey("keybase:joestump")
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
///   jdoeUserPassword:
///     type: mysql:UserPassword
///     name: jdoe
///     properties:
///       user: ${jdoe.user}
///       pgpKey: keybase:joestump
/// ```
///
///
/// You can rotate passwords by running `terraform taint mysql_user_password.jdoe`.
/// The next time Terraform applies a new password will be generated and the user's
/// password will be updated accordingly.
class UserPassword extends pulumi.CustomResource {
  /// The encrypted password, base64 encoded.
  late final pulumi.Output<String> encryptedPassword;
  /// The source host of the user. Defaults to `localhost`.
  late final pulumi.Output<String?> host;
  /// The fingerprint of the PGP key used to encrypt the password
  late final pulumi.Output<String> keyFingerprint;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`.
  late final pulumi.Output<String> pgpKey;
  /// The IAM user to associate with this access key.
  late final pulumi.Output<String> user;

  /// Creates a new [UserPassword].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPassword]. {@macro pulumi_index_user_password_user_password_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPassword(
    String name, {
    UserPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'mysql:index/userPassword:UserPassword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptedPassword = registerOutput<String>('encryptedPassword');
    this.host = registerOutput<String?>('host');
    this.keyFingerprint = registerOutput<String>('keyFingerprint');
    this.pgpKey = registerOutput<String>('pgpKey');
    this.user = registerOutput<String>('user');
  }

  /// Gets an existing [UserPassword] resource's state with the given [name] and [id].
  static UserPassword get(
    String name,
    pulumi.Input<String> id, {
    UserPasswordState? state,
  }) {
    return UserPassword._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserPassword._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'mysql:index/userPassword:UserPassword',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptedPassword = registerOutput<String>('encryptedPassword');
    this.host = registerOutput<String?>('host');
    this.keyFingerprint = registerOutput<String>('keyFingerprint');
    this.pgpKey = registerOutput<String>('pgpKey');
    this.user = registerOutput<String>('user');
  }
}
