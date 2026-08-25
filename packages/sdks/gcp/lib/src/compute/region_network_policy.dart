import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_args.dart';
import 'region_network_policy_association.dart';
import 'region_network_policy_state.dart';

/// The Compute NetworkFirewallPolicy resource
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Region Network Policy Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkPolicy("policy", {
///     name: "region-np-full",
///     description: "Terraform network policy create test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkPolicy("policy",
///     name="region-np-full",
///     description="Terraform network policy create test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.RegionNetworkPolicy("policy", new()
///     {
///         Name = "region-np-full",
///         Description = "Terraform network policy create test",
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
/// 		_, err := compute.NewRegionNetworkPolicy(ctx, "policy", &compute.RegionNetworkPolicyArgs{
/// 			Name:        pulumi.String("region-np-full"),
/// 			Description: pulumi.String("Terraform network policy create test"),
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
/// resource "gcp_compute_regionnetworkpolicy" "policy" {
///   name        = "region-np-full"
///   description = "Terraform network policy create test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionNetworkPolicy;
/// import com.pulumi.gcp.compute.RegionNetworkPolicyArgs;
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
///         var policy = new RegionNetworkPolicy("policy", RegionNetworkPolicyArgs.builder()
///             .name("region-np-full")
///             .description("Terraform network policy create test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:RegionNetworkPolicy
///     properties:
///       name: region-np-full
///       description: Terraform network policy create test
/// ```
///
///
/// ## Import
///
/// RegionNetworkPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkPolicies/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionNetworkPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkPolicy:RegionNetworkPolicy default projects/{{project}}/regions/{{region}}/networkPolicies/{{name}}
/// $ pulumi import gcp:compute/regionNetworkPolicy:RegionNetworkPolicy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkPolicy:RegionNetworkPolicy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkPolicy:RegionNetworkPolicy default {{name}}
/// ```
class RegionNetworkPolicy extends pulumi.CustomResource {
  /// [Output Only] A list of associations that belong to this network policy.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionNetworkPolicyAssociation>> associations;
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
  /// User-provided name of the Network policy. The name should be unique in the project in which the policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of this resource.
  late final pulumi.Output<String> region;
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> regionNetworkPolicyId;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// Creates a new [RegionNetworkPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkPolicy]. {@macro pulumi_compute_region_network_policy_region_network_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkPolicy(
    String name, {
    RegionNetworkPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkPolicy:RegionNetworkPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    associations = registerOutput<List<RegionNetworkPolicyAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyAssociation>(guardedValue, (value) => RegionNetworkPolicyAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkPolicyId = registerOutput<String>('regionNetworkPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Gets an existing [RegionNetworkPolicy] resource's state with the given [name] and [id].
  static RegionNetworkPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkPolicy:RegionNetworkPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associations = registerOutput<List<RegionNetworkPolicyAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyAssociation>(guardedValue, (value) => RegionNetworkPolicyAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkPolicyId = registerOutput<String>('regionNetworkPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }

  /// Creates a typed reference to an existing [RegionNetworkPolicy] resource.
  RegionNetworkPolicy.reference(String urn)
    : super(
        'gcp:compute/regionNetworkPolicy:RegionNetworkPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associations = registerOutput<List<RegionNetworkPolicyAssociation>>('associations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyAssociation>(guardedValue, (value) => RegionNetworkPolicyAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    regionNetworkPolicyId = registerOutput<String>('regionNetworkPolicyId');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
