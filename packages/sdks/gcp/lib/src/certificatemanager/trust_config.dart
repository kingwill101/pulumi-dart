import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_config_args.dart';
import 'trust_config_state.dart';

/// TrustConfig represents a resource that represents your Public Key Infrastructure (PKI) configuration in Certificate Manager for use in mutual TLS authentication scenarios.
///
///
/// To get more information about TrustConfig, see:
///
/// * [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.trustConfigs/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/certificate-manager/docs)
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Trust Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.TrustConfig("default", {
///     name: "trust-config",
///     description: "sample description for the trust config",
///     location: "us-central1",
///     trustStores: [{
///         trustAnchors: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///         intermediateCas: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     }],
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.TrustConfig("default",
///     name="trust-config",
///     description="sample description for the trust config",
///     location="us-central1",
///     trust_stores=[{
///         "trust_anchors": [{
///             "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         }],
///         "intermediate_cas": [{
///             "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         }],
///     }],
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "trust-config",
///         Description = "sample description for the trust config",
///         Location = "us-central1",
///         TrustStores = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
///             {
///                 TrustAnchors = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 IntermediateCas = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:        pulumi.String("trust-config"),
/// 			Description: pulumi.String("sample description for the trust config"),
/// 			Location:    pulumi.String("us-central1"),
/// 			TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// 				&certificatemanager.TrustConfigTrustStoreArgs{
/// 					TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// 						&certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// 							PemCertificate: pulumi.String(invokeFile.Result),
/// 						},
/// 					},
/// 					IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// 						&certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// 							PemCertificate: pulumi.String(invokeFile1.Result),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
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
///         var default_ = new TrustConfig("default", TrustConfigArgs.builder()
///             .name("trust-config")
///             .description("sample description for the trust config")
///             .location("us-central1")
///             .trustStores(TrustConfigTrustStoreArgs.builder()
///                 .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert.pem")
///                         .build()).result())
///                     .build())
///                 .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:TrustConfig
///     properties:
///       name: trust-config
///       description: sample description for the trust config
///       location: us-central1
///       trustStores:
///         - trustAnchors:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/cert.pem
///                   return: result
///           intermediateCas:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/cert.pem
///                   return: result
///       labels:
///         foo: bar
/// ```
///
/// ### Certificate Manager Trust Config Allowlisted Certificates
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.TrustConfig("default", {
///     name: "trust-config",
///     description: "A sample trust config resource with allowlisted certificates",
///     location: "global",
///     allowlistedCertificates: [
///         {
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert.pem",
///             }).then(invoke => invoke.result),
///         },
///         {
///             pemCertificate: std.file({
///                 input: "test-fixtures/cert2.pem",
///             }).then(invoke => invoke.result),
///         },
///     ],
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.TrustConfig("default",
///     name="trust-config",
///     description="A sample trust config resource with allowlisted certificates",
///     location="global",
///     allowlisted_certificates=[
///         {
///             "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         },
///         {
///             "pem_certificate": std.file(input="test-fixtures/cert2.pem").result,
///         },
///     ],
///     labels={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "trust-config",
///         Description = "A sample trust config resource with allowlisted certificates",
///         Location = "global",
///         AllowlistedCertificates = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigAllowlistedCertificateArgs
///             {
///                 PemCertificate = Std.File.Invoke(new()
///                 {
///                     Input = "test-fixtures/cert.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///             new Gcp.CertificateManager.Inputs.TrustConfigAllowlistedCertificateArgs
///             {
///                 PemCertificate = Std.File.Invoke(new()
///                 {
///                     Input = "test-fixtures/cert2.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert2.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:        pulumi.String("trust-config"),
/// 			Description: pulumi.String("A sample trust config resource with allowlisted certificates"),
/// 			Location:    pulumi.String("global"),
/// 			AllowlistedCertificates: certificatemanager.TrustConfigAllowlistedCertificateArray{
/// 				&certificatemanager.TrustConfigAllowlistedCertificateArgs{
/// 					PemCertificate: pulumi.String(invokeFile.Result),
/// 				},
/// 				&certificatemanager.TrustConfigAllowlistedCertificateArgs{
/// 					PemCertificate: pulumi.String(invokeFile1.Result),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
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
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigAllowlistedCertificateArgs;
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
///         var default_ = new TrustConfig("default", TrustConfigArgs.builder()
///             .name("trust-config")
///             .description("A sample trust config resource with allowlisted certificates")
///             .location("global")
///             .allowlistedCertificates(
///                 TrustConfigAllowlistedCertificateArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert.pem")
///                         .build()).result())
///                     .build(),
///                 TrustConfigAllowlistedCertificateArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/cert2.pem")
///                         .build()).result())
///                     .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:TrustConfig
///     properties:
///       name: trust-config
///       description: A sample trust config resource with allowlisted certificates
///       location: global
///       allowlistedCertificates:
///         - pemCertificate:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: test-fixtures/cert.pem
///               return: result
///         - pemCertificate:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: test-fixtures/cert2.pem
///               return: result
///       labels:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// TrustConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/trustConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, TrustConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default projects/{{project}}/locations/{{location}}/trustConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default {{location}}/{{name}}
/// ```
class TrustConfig extends pulumi.CustomResource {
  /// Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> allowlistedCertificates;
  /// The creation timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// One or more paragraphs of text description of a trust config.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the trust config.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The trust config location.
  late final pulumi.Output<String> location;
  /// A user-defined name of the trust config. Trust config names must be unique globally.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Set of trust stores to perform validation against.
  /// This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> trustStores;
  /// The last update timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TrustConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustConfig]. {@macro pulumi_certificatemanager_trust_config_trust_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustConfig(
    String name, {
    TrustConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/trustConfig:TrustConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowlistedCertificates = registerOutput<List<Map<String, dynamic>>?>('allowlistedCertificates');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    trustStores = registerOutput<List<Map<String, dynamic>>?>('trustStores');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [TrustConfig] resource's state with the given [name] and [id].
  static TrustConfig get(
    String name,
    pulumi.Input<String> id, {
    TrustConfigState? state,
  }) {
    return TrustConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrustConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/trustConfig:TrustConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowlistedCertificates = registerOutput<List<Map<String, dynamic>>?>('allowlistedCertificates');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    trustStores = registerOutput<List<Map<String, dynamic>>?>('trustStores');
    updateTime = registerOutput<String>('updateTime');
  }
}
