import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_representation_instance_args.dart';
import 'source_representation_instance_state.dart';

/// A source representation instance is a Cloud SQL instance that represents
/// the source database server to the Cloud SQL replica. It is visible in the
/// Cloud Console and appears the same as a regular Cloud SQL instance, but it
/// contains no data, requires no configuration or maintenance, and does not
/// affect billing. You cannot update the source representation instance.
///
///
///
///
///
/// ## Example Usage
///
/// ### Sql Source Representation Instance Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.SourceRepresentationInstance("instance", {
///     name: "my-instance",
///     region: "us-central1",
///     databaseVersion: "MYSQL_8_0",
///     host: "10.20.30.40",
///     port: 3306,
///     username: "some-user",
///     password: "password-for-the-user",
///     dumpFilePath: "gs://replica-bucket/source-database.sql.gz",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.SourceRepresentationInstance("instance",
///     name="my-instance",
///     region="us-central1",
///     database_version="MYSQL_8_0",
///     host="10.20.30.40",
///     port=3306,
///     username="some-user",
///     password="password-for-the-user",
///     dump_file_path="gs://replica-bucket/source-database.sql.gz")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.SourceRepresentationInstance("instance", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         DatabaseVersion = "MYSQL_8_0",
///         Host = "10.20.30.40",
///         Port = 3306,
///         Username = "some-user",
///         Password = "password-for-the-user",
///         DumpFilePath = "gs://replica-bucket/source-database.sql.gz",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewSourceRepresentationInstance(ctx, "instance", &sql.SourceRepresentationInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("MYSQL_8_0"),
/// 			Host:            pulumi.String("10.20.30.40"),
/// 			Port:            pulumi.Int(3306),
/// 			Username:        pulumi.String("some-user"),
/// 			Password:        pulumi.String("password-for-the-user"),
/// 			DumpFilePath:    pulumi.String("gs://replica-bucket/source-database.sql.gz"),
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
/// import com.pulumi.gcp.sql.SourceRepresentationInstance;
/// import com.pulumi.gcp.sql.SourceRepresentationInstanceArgs;
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
///         var instance = new SourceRepresentationInstance("instance", SourceRepresentationInstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .databaseVersion("MYSQL_8_0")
///             .host("10.20.30.40")
///             .port(3306)
///             .username("some-user")
///             .password("password-for-the-user")
///             .dumpFilePath("gs://replica-bucket/source-database.sql.gz")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:SourceRepresentationInstance
///     properties:
///       name: my-instance
///       region: us-central1
///       databaseVersion: MYSQL_8_0
///       host: 10.20.30.40
///       port: 3306
///       username: some-user
///       password: password-for-the-user
///       dumpFilePath: gs://replica-bucket/source-database.sql.gz
/// ```
///
/// ### Sql Source Representation Instance Postgres
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.SourceRepresentationInstance("instance", {
///     name: "my-instance",
///     region: "us-central1",
///     databaseVersion: "POSTGRES_9_6",
///     host: "10.20.30.40",
///     port: 3306,
///     username: "some-user",
///     password: "password-for-the-user",
///     dumpFilePath: "gs://replica-bucket/source-database.sql.gz",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.SourceRepresentationInstance("instance",
///     name="my-instance",
///     region="us-central1",
///     database_version="POSTGRES_9_6",
///     host="10.20.30.40",
///     port=3306,
///     username="some-user",
///     password="password-for-the-user",
///     dump_file_path="gs://replica-bucket/source-database.sql.gz")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.SourceRepresentationInstance("instance", new()
///     {
///         Name = "my-instance",
///         Region = "us-central1",
///         DatabaseVersion = "POSTGRES_9_6",
///         Host = "10.20.30.40",
///         Port = 3306,
///         Username = "some-user",
///         Password = "password-for-the-user",
///         DumpFilePath = "gs://replica-bucket/source-database.sql.gz",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewSourceRepresentationInstance(ctx, "instance", &sql.SourceRepresentationInstanceArgs{
/// 			Name:            pulumi.String("my-instance"),
/// 			Region:          pulumi.String("us-central1"),
/// 			DatabaseVersion: pulumi.String("POSTGRES_9_6"),
/// 			Host:            pulumi.String("10.20.30.40"),
/// 			Port:            pulumi.Int(3306),
/// 			Username:        pulumi.String("some-user"),
/// 			Password:        pulumi.String("password-for-the-user"),
/// 			DumpFilePath:    pulumi.String("gs://replica-bucket/source-database.sql.gz"),
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
/// import com.pulumi.gcp.sql.SourceRepresentationInstance;
/// import com.pulumi.gcp.sql.SourceRepresentationInstanceArgs;
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
///         var instance = new SourceRepresentationInstance("instance", SourceRepresentationInstanceArgs.builder()
///             .name("my-instance")
///             .region("us-central1")
///             .databaseVersion("POSTGRES_9_6")
///             .host("10.20.30.40")
///             .port(3306)
///             .username("some-user")
///             .password("password-for-the-user")
///             .dumpFilePath("gs://replica-bucket/source-database.sql.gz")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:sql:SourceRepresentationInstance
///     properties:
///       name: my-instance
///       region: us-central1
///       databaseVersion: POSTGRES_9_6
///       host: 10.20.30.40
///       port: 3306
///       username: some-user
///       password: password-for-the-user
///       dumpFilePath: gs://replica-bucket/source-database.sql.gz
/// ```
///
///
/// ## Import
///
/// SourceRepresentationInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SourceRepresentationInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance default {{name}}
/// ```
class SourceRepresentationInstance extends pulumi.CustomResource {
  /// The CA certificate on the external server. Include only if SSL/TLS is used on the external server.
  late final pulumi.Output<String?> caCertificate;
  /// The client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  late final pulumi.Output<String?> clientCertificate;
  /// The private key file for the client certificate on the external server. Required only for server-client authentication. Include only if SSL/TLS is used on the external server.
  late final pulumi.Output<String?> clientKey;
  /// The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17. Database Version Policies includes an up-to-date reference of supported versions.
  late final pulumi.Output<String> databaseVersion;
  /// A file in the bucket that contains the data from the external server.
  late final pulumi.Output<String?> dumpFilePath;
  /// The IPv4 address and port for the external server, or the the DNS address for the external server. If the external server is hosted on Cloud SQL, the port is 5432.
  late final pulumi.Output<String> host;
  /// The name of the source representation instance. Use any valid Cloud SQL instance name.
  late final pulumi.Output<String> name;
  /// The password for the replication user account.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> password;
  /// The externally accessible port for the source database server.
  /// Defaults to 3306.
  late final pulumi.Output<int?> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Region in which the created instance should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The replication user account on the external server.
  late final pulumi.Output<String?> username;

  /// Creates a new [SourceRepresentationInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceRepresentationInstance]. {@macro pulumi_sql_source_representation_instance_source_representation_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceRepresentationInstance(
    String name, {
    SourceRepresentationInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.caCertificate = registerOutput<String?>('caCertificate');
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.clientKey = registerOutput<String?>('clientKey');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.dumpFilePath = registerOutput<String?>('dumpFilePath');
    this.host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.port = registerOutput<int?>('port');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.username = registerOutput<String?>('username');
  }

  /// Gets an existing [SourceRepresentationInstance] resource's state with the given [name] and [id].
  static SourceRepresentationInstance get(
    String name,
    pulumi.Input<String> id, {
    SourceRepresentationInstanceState? state,
  }) {
    return SourceRepresentationInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SourceRepresentationInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sourceRepresentationInstance:SourceRepresentationInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.caCertificate = registerOutput<String?>('caCertificate');
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.clientKey = registerOutput<String?>('clientKey');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.dumpFilePath = registerOutput<String?>('dumpFilePath');
    this.host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.port = registerOutput<int?>('port');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.username = registerOutput<String?>('username');
  }
}
