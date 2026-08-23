import 'package:pulumi/pulumi.dart' as pulumi;
import 'locally_signed_cert_args.dart';
import 'locally_signed_cert_state.dart';

/// Creates a TLS certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format using a Certificate Signing Request (CSR) and signs it with a provided (local) Certificate Authority (CA).
///
/// &gt; **Note** Locally-signed certificates are generally only trusted by client software when
/// setup to use the provided CA. They are normally used in development environments
/// or when deployed internally to an organization.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const example = new tls.LocallySignedCert("example", {
///     certRequestPem: std.file({
///         input: "cert_request.pem",
///     }).then(invoke => invoke.result),
///     caPrivateKeyPem: std.file({
///         input: "ca_private_key.pem",
///     }).then(invoke => invoke.result),
///     caCertPem: std.file({
///         input: "ca_cert.pem",
///     }).then(invoke => invoke.result),
///     validityPeriodHours: 12,
///     allowedUses: [
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// example = tls.LocallySignedCert("example",
///     cert_request_pem=std.file(input="cert_request.pem").result,
///     ca_private_key_pem=std.file(input="ca_private_key.pem").result,
///     ca_cert_pem=std.file(input="ca_cert.pem").result,
///     validity_period_hours=12,
///     allowed_uses=[
///         "key_encipherment",
///         "digital_signature",
///         "server_auth",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Std = Pulumi.Std;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Tls.LocallySignedCert("example", new()
///     {
///         CertRequestPem = Std.File.Invoke(new()
///         {
///             Input = "cert_request.pem",
///         }).Apply(invoke => invoke.Result),
///         CaPrivateKeyPem = Std.File.Invoke(new()
///         {
///             Input = "ca_private_key.pem",
///         }).Apply(invoke => invoke.Result),
///         CaCertPem = Std.File.Invoke(new()
///         {
///             Input = "ca_cert.pem",
///         }).Apply(invoke => invoke.Result),
///         ValidityPeriodHours = 12,
///         AllowedUses = new[]
///         {
///             "key_encipherment",
///             "digital_signature",
///             "server_auth",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "cert_request.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "ca_private_key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tls.NewLocallySignedCert(ctx, "example", &tls.LocallySignedCertArgs{
/// 			CertRequestPem:      pulumi.String(invokeFile.Result),
/// 			CaPrivateKeyPem:     pulumi.String(invokeFile1.Result),
/// 			CaCertPem:           pulumi.String(invokeFile2.Result),
/// 			ValidityPeriodHours: pulumi.Int(12),
/// 			AllowedUses: pulumi.StringArray{
/// 				pulumi.String("key_encipherment"),
/// 				pulumi.String("digital_signature"),
/// 				pulumi.String("server_auth"),
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
///     std = {
///       source = "pulumi/std"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// resource "tls_locallysignedcert" "example" {
///   cert_request_pem      = file("cert_request.pem")
///   ca_private_key_pem    = file("ca_private_key.pem")
///   ca_cert_pem           = file("ca_cert.pem")
///   validity_period_hours = 12
///   allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.LocallySignedCert;
/// import com.pulumi.tls.LocallySignedCertArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new LocallySignedCert("example", LocallySignedCertArgs.builder()
///             .certRequestPem(StdFunctions.file(FileArgs.builder()
///                 .input("cert_request.pem")
///                 .build()).result())
///             .caPrivateKeyPem(StdFunctions.file(FileArgs.builder()
///                 .input("ca_private_key.pem")
///                 .build()).result())
///             .caCertPem(StdFunctions.file(FileArgs.builder()
///                 .input("ca_cert.pem")
///                 .build()).result())
///             .validityPeriodHours(12)
///             .allowedUses(
///                 "key_encipherment",
///                 "digital_signature",
///                 "server_auth")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: tls:LocallySignedCert
///     properties:
///       certRequestPem:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: cert_request.pem
///           return: result
///       caPrivateKeyPem:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ca_private_key.pem
///           return: result
///       caCertPem:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ca_cert.pem
///           return: result
///       validityPeriodHours: 12
///       allowedUses:
///         - key_encipherment
///         - digital_signature
///         - server_auth
/// ```
///
///
///
/// ## Automatic Renewal
///
/// This resource considers its instances to have been deleted after either their validity
/// periods ends (i.e. beyond the `validityPeriodHours`)
/// or the early renewal period is reached (i.e. within the `earlyRenewalHours`):
/// when this happens, the `readyForRenewal` attribute will be `true`.
/// At this time, applying the Terraform configuration will cause a new certificate to be
/// generated for the instance.
///
/// Therefore in a development environment with frequent deployments it may be convenient
/// to set a relatively-short expiration time and use early renewal to automatically provision
/// a new certificate when the current one is about to expire.
///
/// The creation of a new certificate may of course cause dependent resources to be updated
/// or replaced, depending on the lifecycle rules applying to those resources.
class LocallySignedCert extends pulumi.CustomResource {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  late final pulumi.Output<List<String>> allowedUses;
  /// Certificate data of the Certificate Authority (CA) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> caCertPem;
  /// Name of the algorithm used when generating the private key provided in `caPrivateKeyPem`.
  late final pulumi.Output<String> caKeyAlgorithm;
  /// Private key of the Certificate Authority (CA) used to sign the certificate, in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> caPrivateKeyPem;
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> certPem;
  /// Certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
  late final pulumi.Output<String> certRequestPem;
  /// The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  late final pulumi.Output<int> earlyRenewalHours;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  late final pulumi.Output<bool> isCaCertificate;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  late final pulumi.Output<int> maxPathLength;
  /// Is the certificate either expired (i.e. beyond the `validityPeriodHours`) or ready for an early renewal (i.e. within the `earlyRenewalHours`)?
  late final pulumi.Output<bool> readyForRenewal;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setSubjectKeyId;
  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityEndTime;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  late final pulumi.Output<int> validityPeriodHours;
  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityStartTime;

  /// Creates a new [LocallySignedCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocallySignedCert]. {@macro pulumi_index_locally_signed_cert_locally_signed_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocallySignedCert(
    String name, {
    LocallySignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/locallySignedCert:LocallySignedCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedUses = registerOutput<List<String>>('allowedUses');
    caCertPem = registerOutput<String>('caCertPem');
    caKeyAlgorithm = registerOutput<String>('caKeyAlgorithm');
    caPrivateKeyPem = registerOutput<String>('caPrivateKeyPem');
    certPem = registerOutput<String>('certPem');
    certRequestPem = registerOutput<String>('certRequestPem');
    earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    isCaCertificate = registerOutput<bool>('isCaCertificate');
    maxPathLength = registerOutput<int>('maxPathLength');
    readyForRenewal = registerOutput<bool>('readyForRenewal');
    setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    validityEndTime = registerOutput<String>('validityEndTime');
    validityPeriodHours = registerOutput<int>('validityPeriodHours');
    validityStartTime = registerOutput<String>('validityStartTime');
  }

  /// Gets an existing [LocallySignedCert] resource's state with the given [name] and [id].
  static LocallySignedCert get(
    String name,
    pulumi.Input<String> id, {
    LocallySignedCertState? state,
  }) {
    return LocallySignedCert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocallySignedCert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/locallySignedCert:LocallySignedCert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedUses = registerOutput<List<String>>('allowedUses');
    caCertPem = registerOutput<String>('caCertPem');
    caKeyAlgorithm = registerOutput<String>('caKeyAlgorithm');
    caPrivateKeyPem = registerOutput<String>('caPrivateKeyPem');
    certPem = registerOutput<String>('certPem');
    certRequestPem = registerOutput<String>('certRequestPem');
    earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    isCaCertificate = registerOutput<bool>('isCaCertificate');
    maxPathLength = registerOutput<int>('maxPathLength');
    readyForRenewal = registerOutput<bool>('readyForRenewal');
    setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    validityEndTime = registerOutput<String>('validityEndTime');
    validityPeriodHours = registerOutput<int>('validityPeriodHours');
    validityStartTime = registerOutput<String>('validityStartTime');
  }
}
