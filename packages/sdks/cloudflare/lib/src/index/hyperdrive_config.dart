import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperdrive_config_args.dart';
import 'hyperdrive_config_caching.dart';
import 'hyperdrive_config_mtls.dart';
import 'hyperdrive_config_origin.dart';
import 'hyperdrive_config_state.dart';

/// Accepted Permissions
///
/// - `Hyperdrive Read`
/// - `Hyperdrive Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleHyperdriveConfig = new cloudflare.HyperdriveConfig("example_hyperdrive_config", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "example-hyperdrive",
///     origin: {
///         database: "postgres",
///         host: "database.example.com",
///         password: "password",
///         port: 5432,
///         scheme: "postgres",
///         user: "postgres",
///     },
///     caching: {
///         disabled: true,
///     },
///     mtls: {
///         caCertificateId: "00000000-0000-0000-0000-0000000000",
///         mtlsCertificateId: "00000000-0000-0000-0000-0000000000",
///         sslmode: "verify-full",
///     },
///     originConnectionLimit: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_hyperdrive_config = cloudflare.HyperdriveConfig("example_hyperdrive_config",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="example-hyperdrive",
///     origin={
///         "database": "postgres",
///         "host": "database.example.com",
///         "password": "password",
///         "port": 5432,
///         "scheme": "postgres",
///         "user": "postgres",
///     },
///     caching={
///         "disabled": True,
///     },
///     mtls={
///         "ca_certificate_id": "00000000-0000-0000-0000-0000000000",
///         "mtls_certificate_id": "00000000-0000-0000-0000-0000000000",
///         "sslmode": "verify-full",
///     },
///     origin_connection_limit=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleHyperdriveConfig = new Cloudflare.HyperdriveConfig("example_hyperdrive_config", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "example-hyperdrive",
///         Origin = new Cloudflare.Inputs.HyperdriveConfigOriginArgs
///         {
///             Database = "postgres",
///             Host = "database.example.com",
///             Password = "password",
///             Port = 5432,
///             Scheme = "postgres",
///             User = "postgres",
///         },
///         Caching = new Cloudflare.Inputs.HyperdriveConfigCachingArgs
///         {
///             Disabled = true,
///         },
///         Mtls = new Cloudflare.Inputs.HyperdriveConfigMtlsArgs
///         {
///             CaCertificateId = "00000000-0000-0000-0000-0000000000",
///             MtlsCertificateId = "00000000-0000-0000-0000-0000000000",
///             Sslmode = "verify-full",
///         },
///         OriginConnectionLimit = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewHyperdriveConfig(ctx, "example_hyperdrive_config", &cloudflare.HyperdriveConfigArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("example-hyperdrive"),
/// 			Origin: &cloudflare.HyperdriveConfigOriginArgs{
/// 				Database: pulumi.String("postgres"),
/// 				Host:     pulumi.String("database.example.com"),
/// 				Password: pulumi.String("password"),
/// 				Port:     pulumi.Int(5432),
/// 				Scheme:   pulumi.String("postgres"),
/// 				User:     pulumi.String("postgres"),
/// 			},
/// 			Caching: &cloudflare.HyperdriveConfigCachingArgs{
/// 				Disabled: pulumi.Bool(true),
/// 			},
/// 			Mtls: &cloudflare.HyperdriveConfigMtlsArgs{
/// 				CaCertificateId:   pulumi.String("00000000-0000-0000-0000-0000000000"),
/// 				MtlsCertificateId: pulumi.String("00000000-0000-0000-0000-0000000000"),
/// 				Sslmode:           pulumi.String("verify-full"),
/// 			},
/// 			OriginConnectionLimit: pulumi.Int(60),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_hyperdriveconfig" "example_hyperdrive_config" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "example-hyperdrive"
///   origin = {
///     database = "postgres"
///     host     = "database.example.com"
///     password = "password"
///     port     = 5432
///     scheme   = "postgres"
///     user     = "postgres"
///   }
///   caching = {
///     disabled = true
///   }
///   mtls = {
///     ca_certificate_id   = "00000000-0000-0000-0000-0000000000"
///     mtls_certificate_id = "00000000-0000-0000-0000-0000000000"
///     sslmode             = "verify-full"
///   }
///   origin_connection_limit = 60
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.HyperdriveConfig;
/// import com.pulumi.cloudflare.HyperdriveConfigArgs;
/// import com.pulumi.cloudflare.inputs.HyperdriveConfigOriginArgs;
/// import com.pulumi.cloudflare.inputs.HyperdriveConfigCachingArgs;
/// import com.pulumi.cloudflare.inputs.HyperdriveConfigMtlsArgs;
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
///         var exampleHyperdriveConfig = new HyperdriveConfig("exampleHyperdriveConfig", HyperdriveConfigArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("example-hyperdrive")
///             .origin(HyperdriveConfigOriginArgs.builder()
///                 .database("postgres")
///                 .host("database.example.com")
///                 .password("password")
///                 .port(5432)
///                 .scheme("postgres")
///                 .user("postgres")
///                 .build())
///             .caching(HyperdriveConfigCachingArgs.builder()
///                 .disabled(true)
///                 .build())
///             .mtls(HyperdriveConfigMtlsArgs.builder()
///                 .caCertificateId("00000000-0000-0000-0000-0000000000")
///                 .mtlsCertificateId("00000000-0000-0000-0000-0000000000")
///                 .sslmode("verify-full")
///                 .build())
///             .originConnectionLimit(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleHyperdriveConfig:
///     type: cloudflare:HyperdriveConfig
///     name: example_hyperdrive_config
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: example-hyperdrive
///       origin:
///         database: postgres
///         host: database.example.com
///         password: password
///         port: 5432
///         scheme: postgres
///         user: postgres
///       caching:
///         disabled: true
///       mtls:
///         caCertificateId: 00000000-0000-0000-0000-0000000000
///         mtlsCertificateId: 00000000-0000-0000-0000-0000000000
///         sslmode: verify-full
///       originConnectionLimit: 60
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/hyperdriveConfig:HyperdriveConfig example '<account_id>/<hyperdrive_id>'
/// ```
class HyperdriveConfig extends pulumi.CustomResource {
  /// Define configurations using a unique string identifier.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<HyperdriveConfigCaching?> caching;
  /// Defines the creation time of the Hyperdrive configuration.
  late final pulumi.Output<String> createdOn;
  /// Defines the last modified time of the Hyperdrive configuration.
  late final pulumi.Output<String> modifiedOn;
  /// mTLS configuration for the origin connection. Cannot be used with VPC Service origins; TLS must be managed on the VPC Service.
  late final pulumi.Output<HyperdriveConfigMtls?> mtls;
  /// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
  late final pulumi.Output<String> name;
  late final pulumi.Output<HyperdriveConfigOrigin> origin;
  /// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
  late final pulumi.Output<int?> originConnectionLimit;
  /// Defines the last time the Hyperdrive connection pool was explicitly restarted via the restart endpoint. Omitted if the pool has never been explicitly restarted.
  late final pulumi.Output<String> restartedOn;

  /// Creates a new [HyperdriveConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperdriveConfig]. {@macro pulumi_index_hyperdrive_config_hyperdrive_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperdriveConfig(
    String name, {
    HyperdriveConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/hyperdriveConfig:HyperdriveConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    caching = registerOutput<HyperdriveConfigCaching?>('caching', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtls = registerOutput<HyperdriveConfigMtls?>('mtls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    origin = registerOutput<HyperdriveConfigOrigin>('origin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigOrigin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originConnectionLimit = registerOutput<int?>('originConnectionLimit');
    restartedOn = registerOutput<String>('restartedOn');
  }

  /// Gets an existing [HyperdriveConfig] resource's state with the given [name] and [id].
  static HyperdriveConfig get(
    String name,
    pulumi.Input<String> id, {
    HyperdriveConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HyperdriveConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HyperdriveConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/hyperdriveConfig:HyperdriveConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    caching = registerOutput<HyperdriveConfigCaching?>('caching', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtls = registerOutput<HyperdriveConfigMtls?>('mtls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    origin = registerOutput<HyperdriveConfigOrigin>('origin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigOrigin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originConnectionLimit = registerOutput<int?>('originConnectionLimit');
    restartedOn = registerOutput<String>('restartedOn');
  }

  /// Creates a typed reference to an existing [HyperdriveConfig] resource.
  HyperdriveConfig.reference(String urn)
    : super(
        'cloudflare:index/hyperdriveConfig:HyperdriveConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    caching = registerOutput<HyperdriveConfigCaching?>('caching', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigCaching.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    mtls = registerOutput<HyperdriveConfigMtls?>('mtls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigMtls.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    origin = registerOutput<HyperdriveConfigOrigin>('origin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HyperdriveConfigOrigin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originConnectionLimit = registerOutput<int?>('originConnectionLimit');
    restartedOn = registerOutput<String>('restartedOn');
  }
}
