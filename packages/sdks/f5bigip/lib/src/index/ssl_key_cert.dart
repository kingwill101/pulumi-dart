import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_key_cert_args.dart';
import 'ssl_key_cert_state.dart';

/// `f5bigip.SslKeyCert` This resource will import SSL certificate and key on BIG-IP LTM.
/// The certificate and the key can be imported from files on the local disk, in PEM format
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
/// const testkeycert = new f5bigip.SslKeyCert("testkeycert", {
///     partition: "Common",
///     keyName: "ssl-test-key",
///     keyContent: std.file({
///         input: "key.pem",
///     }).then(invoke => invoke.result),
///     certName: "ssl-test-cert",
///     certContent: std.file({
///         input: "certificate.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// testkeycert = f5bigip.SslKeyCert("testkeycert",
///     partition="Common",
///     key_name="ssl-test-key",
///     key_content=std.file(input="key.pem").result,
///     cert_name="ssl-test-cert",
///     cert_content=std.file(input="certificate.pem").result)
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
///     var testkeycert = new F5BigIP.SslKeyCert("testkeycert", new()
///     {
///         Partition = "Common",
///         KeyName = "ssl-test-key",
///         KeyContent = Std.File.Invoke(new()
///         {
///             Input = "key.pem",
///         }).Apply(invoke => invoke.Result),
///         CertName = "ssl-test-cert",
///         CertContent = Std.File.Invoke(new()
///         {
///             Input = "certificate.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = f5bigip.NewSslKeyCert(ctx, "testkeycert", &f5bigip.SslKeyCertArgs{
/// 			Partition:   pulumi.String("Common"),
/// 			KeyName:     pulumi.String("ssl-test-key"),
/// 			KeyContent:  pulumi.String(invokeFile.Result),
/// 			CertName:    pulumi.String("ssl-test-cert"),
/// 			CertContent: pulumi.String(invokeFile1.Result),
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
/// import com.pulumi.f5bigip.SslKeyCert;
/// import com.pulumi.f5bigip.SslKeyCertArgs;
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
///         var testkeycert = new SslKeyCert("testkeycert", SslKeyCertArgs.builder()
///             .partition("Common")
///             .keyName("ssl-test-key")
///             .keyContent(StdFunctions.file(FileArgs.builder()
///                 .input("key.pem")
///                 .build()).result())
///             .certName("ssl-test-cert")
///             .certContent(StdFunctions.file(FileArgs.builder()
///                 .input("certificate.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testkeycert:
///     type: f5bigip:SslKeyCert
///     properties:
///       partition: Common
///       keyName: ssl-test-key
///       keyContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: key.pem
///           return: result
///       certName: ssl-test-cert
///       certContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: certificate.pem
///           return: result
/// ```
class SslKeyCert extends pulumi.CustomResource {
  /// The content of the cert.
  late final pulumi.Output<String> certContent;
  /// full path of the SSL certificate on the BIGIP.
  late final pulumi.Output<String> certFullPath;
  /// Specifies the type of monitoring used.
  late final pulumi.Output<String?> certMonitoringType;
  /// Name of the SSL certificate to be Imported on to BIGIP.
  late final pulumi.Output<String> certName;
  /// Specifies the OCSP responder.
  late final pulumi.Output<String?> certOcsp;
  /// Specifies the issuer certificate.
  late final pulumi.Output<String?> issuerCert;
  /// The content of the key.
  late final pulumi.Output<String> keyContent;
  /// full path of the SSL key on the BIGIP.
  late final pulumi.Output<String> keyFullPath;
  /// Name of the SSL key to be Imported on to BIGIP.
  late final pulumi.Output<String> keyName;
  /// Partition on to SSL certificate and key to be imported.
  late final pulumi.Output<String?> partition;
  /// Passphrase on the SSL key.
  late final pulumi.Output<String?> passphrase;

  /// Creates a new [SslKeyCert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslKeyCert]. {@macro pulumi_index_ssl_key_cert_ssl_key_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslKeyCert(
    String name, {
    SslKeyCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/sslKeyCert:SslKeyCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certContent = registerOutput<String>('certContent');
    certFullPath = registerOutput<String>('certFullPath');
    certMonitoringType = registerOutput<String?>('certMonitoringType');
    certName = registerOutput<String>('certName');
    certOcsp = registerOutput<String?>('certOcsp');
    issuerCert = registerOutput<String?>('issuerCert');
    keyContent = registerOutput<String>('keyContent');
    keyFullPath = registerOutput<String>('keyFullPath');
    keyName = registerOutput<String>('keyName');
    partition = registerOutput<String?>('partition');
    passphrase = registerOutput<String?>('passphrase');
  }

  /// Gets an existing [SslKeyCert] resource's state with the given [name] and [id].
  static SslKeyCert get(
    String name,
    pulumi.Input<String> id, {
    SslKeyCertState? state,
  }) {
    return SslKeyCert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SslKeyCert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/sslKeyCert:SslKeyCert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certContent = registerOutput<String>('certContent');
    certFullPath = registerOutput<String>('certFullPath');
    certMonitoringType = registerOutput<String?>('certMonitoringType');
    certName = registerOutput<String>('certName');
    certOcsp = registerOutput<String?>('certOcsp');
    issuerCert = registerOutput<String?>('issuerCert');
    keyContent = registerOutput<String>('keyContent');
    keyFullPath = registerOutput<String>('keyFullPath');
    keyName = registerOutput<String>('keyName');
    partition = registerOutput<String?>('partition');
    passphrase = registerOutput<String?>('passphrase');
  }
}
