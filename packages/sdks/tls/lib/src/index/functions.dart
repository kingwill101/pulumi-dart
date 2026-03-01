import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_public_key_args.dart';
import 'get_public_key_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'tls:index/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Get a public key from a PEM-encoded private key.
///
/// Use this data source to get the public key from a [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) or [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) formatted private key, for use in other resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const ed25519_example = new tls.PrivateKey("ed25519-example", {algorithm: "ED25519"});
/// // Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
/// const privateKeyPem_example = tls.getPublicKeyOutput({
///     privateKeyPem: ed25519_example.privateKeyPem,
/// });
/// // Public key loaded from filesystem, using the Open SSH (RFC 4716) format
/// const privateKeyOpenssh_example = std.file({
///     input: "~/.ssh/id_rsa_rfc4716",
/// }).then(invoke => tls.getPublicKey({
///     privateKeyOpenssh: invoke.result,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// ed25519_example = tls.PrivateKey("ed25519-example", algorithm="ED25519")
/// # Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
/// private_key_pem_example = tls.get_public_key_output(private_key_pem=ed25519_example.private_key_pem)
/// # Public key loaded from filesystem, using the Open SSH (RFC 4716) format
/// private_key_openssh_example = tls.get_public_key(private_key_openssh=std.file(input="~/.ssh/id_rsa_rfc4716").result)
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
///     var ed25519_example = new Tls.PrivateKey("ed25519-example", new()
///     {
///         Algorithm = "ED25519",
///     });
///
///     // Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
///     var privateKeyPem_example = Tls.GetPublicKey.Invoke(new()
///     {
///         PrivateKeyPem = ed25519_example.PrivateKeyPem,
///     });
///
///     // Public key loaded from filesystem, using the Open SSH (RFC 4716) format
///     var privateKeyOpenssh_example = Tls.GetPublicKey.Invoke(new()
///     {
///         PrivateKeyOpenssh = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_rsa_rfc4716",
///         }).Result,
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
/// 		ed25519_example, err := tls.NewPrivateKey(ctx, "ed25519-example", &tls.PrivateKeyArgs{
/// 			Algorithm: pulumi.String("ED25519"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
/// 		_ = tls.GetPublicKeyOutput(ctx, tls.GetPublicKeyOutputArgs{
/// 			PrivateKeyPem: ed25519_example.PrivateKeyPem,
/// 		}, nil)
/// 		// Public key loaded from filesystem, using the Open SSH (RFC 4716) format
/// 		_, err = tls.GetPublicKey(ctx, &tls.GetPublicKeyArgs{
/// 			PrivateKeyOpenssh: pulumi.StringRef(std.File(ctx, &std.FileArgs{
/// 				Input: "~/.ssh/id_rsa_rfc4716",
/// 			}, nil).Result),
/// 		}, nil)
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
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.TlsFunctions;
/// import com.pulumi.tls.inputs.GetPublicKeyArgs;
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
///         var ed25519_example = new PrivateKey("ed25519-example", PrivateKeyArgs.builder()
///             .algorithm("ED25519")
///             .build());
///
///         // Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
///         final var privateKeyPem-example = TlsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .privateKeyPem(ed25519_example.privateKeyPem())
///             .build());
///
///         // Public key loaded from filesystem, using the Open SSH (RFC 4716) format
///         final var privateKeyOpenssh-example = TlsFunctions.getPublicKey(GetPublicKeyArgs.builder()
///             .privateKeyOpenssh(StdFunctions.file(FileArgs.builder()
///                 .input("~/.ssh/id_rsa_rfc4716")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ed25519-example:
///     type: tls:PrivateKey
///     properties:
///       algorithm: ED25519
/// variables:
///   # Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
///   privateKeyPem-example:
///     fn::invoke:
///       function: tls:getPublicKey
///       arguments:
///         privateKeyPem: ${["ed25519-example"].privateKeyPem}
///   # Public key loaded from filesystem, using the Open SSH (RFC 4716) format
///   privateKeyOpenssh-example:
///     fn::invoke:
///       function: tls:getPublicKey
///       arguments:
///         privateKeyOpenssh:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: ~/.ssh/id_rsa_rfc4716
///             return: result
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_public_key_get_public_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicKeyResult> getPublicKey(
  GetPublicKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'tls:index/getPublicKey:getPublicKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicKeyResult.fromMap(result);
}
