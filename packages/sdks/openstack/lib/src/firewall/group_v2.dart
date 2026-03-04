import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_v2_args.dart';
import 'group_v2_state.dart';

/// Manages a v2 firewall group resource within OpenStack.
///
/// &gt; **Note:** Firewall v2 has no support for OVN currently.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const rule1 = new openstack.firewall.RuleV2("rule_1", {
///     name: "firewall_rule_2",
///     description: "drop TELNET traffic",
///     action: "deny",
///     protocol: "tcp",
///     destinationPort: "23",
///     enabled: true,
/// });
/// const rule2 = new openstack.firewall.RuleV2("rule_2", {
///     name: "firewall_rule_1",
///     description: "drop NTP traffic",
///     action: "deny",
///     protocol: "udp",
///     destinationPort: "123",
///     enabled: false,
/// });
/// const policy1 = new openstack.firewall.PolicyV2("policy_1", {
///     name: "firewall_ingress_policy",
///     rules: [rule1.id],
/// });
/// const policy2 = new openstack.firewall.PolicyV2("policy_2", {
///     name: "firewall_egress_policy",
///     rules: [rule2.id],
/// });
/// const group1 = new openstack.firewall.GroupV2("group_1", {
///     name: "firewall_group",
///     ingressFirewallPolicyId: policy1.id,
///     egressFirewallPolicyId: policy2.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rule1 = openstack.firewall.RuleV2("rule_1",
///     name="firewall_rule_2",
///     description="drop TELNET traffic",
///     action="deny",
///     protocol="tcp",
///     destination_port="23",
///     enabled=True)
/// rule2 = openstack.firewall.RuleV2("rule_2",
///     name="firewall_rule_1",
///     description="drop NTP traffic",
///     action="deny",
///     protocol="udp",
///     destination_port="123",
///     enabled=False)
/// policy1 = openstack.firewall.PolicyV2("policy_1",
///     name="firewall_ingress_policy",
///     rules=[rule1.id])
/// policy2 = openstack.firewall.PolicyV2("policy_2",
///     name="firewall_egress_policy",
///     rules=[rule2.id])
/// group1 = openstack.firewall.GroupV2("group_1",
///     name="firewall_group",
///     ingress_firewall_policy_id=policy1.id,
///     egress_firewall_policy_id=policy2.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule1 = new OpenStack.Firewall.RuleV2("rule_1", new()
///     {
///         Name = "firewall_rule_2",
///         Description = "drop TELNET traffic",
///         Action = "deny",
///         Protocol = "tcp",
///         DestinationPort = "23",
///         Enabled = true,
///     });
///
///     var rule2 = new OpenStack.Firewall.RuleV2("rule_2", new()
///     {
///         Name = "firewall_rule_1",
///         Description = "drop NTP traffic",
///         Action = "deny",
///         Protocol = "udp",
///         DestinationPort = "123",
///         Enabled = false,
///     });
///
///     var policy1 = new OpenStack.Firewall.PolicyV2("policy_1", new()
///     {
///         Name = "firewall_ingress_policy",
///         Rules = new[]
///         {
///             rule1.Id,
///         },
///     });
///
///     var policy2 = new OpenStack.Firewall.PolicyV2("policy_2", new()
///     {
///         Name = "firewall_egress_policy",
///         Rules = new[]
///         {
///             rule2.Id,
///         },
///     });
///
///     var group1 = new OpenStack.Firewall.GroupV2("group_1", new()
///     {
///         Name = "firewall_group",
///         IngressFirewallPolicyId = policy1.Id,
///         EgressFirewallPolicyId = policy2.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/firewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rule1, err := firewall.NewRuleV2(ctx, "rule_1", &firewall.RuleV2Args{
/// 			Name:            pulumi.String("firewall_rule_2"),
/// 			Description:     pulumi.String("drop TELNET traffic"),
/// 			Action:          pulumi.String("deny"),
/// 			Protocol:        pulumi.String("tcp"),
/// 			DestinationPort: pulumi.String("23"),
/// 			Enabled:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rule2, err := firewall.NewRuleV2(ctx, "rule_2", &firewall.RuleV2Args{
/// 			Name:            pulumi.String("firewall_rule_1"),
/// 			Description:     pulumi.String("drop NTP traffic"),
/// 			Action:          pulumi.String("deny"),
/// 			Protocol:        pulumi.String("udp"),
/// 			DestinationPort: pulumi.String("123"),
/// 			Enabled:         pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy1, err := firewall.NewPolicyV2(ctx, "policy_1", &firewall.PolicyV2Args{
/// 			Name: pulumi.String("firewall_ingress_policy"),
/// 			Rules: pulumi.StringArray{
/// 				rule1.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy2, err := firewall.NewPolicyV2(ctx, "policy_2", &firewall.PolicyV2Args{
/// 			Name: pulumi.String("firewall_egress_policy"),
/// 			Rules: pulumi.StringArray{
/// 				rule2.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firewall.NewGroupV2(ctx, "group_1", &firewall.GroupV2Args{
/// 			Name:                    pulumi.String("firewall_group"),
/// 			IngressFirewallPolicyId: policy1.ID(),
/// 			EgressFirewallPolicyId:  policy2.ID(),
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
/// import com.pulumi.openstack.firewall.RuleV2;
/// import com.pulumi.openstack.firewall.RuleV2Args;
/// import com.pulumi.openstack.firewall.PolicyV2;
/// import com.pulumi.openstack.firewall.PolicyV2Args;
/// import com.pulumi.openstack.firewall.GroupV2;
/// import com.pulumi.openstack.firewall.GroupV2Args;
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
///         var rule1 = new RuleV2("rule1", RuleV2Args.builder()
///             .name("firewall_rule_2")
///             .description("drop TELNET traffic")
///             .action("deny")
///             .protocol("tcp")
///             .destinationPort("23")
///             .enabled(true)
///             .build());
///
///         var rule2 = new RuleV2("rule2", RuleV2Args.builder()
///             .name("firewall_rule_1")
///             .description("drop NTP traffic")
///             .action("deny")
///             .protocol("udp")
///             .destinationPort("123")
///             .enabled(false)
///             .build());
///
///         var policy1 = new PolicyV2("policy1", PolicyV2Args.builder()
///             .name("firewall_ingress_policy")
///             .rules(rule1.id())
///             .build());
///
///         var policy2 = new PolicyV2("policy2", PolicyV2Args.builder()
///             .name("firewall_egress_policy")
///             .rules(rule2.id())
///             .build());
///
///         var group1 = new GroupV2("group1", GroupV2Args.builder()
///             .name("firewall_group")
///             .ingressFirewallPolicyId(policy1.id())
///             .egressFirewallPolicyId(policy2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rule1:
///     type: openstack:firewall:RuleV2
///     name: rule_1
///     properties:
///       name: firewall_rule_2
///       description: drop TELNET traffic
///       action: deny
///       protocol: tcp
///       destinationPort: '23'
///       enabled: 'true'
///   rule2:
///     type: openstack:firewall:RuleV2
///     name: rule_2
///     properties:
///       name: firewall_rule_1
///       description: drop NTP traffic
///       action: deny
///       protocol: udp
///       destinationPort: '123'
///       enabled: 'false'
///   policy1:
///     type: openstack:firewall:PolicyV2
///     name: policy_1
///     properties:
///       name: firewall_ingress_policy
///       rules:
///         - ${rule1.id}
///   policy2:
///     type: openstack:firewall:PolicyV2
///     name: policy_2
///     properties:
///       name: firewall_egress_policy
///       rules:
///         - ${rule2.id}
///   group1:
///     type: openstack:firewall:GroupV2
///     name: group_1
///     properties:
///       name: firewall_group
///       ingressFirewallPolicyId: ${policy1.id}
///       egressFirewallPolicyId: ${policy2.id}
/// ```
///
///
/// ## Import
///
/// Firewall groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:firewall/groupV2:GroupV2 group_1 c9e39fb2-ce20-46c8-a964-25f3898c7a97
/// ```
class GroupV2 extends pulumi.CustomResource {
  /// Administrative up/down status for the firewall
  /// group (must be "true" or "false" if provided - defaults to "true").
  /// Changing this updates the `admin_state_up` of an existing firewall group.
  late final pulumi.Output<bool?> adminStateUp;

  /// A description for the firewall group. Changing this
  /// updates the `description` of an existing firewall group.
  late final pulumi.Output<String?> description;

  /// The egress firewall policy resource
  /// id for the firewall group. Changing this updates the
  /// `egress_firewall_policy_id` of an existing firewall group.
  late final pulumi.Output<String?> egressFirewallPolicyId;

  /// The ingress firewall policy resource
  /// id for the firewall group. Changing this updates the
  /// `ingress_firewall_policy_id` of an existing firewall group.
  late final pulumi.Output<String?> ingressFirewallPolicyId;

  /// A name for the firewall group. Changing this
  /// updates the `name` of an existing firewall.
  late final pulumi.Output<String> name;

  /// Port(s) to associate this firewall group
  /// with. Must be a list of strings. Changing this updates the associated ports
  /// of an existing firewall group.
  late final pulumi.Output<List<String>?> ports;

  /// This argument conflicts and  is interchangeable
  /// with `tenant_id`. The owner of the firewall group. Required if admin wants
  /// to create a firewall group for another project. Changing this creates a new
  /// firewall group.
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall group.
  late final pulumi.Output<String> region;

  /// Sharing status of the firewall group (must be "true"
  /// or "false" if provided). If this is "true" the firewall group is visible to,
  /// and can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall group. Only administrative users
  /// can specify if the firewall group should be shared.
  late final pulumi.Output<bool?> shared;

  /// The status of the firewall group.
  late final pulumi.Output<String> status;

  /// This argument conflicts and is interchangeable with
  /// `project_id`. The owner of the firewall group. Required if admin wants to
  /// create a firewall group for another tenant. Changing this creates a new
  /// firewall group.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [GroupV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupV2]. {@macro pulumi_firewall_group_v2_group_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupV2(
    String name, {
    GroupV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:firewall/groupV2:GroupV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    egressFirewallPolicyId = registerOutput<String?>('egressFirewallPolicyId');
    ingressFirewallPolicyId = registerOutput<String?>(
      'ingressFirewallPolicyId',
    );
    this.name = registerOutput<String>('name');
    ports = registerOutput<List<String>?>('ports');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    shared = registerOutput<bool?>('shared');
    status = registerOutput<String>('status');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [GroupV2] resource's state with the given [name] and [id].
  static GroupV2 get(
    String name,
    pulumi.Input<String> id, {
    GroupV2State? state,
  }) {
    return GroupV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:firewall/groupV2:GroupV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    egressFirewallPolicyId = registerOutput<String?>('egressFirewallPolicyId');
    ingressFirewallPolicyId = registerOutput<String?>(
      'ingressFirewallPolicyId',
    );
    this.name = registerOutput<String>('name');
    ports = registerOutput<List<String>?>('ports');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    shared = registerOutput<bool?>('shared');
    status = registerOutput<String>('status');
    tenantId = registerOutput<String>('tenantId');
  }
}
