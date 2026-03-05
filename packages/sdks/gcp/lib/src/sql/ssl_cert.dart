import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_cert_args.dart';
import 'ssl_cert_state.dart';

/// Creates a new Google SQL SSL Cert on a Google SQL Instance. For more information, see the [official documentation](https://cloud.google.com/sql/), or the [JSON API](https://cloud.google.com/sql/docs/mysql/admin-api/v1beta4/sslCerts).
///
///
///
/// ## Example Usage
///
/// Example creating a SQL Client Certificate.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const dbNameSuffix = new random.index.Id("db_name_suffix", {byteLength: 4});
/// const main = new gcp.sql.DatabaseInstance("main", {
///     name: `main-instance-${dbNameSuffix.hex}`,
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
/// });
/// const clientCert = new gcp.sql.SslCert("client_cert", {
///     commonName: "client-name",
///     instance: main.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// db_name_suffix = random.index.Id("db_name_suffix", byte_length=4)
/// main = gcp.sql.DatabaseInstance("main",
///     name=f"main-instance-{db_name_suffix['hex']}",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     })
/// client_cert = gcp.sql.SslCert("client_cert",
///     common_name="client-name",
///     instance=main.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbNameSuffix = new Random.Index.Id("db_name_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     var main = new Gcp.Sql.DatabaseInstance("main", new()
///     {
///         Name = $"main-instance-{dbNameSuffix.Hex}",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///     });
///
///     var clientCert = new Gcp.Sql.SslCert("client_cert", new()
///     {
///         CommonName = "client-name",
///         Instance = main.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbNameSuffix, err := random.NewId(ctx, "db_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := sql.NewDatabaseInstance(ctx, "main", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.Sprintf("main-instance-%v", dbNameSuffix.Hex),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sql.NewSslCert(ctx, "client_cert", &sql.SslCertArgs{
/// 			CommonName: pulumi.String("client-name"),
/// 			Instance:   main.Name,
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.sql.SslCert;
/// import com.pulumi.gcp.sql.SslCertArgs;
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
///         var dbNameSuffix = new Id("dbNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         var main = new DatabaseInstance("main", DatabaseInstanceArgs.builder()
///             .name(String.format("main-instance-%s", dbNameSuffix.hex()))
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .build());
///
///         var clientCert = new SslCert("clientCert", SslCertArgs.builder()
///             .commonName("client-name")
///             .instance(main.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dbNameSuffix:
///     type: random:Id
///     name: db_name_suffix
///     properties:
///       byteLength: 4
///   main:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: main-instance-${dbNameSuffix.hex}
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///   clientCert:
///     type: gcp:sql:SslCert
///     name: client_cert
///     properties:
///       commonName: client-name
///       instance: ${main.name}
/// ```
///
///
/// ## Import
///
/// Since the contents of the certificate cannot be accessed after its creation, this resource cannot be imported.
class SslCert extends pulumi.CustomResource {
  /// The actual certificate data for this client certificate.
  late final pulumi.Output<String> cert;
  /// The serial number extracted from the certificate data.
  late final pulumi.Output<String> certSerialNumber;
  /// The common name to be used in the certificate to identify the
  /// client. Constrained to [a-zA-Z.-_ ]+. Changing this forces a new resource to be created.
  late final pulumi.Output<String> commonName;
  /// The time when the certificate was created in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  late final pulumi.Output<String> createTime;
  /// The time when the certificate expires in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  late final pulumi.Output<String> expirationTime;
  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  late final pulumi.Output<String> instance;
  /// The private key associated with the client certificate.
  late final pulumi.Output<String> privateKey;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The CA cert of the server this client cert was generated from.
  late final pulumi.Output<String> serverCaCert;
  /// The SHA1 Fingerprint of the certificate.
  late final pulumi.Output<String> sha1Fingerprint;

  /// Creates a new [SslCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslCert]. {@macro pulumi_sql_ssl_cert_ssl_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslCert(
    String name, {
    SslCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sslCert:SslCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cert = registerOutput<String>('cert');
    certSerialNumber = registerOutput<String>('certSerialNumber');
    commonName = registerOutput<String>('commonName');
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String>('expirationTime');
    instance = registerOutput<String>('instance');
    privateKey = registerOutput<String>('privateKey');
    project = registerOutput<String>('project');
    serverCaCert = registerOutput<String>('serverCaCert');
    sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
  }

  /// Gets an existing [SslCert] resource's state with the given [name] and [id].
  static SslCert get(
    String name,
    pulumi.Input<String> id, {
    SslCertState? state,
  }) {
    return SslCert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SslCert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:sql/sslCert:SslCert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cert = registerOutput<String>('cert');
    certSerialNumber = registerOutput<String>('certSerialNumber');
    commonName = registerOutput<String>('commonName');
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String>('expirationTime');
    instance = registerOutput<String>('instance');
    privateKey = registerOutput<String>('privateKey');
    project = registerOutput<String>('project');
    serverCaCert = registerOutput<String>('serverCaCert');
    sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
  }
}
