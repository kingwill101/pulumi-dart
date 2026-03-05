import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_logsink_rsyslog_args.dart';
import 'database_logsink_rsyslog_state.dart';

/// Provides a DigitalOcean database logsink resource allowing you to forward logs from a managed database cluster to an external rsyslog server.
///
/// This resource supports the following DigitalOcean managed database engines:
///
/// * PostgreSQL
/// * MySQL
/// * Kafka
/// * Valkey
///
/// **Note**: MongoDB databases use a different log forwarding mechanism and require Datadog logsinks (not currently available in this provider).
///
/// ## Example Usage
///
/// ### Basic rsyslog configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const postgres_example = new digitalocean.DatabaseCluster("postgres-example", {
///     name: "example-postgres-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseLogsinkRsyslog("example", {
///     clusterId: postgres_example.id,
///     name: "rsyslog-prod",
///     server: "192.0.2.10",
///     port: 514,
///     format: "rfc5424",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// postgres_example = digitalocean.DatabaseCluster("postgres-example",
///     name="example-postgres-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabaseLogsinkRsyslog("example",
///     cluster_id=postgres_example.id,
///     name="rsyslog-prod",
///     server="192.0.2.10",
///     port=514,
///     format="rfc5424")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgres_example = new DigitalOcean.DatabaseCluster("postgres-example", new()
///     {
///         Name = "example-postgres-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseLogsinkRsyslog("example", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "rsyslog-prod",
///         Server = "192.0.2.10",
///         Port = 514,
///         Format = "rfc5424",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		postgres_example, err := digitalocean.NewDatabaseCluster(ctx, "postgres-example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgres-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkRsyslog(ctx, "example", &digitalocean.DatabaseLogsinkRsyslogArgs{
/// 			ClusterId: postgres_example.ID(),
/// 			Name:      pulumi.String("rsyslog-prod"),
/// 			Server:    pulumi.String("192.0.2.10"),
/// 			Port:      pulumi.Int(514),
/// 			Format:    pulumi.String("rfc5424"),
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslog;
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslogArgs;
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
///         var postgres_example = new DatabaseCluster("postgres-example", DatabaseClusterArgs.builder()
///             .name("example-postgres-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseLogsinkRsyslog("example", DatabaseLogsinkRsyslogArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("rsyslog-prod")
///             .server("192.0.2.10")
///             .port(514)
///             .format("rfc5424")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseLogsinkRsyslog
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: rsyslog-prod
///       server: 192.0.2.10
///       port: 514
///       format: rfc5424
///   postgres-example:
///     type: digitalocean:DatabaseCluster
///     properties:
///       name: example-postgres-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ### TLS-enabled rsyslog configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const example_tls = new digitalocean.DatabaseLogsinkRsyslog("example-tls", {
///     clusterId: postgres_example.id,
///     name: "rsyslog-secure",
///     server: "logs.example.com",
///     port: 6514,
///     tls: true,
///     format: "rfc5424",
///     caCert: std.file({
///         input: "/path/to/ca.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// example_tls = digitalocean.DatabaseLogsinkRsyslog("example-tls",
///     cluster_id=postgres_example["id"],
///     name="rsyslog-secure",
///     server="logs.example.com",
///     port=6514,
///     tls=True,
///     format="rfc5424",
///     ca_cert=std.file(input="/path/to/ca.pem").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_tls = new DigitalOcean.DatabaseLogsinkRsyslog("example-tls", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "rsyslog-secure",
///         Server = "logs.example.com",
///         Port = 6514,
///         Tls = true,
///         Format = "rfc5424",
///         CaCert = Std.File.Invoke(new()
///         {
///             Input = "/path/to/ca.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/path/to/ca.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkRsyslog(ctx, "example-tls", &digitalocean.DatabaseLogsinkRsyslogArgs{
/// 			ClusterId: pulumi.Any(postgres_example.Id),
/// 			Name:      pulumi.String("rsyslog-secure"),
/// 			Server:    pulumi.String("logs.example.com"),
/// 			Port:      pulumi.Int(6514),
/// 			Tls:       pulumi.Bool(true),
/// 			Format:    pulumi.String("rfc5424"),
/// 			CaCert:    pulumi.String(invokeFile.Result),
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
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslog;
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslogArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example_tls = new DatabaseLogsinkRsyslog("example-tls", DatabaseLogsinkRsyslogArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("rsyslog-secure")
///             .server("logs.example.com")
///             .port(6514)
///             .tls(true)
///             .format("rfc5424")
///             .caCert(StdFunctions.file(FileArgs.builder()
///                 .input("/path/to/ca.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-tls:
///     type: digitalocean:DatabaseLogsinkRsyslog
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: rsyslog-secure
///       server: logs.example.com
///       port: 6514
///       tls: true
///       format: rfc5424
///       caCert:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /path/to/ca.pem
///           return: result
/// ```
///
///
/// ### mTLS (mutual TLS) configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const example_mtls = new digitalocean.DatabaseLogsinkRsyslog("example-mtls", {
///     clusterId: postgres_example.id,
///     name: "rsyslog-mtls",
///     server: "secure-logs.example.com",
///     port: 6514,
///     tls: true,
///     format: "rfc5424",
///     caCert: std.file({
///         input: "/path/to/ca.pem",
///     }).then(invoke => invoke.result),
///     clientCert: std.file({
///         input: "/path/to/client.crt",
///     }).then(invoke => invoke.result),
///     clientKey: std.file({
///         input: "/path/to/client.key",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// example_mtls = digitalocean.DatabaseLogsinkRsyslog("example-mtls",
///     cluster_id=postgres_example["id"],
///     name="rsyslog-mtls",
///     server="secure-logs.example.com",
///     port=6514,
///     tls=True,
///     format="rfc5424",
///     ca_cert=std.file(input="/path/to/ca.pem").result,
///     client_cert=std.file(input="/path/to/client.crt").result,
///     client_key=std.file(input="/path/to/client.key").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_mtls = new DigitalOcean.DatabaseLogsinkRsyslog("example-mtls", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "rsyslog-mtls",
///         Server = "secure-logs.example.com",
///         Port = 6514,
///         Tls = true,
///         Format = "rfc5424",
///         CaCert = Std.File.Invoke(new()
///         {
///             Input = "/path/to/ca.pem",
///         }).Apply(invoke => invoke.Result),
///         ClientCert = Std.File.Invoke(new()
///         {
///             Input = "/path/to/client.crt",
///         }).Apply(invoke => invoke.Result),
///         ClientKey = Std.File.Invoke(new()
///         {
///             Input = "/path/to/client.key",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/path/to/ca.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/path/to/client.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/path/to/client.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseLogsinkRsyslog(ctx, "example-mtls", &digitalocean.DatabaseLogsinkRsyslogArgs{
/// 			ClusterId:  pulumi.Any(postgres_example.Id),
/// 			Name:       pulumi.String("rsyslog-mtls"),
/// 			Server:     pulumi.String("secure-logs.example.com"),
/// 			Port:       pulumi.Int(6514),
/// 			Tls:        pulumi.Bool(true),
/// 			Format:     pulumi.String("rfc5424"),
/// 			CaCert:     pulumi.String(invokeFile.Result),
/// 			ClientCert: pulumi.String(invokeFile1.Result),
/// 			ClientKey:  pulumi.String(invokeFile2.Result),
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
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslog;
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslogArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example_mtls = new DatabaseLogsinkRsyslog("example-mtls", DatabaseLogsinkRsyslogArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("rsyslog-mtls")
///             .server("secure-logs.example.com")
///             .port(6514)
///             .tls(true)
///             .format("rfc5424")
///             .caCert(StdFunctions.file(FileArgs.builder()
///                 .input("/path/to/ca.pem")
///                 .build()).result())
///             .clientCert(StdFunctions.file(FileArgs.builder()
///                 .input("/path/to/client.crt")
///                 .build()).result())
///             .clientKey(StdFunctions.file(FileArgs.builder()
///                 .input("/path/to/client.key")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-mtls:
///     type: digitalocean:DatabaseLogsinkRsyslog
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: rsyslog-mtls
///       server: secure-logs.example.com
///       port: 6514
///       tls: true
///       format: rfc5424
///       caCert:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /path/to/ca.pem
///           return: result
///       clientCert:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /path/to/client.crt
///           return: result
///       clientKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /path/to/client.key
///           return: result
/// ```
///
///
/// ### Custom format configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example_custom = new digitalocean.DatabaseLogsinkRsyslog("example-custom", {
///     clusterId: postgres_example.id,
///     name: "rsyslog-custom",
///     server: "192.0.2.10",
///     port: 514,
///     format: "custom",
///     logline: "<%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%",
///     structuredData: "[example@41058 iut=\"3\"]",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_custom = digitalocean.DatabaseLogsinkRsyslog("example-custom",
///     cluster_id=postgres_example["id"],
///     name="rsyslog-custom",
///     server="192.0.2.10",
///     port=514,
///     format="custom",
///     logline="<%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%",
///     structured_data="[example@41058 iut=\"3\"]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example_custom = new DigitalOcean.DatabaseLogsinkRsyslog("example-custom", new()
///     {
///         ClusterId = postgres_example.Id,
///         Name = "rsyslog-custom",
///         Server = "192.0.2.10",
///         Port = 514,
///         Format = "custom",
///         Logline = "<%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%",
///         StructuredData = "[example@41058 iut=\"3\"]",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewDatabaseLogsinkRsyslog(ctx, "example-custom", &digitalocean.DatabaseLogsinkRsyslogArgs{
/// 			ClusterId:      pulumi.Any(postgres_example.Id),
/// 			Name:           pulumi.String("rsyslog-custom"),
/// 			Server:         pulumi.String("192.0.2.10"),
/// 			Port:           pulumi.Int(514),
/// 			Format:         pulumi.String("custom"),
/// 			Logline:        pulumi.String("<%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%"),
/// 			StructuredData: pulumi.String("[example@41058 iut=\"3\"]"),
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
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslog;
/// import com.pulumi.digitalocean.DatabaseLogsinkRsyslogArgs;
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
///         var example_custom = new DatabaseLogsinkRsyslog("example-custom", DatabaseLogsinkRsyslogArgs.builder()
///             .clusterId(postgres_example.id())
///             .name("rsyslog-custom")
///             .server("192.0.2.10")
///             .port(514)
///             .format("custom")
///             .logline("<%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%")
///             .structuredData("[example@41058 iut=\"3\"]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-custom:
///     type: digitalocean:DatabaseLogsinkRsyslog
///     properties:
///       clusterId: ${["postgres-example"].id}
///       name: rsyslog-custom
///       server: 192.0.2.10
///       port: 514
///       format: custom
///       logline: <%pri%>%timestamp:::date-rfc3339% %HOSTNAME% %app-name% %msg%
///       structuredData: '[example@41058 iut="3"]'
/// ```
///
///
/// ## Import
///
/// Database logsink rsyslog resources can be imported using the composite ID format `cluster_id,logsink_id`. For example:
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseLogsinkRsyslog:DatabaseLogsinkRsyslog example 245bcfd0-7f31-4ce6-a2bc-475a116cca97,f38db7c8-1f31-4ce6-a2bc-475a116cca97
/// ```
///
/// **Note**: The cluster ID and logsink ID must be separated by a comma.
class DatabaseLogsinkRsyslog extends pulumi.CustomResource {
  /// CA certificate for TLS verification in PEM format. Can be specified using `file()` function.
  late final pulumi.Output<String?> caCert;
  /// Client certificate for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`.
  late final pulumi.Output<String?> clientCert;
  /// Client private key for mutual TLS authentication in PEM format. **Note**: Requires `tls` to be `true`. This field is marked as sensitive.
  late final pulumi.Output<String?> clientKey;
  /// UUID of the source database cluster that will forward logs.
  late final pulumi.Output<String> clusterId;
  /// Log format to use. Must be one of `rfc5424` (default), `rfc3164`, or `custom`.
  late final pulumi.Output<String?> format;
  /// Custom logline template. **Required** when `format` is set to `custom`. Supports rsyslog-style templating with the following tokens: `%HOSTNAME%`, `%app-name%`, `%msg%`, `%msgid%`, `%pri%`, `%procid%`, `%structured-data%`, `%timestamp%`, and `%timestamp:::date-rfc3339%`.
  late final pulumi.Output<String?> logline;
  /// The unique identifier for the logsink as returned by the DigitalOcean API.
  late final pulumi.Output<String> logsinkId;
  /// Display name for the logsink. **Note**: This is immutable; changing it will force recreation of the resource.
  late final pulumi.Output<String> name;
  /// Port number for the rsyslog server. Must be between 1 and 65535.
  late final pulumi.Output<int> port;
  /// Hostname or IP address of the rsyslog server.
  late final pulumi.Output<String> server;
  /// Content of the structured data block for RFC5424 messages.
  late final pulumi.Output<String?> structuredData;
  /// Enable TLS encryption for the rsyslog connection. Defaults to `false`. **Note**: It is highly recommended to enable TLS as log messages may contain sensitive information.
  late final pulumi.Output<bool?> tls;

  /// Creates a new [DatabaseLogsinkRsyslog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseLogsinkRsyslog]. {@macro pulumi_index_database_logsink_rsyslog_database_logsink_rsyslog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseLogsinkRsyslog(
    String name, {
    DatabaseLogsinkRsyslogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseLogsinkRsyslog:DatabaseLogsinkRsyslog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caCert = registerOutput<String?>('caCert');
    clientCert = registerOutput<String?>('clientCert');
    clientKey = registerOutput<String?>('clientKey');
    clusterId = registerOutput<String>('clusterId');
    format = registerOutput<String?>('format');
    logline = registerOutput<String?>('logline');
    logsinkId = registerOutput<String>('logsinkId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    server = registerOutput<String>('server');
    structuredData = registerOutput<String?>('structuredData');
    tls = registerOutput<bool?>('tls');
  }

  /// Gets an existing [DatabaseLogsinkRsyslog] resource's state with the given [name] and [id].
  static DatabaseLogsinkRsyslog get(
    String name,
    pulumi.Input<String> id, {
    DatabaseLogsinkRsyslogState? state,
  }) {
    return DatabaseLogsinkRsyslog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatabaseLogsinkRsyslog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseLogsinkRsyslog:DatabaseLogsinkRsyslog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caCert = registerOutput<String?>('caCert');
    clientCert = registerOutput<String?>('clientCert');
    clientKey = registerOutput<String?>('clientKey');
    clusterId = registerOutput<String>('clusterId');
    format = registerOutput<String?>('format');
    logline = registerOutput<String?>('logline');
    logsinkId = registerOutput<String>('logsinkId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int>('port');
    server = registerOutput<String>('server');
    structuredData = registerOutput<String?>('structuredData');
    tls = registerOutput<bool?>('tls');
  }
}
