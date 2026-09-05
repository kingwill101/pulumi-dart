import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_args.dart';
import 'client_certificate_certificate_authority.dart';
import 'client_certificate_state.dart';

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
/// const exampleClientCertificate = new cloudflare.ClientCertificate("example_client_certificate", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     csr: `  -----BEGIN CERTIFICATE REQUEST-----
///   MIICY....
///   -----END CERTIFICATE REQUEST-----
/// `,
///     validityDays: 3650,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_client_certificate = cloudflare.ClientCertificate("example_client_certificate",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     csr="""  -----BEGIN CERTIFICATE REQUEST-----
///   MIICY....
///   -----END CERTIFICATE REQUEST-----
/// """,
///     validity_days=3650)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleClientCertificate = new Cloudflare.ClientCertificate("example_client_certificate", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Csr = @"  -----BEGIN CERTIFICATE REQUEST-----
///   MIICY....
///   -----END CERTIFICATE REQUEST-----
/// ",
///         ValidityDays = 3650,
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
/// 		_, err := cloudflare.NewClientCertificate(ctx, "example_client_certificate", &cloudflare.ClientCertificateArgs{
/// 			ZoneId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Csr:          pulumi.String("  -----BEGIN CERTIFICATE REQUEST-----\n  MIICY....\n  -----END CERTIFICATE REQUEST-----\n"),
/// 			ValidityDays: pulumi.Int(3650),
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
/// resource "cloudflare_clientcertificate" "example_client_certificate" {
///   zone_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   csr           = "  -----BEGIN CERTIFICATE REQUEST-----\n  MIICY....\n  -----END CERTIFICATE REQUEST-----\n"
///   validity_days = 3650
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ClientCertificate;
/// import com.pulumi.cloudflare.ClientCertificateArgs;
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
///         var exampleClientCertificate = new ClientCertificate("exampleClientCertificate", ClientCertificateArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .csr("""
///   -----BEGIN CERTIFICATE REQUEST-----
///   MIICY....
///   -----END CERTIFICATE REQUEST-----
///             """)
///             .validityDays(3650)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleClientCertificate:
///     type: cloudflare:ClientCertificate
///     name: example_client_certificate
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       csr: |2
///           -----BEGIN CERTIFICATE REQUEST-----
///           MIICY....
///           -----END CERTIFICATE REQUEST-----
///       validityDays: 3650
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/clientCertificate:ClientCertificate example '<zone_id>/<client_certificate_id>'
/// ```
class ClientCertificate extends pulumi.CustomResource {
  /// The Client Certificate PEM.
  late final pulumi.Output<String> certificate;
  /// Certificate Authority used to issue the Client Certificate.
  late final pulumi.Output<ClientCertificateCertificateAuthority> certificateAuthority;
  /// Common Name of the Client Certificate.
  late final pulumi.Output<String> commonName;
  /// Country, provided by the CSR.
  late final pulumi.Output<String> country;
  /// The Certificate Signing Request (CSR). Must be newline-encoded.
  late final pulumi.Output<String> csr;
  /// Date that the Client Certificate expires.
  late final pulumi.Output<String> expiresOn;
  /// Unique identifier of the Client Certificate.
  late final pulumi.Output<String> fingerprintSha256;
  /// Date that the Client Certificate was issued by the Certificate Authority.
  late final pulumi.Output<String> issuedOn;
  /// Location, provided by the CSR.
  late final pulumi.Output<String> location;
  /// Organization, provided by the CSR.
  late final pulumi.Output<String> organization;
  /// Organizational Unit, provided by the CSR.
  late final pulumi.Output<String> organizationalUnit;
  late final pulumi.Output<bool?> reactivate;
  /// The serial number on the created Client Certificate.
  late final pulumi.Output<String> serialNumber;
  /// The type of hash used for the Client Certificate..
  late final pulumi.Output<String> signature;
  /// Subject Key Identifier.
  late final pulumi.Output<String> ski;
  /// State, provided by the CSR.
  late final pulumi.Output<String> state;
  /// Client Certificates may be active or revoked, and the pending*reactivation or pending*revocation represent in-progress asynchronous transitions.
  /// Available values: "active", "pending*reactivation", "pending*revocation", "revoked".
  late final pulumi.Output<String> status;
  /// The number of days the Client Certificate will be valid after the issuedOn date.
  late final pulumi.Output<int> validityDays;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ClientCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientCertificate]. {@macro pulumi_index_client_certificate_client_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientCertificate(
    String name, {
    ClientCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/clientCertificate:ClientCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthority = registerOutput<ClientCertificateCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientCertificateCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    csr = registerOutput<String>('csr');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprintSha256 = registerOutput<String>('fingerprintSha256');
    issuedOn = registerOutput<String>('issuedOn');
    location = registerOutput<String>('location');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String>('organizationalUnit');
    reactivate = registerOutput<bool?>('reactivate');
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    ski = registerOutput<String>('ski');
    state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ClientCertificate] resource's state with the given [name] and [id].
  static ClientCertificate get(
    String name,
    pulumi.Input<String> id, {
    ClientCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClientCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClientCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/clientCertificate:ClientCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthority = registerOutput<ClientCertificateCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientCertificateCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    csr = registerOutput<String>('csr');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprintSha256 = registerOutput<String>('fingerprintSha256');
    issuedOn = registerOutput<String>('issuedOn');
    location = registerOutput<String>('location');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String>('organizationalUnit');
    reactivate = registerOutput<bool?>('reactivate');
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    ski = registerOutput<String>('ski');
    this.state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ClientCertificate] resource.
  ClientCertificate.reference(String urn)
    : super(
        'cloudflare:index/clientCertificate:ClientCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate');
    certificateAuthority = registerOutput<ClientCertificateCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClientCertificateCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    commonName = registerOutput<String>('commonName');
    country = registerOutput<String>('country');
    csr = registerOutput<String>('csr');
    expiresOn = registerOutput<String>('expiresOn');
    fingerprintSha256 = registerOutput<String>('fingerprintSha256');
    issuedOn = registerOutput<String>('issuedOn');
    location = registerOutput<String>('location');
    organization = registerOutput<String>('organization');
    organizationalUnit = registerOutput<String>('organizationalUnit');
    reactivate = registerOutput<bool?>('reactivate');
    serialNumber = registerOutput<String>('serialNumber');
    signature = registerOutput<String>('signature');
    ski = registerOutput<String>('ski');
    state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    validityDays = registerOutput<int>('validityDays');
    zoneId = registerOutput<String>('zoneId');
  }
}
