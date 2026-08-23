import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_request_args.dart';
import 'cert_request_state.dart';
import 'cert_request_subject.dart';

/// Creates a Certificate Signing Request (CSR) in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
///
/// PEM is the typical format used to request a certificate from a Certificate Authority (CA).
///
/// This resource is intended to be used in conjunction with a Terraform provider for a particular certificate authority in order to provision a new certificate.
///
/// This is a *logical resource*, so it contributes only to the current Terraform
/// state and does not create any external managed resources.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const example = new tls.CertRequest("example", {
///     privateKeyPem: std.file({
///         input: "private_key.pem",
///     }).then(invoke => invoke.result),
///     subject: {
///         commonName: "example.com",
///         organization: "ACME Examples, Inc",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// example = tls.CertRequest("example",
///     private_key_pem=std.file(input="private_key.pem").result,
///     subject={
///         "common_name": "example.com",
///         "organization": "ACME Examples, Inc",
///     })
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
///     var example = new Tls.CertRequest("example", new()
///     {
///         PrivateKeyPem = Std.File.Invoke(new()
///         {
///             Input = "private_key.pem",
///         }).Apply(invoke => invoke.Result),
///         Subject = new Tls.Inputs.CertRequestSubjectArgs
///         {
///             CommonName = "example.com",
///             Organization = "ACME Examples, Inc",
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
/// 		_, err = tls.NewCertRequest(ctx, "example", &tls.CertRequestArgs{
/// 			PrivateKeyPem: pulumi.String(invokeFile.Result),
/// 			Subject: &tls.CertRequestSubjectArgs{
/// 				CommonName:   pulumi.String("example.com"),
/// 				Organization: pulumi.String("ACME Examples, Inc"),
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
/// resource "tls_certrequest" "example" {
///   private_key_pem = file("private_key.pem")
///   subject = {
///     common_name  = "example.com"
///     organization = "ACME Examples, Inc"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.tls.CertRequest;
/// import com.pulumi.tls.CertRequestArgs;
/// import com.pulumi.tls.inputs.CertRequestSubjectArgs;
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
///         var example = new CertRequest("example", CertRequestArgs.builder()
///             .privateKeyPem(StdFunctions.file(FileArgs.builder()
///                 .input("private_key.pem")
///                 .build()).result())
///             .subject(CertRequestSubjectArgs.builder()
///                 .commonName("example.com")
///                 .organization("ACME Examples, Inc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: tls:CertRequest
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
/// ```
class CertRequest extends pulumi.CustomResource {
  /// The certificate request data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  late final pulumi.Output<String> certRequestPem;
  /// List of DNS names for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> dnsNames;
  /// List of IP addresses for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> ipAddresses;
  /// Name of the algorithm used when generating the private key provided in `privateKeyPem`.
  late final pulumi.Output<String> keyAlgorithm;
  /// Private key in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format, that the certificate will belong to. This can be read from a separate file using the `file` interpolation function.
  late final pulumi.Output<String> privateKeyPem;
  /// The subject for which a certificate is being requested. The acceptable arguments are all optional and their naming is based upon [Issuer Distinguished Names (RFC5280)](https://tools.ietf.org/html/rfc5280#section-4.1.2.4) section.
  late final pulumi.Output<CertRequestSubject?> subject;
  /// List of URIs for which a certificate is being requested (i.e. certificate subjects).
  late final pulumi.Output<List<String>?> uris;

  /// Creates a new [CertRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertRequest]. {@macro pulumi_index_cert_request_cert_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertRequest(
    String name, {
    CertRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/certRequest:CertRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certRequestPem = registerOutput<String>('certRequestPem');
    dnsNames = registerOutput<List<String>?>('dnsNames');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    subject = registerOutput<CertRequestSubject?>('subject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertRequestSubject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uris = registerOutput<List<String>?>('uris');
  }

  /// Gets an existing [CertRequest] resource's state with the given [name] and [id].
  static CertRequest get(
    String name,
    pulumi.Input<String> id, {
    CertRequestState? state,
  }) {
    return CertRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CertRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'tls:index/certRequest:CertRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certRequestPem = registerOutput<String>('certRequestPem');
    dnsNames = registerOutput<List<String>?>('dnsNames');
    ipAddresses = registerOutput<List<String>?>('ipAddresses');
    keyAlgorithm = registerOutput<String>('keyAlgorithm');
    privateKeyPem = registerOutput<String>('privateKeyPem');
    subject = registerOutput<CertRequestSubject?>('subject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertRequestSubject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uris = registerOutput<List<String>?>('uris');
  }
}
