import 'package:pulumi/pulumi.dart' as pulumi;
import 'self_signed_cert_args.dart';
import 'self_signed_cert_state.dart';
import 'self_signed_cert_subject.dart';

/// Creates a **self-signed** TLS certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
///
/// &gt; **Warning** Self-signed certificates are usually used only in development environments
/// or applications deployed internally to an organization.
/// Certificates of this type are generally not trusted by client software such
/// as web browsers. Therefore clients are likely to generate trust warnings when
/// connecting to a server that has a self-signed certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const example = new tls.SelfSignedCert("example", {
///     privateKeyPem: std.file({
///         input: "private_key.pem",
///     }).then(invoke => invoke.result),
///     subject: {
///         commonName: "example.com",
///         organization: "ACME Examples, Inc",
///     },
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
/// example = tls.SelfSignedCert("example",
///     private_key_pem=std.file(input="private_key.pem").result,
///     subject={
///         "common_name": "example.com",
///         "organization": "ACME Examples, Inc",
///     },
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
///     var example = new Tls.SelfSignedCert("example", new()
///     {
///         PrivateKeyPem = Std.File.Invoke(new()
///         {
///             Input = "private_key.pem",
///         }).Apply(invoke => invoke.Result),
///         Subject = new Tls.Inputs.SelfSignedCertSubjectArgs
///         {
///             CommonName = "example.com",
///             Organization = "ACME Examples, Inc",
///         },
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
/// 			Input: "private_key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tls.NewSelfSignedCert(ctx, "example", &tls.SelfSignedCertArgs{
/// 			PrivateKeyPem: pulumi.String(invokeFile.Result),
/// 			Subject: &tls.SelfSignedCertSubjectArgs{
/// 				CommonName:   pulumi.String("example.com"),
/// 				Organization: pulumi.String("ACME Examples, Inc"),
/// 			},
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
/// resource "tls_selfsignedcert" "example" {
///   private_key_pem = file("private_key.pem")
///   subject = {
///     common_name  = "example.com"
///     organization = "ACME Examples, Inc"
///   }
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
/// import com.pulumi.tls.SelfSignedCert;
/// import com.pulumi.tls.SelfSignedCertArgs;
/// import com.pulumi.tls.inputs.SelfSignedCertSubjectArgs;
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
///         var example = new SelfSignedCert("example", SelfSignedCertArgs.builder()
///             .privateKeyPem(StdFunctions.file(FileArgs.builder()
///                 .input("private_key.pem")
///                 .build()).result())
///             .subject(SelfSignedCertSubjectArgs.builder()
///                 .commonName("example.com")
///                 .organization("ACME Examples, Inc")
///                 .build())
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
///     type: tls:SelfSignedCert
///     properties:
///       privateKeyPem:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: private_key.pem
///           return: result
///       subject:
///         commonName: example.com
///         organization: ACME Examples, Inc
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
class SelfSignedCert extends pulumi.CustomResource {
  /// List of key usages allowed for the issued certificate. Values are defined in [RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280) and combine flags defined by both [Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.3) and [Extended Key Usages](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.12). Accepted values: `anyExtended`, `certSigning`, `clientAuth`, `codeSigning`, `contentCommitment`, `crlSigning`, `dataEncipherment`, `decipherOnly`, `digitalSignature`, `emailProtection`, `encipherOnly`, `ipsecEndSystem`, `ipsecTunnel`, `ipsecUser`, `keyAgreement`, `keyEncipherment`, `microsoftCommercialCodeSigning`, `microsoftKernelCodeSigning`, `microsoftServerGatedCrypto`, `netscapeServerGatedCrypto`, `ocspSigning`, `serverAuth`, `timestamping`.
  late final pulumi.Output<List<String>> allowedUses;
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> certPem;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> dnsNames;
  /// The resource will consider the certificate to have expired the given number of hours before its actual expiry time. This can be useful to deploy an updated certificate in advance of the expiration of the current certificate. However, the old certificate remains valid until its true expiration time, since this resource does not (and cannot) support certificate revocation. Also, this advance update can only be performed should the Terraform configuration be applied during the early renewal period. (default: `0`)
  late final pulumi.Output<int> earlyRenewalHours;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> ipAddresses;
  /// Is the generated certificate representing a Certificate Authority (CA) (default: `false`).
  late final pulumi.Output<bool> isCaCertificate;
  /// Name of the algorithm used when generating the private key provided in `privateKeyPem`.
  late final pulumi.Output<String> keyAlgorithm;
  /// Maximum number of intermediate certificates that may follow this certificate in a valid certification path. If `isCaCertificate` is `false`, this value is ignored.
  late final pulumi.Output<int> maxPathLength;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to.
  late final pulumi.Output<String> privateKeyPem;
  /// Is the certificate either expired (i.e. beyond the `validityPeriodHours`) or ready for an early renewal (i.e. within the `earlyRenewalHours`)?
  late final pulumi.Output<bool> readyForRenewal;
  /// Should the generated certificate include an [authority key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.1): for self-signed certificates this is the same value as the [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setAuthorityKeyId;
  /// Should the generated certificate include a [subject key identifier](https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.2) (default: `false`).
  late final pulumi.Output<bool> setSubjectKeyId;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  late final pulumi.Output<SelfSignedCertSubject?> subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> uris;
  /// The time until which the certificate is invalid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityEndTime;
  /// Number of hours, after initial issuing, that the certificate will remain valid for.
  late final pulumi.Output<int> validityPeriodHours;
  /// The time after which the certificate is valid, expressed as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  late final pulumi.Output<String> validityStartTime;

  /// Creates a new [SelfSignedCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SelfSignedCert]. {@macro pulumi_index_self_signed_cert_self_signed_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SelfSignedCert(
    String name, {
    SelfSignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/selfSignedCert:SelfSignedCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedUses = registerOutput<List<String>>('allowedUses');
    certPem = registerOutput<String>('certPem');
    dnsNames = registerOutput<List<String>?>('dnsNames');
    earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    isCaCertificate = registerOutput<bool>('isCaCertificate');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    maxPathLength = registerOutput<int>('maxPathLength');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    readyForRenewal = registerOutput<bool>('readyForRenewal');
    setAuthorityKeyId = registerOutput<bool>('setAuthorityKeyId');
    setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    subject = registerOutput<SelfSignedCertSubject?>('subject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SelfSignedCertSubject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uris = registerOutput<List<String>?>('uris');
    validityEndTime = registerOutput<String>('validityEndTime');
    validityPeriodHours = registerOutput<int>('validityPeriodHours');
    validityStartTime = registerOutput<String>('validityStartTime');
  }

  /// Gets an existing [SelfSignedCert] resource's state with the given [name] and [id].
  static SelfSignedCert get(
    String name,
    pulumi.Input<String> id, {
    SelfSignedCertState? state,
  }) {
    return SelfSignedCert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SelfSignedCert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/selfSignedCert:SelfSignedCert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedUses = registerOutput<List<String>>('allowedUses');
    certPem = registerOutput<String>('certPem');
    dnsNames = registerOutput<List<String>?>('dnsNames');
    earlyRenewalHours = registerOutput<int>('earlyRenewalHours');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    isCaCertificate = registerOutput<bool>('isCaCertificate');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    maxPathLength = registerOutput<int>('maxPathLength');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    readyForRenewal = registerOutput<bool>('readyForRenewal');
    setAuthorityKeyId = registerOutput<bool>('setAuthorityKeyId');
    setSubjectKeyId = registerOutput<bool>('setSubjectKeyId');
    subject = registerOutput<SelfSignedCertSubject?>('subject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SelfSignedCertSubject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uris = registerOutput<List<String>?>('uris');
    validityEndTime = registerOutput<String>('validityEndTime');
    validityPeriodHours = registerOutput<int>('validityPeriodHours');
    validityStartTime = registerOutput<String>('validityStartTime');
  }
}
