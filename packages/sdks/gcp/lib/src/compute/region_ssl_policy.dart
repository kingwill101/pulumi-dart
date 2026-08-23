import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_args.dart';
import 'region_ssl_policy_state.dart';

/// Represents a Regional SSL policy. SSL policies give you the ability to control the
/// features of SSL that your SSL proxy or HTTPS load balancer negotiates.
///
///
/// To get more information about RegionSslPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslPolicies)
/// * How-to Guides
/// * [Using SSL Policies](https://cloud.google.com/compute/docs/load-balancing/ssl-policies)
///
/// ## Example Usage
///
/// ### Region Ssl Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const region_ssl_policy = new gcp.compute.RegionSslPolicy("region-ssl-policy", {
///     name: "region-ssl-policy",
///     region: "us-central1",
///     profile: "MODERN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// region_ssl_policy = gcp.compute.RegionSslPolicy("region-ssl-policy",
///     name="region-ssl-policy",
///     region="us-central1",
///     profile="MODERN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var region_ssl_policy = new Gcp.Compute.RegionSslPolicy("region-ssl-policy", new()
///     {
///         Name = "region-ssl-policy",
///         Region = "us-central1",
///         Profile = "MODERN",
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
/// 		_, err := compute.NewRegionSslPolicy(ctx, "region-ssl-policy", &compute.RegionSslPolicyArgs{
/// 			Name:    pulumi.String("region-ssl-policy"),
/// 			Region:  pulumi.String("us-central1"),
/// 			Profile: pulumi.String("MODERN"),
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
/// resource "gcp_compute_regionsslpolicy" "region-ssl-policy" {
///   name    = "region-ssl-policy"
///   region  = "us-central1"
///   profile = "MODERN"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSslPolicy;
/// import com.pulumi.gcp.compute.RegionSslPolicyArgs;
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
///         var region_ssl_policy = new RegionSslPolicy("region-ssl-policy", RegionSslPolicyArgs.builder()
///             .name("region-ssl-policy")
///             .region("us-central1")
///             .profile("MODERN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-ssl-policy:
///     type: gcp:compute:RegionSslPolicy
///     properties:
///       name: region-ssl-policy
///       region: us-central1
///       profile: MODERN
/// ```
///
/// ### Region Ssl Policy Post Quantum
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const post_quantum_region_ssl_policy = new gcp.compute.RegionSslPolicy("post-quantum-region-ssl-policy", {
///     name: "post-quantum-region-ssl-policy",
///     region: "us-central1",
///     profile: "MODERN",
///     minTlsVersion: "TLS_1_2",
///     postQuantumKeyExchange: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// post_quantum_region_ssl_policy = gcp.compute.RegionSslPolicy("post-quantum-region-ssl-policy",
///     name="post-quantum-region-ssl-policy",
///     region="us-central1",
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
///     var post_quantum_region_ssl_policy = new Gcp.Compute.RegionSslPolicy("post-quantum-region-ssl-policy", new()
///     {
///         Name = "post-quantum-region-ssl-policy",
///         Region = "us-central1",
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
/// 		_, err := compute.NewRegionSslPolicy(ctx, "post-quantum-region-ssl-policy", &compute.RegionSslPolicyArgs{
/// 			Name:                   pulumi.String("post-quantum-region-ssl-policy"),
/// 			Region:                 pulumi.String("us-central1"),
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
/// resource "gcp_compute_regionsslpolicy" "post-quantum-region-ssl-policy" {
///   name                      = "post-quantum-region-ssl-policy"
///   region                    = "us-central1"
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
/// import com.pulumi.gcp.compute.RegionSslPolicy;
/// import com.pulumi.gcp.compute.RegionSslPolicyArgs;
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
///         var post_quantum_region_ssl_policy = new RegionSslPolicy("post-quantum-region-ssl-policy", RegionSslPolicyArgs.builder()
///             .name("post-quantum-region-ssl-policy")
///             .region("us-central1")
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
///   post-quantum-region-ssl-policy:
///     type: gcp:compute:RegionSslPolicy
///     properties:
///       name: post-quantum-region-ssl-policy
///       region: us-central1
///       profile: MODERN
///       minTlsVersion: TLS_1_2
///       postQuantumKeyExchange: ENABLED
/// ```
///
///
/// ## Import
///
/// RegionSslPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/sslPolicies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionSslPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default projects/{{project}}/regions/{{region}}/sslPolicies/{{name}}
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSslPolicy:RegionSslPolicy default {{name}}
/// ```
class RegionSslPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// A list of features enabled when the selected profile is CUSTOM. The
  /// method returns the set of features that can be specified in this
  /// list. This field must be empty if the profile is not CUSTOM.
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
  /// to establish a connection with the load balancer. When set to
  /// `TLS_1_3`, the profile field must be set to `RESTRICTED`.
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
  /// One of `DEFAULT`, `ENABLED`, or `DEFERRED`. Controls whether the load balancer negotiates
  /// X25519MLKEM768 key exchange when clients advertise support for it.
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
  /// The region where the regional SSL policy resides.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionSslPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSslPolicy]. {@macro pulumi_compute_region_ssl_policy_region_ssl_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSslPolicy(
    String name, {
    RegionSslPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslPolicy:RegionSslPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    customFeatures = registerOutput<List<String>?>('customFeatures');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabledFeatures = registerOutput<List<String>>('enabledFeatures');
    fingerprint = registerOutput<String>('fingerprint');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    postQuantumKeyExchange = registerOutput<String?>('postQuantumKeyExchange');
    profile = registerOutput<String?>('profile');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [RegionSslPolicy] resource's state with the given [name] and [id].
  static RegionSslPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegionSslPolicyState? state,
  }) {
    return RegionSslPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionSslPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslPolicy:RegionSslPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    customFeatures = registerOutput<List<String>?>('customFeatures');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabledFeatures = registerOutput<List<String>>('enabledFeatures');
    fingerprint = registerOutput<String>('fingerprint');
    minTlsVersion = registerOutput<String?>('minTlsVersion');
    this.name = registerOutput<String>('name');
    postQuantumKeyExchange = registerOutput<String?>('postQuantumKeyExchange');
    profile = registerOutput<String?>('profile');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}
