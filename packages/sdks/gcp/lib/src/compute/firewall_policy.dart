import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_args.dart';
import 'firewall_policy_state.dart';

/// Hierarchical firewall policy rules let you create and enforce a consistent firewall policy across your organization. Rules can explicitly allow or deny connections or delegate evaluation to lower level policies. Policies can be created within organizations or folders.
///
/// This resource should be generally be used with `gcp.compute.FirewallPolicyAssociation` and `gcp.compute.FirewallPolicyRule`
///
/// For more information see the [official documentation](https://cloud.google.com/vpc/docs/firewall-policies)
///
///
/// To get more information about FirewallPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies)
///
/// ## Example Usage
///
/// ### Firewall Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.FirewallPolicy("default", {
///     parent: "organizations/123456789",
///     shortName: "my-policy",
///     description: "Example Resource",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.FirewallPolicy("default",
///     parent="organizations/123456789",
///     short_name="my-policy",
///     description="Example Resource")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.FirewallPolicy("default", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "my-policy",
///         Description = "Example Resource",
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
/// 		_, err := compute.NewFirewallPolicy(ctx, "default", &compute.FirewallPolicyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("my-policy"),
/// 			Description: pulumi.String("Example Resource"),
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
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
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
///         var default_ = new FirewallPolicy("default", FirewallPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("my-policy")
///             .description("Example Resource")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: organizations/123456789
///       shortName: my-policy
///       description: Example Resource
/// ```
///
///
/// ## Import
///
/// FirewallPolicy can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FirewallPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicy:FirewallPolicy default locations/global/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicy:FirewallPolicy default {{name}}
/// ```
class FirewallPolicy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> firewallPolicyId;

  /// Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
  late final pulumi.Output<String> name;

  /// The parent of the firewall policy.
  late final pulumi.Output<String> parent;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  /// This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> shortName;

  /// Creates a new [FirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicy]. {@macro pulumi_compute_firewall_policy_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/firewallPolicy:FirewallPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    firewallPolicyId = registerOutput<String>('firewallPolicyId');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    shortName = registerOutput<String>('shortName');
  }

  /// Gets an existing [FirewallPolicy] resource's state with the given [name] and [id].
  static FirewallPolicy get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyState? state,
  }) {
    return FirewallPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/firewallPolicy:FirewallPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    firewallPolicyId = registerOutput<String>('firewallPolicyId');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    shortName = registerOutput<String>('shortName');
  }
}
