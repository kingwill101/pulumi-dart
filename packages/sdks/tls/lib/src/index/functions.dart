import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_public_key_args.dart';
import 'get_public_key_result.dart';

/// Get information about the TLS certificates securing a host.
///
/// Use this data source to get information, such as SHA1 fingerprint or serial number, about the TLS certificates that protects a URL.
///
/// ## Example Usage
///
/// ### URL Usage
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const exampleEksCluster = new aws.index.EksCluster("example", {name: "example"});
/// const example = tls.getCertificate({
///     url: exampleEksCluster.identity[0].oidc[0].issuer,
/// });
/// const exampleIamOpenidConnectProvider = new aws.index.IamOpenidConnectProvider("example", {
///     clientIdList: ["sts.amazonaws.com"],
///     thumbprintList: [example.certificates?.[0]?.sha1Fingerprint],
///     url: exampleEksCluster.identity[0].oidc[0].issuer,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example_eks_cluster = aws.EksCluster("example", name=example)
/// example = tls.get_certificate(url=example_eks_cluster["identity"][0]["oidc"][0]["issuer"])
/// example_iam_openid_connect_provider = aws.IamOpenidConnectProvider("example",
///     client_id_list=[sts.amazonaws.com],
///     thumbprint_list=[example.certificates[0].sha1_fingerprint],
///     url=example_eks_cluster.identity[0].oidc[0].issuer)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEksCluster = new Aws.EksCluster("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = Tls.GetCertificate.Invoke(new()
///     {
///         Url = exampleEksCluster.Identity[0].Oidc[0].Issuer,
///     });
///
///     var exampleIamOpenidConnectProvider = new Aws.IamOpenidConnectProvider("example", new()
///     {
///         ClientIdList = new[]
///         {
///             "sts.amazonaws.com",
///         },
///         ThumbprintList = new[]
///         {
///             example.Apply(getCertificateResult => getCertificateResult.Certificates[0]?.Sha1Fingerprint),
///         },
///         Url = exampleEksCluster.Identity[0].Oidc[0].Issuer,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleEksCluster, err := aws.NewEksCluster(ctx, "example", &aws.EksClusterArgs{
/// 			Name: "example",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := tls.GetCertificate(ctx, &tls.GetCertificateArgs{
/// 			Url: pulumi.StringRef(exampleEksCluster.Identity[0].Oidc[0].Issuer),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewIamOpenidConnectProvider(ctx, "example", &aws.IamOpenidConnectProviderArgs{
/// 			ClientIdList: []string{
/// 				"sts.amazonaws.com",
/// 			},
/// 			ThumbprintList: []*string{
/// 				example.Certificates[0].Sha1Fingerprint,
/// 			},
/// 			Url: exampleEksCluster.Identity[0].Oidc[0].Issuer,
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
///     aws = {
///       source = "pulumi/aws"
///     }
///     tls = {
///       source = "pulumi/tls"
///     }
///   }
/// }
///
/// data "tls_getcertificate" "example" {
///   url = aws_ekscluster.example.identity[0].oidc[0].issuer
/// }
///
/// resource "aws_ekscluster" "example" {
///   name = "example"
/// }
/// resource "aws_iamopenidconnectprovider" "example" {
///   client_id_list  = ["sts.amazonaws.com"]
///   thumbprint_list = [data.tls_getcertificate.example.certificates[0].sha1_fingerprint]
///   url             = aws_ekscluster.example.identity[0].oidc[0].issuer
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.EksCluster;
/// import com.pulumi.aws.EksClusterArgs;
/// import com.pulumi.tls.TlsFunctions;
/// import com.pulumi.tls.inputs.GetCertificateArgs;
/// import com.pulumi.aws.IamOpenidConnectProvider;
/// import com.pulumi.aws.IamOpenidConnectProviderArgs;
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
///         var exampleEksCluster = new EksCluster("exampleEksCluster", EksClusterArgs.builder()
///             .name("example")
///             .build());
///
///         final var example = TlsFunctions.getCertificate(GetCertificateArgs.builder()
///             .url(exampleEksCluster.identity()[0].oidc()[0].issuer())
///             .build());
///
///         var exampleIamOpenidConnectProvider = new IamOpenidConnectProvider("exampleIamOpenidConnectProvider", IamOpenidConnectProviderArgs.builder()
///             .clientIdList(Arrays.asList("sts.amazonaws.com"))
///             .thumbprintList(Arrays.asList(example.certificates()[0].sha1Fingerprint()))
///             .url(exampleEksCluster.identity()[0].oidc()[0].issuer())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEksCluster:
///     type: aws:EksCluster
///     name: example
///     properties:
///       name: example
///   exampleIamOpenidConnectProvider:
///     type: aws:IamOpenidConnectProvider
///     name: example
///     properties:
///       clientIdList:
///         - sts.amazonaws.com
///       thumbprintList:
///         - ${example.certificates[0].sha1Fingerprint}
///       url: ${exampleEksCluster.identity[0].oidc[0].issuer}
/// variables:
///   example:
///     fn::invoke:
///       function: tls:getCertificate
///       arguments:
///         url: ${exampleEksCluster.identity[0].oidc[0].issuer}
/// ```
///
///
/// ### Content Usage
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
/// import * as tls from "@pulumi/tls";
///
/// const exampleContent = std.file({
///     input: "example.pem",
/// }).then(invoke => tls.getCertificate({
///     content: invoke.result,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_std as std
/// import pulumi_tls as tls
///
/// example_content = tls.get_certificate(content=std.file(input="example.pem").result)
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
///     var exampleContent = Tls.GetCertificate.Invoke(new()
///     {
///         Content = Std.File.Invoke(new()
///         {
///             Input = "example.pem",
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "example.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err := tls.GetCertificate(ctx, &tls.GetCertificateArgs{
/// 			Content: pulumi.StringRef(invokeFile.Result),
/// 		}, nil)
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
/// data "tls_getcertificate" "exampleContent" {
///   content = file("example.pem")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.tls.TlsFunctions;
/// import com.pulumi.tls.inputs.GetCertificateArgs;
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
///         final var exampleContent = TlsFunctions.getCertificate(GetCertificateArgs.builder()
///             .content(StdFunctions.file(FileArgs.builder()
///                 .input("example.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   exampleContent:
///     fn::invoke:
///       function: tls:getCertificate
///       arguments:
///         content:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: example.pem
///             return: result
/// ```
///
///
/// &lt;!--
/// Schema ORIGINALLY generated by tfplugindocs,
/// then manually tweaked to circumvent current limitations.
///
/// This should be revisited, once https://github.com/hashicorp/terraform-plugin-docs/issues/66 is resolved.
/// --&gt;
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

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'tls:index/getCertificate:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa_rfc4716",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tls.GetPublicKey(ctx, &tls.GetPublicKeyArgs{
/// 			PrivateKeyOpenssh: pulumi.StringRef(invokeFile.Result),
/// 		}, nil)
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
/// data "tls_getpublickey" "privateKeyPem-example" {
///   private_key_pem = tls_privatekey.ed25519-example.private_key_pem
/// }
/// data "tls_getpublickey" "privateKeyOpenssh-example" {
///   private_key_openssh = file("~/.ssh/id_rsa_rfc4716")
/// }
///
/// resource "tls_privatekey" "ed25519-example" {
///   algorithm = "ED25519"
/// }
/// # Public key loaded from a terraform-generated private key, using the PEM (RFC 1421) format
/// # Public key loaded from filesystem, using the Open SSH (RFC 4716) format
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

pulumi.Output<GetPublicKeyResult> getPublicKeyOutput(
  GetPublicKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'tls:index/getPublicKey:getPublicKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublicKeyResult.fromMap);
}
