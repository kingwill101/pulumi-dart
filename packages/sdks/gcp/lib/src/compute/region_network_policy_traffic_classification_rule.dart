import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_traffic_classification_rule_action.dart';
import 'region_network_policy_traffic_classification_rule_args.dart';
import 'region_network_policy_traffic_classification_rule_match.dart';
import 'region_network_policy_traffic_classification_rule_state.dart';
import 'region_network_policy_traffic_classification_rule_target_secure_tag.dart';

/// Represents a traffic classification rule that describes one or more match conditions along with the action to be taken when traffic matches this condition.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about RegionNetworkPolicyTrafficClassificationRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkPolicies/addTrafficClassificationRule)
///
/// ## Example Usage
///
/// ### Region Network Policy Traffic Classification Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicRegionalNetworkPolicy = new gcp.compute.RegionNetworkPolicy("basic_regional_network_policy", {
///     name: "nw-policy",
///     description: "Sample regional network firewall policy",
///     project: "my-project-name",
///     region: "us-west1",
/// });
/// const primary = new gcp.compute.RegionNetworkPolicyTrafficClassificationRule("primary", {
///     ruleName: "test-rule",
///     description: "This is a simple rule description",
///     disabled: false,
///     networkPolicy: basicRegionalNetworkPolicy.name,
///     priority: 1000,
///     region: "us-west1",
///     action: {
///         trafficClass: "TC1",
///         dscpMode: "AUTO",
///     },
///     match: {
///         srcIpRanges: ["10.100.0.1/32"],
///         destIpRanges: ["11.100.0.1/32"],
///         layer4Configs: [{
///             ipProtocol: "all",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_regional_network_policy = gcp.compute.RegionNetworkPolicy("basic_regional_network_policy",
///     name="nw-policy",
///     description="Sample regional network firewall policy",
///     project="my-project-name",
///     region="us-west1")
/// primary = gcp.compute.RegionNetworkPolicyTrafficClassificationRule("primary",
///     rule_name="test-rule",
///     description="This is a simple rule description",
///     disabled=False,
///     network_policy=basic_regional_network_policy.name,
///     priority=1000,
///     region="us-west1",
///     action={
///         "traffic_class": "TC1",
///         "dscp_mode": "AUTO",
///     },
///     match={
///         "src_ip_ranges": ["10.100.0.1/32"],
///         "dest_ip_ranges": ["11.100.0.1/32"],
///         "layer4_configs": [{
///             "ip_protocol": "all",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicRegionalNetworkPolicy = new Gcp.Compute.RegionNetworkPolicy("basic_regional_network_policy", new()
///     {
///         Name = "nw-policy",
///         Description = "Sample regional network firewall policy",
///         Project = "my-project-name",
///         Region = "us-west1",
///     });
///
///     var primary = new Gcp.Compute.RegionNetworkPolicyTrafficClassificationRule("primary", new()
///     {
///         RuleName = "test-rule",
///         Description = "This is a simple rule description",
///         Disabled = false,
///         NetworkPolicy = basicRegionalNetworkPolicy.Name,
///         Priority = 1000,
///         Region = "us-west1",
///         Action = new Gcp.Compute.Inputs.RegionNetworkPolicyTrafficClassificationRuleActionArgs
///         {
///             TrafficClass = "TC1",
///             DscpMode = "AUTO",
///         },
///         Match = new Gcp.Compute.Inputs.RegionNetworkPolicyTrafficClassificationRuleMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "10.100.0.1/32",
///             },
///             DestIpRanges = new[]
///             {
///                 "11.100.0.1/32",
///             },
///             Layer4Configs = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionNetworkPolicyTrafficClassificationRuleMatchLayer4ConfigArgs
///                 {
///                     IpProtocol = "all",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicRegionalNetworkPolicy, err := compute.NewRegionNetworkPolicy(ctx, "basic_regional_network_policy", &compute.RegionNetworkPolicyArgs{
/// 			Name:        pulumi.String("nw-policy"),
/// 			Description: pulumi.String("Sample regional network firewall policy"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Region:      pulumi.String("us-west1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionNetworkPolicyTrafficClassificationRule(ctx, "primary", &compute.RegionNetworkPolicyTrafficClassificationRuleArgs{
/// 			RuleName:      pulumi.String("test-rule"),
/// 			Description:   pulumi.String("This is a simple rule description"),
/// 			Disabled:      pulumi.Bool(false),
/// 			NetworkPolicy: basicRegionalNetworkPolicy.Name,
/// 			Priority:      pulumi.Int(1000),
/// 			Region:        pulumi.String("us-west1"),
/// 			Action: &compute.RegionNetworkPolicyTrafficClassificationRuleActionArgs{
/// 				TrafficClass: pulumi.String("TC1"),
/// 				DscpMode:     pulumi.String("AUTO"),
/// 			},
/// 			Match: &compute.RegionNetworkPolicyTrafficClassificationRuleMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.100.0.1/32"),
/// 				},
/// 				DestIpRanges: pulumi.StringArray{
/// 					pulumi.String("11.100.0.1/32"),
/// 				},
/// 				Layer4Configs: compute.RegionNetworkPolicyTrafficClassificationRuleMatchLayer4ConfigArray{
/// 					&compute.RegionNetworkPolicyTrafficClassificationRuleMatchLayer4ConfigArgs{
/// 						IpProtocol: pulumi.String("all"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionnetworkpolicy" "basic_regional_network_policy" {
///   name        = "nw-policy"
///   description = "Sample regional network firewall policy"
///   project     = "my-project-name"
///   region      = "us-west1"
/// }
/// resource "gcp_compute_regionnetworkpolicytrafficclassificationrule" "primary" {
///   rule_name      = "test-rule"
///   description    = "This is a simple rule description"
///   disabled       = false
///   network_policy = gcp_compute_regionnetworkpolicy.basic_regional_network_policy.name
///   priority       = 1000
///   region         = "us-west1"
///   action = {
///     traffic_class = "TC1"
///     dscp_mode     = "AUTO"
///   }
///   match = {
///     src_ip_ranges  = ["10.100.0.1/32"]
///     dest_ip_ranges = ["11.100.0.1/32"]
///     layer4_configs = [{
///       "ipProtocol" = "all"
///     }]
///   }
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
/// import com.pulumi.gcp.compute.RegionNetworkPolicyTrafficClassificationRule;
/// import com.pulumi.gcp.compute.RegionNetworkPolicyTrafficClassificationRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkPolicyTrafficClassificationRuleActionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkPolicyTrafficClassificationRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionNetworkPolicyTrafficClassificationRuleMatchLayer4ConfigArgs;
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
///         var basicRegionalNetworkPolicy = new RegionNetworkPolicy("basicRegionalNetworkPolicy", RegionNetworkPolicyArgs.builder()
///             .name("nw-policy")
///             .description("Sample regional network firewall policy")
///             .project("my-project-name")
///             .region("us-west1")
///             .build());
///
///         var primary = new RegionNetworkPolicyTrafficClassificationRule("primary", RegionNetworkPolicyTrafficClassificationRuleArgs.builder()
///             .ruleName("test-rule")
///             .description("This is a simple rule description")
///             .disabled(false)
///             .networkPolicy(basicRegionalNetworkPolicy.name())
///             .priority(1000)
///             .region("us-west1")
///             .action(RegionNetworkPolicyTrafficClassificationRuleActionArgs.builder()
///                 .trafficClass("TC1")
///                 .dscpMode("AUTO")
///                 .build())
///             .match(RegionNetworkPolicyTrafficClassificationRuleMatchArgs.builder()
///                 .srcIpRanges("10.100.0.1/32")
///                 .destIpRanges("11.100.0.1/32")
///                 .layer4Configs(RegionNetworkPolicyTrafficClassificationRuleMatchLayer4ConfigArgs.builder()
///                     .ipProtocol("all")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicRegionalNetworkPolicy:
///     type: gcp:compute:RegionNetworkPolicy
///     name: basic_regional_network_policy
///     properties:
///       name: nw-policy
///       description: Sample regional network firewall policy
///       project: my-project-name
///       region: us-west1
///   primary:
///     type: gcp:compute:RegionNetworkPolicyTrafficClassificationRule
///     properties:
///       ruleName: test-rule
///       description: This is a simple rule description
///       disabled: false
///       networkPolicy: ${basicRegionalNetworkPolicy.name}
///       priority: 1000
///       region: us-west1
///       action:
///         trafficClass: TC1
///         dscpMode: AUTO
///       match:
///         srcIpRanges:
///           - 10.100.0.1/32
///         destIpRanges:
///           - 11.100.0.1/32
///         layer4Configs:
///           - ipProtocol: all
/// ```
///
///
/// ## Import
///
/// RegionNetworkPolicyTrafficClassificationRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkPolicies/{{network_policy}}/{{priority}}`
/// * `{{project}}/{{region}}/{{network_policy}}/{{priority}}`
/// * `{{region}}/{{network_policy}}/{{priority}}`
/// * `{{network_policy}}/{{priority}}`
///
///
/// When using the `pulumi import` command, RegionNetworkPolicyTrafficClassificationRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule default projects/{{project}}/regions/{{region}}/networkPolicies/{{network_policy}}/{{priority}}
/// $ pulumi import gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule default {{project}}/{{region}}/{{network_policy}}/{{priority}}
/// $ pulumi import gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule default {{region}}/{{network_policy}}/{{priority}}
/// $ pulumi import gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule default {{network_policy}}/{{priority}}
/// ```
class RegionNetworkPolicyTrafficClassificationRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkPolicyTrafficClassificationRuleAction?> action;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description for this resource.
  late final pulumi.Output<String?> description;
  /// Denotes whether the network policy rule is disabled.
  /// When set to true, the network policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the network policy rule will be enabled.
  late final pulumi.Output<bool?> disabled;
  /// Type of the resource. Alwayscompute#networkPolicyTrafficClassificationRule for network policy traffic classification rules
  late final pulumi.Output<String> kind;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<RegionNetworkPolicyTrafficClassificationRuleMatch> match;
  /// The firewall policy of the resource.
  late final pulumi.Output<String> networkPolicy;
  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 1 and 2147482647.
  /// The priority values from 2147482648 to 2147483647 (1000) are reserved for system default network policy rules.
  /// Rules are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The location of this resource.
  late final pulumi.Output<String> region;
  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  late final pulumi.Output<String?> ruleName;
  /// Calculation of the complexity of a single network policy rule.
  late final pulumi.Output<int> ruleTupleCount;
  /// A list of secure tags that controls which instances the traffic classification rule applies to.
  /// If targetSecureTag are specified, then the traffic classification rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>?> targetSecureTags;
  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionNetworkPolicyTrafficClassificationRule]. {@macro pulumi_compute_region_network_policy_traffic_classification_rule_region_network_policy_traffic_classification_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionNetworkPolicyTrafficClassificationRule(
    String name, {
    RegionNetworkPolicyTrafficClassificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    action = registerOutput<RegionNetworkPolicyTrafficClassificationRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    kind = registerOutput<String>('kind');
    match = registerOutput<RegionNetworkPolicyTrafficClassificationRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkPolicy = registerOutput<String>('networkPolicy');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    targetSecureTags = registerOutput<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [RegionNetworkPolicyTrafficClassificationRule] resource's state with the given [name] and [id].
  static RegionNetworkPolicyTrafficClassificationRule get(
    String name,
    pulumi.Input<String> id, {
    RegionNetworkPolicyTrafficClassificationRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionNetworkPolicyTrafficClassificationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionNetworkPolicyTrafficClassificationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<RegionNetworkPolicyTrafficClassificationRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    kind = registerOutput<String>('kind');
    match = registerOutput<RegionNetworkPolicyTrafficClassificationRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkPolicy = registerOutput<String>('networkPolicy');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    targetSecureTags = registerOutput<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [RegionNetworkPolicyTrafficClassificationRule] resource.
  RegionNetworkPolicyTrafficClassificationRule.reference(String urn)
    : super(
        'gcp:compute/regionNetworkPolicyTrafficClassificationRule:RegionNetworkPolicyTrafficClassificationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<RegionNetworkPolicyTrafficClassificationRuleAction?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    kind = registerOutput<String>('kind');
    match = registerOutput<RegionNetworkPolicyTrafficClassificationRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkPolicy = registerOutput<String>('networkPolicy');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    ruleName = registerOutput<String?>('ruleName');
    ruleTupleCount = registerOutput<int>('ruleTupleCount');
    targetSecureTags = registerOutput<List<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>?>('targetSecureTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag>(guardedValue, (value) => RegionNetworkPolicyTrafficClassificationRuleTargetSecureTag.fromMap((value as Map).cast<String, dynamic>())); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
