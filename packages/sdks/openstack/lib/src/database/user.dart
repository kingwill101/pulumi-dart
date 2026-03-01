import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Manages a V1 DB user resource within OpenStack.
///
/// > **Note:** All arguments including the database password will be stored in the
/// raw state as plain-text. Read more about sensitive data in
/// state.
///
/// ## Example Usage
///
/// ### User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const basic = new openstack.database.User("basic", {
///     name: "basic",
///     instanceId: basicOpenstackDbInstanceV1.id,
///     password: "password",
///     databases: ["testdb"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// basic = openstack.database.User("basic",
///     name="basic",
///     instance_id=basic_openstack_db_instance_v1["id"],
///     password="password",
///     databases=["testdb"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new OpenStack.Database.User("basic", new()
///     {
///         Name = "basic",
///         InstanceId = basicOpenstackDbInstanceV1.Id,
///         Password = "password",
///         Databases = new[]
///         {
///             "testdb",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/database"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := database.NewUser(ctx, "basic", &database.UserArgs{
/// 			Name:       pulumi.String("basic"),
/// 			InstanceId: pulumi.Any(basicOpenstackDbInstanceV1.Id),
/// 			Password:   pulumi.String("password"),
/// 			Databases: pulumi.StringArray{
/// 				pulumi.String("testdb"),
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
/// import com.pulumi.openstack.database.User;
/// import com.pulumi.openstack.database.UserArgs;
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
///         var basic = new User("basic", UserArgs.builder()
///             .name("basic")
///             .instanceId(basicOpenstackDbInstanceV1.id())
///             .password("password")
///             .databases("testdb")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: openstack:database:User
///     properties:
///       name: basic
///       instanceId: ${basicOpenstackDbInstanceV1.id}
///       password: password
///       databases:
///         - testdb
/// ```
class User extends pulumi.CustomResource {
  /// A list of database user should have access to.
  late final pulumi.Output<List<String>> databases;
  late final pulumi.Output<String?> host;
  /// The ID for the database instance.
  late final pulumi.Output<String> instanceId;
  /// A unique name for the resource.
  late final pulumi.Output<String> name;
  /// User's password.
  late final pulumi.Output<String> password;
  /// The region in which to create the db user. Changing
  /// this creates a new user.
  late final pulumi.Output<String> region;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_database_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:database/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.databases = registerOutput<List<String>>('databases');
    this.host = registerOutput<String?>('host');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
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
          'openstack:database/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.databases = registerOutput<List<String>>('databases');
    this.host = registerOutput<String?>('host');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
  }
}
