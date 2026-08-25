import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_association_args.dart';
import 'region_network_firewall_policy_association_state.dart';

/// The Compute NetworkFirewallPolicyAssociation resource
///
///
/// To get more information about RegionNetworkFirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionNetworkFirewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Region Network Firewall Policy Association
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
///     name: "my-policy",
///     project: "my-project-name",
///     description: "Sample global network firewall policy",
///     region: "us-west1",
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.compute.RegionNetworkFirewallPolicyAssociation("default", {
///     name: "my-association",
///     project: "my-project-name",
///     attachmentTarget: network.id,
///     firewallPolicy: policy.id,
///     region: "us-west1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
///     name="my-policy",
///     project="my-project-name",
///     description="Sample global network firewall policy",
///     region="us-west1")
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// default = gcp.compute.RegionNetworkFirewallPolicyAssociation("default",
///     name="my-association",
///     project="my-project-name",
///     attachment_target=network.id,
///     firewall_policy=policy.id,
///     region="us-west1")
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
///         Name = "my-policy",
///         Project = "my-project-name",
///         Description = "Sample global network firewall policy",
///         Region = "us-west1",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var @default = new Gcp.Compute.RegionNetworkFirewallPolicyAssociation("default", new()
///     {
///         Name = "my-association",
///         Project = "my-project-name",
///         AttachmentTarget = network.Id,
///         FirewallPolicy = policy.Id,
///         Region = "us-west1",
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
/// 		policy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("my-policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Region:      pulumi.String("us-west1"),
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
/// 		_, err = compute.NewRegionNetworkFirewallPolicyAssociation(ctx, "default", &compute.RegionNetworkFirewallPolicyAssociationArgs{
/// 			Name:             pulumi.String("my-association"),
/// 			Project:          pulumi.String("my-project-name"),
/// 			AttachmentTarget: network.ID().ToIDOutput().ToStringOutput(),
/// 			FirewallPolicy:   policy.ID().ToIDOutput().ToStringOutput(),
/// 			Region:           pulumi.String("us-west1"),
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
///   name        = "my-policy"
///   project     = "my-project-name"
///   description = "Sample global network firewall policy"
///   region      = "us-west1"
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_regionnetworkfirewallpolicyassociation" "default" {
///   name              = "my-association"
///   project           = "my-project-name"
///   attachment_target = gcp_compute_network.network.id
///   firewall_policy   = gcp_compute_regionnetworkfirewallpolicy.policy.id
///   region            = "us-west1"
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociationArgs;
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
///             .name("my-policy")
///             .project("my-project-name")
///             .description("Sample global network firewall policy")
///             .region("us-west1")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var default_ = new RegionNetworkFirewallPolicyAssociation("default", RegionNetworkFirewallPolicyAssociationArgs.builder()
///             .name("my-association")
///             .project("my-project-name")
///             .attachmentTarget(network.id())
///             .firewallPolicy(policy.id())
///             .region("us-west1")
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
///       name: my-policy
///       project: my-project-name
///       description: Sample global network firewall policy
///       region: us-west1
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   default:
///     type: gcp:compute:RegionNetworkFirewallPolicyAssociation
///     properties:
///       name: my-association
///       project: my-project-name
///       attachmentTarget: ${network.id}
///       firewallPolicy: ${policy.id}
///       region: us-west1
/// ```
///
/// ### Region Network Firewall Policy Association Priority
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.RegionNetworkFirewallPolicy("policy", {
///     name: "my-policy",
///     project: "my-project-name",
///     description: "Sample global network firewall policy",
///     region: "us-west1",
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const association = new gcp.compute.RegionNetworkFirewallPolicyAssociation("association", {
///     name: "my-association",
///     project: "my-project-name",
///     attachmentTarget: network.id,
///     firewallPolicy: policy.id,
///     region: "us-west1",
///     priority: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.RegionNetworkFirewallPolicy("policy",
///     name="my-policy",
///     project="my-project-name",
///     description="Sample global network firewall policy",
///     region="us-west1")
/// network = gcp.compute.Network("network",
///     name="my-network",
///     auto_create_subnetworks=False)
/// association = gcp.compute.RegionNetworkFirewallPolicyAssociation("association",
///     name="my-association",
///     project="my-project-name",
///     attachment_target=network.id,
///     firewall_policy=policy.id,
///     region="us-west1",
///     priority=1)
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
///         Name = "my-policy",
///         Project = "my-project-name",
///         Description = "Sample global network firewall policy",
///         Region = "us-west1",
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var association = new Gcp.Compute.RegionNetworkFirewallPolicyAssociation("association", new()
///     {
///         Name = "my-association",
///         Project = "my-project-name",
///         AttachmentTarget = network.Id,
///         FirewallPolicy = policy.Id,
///         Region = "us-west1",
///         Priority = 1,
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
/// 		policy, err := compute.NewRegionNetworkFirewallPolicy(ctx, "policy", &compute.RegionNetworkFirewallPolicyArgs{
/// 			Name:        pulumi.String("my-policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Description: pulumi.String("Sample global network firewall policy"),
/// 			Region:      pulumi.String("us-west1"),
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
/// 		_, err = compute.NewRegionNetworkFirewallPolicyAssociation(ctx, "association", &compute.RegionNetworkFirewallPolicyAssociationArgs{
/// 			Name:             pulumi.String("my-association"),
/// 			Project:          pulumi.String("my-project-name"),
/// 			AttachmentTarget: network.ID().ToIDOutput().ToStringOutput(),
/// 			FirewallPolicy:   policy.ID().ToIDOutput().ToStringOutput(),
/// 			Region:           pulumi.String("us-west1"),
/// 			Priority:         pulumi.Int(1),
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
///   name        = "my-policy"
///   project     = "my-project-name"
///   description = "Sample global network firewall policy"
///   region      = "us-west1"
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_regionnetworkfirewallpolicyassociation" "association" {
///   name              = "my-association"
///   project           = "my-project-name"
///   attachment_target = gcp_compute_network.network.id
///   firewall_policy   = gcp_compute_regionnetworkfirewallpolicy.policy.id
///   region            = "us-west1"
///   priority          = 1
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.RegionNetworkFirewallPolicyAssociationArgs;
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
///             .name("my-policy")
///             .project("my-project-name")
///             .description("Sample global network firewall policy")
///             .region("us-west1")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var association = new RegionNetworkFirewallPolicyAssociation("association", RegionNetworkFirewallPolicyAssociationArgs.builder()
///             .name("my-association")
///             .project("my-project-name")
///             .attachmentTarget(network.id())
///             .firewallPolicy(policy.id())
///             .region("us-west1")
///             .priority(1)
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
///       name: my-policy
///       project: my-project-name
///       description: Sample global network firewall policy
///       region: us-west1
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
///   association:
///     type: gcp:compute:RegionNetworkFirewallPolicyAssociation
///     properties:
///       name: my-association
///       project: my-project-name
///       attachmentTarget: ${network.id}
///       firewallPolicy: ${policy.id}
///       region: us-west1
///       priority: 1
/// ```
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
/// * `{{project}}/{{region}}/{{firewall_policy}}/{{name}}`
/// * `{{region}}/{{firewall_policy}}/{{name}}`
/// * `{{project}}/{{firewall_policy}}/{{name}}`
/// * `{{firewall_policy}}/{{name}}`
///
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default projects/{{project}}/regions/{{region}}/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{region}}/{{firewall_policy}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{region}}/{{firewall_policy}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{project}}/{{firewall_policy}}/{{name}}
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class RegionNetworkFirewallPolicyAssociation extends pulumi.CustomResource {
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
  /// (Optional, Beta)
  /// An integer indicating the priority of an association.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The location of this resource.
  late final pulumi.Output<String> region;
  /// The short name of the firewall policy of the association.
  late final pulumi.Output<String> shortName;

  /// Creates a new [RegionNetworkFirewallPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkFirewallPolicyAssociation]. {@macro pulumi_compute_region_network_firewall_policy_association_region_network_firewall_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkFirewallPolicyAssociation(
    String name, {
    RegionNetworkFirewallPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    shortName = registerOutput<String>('shortName');
  }

  /// Gets an existing [RegionNetworkFirewallPolicyAssociation] resource's state with the given [name] and [id].
  static RegionNetworkFirewallPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkFirewallPolicyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkFirewallPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkFirewallPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    shortName = registerOutput<String>('shortName');
  }

  /// Creates a typed reference to an existing [RegionNetworkFirewallPolicyAssociation] resource.
  RegionNetworkFirewallPolicyAssociation.reference(String urn)
    : super(
        'gcp:compute/regionNetworkFirewallPolicyAssociation:RegionNetworkFirewallPolicyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    shortName = registerOutput<String>('shortName');
  }
}
