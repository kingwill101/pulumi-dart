import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_args.dart';
import 'client_tls_policy_client_certificate.dart';
import 'client_tls_policy_server_validation_ca.dart';
import 'client_tls_policy_state.dart';

/// ClientTlsPolicy is a resource that specifies how a client should authenticate connections to backends of a service. This resource itself does not affect configuration unless it is attached to a backend service resource.
///
///
/// To get more information about ClientTlsPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.clientTlsPolicies)
/// * How-to Guides
/// * [Service Security](https://cloud.google.com/traffic-director/docs/security-use-cases)
///
/// ## Example Usage
///
/// ### Network Security Client Tls Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.ClientTlsPolicy("default", {
///     name: "my-client-tls-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     sni: "secure.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.ClientTlsPolicy("default",
///     name="my-client-tls-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     sni="secure.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.ClientTlsPolicy("default", new()
///     {
///         Name = "my-client-tls-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Sni = "secure.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewClientTlsPolicy(ctx, "default", &networksecurity.ClientTlsPolicyArgs{
/// 			Name: pulumi.String("my-client-tls-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Sni:         pulumi.String("secure.example.com"),
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
/// import com.pulumi.gcp.networksecurity.ClientTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ClientTlsPolicyArgs;
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
///         var default_ = new ClientTlsPolicy("default", ClientTlsPolicyArgs.builder()
///             .name("my-client-tls-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .sni("secure.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ClientTlsPolicy
///     properties:
///       name: my-client-tls-policy
///       labels:
///         foo: bar
///       description: my description
///       sni: secure.example.com
/// ```
///
/// ### Network Security Client Tls Policy Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.ClientTlsPolicy("default", {
///     name: "my-client-tls-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     clientCertificate: {
///         certificateProviderInstance: {
///             pluginInstance: "google_cloud_private_spiffe",
///         },
///     },
///     serverValidationCas: [{
///         grpcEndpoint: {
///             targetUri: "unix:mypath",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.ClientTlsPolicy("default",
///     name="my-client-tls-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     client_certificate={
///         "certificate_provider_instance": {
///             "plugin_instance": "google_cloud_private_spiffe",
///         },
///     },
///     server_validation_cas=[{
///         "grpc_endpoint": {
///             "target_uri": "unix:mypath",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.ClientTlsPolicy("default", new()
///     {
///         Name = "my-client-tls-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         ClientCertificate = new Gcp.NetworkSecurity.Inputs.ClientTlsPolicyClientCertificateArgs
///         {
///             CertificateProviderInstance = new Gcp.NetworkSecurity.Inputs.ClientTlsPolicyClientCertificateCertificateProviderInstanceArgs
///             {
///                 PluginInstance = "google_cloud_private_spiffe",
///             },
///         },
///         ServerValidationCas = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.ClientTlsPolicyServerValidationCaArgs
///             {
///                 GrpcEndpoint = new Gcp.NetworkSecurity.Inputs.ClientTlsPolicyServerValidationCaGrpcEndpointArgs
///                 {
///                     TargetUri = "unix:mypath",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewClientTlsPolicy(ctx, "default", &networksecurity.ClientTlsPolicyArgs{
/// 			Name: pulumi.String("my-client-tls-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			ClientCertificate: &networksecurity.ClientTlsPolicyClientCertificateArgs{
/// 				CertificateProviderInstance: &networksecurity.ClientTlsPolicyClientCertificateCertificateProviderInstanceArgs{
/// 					PluginInstance: pulumi.String("google_cloud_private_spiffe"),
/// 				},
/// 			},
/// 			ServerValidationCas: networksecurity.ClientTlsPolicyServerValidationCaArray{
/// 				&networksecurity.ClientTlsPolicyServerValidationCaArgs{
/// 					GrpcEndpoint: &networksecurity.ClientTlsPolicyServerValidationCaGrpcEndpointArgs{
/// 						TargetUri: pulumi.String("unix:mypath"),
/// 					},
/// 				},
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
/// import com.pulumi.gcp.networksecurity.ClientTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ClientTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ClientTlsPolicyClientCertificateArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ClientTlsPolicyClientCertificateCertificateProviderInstanceArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ClientTlsPolicyServerValidationCaArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ClientTlsPolicyServerValidationCaGrpcEndpointArgs;
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
///         var default_ = new ClientTlsPolicy("default", ClientTlsPolicyArgs.builder()
///             .name("my-client-tls-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .clientCertificate(ClientTlsPolicyClientCertificateArgs.builder()
///                 .certificateProviderInstance(ClientTlsPolicyClientCertificateCertificateProviderInstanceArgs.builder()
///                     .pluginInstance("google_cloud_private_spiffe")
///                     .build())
///                 .build())
///             .serverValidationCas(ClientTlsPolicyServerValidationCaArgs.builder()
///                 .grpcEndpoint(ClientTlsPolicyServerValidationCaGrpcEndpointArgs.builder()
///                     .targetUri("unix:mypath")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ClientTlsPolicy
///     properties:
///       name: my-client-tls-policy
///       labels:
///         foo: bar
///       description: my description
///       clientCertificate:
///         certificateProviderInstance:
///           pluginInstance: google_cloud_private_spiffe
///       serverValidationCas:
///         - grpcEndpoint:
///             targetUri: unix:mypath
/// ```
///
///
/// ## Import
///
/// ClientTlsPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clientTlsPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ClientTlsPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default projects/{{project}}/locations/{{location}}/clientTlsPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default {{location}}/{{name}}
/// ```
class ClientTlsPolicy extends pulumi.CustomResource {
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  late final pulumi.Output<ClientTlsPolicyClientCertificate?> clientCertificate;
  /// Time the ClientTlsPolicy was created in UTC.
  late final pulumi.Output<String> createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the ClientTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the client tls policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;
  /// Name of the ClientTlsPolicy resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// Structure is documented below.
  late final pulumi.Output<List<ClientTlsPolicyServerValidationCa>?> serverValidationCas;
  /// Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  late final pulumi.Output<String?> sni;
  /// Time the ClientTlsPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ClientTlsPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientTlsPolicy]. {@macro pulumi_networksecurity_client_tls_policy_client_tls_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientTlsPolicy(
    String name, {
    ClientTlsPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<ClientTlsPolicyClientCertificate?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverValidationCas = registerOutput<List<ClientTlsPolicyServerValidationCa>?>('serverValidationCas');
    this.sni = registerOutput<String?>('sni');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ClientTlsPolicy] resource's state with the given [name] and [id].
  static ClientTlsPolicy get(
    String name,
    pulumi.Input<String> id, {
    ClientTlsPolicyState? state,
  }) {
    return ClientTlsPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientTlsPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<ClientTlsPolicyClientCertificate?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverValidationCas = registerOutput<List<ClientTlsPolicyServerValidationCa>?>('serverValidationCas');
    this.sni = registerOutput<String?>('sni');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
