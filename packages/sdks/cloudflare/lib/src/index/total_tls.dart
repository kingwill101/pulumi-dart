import 'package:pulumi/pulumi.dart' as pulumi;
import 'total_tls_args.dart';
import 'total_tls_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleTotalTls = new cloudflare.TotalTls("example_total_tls", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
///     certificateAuthority: "google",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_total_tls = cloudflare.TotalTls("example_total_tls",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True,
///     certificate_authority="google")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTotalTls = new Cloudflare.TotalTls("example_total_tls", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
///         CertificateAuthority = "google",
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
/// 		_, err := cloudflare.NewTotalTls(ctx, "example_total_tls", &cloudflare.TotalTlsArgs{
/// 			ZoneId:               pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled:              pulumi.Bool(true),
/// 			CertificateAuthority: pulumi.String("google"),
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
/// resource "cloudflare_totaltls" "example_total_tls" {
///   zone_id               = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled               = true
///   certificate_authority = "google"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.TotalTls;
/// import com.pulumi.cloudflare.TotalTlsArgs;
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
///         var exampleTotalTls = new TotalTls("exampleTotalTls", TotalTlsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .certificateAuthority("google")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTotalTls:
///     type: cloudflare:TotalTls
///     name: example_total_tls
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
///       certificateAuthority: google
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/totalTls:TotalTls example '<zone_id>'
/// ```
class TotalTls extends pulumi.CustomResource {
  /// The Certificate Authority that Total TLS certificates will be issued through.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  late final pulumi.Output<String?> certificateAuthority;
  /// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
  late final pulumi.Output<bool> enabled;
  /// The validity period in days for the certificates ordered via Total TLS.
  /// Available values: 90.
  late final pulumi.Output<int> validityPeriod;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TotalTls].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TotalTls]. {@macro pulumi_index_total_tls_total_tls_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TotalTls(
    String name, {
    TotalTlsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/totalTls:TotalTls',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    certificateAuthority = registerOutput<String?>('certificateAuthority');
    enabled = registerOutput<bool>('enabled');
    validityPeriod = registerOutput<int>('validityPeriod');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [TotalTls] resource's state with the given [name] and [id].
  static TotalTls get(
    String name,
    pulumi.Input<String> id, {
    TotalTlsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TotalTls._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TotalTls._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/totalTls:TotalTls',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateAuthority = registerOutput<String?>('certificateAuthority');
    enabled = registerOutput<bool>('enabled');
    validityPeriod = registerOutput<int>('validityPeriod');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [TotalTls] resource.
  TotalTls.reference(String urn)
    : super(
        'cloudflare:index/totalTls:TotalTls',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateAuthority = registerOutput<String?>('certificateAuthority');
    enabled = registerOutput<bool>('enabled');
    validityPeriod = registerOutput<int>('validityPeriod');
    zoneId = registerOutput<String>('zoneId');
  }
}
