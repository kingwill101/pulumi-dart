import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_v2_args.dart';
import 'policy_v2_state.dart';

/// Manages a v2 firewall policy resource within OpenStack.
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
///     name: "firewall_rule_1",
///     description: "drop TELNET traffic",
///     action: "deny",
///     protocol: "tcp",
///     destinationPort: "23",
///     enabled: true,
/// });
/// const rule2 = new openstack.firewall.RuleV2("rule_2", {
///     name: "firewall_rule_2",
///     description: "drop NTP traffic",
///     action: "deny",
///     protocol: "udp",
///     destinationPort: "123",
///     enabled: false,
/// });
/// const policy1 = new openstack.firewall.PolicyV2("policy_1", {
///     name: "firewall_policy",
///     rules: [
///         rule1.id,
///         rule2.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rule1 = openstack.firewall.RuleV2("rule_1",
///     name="firewall_rule_1",
///     description="drop TELNET traffic",
///     action="deny",
///     protocol="tcp",
///     destination_port="23",
///     enabled=True)
/// rule2 = openstack.firewall.RuleV2("rule_2",
///     name="firewall_rule_2",
///     description="drop NTP traffic",
///     action="deny",
///     protocol="udp",
///     destination_port="123",
///     enabled=False)
/// policy1 = openstack.firewall.PolicyV2("policy_1",
///     name="firewall_policy",
///     rules=[
///         rule1.id,
///         rule2.id,
///     ])
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
///         Name = "firewall_rule_1",
///         Description = "drop TELNET traffic",
///         Action = "deny",
///         Protocol = "tcp",
///         DestinationPort = "23",
///         Enabled = true,
///     });
///
///     var rule2 = new OpenStack.Firewall.RuleV2("rule_2", new()
///     {
///         Name = "firewall_rule_2",
///         Description = "drop NTP traffic",
///         Action = "deny",
///         Protocol = "udp",
///         DestinationPort = "123",
///         Enabled = false,
///     });
///
///     var policy1 = new OpenStack.Firewall.PolicyV2("policy_1", new()
///     {
///         Name = "firewall_policy",
///         Rules = new[]
///         {
///             rule1.Id,
///             rule2.Id,
///         },
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
/// 			Name:            pulumi.String("firewall_rule_1"),
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
/// 			Name:            pulumi.String("firewall_rule_2"),
/// 			Description:     pulumi.String("drop NTP traffic"),
/// 			Action:          pulumi.String("deny"),
/// 			Protocol:        pulumi.String("udp"),
/// 			DestinationPort: pulumi.String("123"),
/// 			Enabled:         pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firewall.NewPolicyV2(ctx, "policy_1", &firewall.PolicyV2Args{
/// 			Name: pulumi.String("firewall_policy"),
/// 			Rules: pulumi.StringArray{
/// 				rule1.ID(),
/// 				rule2.ID(),
/// 			},
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
///             .name("firewall_rule_1")
///             .description("drop TELNET traffic")
///             .action("deny")
///             .protocol("tcp")
///             .destinationPort("23")
///             .enabled(true)
///             .build());
///
///         var rule2 = new RuleV2("rule2", RuleV2Args.builder()
///             .name("firewall_rule_2")
///             .description("drop NTP traffic")
///             .action("deny")
///             .protocol("udp")
///             .destinationPort("123")
///             .enabled(false)
///             .build());
///
///         var policy1 = new PolicyV2("policy1", PolicyV2Args.builder()
///             .name("firewall_policy")
///             .rules(
///                 rule1.id(),
///                 rule2.id())
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
///       name: firewall_rule_1
///       description: drop TELNET traffic
///       action: deny
///       protocol: tcp
///       destinationPort: '23'
///       enabled: 'true'
///   rule2:
///     type: openstack:firewall:RuleV2
///     name: rule_2
///     properties:
///       name: firewall_rule_2
///       description: drop NTP traffic
///       action: deny
///       protocol: udp
///       destinationPort: '123'
///       enabled: 'false'
///   policy1:
///     type: openstack:firewall:PolicyV2
///     name: policy_1
///     properties:
///       name: firewall_policy
///       rules:
///         - ${rule1.id}
///         - ${rule2.id}
/// ```
///
///
/// ## Import
///
/// Firewall Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:firewall/policyV2:PolicyV2 policy_1 07f422e6-c596-474b-8b94-fe2c12506ce0
/// ```
class PolicyV2 extends pulumi.CustomResource {
  /// Audit status of the firewall policy
  /// (must be "true" or "false" if provided - defaults to "false").
  /// This status is set to "false" whenever the firewall policy or any of its
  /// rules are changed. Changing this updates the `audited` status of an existing
  /// firewall policy.
  late final pulumi.Output<bool?> audited;

  /// A description for the firewall policy. Changing
  /// this updates the `description` of an existing firewall policy.
  late final pulumi.Output<String?> description;

  /// A name for the firewall policy. Changing this
  /// updates the `name` of an existing firewall policy.
  late final pulumi.Output<String> name;

  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another project. Changing this creates a new
  /// firewall policy.
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall policy.
  late final pulumi.Output<String> region;

  /// An array of one or more firewall rules that comprise
  /// the policy. Changing this results in adding/removing rules from the
  /// existing firewall policy.
  late final pulumi.Output<List<String>?> rules;

  /// Sharing status of the firewall policy (must be "true"
  /// or "false" if provided). If this is "true" the policy is visible to, and
  /// can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall policy. Only administrative users
  /// can specify if the policy should be shared.
  late final pulumi.Output<bool?> shared;

  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall policy. Required if admin wants
  /// to create a firewall policy for another tenant. Changing this creates a new
  /// firewall policy.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [PolicyV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyV2]. {@macro pulumi_firewall_policy_v2_policy_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyV2(
    String name, {
    PolicyV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:firewall/policyV2:PolicyV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    audited = registerOutput<bool?>('audited');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    rules = registerOutput<List<String>?>('rules');
    shared = registerOutput<bool?>('shared');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [PolicyV2] resource's state with the given [name] and [id].
  static PolicyV2 get(
    String name,
    pulumi.Input<String> id, {
    PolicyV2State? state,
  }) {
    return PolicyV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:firewall/policyV2:PolicyV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    audited = registerOutput<bool?>('audited');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    rules = registerOutput<List<String>?>('rules');
    shared = registerOutput<bool?>('shared');
    tenantId = registerOutput<String>('tenantId');
  }
}
