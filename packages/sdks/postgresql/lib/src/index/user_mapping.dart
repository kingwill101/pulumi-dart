import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_mapping_args.dart';
import 'user_mapping_state.dart';

/// The ``postgresql.UserMapping`` resource creates and manages a user mapping on a PostgreSQL server.
///
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const extPostgresFdw = new postgresql.Extension("ext_postgres_fdw", {name: "postgres_fdw"});
/// const myserverPostgres = new postgresql.Server("myserver_postgres", {
///     serverName: "myserver_postgres",
///     fdwName: "postgres_fdw",
///     options: {
///         host: "foo",
///         dbname: "foodb",
///         port: "5432",
///     },
/// }, {
///     dependsOn: [extPostgresFdw],
/// });
/// const remote = new postgresql.Role("remote", {name: "remote"});
/// const remoteUserMapping = new postgresql.UserMapping("remote", {
///     serverName: myserverPostgres.serverName,
///     userName: remote.name,
///     options: {
///         user: "admin",
///         password: "pass",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// ext_postgres_fdw = postgresql.Extension("ext_postgres_fdw", name="postgres_fdw")
/// myserver_postgres = postgresql.Server("myserver_postgres",
///     server_name="myserver_postgres",
///     fdw_name="postgres_fdw",
///     options={
///         "host": "foo",
///         "dbname": "foodb",
///         "port": "5432",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[ext_postgres_fdw]))
/// remote = postgresql.Role("remote", name="remote")
/// remote_user_mapping = postgresql.UserMapping("remote",
///     server_name=myserver_postgres.server_name,
///     user_name=remote.name,
///     options={
///         "user": "admin",
///         "password": "pass",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extPostgresFdw = new PostgreSql.Extension("ext_postgres_fdw", new()
///     {
///         Name = "postgres_fdw",
///     });
///
///     var myserverPostgres = new PostgreSql.Server("myserver_postgres", new()
///     {
///         ServerName = "myserver_postgres",
///         FdwName = "postgres_fdw",
///         Options =
///         {
///             { "host", "foo" },
///             { "dbname", "foodb" },
///             { "port", "5432" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             extPostgresFdw,
///         },
///     });
///
///     var remote = new PostgreSql.Role("remote", new()
///     {
///         Name = "remote",
///     });
///
///     var remoteUserMapping = new PostgreSql.UserMapping("remote", new()
///     {
///         ServerName = myserverPostgres.ServerName,
///         UserName = remote.Name,
///         Options =
///         {
///             { "user", "admin" },
///             { "password", "pass" },
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
/// 		extPostgresFdw, err := postgresql.NewExtension(ctx, "ext_postgres_fdw", &postgresql.ExtensionArgs{
/// 			Name: pulumi.String("postgres_fdw"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myserverPostgres, err := postgresql.NewServer(ctx, "myserver_postgres", &postgresql.ServerArgs{
/// 			ServerName: pulumi.String("myserver_postgres"),
/// 			FdwName:    pulumi.String("postgres_fdw"),
/// 			Options: pulumi.StringMap{
/// 				"host":   pulumi.String("foo"),
/// 				"dbname": pulumi.String("foodb"),
/// 				"port":   pulumi.String("5432"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			extPostgresFdw,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		remote, err := postgresql.NewRole(ctx, "remote", &postgresql.RoleArgs{
/// 			Name: pulumi.String("remote"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewUserMapping(ctx, "remote", &postgresql.UserMappingArgs{
/// 			ServerName: myserverPostgres.ServerName,
/// 			UserName:   remote.Name,
/// 			Options: pulumi.StringMap{
/// 				"user":     pulumi.String("admin"),
/// 				"password": pulumi.String("pass"),
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
/// import com.pulumi.postgresql.Extension;
/// import com.pulumi.postgresql.ExtensionArgs;
/// import com.pulumi.postgresql.Server;
/// import com.pulumi.postgresql.ServerArgs;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
/// import com.pulumi.postgresql.UserMapping;
/// import com.pulumi.postgresql.UserMappingArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var extPostgresFdw = new Extension("extPostgresFdw", ExtensionArgs.builder()
///             .name("postgres_fdw")
///             .build());
///
///         var myserverPostgres = new Server("myserverPostgres", ServerArgs.builder()
///             .serverName("myserver_postgres")
///             .fdwName("postgres_fdw")
///             .options(Map.ofEntries(
///                 Map.entry("host", "foo"),
///                 Map.entry("dbname", "foodb"),
///                 Map.entry("port", "5432")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(extPostgresFdw)
///                 .build());
///
///         var remote = new Role("remote", RoleArgs.builder()
///             .name("remote")
///             .build());
///
///         var remoteUserMapping = new UserMapping("remoteUserMapping", UserMappingArgs.builder()
///             .serverName(myserverPostgres.serverName())
///             .userName(remote.name())
///             .options(Map.ofEntries(
///                 Map.entry("user", "admin"),
///                 Map.entry("password", "pass")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extPostgresFdw:
///     type: postgresql:Extension
///     name: ext_postgres_fdw
///     properties:
///       name: postgres_fdw
///   myserverPostgres:
///     type: postgresql:Server
///     name: myserver_postgres
///     properties:
///       serverName: myserver_postgres
///       fdwName: postgres_fdw
///       options:
///         host: foo
///         dbname: foodb
///         port: '5432'
///     options:
///       dependsOn:
///         - ${extPostgresFdw}
///   remote:
///     type: postgresql:Role
///     properties:
///       name: remote
///   remoteUserMapping:
///     type: postgresql:UserMapping
///     name: remote
///     properties:
///       serverName: ${myserverPostgres.serverName}
///       userName: ${remote.name}
///       options:
///         user: admin
///         password: pass
/// ```
class UserMapping extends pulumi.CustomResource {
  /// This clause specifies the options of the user mapping. The options typically define the actual user name and password of the mapping. Option names must be unique. The allowed option names and values are specific to the server's foreign-data wrapper.
  late final pulumi.Output<Map<String, String>?> options;
  /// The name of an existing server for which the user mapping is to be created.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  late final pulumi.Output<String> serverName;
  /// The name of an existing user that is mapped to foreign server. CURRENT_ROLE, CURRENT_USER, and USER match the name of the current user. When PUBLIC is specified, a so-called public mapping is created that is used when no user-specific mapping is applicable.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the user mapping is created.
  late final pulumi.Output<String> userName;

  /// Creates a new [UserMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserMapping]. {@macro pulumi_index_user_mapping_user_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserMapping(
    String name, {
    UserMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/userMapping:UserMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.options = registerOutput<Map<String, String>?>('options');
    this.serverName = registerOutput<String>('serverName');
    this.userName = registerOutput<String>('userName');
  }

  /// Gets an existing [UserMapping] resource's state with the given [name] and [id].
  static UserMapping get(
    String name,
    pulumi.Input<String> id, {
    UserMappingState? state,
  }) {
    return UserMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/userMapping:UserMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.options = registerOutput<Map<String, String>?>('options');
    this.serverName = registerOutput<String>('serverName');
    this.userName = registerOutput<String>('userName');
  }
}
