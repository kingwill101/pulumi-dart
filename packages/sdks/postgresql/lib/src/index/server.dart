import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'server_state.dart';

/// The ``postgresql.Server`` resource creates and manages a foreign server on a PostgreSQL server.
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
/// 		_, err = postgresql.NewServer(ctx, "myserver_postgres", &postgresql.ServerArgs{
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
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const extFileFdw = new postgresql.Extension("ext_file_fdw", {name: "file_fdw"});
/// const myserverFile = new postgresql.Server("myserver_file", {
///     serverName: "myserver_file",
///     fdwName: "file_fdw",
/// }, {
///     dependsOn: [extFileFdw],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// ext_file_fdw = postgresql.Extension("ext_file_fdw", name="file_fdw")
/// myserver_file = postgresql.Server("myserver_file",
///     server_name="myserver_file",
///     fdw_name="file_fdw",
///     opts = pulumi.ResourceOptions(depends_on=[ext_file_fdw]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extFileFdw = new PostgreSql.Extension("ext_file_fdw", new()
///     {
///         Name = "file_fdw",
///     });
///
///     var myserverFile = new PostgreSql.Server("myserver_file", new()
///     {
///         ServerName = "myserver_file",
///         FdwName = "file_fdw",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             extFileFdw,
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
/// 		extFileFdw, err := postgresql.NewExtension(ctx, "ext_file_fdw", &postgresql.ExtensionArgs{
/// 			Name: pulumi.String("file_fdw"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewServer(ctx, "myserver_file", &postgresql.ServerArgs{
/// 			ServerName: pulumi.String("myserver_file"),
/// 			FdwName:    pulumi.String("file_fdw"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			extFileFdw,
/// 		}))
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
///         var extFileFdw = new Extension("extFileFdw", ExtensionArgs.builder()
///             .name("file_fdw")
///             .build());
///
///         var myserverFile = new Server("myserverFile", ServerArgs.builder()
///             .serverName("myserver_file")
///             .fdwName("file_fdw")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(extFileFdw)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extFileFdw:
///     type: postgresql:Extension
///     name: ext_file_fdw
///     properties:
///       name: file_fdw
///   myserverFile:
///     type: postgresql:Server
///     name: myserver_file
///     properties:
///       serverName: myserver_file
///       fdwName: file_fdw
///     options:
///       dependsOn:
///         - ${extFileFdw}
/// ```
class Server extends pulumi.CustomResource {
  /// When true, will drop objects that depend on the server (such as user mappings), and in turn all objects that depend on those objects . (Default: false)
  late final pulumi.Output<bool?> dropCascade;

  /// The name of the foreign-data wrapper that manages the server.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  late final pulumi.Output<String> fdwName;

  /// This clause specifies the options for the server. The options typically define the connection details of the server, but the actual names and values are dependent on the server's foreign-data wrapper.
  late final pulumi.Output<Map<String, String>?> options;

  /// The name of the foreign server to be created.
  late final pulumi.Output<String> serverName;

  /// By default, the user who defines the server becomes its owner. Set this value to configure the new owner of the foreign server.
  late final pulumi.Output<String> serverOwner;

  /// Optional server type, potentially useful to foreign-data wrappers.
  /// Changing this value
  /// will force the creation of a new resource as this value can only be set
  /// when the foreign server is created.
  late final pulumi.Output<String?> serverType;

  /// Optional server version, potentially useful to foreign-data wrappers.
  late final pulumi.Output<String?> serverVersion;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_index_server_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(String name, {ServerArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'postgresql:index/server:Server',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    dropCascade = registerOutput<bool?>('dropCascade');
    fdwName = registerOutput<String>('fdwName');
    this.options = registerOutput<Map<String, String>?>('options');
    serverName = registerOutput<String>('serverName');
    serverOwner = registerOutput<String>('serverOwner');
    serverType = registerOutput<String?>('serverType');
    serverVersion = registerOutput<String?>('serverVersion');
  }

  /// Gets an existing [Server] resource's state with the given [name] and [id].
  static Server get(
    String name,
    pulumi.Input<String> id, {
    ServerState? state,
  }) {
    return Server._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Server._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'postgresql:index/server:Server',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dropCascade = registerOutput<bool?>('dropCascade');
    fdwName = registerOutput<String>('fdwName');
    this.options = registerOutput<Map<String, String>?>('options');
    serverName = registerOutput<String>('serverName');
    serverOwner = registerOutput<String>('serverOwner');
    serverType = registerOutput<String?>('serverType');
    serverVersion = registerOutput<String?>('serverVersion');
  }
}
