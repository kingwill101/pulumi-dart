import 'package:pulumi/pulumi.dart' as pulumi;
import 'sslpolicy_args.dart';
import 'sslpolicy_state.dart';

/// Represents a SSL policy. SSL policies give you the ability to control the
/// features of SSL that your SSL proxy or HTTPS load balancer negotiates.
///
///
/// To get more information about SslPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/sslPolicies)
/// * How-to Guides
/// * [Using SSL Policies](https://cloud.google.com/compute/docs/load-balancing/ssl-policies)
///
/// ## Example Usage
///
/// ### Ssl Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const prod_ssl_policy = new gcp.compute.SSLPolicy("prod-ssl-policy", {
///     name: "production-ssl-policy",
///     profile: "MODERN",
/// });
/// const nonprod_ssl_policy = new gcp.compute.SSLPolicy("nonprod-ssl-policy", {
///     name: "nonprod-ssl-policy",
///     profile: "MODERN",
///     minTlsVersion: "TLS_1_2",
/// });
/// const custom_ssl_policy = new gcp.compute.SSLPolicy("custom-ssl-policy", {
///     name: "custom-ssl-policy",
///     minTlsVersion: "TLS_1_2",
///     profile: "CUSTOM",
///     customFeatures: [
///         "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// prod_ssl_policy = gcp.compute.SSLPolicy("prod-ssl-policy",
///     name="production-ssl-policy",
///     profile="MODERN")
/// nonprod_ssl_policy = gcp.compute.SSLPolicy("nonprod-ssl-policy",
///     name="nonprod-ssl-policy",
///     profile="MODERN",
///     min_tls_version="TLS_1_2")
/// custom_ssl_policy = gcp.compute.SSLPolicy("custom-ssl-policy",
///     name="custom-ssl-policy",
///     min_tls_version="TLS_1_2",
///     profile="CUSTOM",
///     custom_features=[
///         "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///         "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prod_ssl_policy = new Gcp.Compute.SSLPolicy("prod-ssl-policy", new()
///     {
///         Name = "production-ssl-policy",
///         Profile = "MODERN",
///     });
///
///     var nonprod_ssl_policy = new Gcp.Compute.SSLPolicy("nonprod-ssl-policy", new()
///     {
///         Name = "nonprod-ssl-policy",
///         Profile = "MODERN",
///         MinTlsVersion = "TLS_1_2",
///     });
///
///     var custom_ssl_policy = new Gcp.Compute.SSLPolicy("custom-ssl-policy", new()
///     {
///         Name = "custom-ssl-policy",
///         MinTlsVersion = "TLS_1_2",
///         Profile = "CUSTOM",
///         CustomFeatures = new[]
///         {
///             "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///             "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSSLPolicy(ctx, "prod-ssl-policy", &compute.SSLPolicyArgs{
/// 			Name:    pulumi.String("production-ssl-policy"),
/// 			Profile: pulumi.String("MODERN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSSLPolicy(ctx, "nonprod-ssl-policy", &compute.SSLPolicyArgs{
/// 			Name:          pulumi.String("nonprod-ssl-policy"),
/// 			Profile:       pulumi.String("MODERN"),
/// 			MinTlsVersion: pulumi.String("TLS_1_2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSSLPolicy(ctx, "custom-ssl-policy", &compute.SSLPolicyArgs{
/// 			Name:          pulumi.String("custom-ssl-policy"),
/// 			MinTlsVersion: pulumi.String("TLS_1_2"),
/// 			Profile:       pulumi.String("CUSTOM"),
/// 			CustomFeatures: pulumi.StringArray{
/// 				pulumi.String("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"),
/// 				pulumi.String("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_sslpolicy" "prod-ssl-policy" {
///   name    = "production-ssl-policy"
///   profile = "MODERN"
/// }
/// resource "gcp_compute_sslpolicy" "nonprod-ssl-policy" {
///   name            = "nonprod-ssl-policy"
///   profile         = "MODERN"
///   min_tls_version = "TLS_1_2"
/// }
/// resource "gcp_compute_sslpolicy" "custom-ssl-policy" {
///   name            = "custom-ssl-policy"
///   min_tls_version = "TLS_1_2"
///   profile         = "CUSTOM"
///   custom_features = ["TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SSLPolicy;
/// import com.pulumi.gcp.compute.SSLPolicyArgs;
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
///         var prod_ssl_policy = new SSLPolicy("prod-ssl-policy", SSLPolicyArgs.builder()
///             .name("production-ssl-policy")
///             .profile("MODERN")
///             .build());
///
///         var nonprod_ssl_policy = new SSLPolicy("nonprod-ssl-policy", SSLPolicyArgs.builder()
///             .name("nonprod-ssl-policy")
///             .profile("MODERN")
///             .minTlsVersion("TLS_1_2")
///             .build());
///
///         var custom_ssl_policy = new SSLPolicy("custom-ssl-policy", SSLPolicyArgs.builder()
///             .name("custom-ssl-policy")
///             .minTlsVersion("TLS_1_2")
///             .profile("CUSTOM")
///             .customFeatures(
///                 "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
///                 "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prod-ssl-policy:
///     type: gcp:compute:SSLPolicy
///     properties:
///       name: production-ssl-policy
///       profile: MODERN
///   nonprod-ssl-policy:
///     type: gcp:compute:SSLPolicy
///     properties:
///       name: nonprod-ssl-policy
///       profile: MODERN
///       minTlsVersion: TLS_1_2
///   custom-ssl-policy:
///     type: gcp:compute:SSLPolicy
///     properties:
///       name: custom-ssl-policy
///       minTlsVersion: TLS_1_2
///       profile: CUSTOM
///       customFeatures:
///         - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
///         - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
/// ```
///
/// ### Ssl Policy Post Quantum
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const post_quantum_ssl_policy = new gcp.compute.SSLPolicy("post-quantum-ssl-policy", {
///     name: "post-quantum-ssl-policy",
///     profile: "MODERN",
///     minTlsVersion: "TLS_1_2",
///     postQuantumKeyExchange: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// post_quantum_ssl_policy = gcp.compute.SSLPolicy("post-quantum-ssl-policy",
///     name="post-quantum-ssl-policy",
///     profile="MODERN",
///     min_tls_version="TLS_1_2",
///     post_quantum_key_exchange="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var post_quantum_ssl_policy = new Gcp.Compute.SSLPolicy("post-quantum-ssl-policy", new()
///     {
///         Name = "post-quantum-ssl-policy",
///         Profile = "MODERN",
///         MinTlsVersion = "TLS_1_2",
///         PostQuantumKeyExchange = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSSLPolicy(ctx, "post-quantum-ssl-policy", &compute.SSLPolicyArgs{
/// 			Name:                   pulumi.String("post-quantum-ssl-policy"),
/// 			Profile:                pulumi.String("MODERN"),
/// 			MinTlsVersion:          pulumi.String("TLS_1_2"),
/// 			PostQuantumKeyExchange: pulumi.String("ENABLED"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_sslpolicy" "post-quantum-ssl-policy" {
///   name                      = "post-quantum-ssl-policy"
///   profile                   = "MODERN"
///   min_tls_version           = "TLS_1_2"
///   post_quantum_key_exchange = "ENABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SSLPolicy;
/// import com.pulumi.gcp.compute.SSLPolicyArgs;
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
///         var post_quantum_ssl_policy = new SSLPolicy("post-quantum-ssl-policy", SSLPolicyArgs.builder()
///             .name("post-quantum-ssl-policy")
///             .profile("MODERN")
///             .minTlsVersion("TLS_1_2")
///             .postQuantumKeyExchange("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   post-quantum-ssl-policy:
///     type: gcp:compute:SSLPolicy
///     properties:
///       name: post-quantum-ssl-policy
///       profile: MODERN
///       minTlsVersion: TLS_1_2
///       postQuantumKeyExchange: ENABLED
/// ```
///
///
/// ## Import
///
/// SslPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/sslPolicies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, SslPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/sSLPolicy:SSLPolicy default projects/{{project}}/global/sslPolicies/{{name}}
/// $ pulumi import gcp:compute/sSLPolicy:SSLPolicy default {{project}}/{{name}}
/// $ pulumi import gcp:compute/sSLPolicy:SSLPolicy default {{name}}
/// ```
class SSLPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. This can be one of
  /// `COMPATIBLE`, `MODERN`, `RESTRICTED`, or `CUSTOM`. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for which ciphers are available to use. **Note**: this argument
  /// *must* be present when using the `CUSTOM` profile. This argument
  /// *must not* be present when using any other profile.
  late final pulumi.Output<List<String>?> customFeatures;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// The list of features enabled in the SSL policy.
  late final pulumi.Output<List<String>> enabledFeatures;
  /// Fingerprint of this resource. A hash of the contents stored in this
  /// object. This field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;
  /// The minimum version of SSL protocol that can be used by the clients
  /// to establish a connection with the load balancer. When set to`
  /// TLS_1_3`, the profile field must be set to `RESTRICTED`.
  /// Default value is `TLS_1_0`.
  /// Possible values are: `TLS_1_0`, `TLS_1_1`, `TLS_1_2`, `TLS_1_3`.
  late final pulumi.Output<String?> minTlsVersion;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// One of `DEFAULT`, `ENABLED`, or `DEFERRED`. Controls whether the load balancer
  /// negotiates X25519MLKEM768 key exchange when clients advertise support for it.
  /// When set to `DEFAULT`, or if no SSL Policy is attached to
  /// the target proxy, the load balancer disallows X25519MLKEM768 key
  /// exchange before October 2026, and allows it afterward. When set to
  /// `ENABLED`, the load balancer allows X25519MLKEM768 key
  /// exchange. When set to `DEFERRED`, the load balancer
  /// disallows X25519MLKEM768 key exchange until October 2027, and allows
  /// it afterward.
  /// Possible values are: `DEFAULT`, `ENABLED`, `DEFERRED`.
  late final pulumi.Output<String?> postQuantumKeyExchange;
  /// Profile specifies the set of SSL features that can be used by the
  /// load balancer when negotiating SSL with clients. If using `CUSTOM`,
  /// the set of SSL features to enable must be specified in the
  /// `customFeatures` field.
  /// See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
  /// for information on what cipher suites each profile provides. If
  /// `CUSTOM` is used, the `customFeatures` attribute **must be set**.
  /// If set to `FIPS_202205`, `minTlsVersion` must also be set to
  /// `TLS_1_2`.
  /// Default value is `COMPATIBLE`.
  /// Possible values are: `COMPATIBLE`, `MODERN`, `RESTRICTED`, `CUSTOM`, `FIPS_202205`.
  late final pulumi.Output<String?> profile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [SSLPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SSLPolicy]. {@macro pulumi_compute_s_slpolicy_sslpolicy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SSLPolicy(
    String name, {
    SSLPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/sSLPolicy:SSLPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    customFeatures = registerOutput<List<String>?>('customFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabledFeatures = registerOutput<List<String>>('enabledFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    postQuantumKeyExchange = registerOutput<String?>('postQuantumKeyExchange');
    profile = registerOutput<String?>('profile');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [SSLPolicy] resource's state with the given [name] and [id].
  static SSLPolicy get(
    String name,
    pulumi.Input<String> id, {
    SSLPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SSLPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SSLPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/sSLPolicy:SSLPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    customFeatures = registerOutput<List<String>?>('customFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabledFeatures = registerOutput<List<String>>('enabledFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    postQuantumKeyExchange = registerOutput<String?>('postQuantumKeyExchange');
    profile = registerOutput<String?>('profile');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [SSLPolicy] resource.
  SSLPolicy.reference(String urn)
    : super(
        'gcp:compute/sSLPolicy:SSLPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    customFeatures = registerOutput<List<String>?>('customFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabledFeatures = registerOutput<List<String>>('enabledFeatures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    fingerprint = registerOutput<String>('fingerprint');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    postQuantumKeyExchange = registerOutput<String?>('postQuantumKeyExchange');
    profile = registerOutput<String?>('profile');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
  }
}
