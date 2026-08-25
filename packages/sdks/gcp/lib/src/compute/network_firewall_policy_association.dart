import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_association_args.dart';
import 'network_firewall_policy_association_state.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about NetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Network Firewall Policy Association
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.NetworkFirewallPolicy("policy", {
///     name: "my-policy",
///     project: "my-project-name",
///     description: "Sample global network firewall policy",
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.NetworkFirewallPolicyAssociation("default", {
///     name: "my-association",
///     project: "my-project-name",
///     attachmentTarget: network.id,
///     firewallPolicy: policy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.NetworkFirewallPolicy("policy",
///     name="my-policy",
///     project="my-project-name",
///     description="Sample global network firewall policy")
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default = gcp.compute.NetworkFirewallPolicyAssociation("default",
///     name="my-association",
///     project="my-project-name",
///     attachment_target=network.id,
///     firewall_policy=policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.NetworkFirewallPolicy("policy", new()
///     {
///         Name = "my-policy",
///         Project = "my-project-name",
///         Description = "Sample global network firewall policy",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.Compute.NetworkFirewallPolicyAssociation("default", new()
///     {
///         Name = "my-association",
///         Project = "my-project-name",
///         AttachmentTarget = network.Id,
///         FirewallPolicy = policy.Id,
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
/// 		policy, err := compute.NewNetworkFirewallPolicy(ctx, "policy", &compute.NetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("my-policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkFirewallPolicyAssociation(ctx, "default", &compute.NetworkFirewallPolicyAssociationArgs{
/// 			Name:             pulumi.String("my-association"),
/// 			Project:          pulumi.String("my-project-name"),
/// 			AttachmentTarget: network.ID().ToIDOutput().ToStringOutput(),
/// 			FirewallPolicy:   policy.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_networkfirewallpolicy" "policy" {
///   name        = "my-policy"
///   project     = "my-project-name"
///   description = "Sample global network firewall policy"
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_networkfirewallpolicyassociation" "default" {
///   name              = "my-association"
///   project           = "my-project-name"
///   attachment_target = gcp_compute_network.network.id
///   firewall_policy   = gcp_compute_networkfirewallpolicy.policy.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicy;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.NetworkFirewallPolicyAssociationArgs;
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
///         var policy = new NetworkFirewallPolicy("policy", NetworkFirewallPolicyArgs.builder()
///             .name("my-policy")
///             .project("my-project-name")
///             .description("Sample global network firewall policy")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new NetworkFirewallPolicyAssociation("default", NetworkFirewallPolicyAssociationArgs.builder()
///             .name("my-association")
///             .project("my-project-name")
///             .attachmentTarget(network.id())
///             .firewallPolicy(policy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:NetworkFirewallPolicy
///     properties:
///       name: my-policy
///       project: my-project-name
///       description: Sample global network firewall policy
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:compute:NetworkFirewallPolicyAssociation
///     properties:
///       name: my-association
///       project: my-project-name
///       attachmentTarget: ${network.id}
///       firewallPolicy: ${policy.id}
/// ```
///
///
/// ## Import
///
/// NetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
/// * `{{project}}/{{firewall_policy}}/{{name}}`
/// * `{{firewall_policy}}/{{name}}`
///
///
/// When using the `pulumi import` command, NetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// $ pulumi import gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class NetworkFirewallPolicyAssociation extends pulumi.CustomResource {
  /// The target that the firewall policy is attached to.
  late final pulumi.Output<String> attachmentTarget;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The firewall policy of the resource.
  late final pulumi.Output<String> firewallPolicy;
  /// The name for an association.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The short name of the firewall policy of the association.
  late final pulumi.Output<String> shortName;

  /// Creates a new [NetworkFirewallPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFirewallPolicyAssociation]. {@macro pulumi_compute_network_firewall_policy_association_network_firewall_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFirewallPolicyAssociation(
    String name, {
    NetworkFirewallPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    shortName = registerOutput<String>('shortName');
  }

  /// Gets an existing [NetworkFirewallPolicyAssociation] resource's state with the given [name] and [id].
  static NetworkFirewallPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkFirewallPolicyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkFirewallPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkFirewallPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    shortName = registerOutput<String>('shortName');
  }

  /// Creates a typed reference to an existing [NetworkFirewallPolicyAssociation] resource.
  NetworkFirewallPolicyAssociation.reference(String urn)
    : super(
        'gcp:compute/networkFirewallPolicyAssociation:NetworkFirewallPolicyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    shortName = registerOutput<String>('shortName');
  }
}
