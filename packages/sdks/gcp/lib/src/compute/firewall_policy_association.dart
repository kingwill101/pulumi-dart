import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_association_args.dart';
import 'firewall_policy_association_state.dart';

/// Allows associating hierarchical firewall policies with the target where they are applied. This allows creating policies and rules in a different location than they are applied.
/// For more information on applying hierarchical firewall policies see the [official documentation](https://cloud.google.com/firewall/docs/firewall-policies#managing_hierarchical_firewall_policy_resources)
///
///
/// To get more information about FirewallPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/firewallPolicies/addAssociation)
///
/// ## Example Usage
///
/// ### Firewall Policy Association
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "folder-fpa",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const policy = new gcp.compute.FirewallPolicy("policy", {
///     parent: "organizations/123456789",
///     shortName: "my-policy",
///     description: "Example Resource",
/// });
/// const _default = new gcp.compute.FirewallPolicyAssociation("default", {
///     firewallPolicy: policy.id,
///     attachmentTarget: folder.name,
///     name: "my-association",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="folder-fpa",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// policy = gcp.compute.FirewallPolicy("policy",
///     parent="organizations/123456789",
///     short_name="my-policy",
///     description="Example Resource")
/// default = gcp.compute.FirewallPolicyAssociation("default",
///     firewall_policy=policy.id,
///     attachment_target=folder.name,
///     name="my-association")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "folder-fpa",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var policy = new Gcp.Compute.FirewallPolicy("policy", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "my-policy",
///         Description = "Example Resource",
///     });
///
///     var @default = new Gcp.Compute.FirewallPolicyAssociation("default", new()
///     {
///         FirewallPolicy = policy.Id,
///         AttachmentTarget = folder.Name,
///         Name = "my-association",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-fpa"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := compute.NewFirewallPolicy(ctx, "policy", &compute.FirewallPolicyArgs{
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			ShortName:   pulumi.String("my-policy"),
/// 			Description: pulumi.String("Example Resource"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewFirewallPolicyAssociation(ctx, "default", &compute.FirewallPolicyAssociationArgs{
/// 			FirewallPolicy:   policy.ID().ToIDOutput().ToStringOutput(),
/// 			AttachmentTarget: folder.Name,
/// 			Name:             pulumi.String("my-association"),
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
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "folder-fpa"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_compute_firewallpolicy" "policy" {
///   parent      = "organizations/123456789"
///   short_name  = "my-policy"
///   description = "Example Resource"
/// }
/// resource "gcp_compute_firewallpolicyassociation" "default" {
///   firewall_policy   = gcp_compute_firewallpolicy.policy.id
///   attachment_target = gcp_organizations_folder.folder.name
///   name              = "my-association"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.FirewallPolicy;
/// import com.pulumi.gcp.compute.FirewallPolicyArgs;
/// import com.pulumi.gcp.compute.FirewallPolicyAssociation;
/// import com.pulumi.gcp.compute.FirewallPolicyAssociationArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("folder-fpa")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var policy = new FirewallPolicy("policy", FirewallPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("my-policy")
///             .description("Example Resource")
///             .build());
///
///         var default_ = new FirewallPolicyAssociation("default", FirewallPolicyAssociationArgs.builder()
///             .firewallPolicy(policy.id())
///             .attachmentTarget(folder.name())
///             .name("my-association")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: folder-fpa
///       parent: organizations/123456789
///       deletionProtection: false
///   policy:
///     type: gcp:compute:FirewallPolicy
///     properties:
///       parent: organizations/123456789
///       shortName: my-policy
///       description: Example Resource
///   default:
///     type: gcp:compute:FirewallPolicyAssociation
///     properties:
///       firewallPolicy: ${policy.id}
///       attachmentTarget: ${folder.name}
///       name: my-association
/// ```
///
/// ## Import
///
/// FirewallPolicyAssociation can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}`
/// * `{{firewall_policy}}/{{name}}`
///
///
/// When using the `pulumi import` command, FirewallPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation default locations/global/firewallPolicies/{{firewall_policy}}/associations/{{name}}
/// $ pulumi import gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation default {{firewall_policy}}/{{name}}
/// ```
class FirewallPolicyAssociation extends pulumi.CustomResource {
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
  /// This field can be updated to refer to a different Firewall Policy, which will create a new association from that new
  /// firewall policy with the flag to override the existing attachmentTarget's policy association.
  /// **Note** Due to potential risks with this operation it is *highly* recommended to use the `createBeforeDestroy` life cycle option
  /// on your exisiting firewall policy so as to prevent a situation where your attachment target has no associated policy.
  late final pulumi.Output<String> firewallPolicy;
  /// The name for an association.
  late final pulumi.Output<String> name;
  /// The short name of the firewall policy of the association.
  late final pulumi.Output<String> shortName;

  /// Creates a new [FirewallPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyAssociation]. {@macro pulumi_compute_firewall_policy_association_firewall_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyAssociation(
    String name, {
    FirewallPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    shortName = registerOutput<String>('shortName');
  }

  /// Gets an existing [FirewallPolicyAssociation] resource's state with the given [name] and [id].
  static FirewallPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FirewallPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FirewallPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    shortName = registerOutput<String>('shortName');
  }

  /// Creates a typed reference to an existing [FirewallPolicyAssociation] resource.
  FirewallPolicyAssociation.reference(String urn)
    : super(
        'gcp:compute/firewallPolicyAssociation:FirewallPolicyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attachmentTarget = registerOutput<String>('attachmentTarget');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    firewallPolicy = registerOutput<String>('firewallPolicy');
    this.name = registerOutput<String>('name');
    shortName = registerOutput<String>('shortName');
  }
}
