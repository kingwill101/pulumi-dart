import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_args.dart';
import 'region_network_firewall_policy_state.dart';

/// The Compute NetworkFirewallPolicy resource
///
///
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
///     name: "tf-test-policy",
///     description: "Terraform test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
///     name="tf-test-policy",
///     description="Terraform test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicy("policy", new()
///     {
///         Name = "tf-test-policy",
///         Description = "Terraform test",
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("tf-test-policy"),
/// 			Description: pulumi.String("Terraform test"),
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
/// resource "gcp_compute_regionnetworkfirewallpolicy" "policy" {
///   name        = "tf-test-policy"
///   description = "Terraform test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
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
///         var policy = new RegionNetworkFirewallPolicy("policy", RegionNetworkFirewallPolicyArgs.builder()
///             .name("tf-test-policy")
///             .description("Terraform test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicy
///     properties:
///       name: tf-test-policy
///       description: Terraform test
/// ```
///
/// ### Region Network Firewall Policy Roce
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
///     name: "rnf-policy",
///     description: "Terraform test",
///     policyType: "RDMA_ROCE_POLICY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
///     name="rnf-policy",
///     description="Terraform test",
///     policy_type="RDMA_ROCE_POLICY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.RegionNetworkFirewallPolicy("policy", new()
///     {
///         Name = "rnf-policy",
///         Description = "Terraform test",
///         PolicyType = "RDMA_ROCE_POLICY",
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
/// 		_, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("rnf-policy"),
/// 			Description: pulumi.String("Terraform test"),
/// 			PolicyType:  pulumi.String("RDMA_ROCE_POLICY"),
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
/// resource "gcp_compute_regionnetworkfirewallpolicy" "policy" {
///   name        = "rnf-policy"
///   description = "Terraform test"
///   policy_type = "RDMA_ROCE_POLICY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyArgs;
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
///         var policy = new RegionNetworkFirewallPolicy("policy", RegionNetworkFirewallPolicyArgs.builder()
///             .name("rnf-policy")
///             .description("Terraform test")
///             .policyType("RDMA_ROCE_POLICY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkFirewallPolicy
///     properties:
///       name: rnf-policy
///       description: Terraform test
///       policyType: RDMA_ROCE_POLICY
/// ```
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy default {{name}}
/// ```
class RegionNetworkFirewallPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;
  /// User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`, `RDMA_FALCON_POLICY`, `ULL_POLICY`.
  late final pulumi.Output<String> policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of this resource.
  late final pulumi.Output<String> region;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> regionNetworkFirewallPolicyId;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [RegionNetworkFirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicy]. {@macro pulumi_compute_region_network_firewall_policy_region_network_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicy(
    String name, {
    RegionNetworkFirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String>('policyType');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkFirewallPolicyId = registerOutput<String>('regionNetworkFirewallPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Gets an existing [RegionNetworkFirewallPolicy] resource's state with the given [name] and [id].
  static RegionNetworkFirewallPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkFirewallPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkFirewallPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkFirewallPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String>('policyType');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkFirewallPolicyId = registerOutput<String>('regionNetworkFirewallPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Creates a typed reference to an existing [RegionNetworkFirewallPolicy] resource.
  RegionNetworkFirewallPolicy.reference(String urn)
    : super(
        'gcp:compute/regionNetworkFirewallPolicy:RegionNetworkFirewallPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String>('policyType');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkFirewallPolicyId = registerOutput<String>('regionNetworkFirewallPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
