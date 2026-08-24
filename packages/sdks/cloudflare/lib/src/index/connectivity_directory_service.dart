import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_directory_service_args.dart';
import 'connectivity_directory_service_host.dart';
import 'connectivity_directory_service_state.dart';
import 'connectivity_directory_service_tls_settings.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleConnectivityDirectoryService = new cloudflare.ConnectivityDirectoryService("example_connectivity_directory_service", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     host: {
///         ipv4: "10.0.0.1",
///         network: {
///             tunnelId: "0191dce4-9ab4-7fce-b660-8e5dec5172da",
///         },
///     },
///     name: "web-app",
///     type: "http",
///     httpPort: 8080,
///     httpsPort: 8443,
///     tlsSettings: {
///         certVerificationMode: "verify_full",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_connectivity_directory_service = cloudflare.ConnectivityDirectoryService("example_connectivity_directory_service",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     host={
///         "ipv4": "10.0.0.1",
///         "network": {
///             "tunnel_id": "0191dce4-9ab4-7fce-b660-8e5dec5172da",
///         },
///     },
///     name="web-app",
///     type="http",
///     http_port=8080,
///     https_port=8443,
///     tls_settings={
///         "cert_verification_mode": "verify_full",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleConnectivityDirectoryService = new Cloudflare.ConnectivityDirectoryService("example_connectivity_directory_service", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Host = new Cloudflare.Inputs.ConnectivityDirectoryServiceHostArgs
///         {
///             Ipv4 = "10.0.0.1",
///             Network = new Cloudflare.Inputs.ConnectivityDirectoryServiceHostNetworkArgs
///             {
///                 TunnelId = "0191dce4-9ab4-7fce-b660-8e5dec5172da",
///             },
///         },
///         Name = "web-app",
///         Type = "http",
///         HttpPort = 8080,
///         HttpsPort = 8443,
///         TlsSettings = new Cloudflare.Inputs.ConnectivityDirectoryServiceTlsSettingsArgs
///         {
///             CertVerificationMode = "verify_full",
///         },
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
/// 		_, err := cloudflare.NewConnectivityDirectoryService(ctx, "example_connectivity_directory_service", &cloudflare.ConnectivityDirectoryServiceArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Host: &cloudflare.ConnectivityDirectoryServiceHostArgs{
/// 				Ipv4: pulumi.String("10.0.0.1"),
/// 				Network: &cloudflare.ConnectivityDirectoryServiceHostNetworkArgs{
/// 					TunnelId: pulumi.String("0191dce4-9ab4-7fce-b660-8e5dec5172da"),
/// 				},
/// 			},
/// 			Name:      pulumi.String("web-app"),
/// 			Type:      pulumi.String("http"),
/// 			HttpPort:  pulumi.Int(8080),
/// 			HttpsPort: pulumi.Int(8443),
/// 			TlsSettings: &cloudflare.ConnectivityDirectoryServiceTlsSettingsArgs{
/// 				CertVerificationMode: pulumi.String("verify_full"),
/// 			},
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
/// resource "cloudflare_connectivitydirectoryservice" "example_connectivity_directory_service" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   host = {
///     ipv4 = "10.0.0.1"
///     network = {
///       tunnel_id = "0191dce4-9ab4-7fce-b660-8e5dec5172da"
///     }
///   }
///   name       = "web-app"
///   type       = "http"
///   http_port  = 8080
///   https_port = 8443
///   tls_settings = {
///     cert_verification_mode = "verify_full"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ConnectivityDirectoryService;
/// import com.pulumi.cloudflare.ConnectivityDirectoryServiceArgs;
/// import com.pulumi.cloudflare.inputs.ConnectivityDirectoryServiceHostArgs;
/// import com.pulumi.cloudflare.inputs.ConnectivityDirectoryServiceHostNetworkArgs;
/// import com.pulumi.cloudflare.inputs.ConnectivityDirectoryServiceTlsSettingsArgs;
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
///         var exampleConnectivityDirectoryService = new ConnectivityDirectoryService("exampleConnectivityDirectoryService", ConnectivityDirectoryServiceArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .host(ConnectivityDirectoryServiceHostArgs.builder()
///                 .ipv4("10.0.0.1")
///                 .network(ConnectivityDirectoryServiceHostNetworkArgs.builder()
///                     .tunnelId("0191dce4-9ab4-7fce-b660-8e5dec5172da")
///                     .build())
///                 .build())
///             .name("web-app")
///             .type("http")
///             .httpPort(8080)
///             .httpsPort(8443)
///             .tlsSettings(ConnectivityDirectoryServiceTlsSettingsArgs.builder()
///                 .certVerificationMode("verify_full")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleConnectivityDirectoryService:
///     type: cloudflare:ConnectivityDirectoryService
///     name: example_connectivity_directory_service
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       host:
///         ipv4: 10.0.0.1
///         network:
///           tunnelId: 0191dce4-9ab4-7fce-b660-8e5dec5172da
///       name: web-app
///       type: http
///       httpPort: 8080
///       httpsPort: 8443
///       tlsSettings:
///         certVerificationMode: verify_full
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/connectivityDirectoryService:ConnectivityDirectoryService example '<account_id>/<service_id>'
/// ```
class ConnectivityDirectoryService extends pulumi.CustomResource {
  /// Account identifier
  late final pulumi.Output<String> accountId;
  /// Available values: "postgresql", "mysql".
  late final pulumi.Output<String?> appProtocol;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<ConnectivityDirectoryServiceHost> host;
  late final pulumi.Output<int?> httpPort;
  late final pulumi.Output<int?> httpsPort;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> serviceId;
  late final pulumi.Output<int?> tcpPort;
  /// TLS settings for a connectivity service.
  late final pulumi.Output<ConnectivityDirectoryServiceTlsSettings?> tlsSettings;
  /// Available values: "tcp", "http".
  late final pulumi.Output<String> type;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ConnectivityDirectoryService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectivityDirectoryService]. {@macro pulumi_index_connectivity_directory_service_connectivity_directory_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectivityDirectoryService(
    String name, {
    ConnectivityDirectoryServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/connectivityDirectoryService:ConnectivityDirectoryService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    appProtocol = registerOutput<String?>('appProtocol');
    createdAt = registerOutput<String>('createdAt');
    host = registerOutput<ConnectivityDirectoryServiceHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    serviceId = registerOutput<String>('serviceId');
    tcpPort = registerOutput<int?>('tcpPort');
    tlsSettings = registerOutput<ConnectivityDirectoryServiceTlsSettings?>('tlsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ConnectivityDirectoryService] resource's state with the given [name] and [id].
  static ConnectivityDirectoryService get(
    String name,
    pulumi.Input<String> id, {
    ConnectivityDirectoryServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectivityDirectoryService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectivityDirectoryService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/connectivityDirectoryService:ConnectivityDirectoryService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    appProtocol = registerOutput<String?>('appProtocol');
    createdAt = registerOutput<String>('createdAt');
    host = registerOutput<ConnectivityDirectoryServiceHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    serviceId = registerOutput<String>('serviceId');
    tcpPort = registerOutput<int?>('tcpPort');
    tlsSettings = registerOutput<ConnectivityDirectoryServiceTlsSettings?>('tlsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [ConnectivityDirectoryService] resource.
  ConnectivityDirectoryService.reference(String urn)
    : super(
        'cloudflare:index/connectivityDirectoryService:ConnectivityDirectoryService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    appProtocol = registerOutput<String?>('appProtocol');
    createdAt = registerOutput<String>('createdAt');
    host = registerOutput<ConnectivityDirectoryServiceHost>('host', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceHost.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpPort = registerOutput<int?>('httpPort');
    httpsPort = registerOutput<int?>('httpsPort');
    this.name = registerOutput<String>('name');
    serviceId = registerOutput<String>('serviceId');
    tcpPort = registerOutput<int?>('tcpPort');
    tlsSettings = registerOutput<ConnectivityDirectoryServiceTlsSettings?>('tlsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityDirectoryServiceTlsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
