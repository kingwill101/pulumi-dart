import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mutual_tls_certificate_args.dart';
import 'access_mutual_tls_certificate_state.dart';

/// Accepted Permissions
///
/// - `Access: Mutual TLS Certificates Read`
/// - `Access: Mutual TLS Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessMtlsCertificate = new cloudflare.ZeroTrustAccessMtlsCertificate("example_zero_trust_access_mtls_certificate", {
///     certificate: `  -----BEGIN CERTIFICATE-----
///   MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10
///   DrUtmu/B
///   -----END CERTIFICATE-----
/// `,
///     name: "Allow devs",
///     zoneId: "zone_id",
///     associatedHostnames: ["admin.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_mtls_certificate = cloudflare.ZeroTrustAccessMtlsCertificate("example_zero_trust_access_mtls_certificate",
///     certificate="""  -----BEGIN CERTIFICATE-----
///   MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10
///   DrUtmu/B
///   -----END CERTIFICATE-----
/// """,
///     name="Allow devs",
///     zone_id="zone_id",
///     associated_hostnames=["admin.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessMtlsCertificate = new Cloudflare.ZeroTrustAccessMtlsCertificate("example_zero_trust_access_mtls_certificate", new()
///     {
///         Certificate = @"  -----BEGIN CERTIFICATE-----
///   MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10
///   DrUtmu/B
///   -----END CERTIFICATE-----
/// ",
///         Name = "Allow devs",
///         ZoneId = "zone_id",
///         AssociatedHostnames = new[]
///         {
///             "admin.example.com",
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
/// 		_, err := cloudflare.NewZeroTrustAccessMtlsCertificate(ctx, "example_zero_trust_access_mtls_certificate", &cloudflare.ZeroTrustAccessMtlsCertificateArgs{
/// 			Certificate: pulumi.String("  -----BEGIN CERTIFICATE-----\n  MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10\n  DrUtmu/B\n  -----END CERTIFICATE-----\n"),
/// 			Name:        pulumi.String("Allow devs"),
/// 			ZoneId:      pulumi.String("zone_id"),
/// 			AssociatedHostnames: pulumi.StringArray{
/// 				pulumi.String("admin.example.com"),
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
/// resource "cloudflare_zerotrustaccessmtlscertificate" "example_zero_trust_access_mtls_certificate" {
///   certificate          = "  -----BEGIN CERTIFICATE-----\n  MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10\n  DrUtmu/B\n  -----END CERTIFICATE-----\n"
///   name                 = "Allow devs"
///   zone_id              = "zone_id"
///   associated_hostnames = ["admin.example.com"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessMtlsCertificate;
/// import com.pulumi.cloudflare.ZeroTrustAccessMtlsCertificateArgs;
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
///         var exampleZeroTrustAccessMtlsCertificate = new ZeroTrustAccessMtlsCertificate("exampleZeroTrustAccessMtlsCertificate", ZeroTrustAccessMtlsCertificateArgs.builder()
///             .certificate("""
///   -----BEGIN CERTIFICATE-----
///   MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10
///   DrUtmu/B
///   -----END CERTIFICATE-----
///             """)
///             .name("Allow devs")
///             .zoneId("zone_id")
///             .associatedHostnames("admin.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessMtlsCertificate:
///     type: cloudflare:ZeroTrustAccessMtlsCertificate
///     name: example_zero_trust_access_mtls_certificate
///     properties:
///       certificate: |2
///           -----BEGIN CERTIFICATE-----
///           MIIGAjCCA+qgAwIBAgIJAI7kymlF7CWT...N4RI7KKB7nikiuUf8vhULKy5IX10
///           DrUtmu/B
///           -----END CERTIFICATE-----
///       name: Allow devs
///       zoneId: zone_id
///       associatedHostnames:
///         - admin.example.com
/// ```
///
///
/// ## Import
///
/// Note: The "certificate" field cannot be imported by this module and must be manually added to state.
///
///
/// ```sh
/// $ pulumi import cloudflare:index/accessMutualTlsCertificate:AccessMutualTlsCertificate example '<{accounts|zones}/{account_id|zone_id}>/<certificate_id>'
/// ```
class AccessMutualTlsCertificate extends pulumi.CustomResource {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  late final pulumi.Output<String?> accountId;
  /// The hostnames of the applications that will use this certificate.
  late final pulumi.Output<List<String>> associatedHostnames;
  /// The certificate content.
  late final pulumi.Output<String> certificate;
  late final pulumi.Output<String> expiresOn;
  /// The MD5 fingerprint of the certificate.
  late final pulumi.Output<String> fingerprint;
  /// The name of the certificate.
  late final pulumi.Output<String> name;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [AccessMutualTlsCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessMutualTlsCertificate]. {@macro pulumi_index_access_mutual_tls_certificate_access_mutual_tls_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessMutualTlsCertificate(
    String name, {
    AccessMutualTlsCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessMutualTlsCertificate:AccessMutualTlsCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String?>('accountId');
    associatedHostnames = registerOutput<List<String>>('associatedHostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [AccessMutualTlsCertificate] resource's state with the given [name] and [id].
  static AccessMutualTlsCertificate get(
    String name,
    pulumi.Input<String> id, {
    AccessMutualTlsCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessMutualTlsCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessMutualTlsCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessMutualTlsCertificate:AccessMutualTlsCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    associatedHostnames = registerOutput<List<String>>('associatedHostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Creates a typed reference to an existing [AccessMutualTlsCertificate] resource.
  AccessMutualTlsCertificate.reference(String urn)
    : super(
        'cloudflare:index/accessMutualTlsCertificate:AccessMutualTlsCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    associatedHostnames = registerOutput<List<String>>('associatedHostnames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificate = registerOutput<String>('certificate');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    zoneId = registerOutput<String?>('zoneId');
  }
}
