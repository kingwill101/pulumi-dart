import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// `f5bigip.ssl.Certificate` This resource will import SSL certificates on BIG-IP LTM.
/// Certificates can be imported from certificate files on the local disk, in PEM format
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// const test_cert = new f5bigip.ssl.Certificate("test-cert", {
///     name: "servercert.crt",
///     content: std.file({
///         input: "servercert.crt",
///     }).then(invoke => invoke.result),
///     partition: "Common",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// test_cert = f5bigip.ssl.Certificate("test-cert",
///     name="servercert.crt",
///     content=std.file(input="servercert.crt").result,
///     partition="Common")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_cert = new F5BigIP.Ssl.Certificate("test-cert", new()
///     {
///         Name = "servercert.crt",
///         Content = Std.File.Invoke(new()
///         {
///             Input = "servercert.crt",
///         }).Apply(invoke => invoke.Result),
///         Partition = "Common",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "servercert.crt",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssl.NewCertificate(ctx, "test-cert", &ssl.CertificateArgs{
/// 			Name:      pulumi.String("servercert.crt"),
/// 			Content:   pulumi.String(invokeFile.Result),
/// 			Partition: pulumi.String("Common"),
/// 		})
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
/// import com.pulumi.f5bigip.ssl.Certificate;
/// import com.pulumi.f5bigip.ssl.CertificateArgs;
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
///         var test_cert = new Certificate("test-cert", CertificateArgs.builder()
///             .name("servercert.crt")
///             .content(StdFunctions.file(FileArgs.builder()
///                 .input("servercert.crt")
///                 .build()).result())
///             .partition("Common")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-cert:
///     type: f5bigip:ssl:Certificate
///     properties:
///       name: servercert.crt
///       content:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: servercert.crt
///           return: result
///       partition: Common
/// ```
class Certificate extends pulumi.CustomResource {
  /// Content of certificate on Disk
  late final pulumi.Output<String> content;
  /// Full Path Name of ssl certificate
  late final pulumi.Output<String> fullPath;
  /// Specifies the issuer certificate.
  late final pulumi.Output<String?> issuerCert;
  /// Specifies the type of monitoring used.
  late final pulumi.Output<String?> monitoringType;
  /// Name of the SSL Certificate to be Imported on to BIGIP
  late final pulumi.Output<String> name;
  /// Specifies the OCSP responder.
  late final pulumi.Output<String?> ocsp;
  /// Partition of ssl certificate
  late final pulumi.Output<String?> partition;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_ssl_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ssl/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    content = registerOutput<String>('content');
    fullPath = registerOutput<String>('fullPath');
    issuerCert = registerOutput<String?>('issuerCert');
    monitoringType = registerOutput<String?>('monitoringType');
    this.name = registerOutput<String>('name');
    ocsp = registerOutput<String?>('ocsp');
    partition = registerOutput<String?>('partition');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ssl/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    content = registerOutput<String>('content');
    fullPath = registerOutput<String>('fullPath');
    issuerCert = registerOutput<String?>('issuerCert');
    monitoringType = registerOutput<String?>('monitoringType');
    this.name = registerOutput<String>('name');
    ocsp = registerOutput<String?>('ocsp');
    partition = registerOutput<String?>('partition');
  }
}
