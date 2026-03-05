import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_v2_args.dart';
import 'rule_v2_state.dart';

/// Manages a v2 firewall rule resource within OpenStack.
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
/// const rule2 = new openstack.firewall.RuleV2("rule_2", {
///     name: "firewall_rule",
///     description: "drop TELNET traffic",
///     action: "deny",
///     protocol: "tcp",
///     destinationPort: "23",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// rule2 = openstack.firewall.RuleV2("rule_2",
///     name="firewall_rule",
///     description="drop TELNET traffic",
///     action="deny",
///     protocol="tcp",
///     destination_port="23",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rule2 = new OpenStack.Firewall.RuleV2("rule_2", new()
///     {
///         Name = "firewall_rule",
///         Description = "drop TELNET traffic",
///         Action = "deny",
///         Protocol = "tcp",
///         DestinationPort = "23",
///         Enabled = true,
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
/// 		_, err := firewall.NewRuleV2(ctx, "rule_2", &firewall.RuleV2Args{
/// 			Name:            pulumi.String("firewall_rule"),
/// 			Description:     pulumi.String("drop TELNET traffic"),
/// 			Action:          pulumi.String("deny"),
/// 			Protocol:        pulumi.String("tcp"),
/// 			DestinationPort: pulumi.String("23"),
/// 			Enabled:         pulumi.Bool(true),
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
///         var rule2 = new RuleV2("rule2", RuleV2Args.builder()
///             .name("firewall_rule")
///             .description("drop TELNET traffic")
///             .action("deny")
///             .protocol("tcp")
///             .destinationPort("23")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rule2:
///     type: openstack:firewall:RuleV2
///     name: rule_2
///     properties:
///       name: firewall_rule
///       description: drop TELNET traffic
///       action: deny
///       protocol: tcp
///       destinationPort: '23'
///       enabled: 'true'
/// ```
///
///
/// ## Import
///
/// Firewall Rules can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:firewall/ruleV2:RuleV2 rule_1 8dbc0c28-e49c-463f-b712-5c5d1bbac327
/// ```
class RuleV2 extends pulumi.CustomResource {
  /// Action to be taken (must be "allow", "deny" or "reject")
  /// when the firewall rule matches. Changing this updates the `action` of an
  /// existing firewall rule. Default is `deny`.
  late final pulumi.Output<String?> action;
  /// A description for the firewall rule. Changing this
  /// updates the `description` of an existing firewall rule.
  late final pulumi.Output<String?> description;
  /// The destination IP address on which the
  /// firewall rule operates. Changing this updates the `destination_ip_address`
  /// of an existing firewall rule.
  late final pulumi.Output<String?> destinationIpAddress;
  /// The destination port on which the firewall
  /// rule operates. Changing this updates the `destination_port` of an existing
  /// firewall rule. Require not `any` or empty protocol.
  late final pulumi.Output<String?> destinationPort;
  /// Enabled status for the firewall rule (must be "true"
  /// or "false" if provided - defaults to "true"). Changing this updates the
  /// `enabled` status of an existing firewall rule.
  late final pulumi.Output<bool?> enabled;
  /// IP version, either 4 or 6. Changing this
  /// updates the `ip_version` of an existing firewall rule. Default is `4`.
  late final pulumi.Output<int?> ipVersion;
  /// A unique name for the firewall rule. Changing this
  /// updates the `name` of an existing firewall rule.
  late final pulumi.Output<String> name;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall rule. Required if admin wants
  /// to create a firewall rule for another project. Changing this creates a new
  /// firewall rule.
  late final pulumi.Output<String> projectId;
  /// (Optional; Required if `source_port` or `destination_port` is not
  /// empty) The protocol type on which the firewall rule operates.
  /// Valid values are: `tcp`, `udp`, `icmp`, and `any`. Changing this updates the
  /// `protocol` of an existing firewall rule. Default is `any`.
  late final pulumi.Output<String?> protocol;
  /// The region in which to obtain the v2 networking client.
  /// A networking client is needed to create a firewall rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// firewall rule.
  late final pulumi.Output<String> region;
  /// Sharing status of the firewall rule (must be "true"
  /// or "false" if provided). If this is "true" the policy is visible to, and
  /// can be used in, firewalls in other tenants. Changing this updates the
  /// `shared` status of an existing firewall policy. On
  late final pulumi.Output<bool?> shared;
  /// The source IP address on which the firewall
  /// rule operates. Changing this updates the `source_ip_address` of an existing
  /// firewall rule.
  late final pulumi.Output<String?> sourceIpAddress;
  /// The source port on which the firewall
  /// rule operates. Changing this updates the `source_port` of an existing
  /// firewall rule. Require not `any` or empty protocol.
  late final pulumi.Output<String?> sourcePort;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall rule. Required if admin wants
  /// to create a firewall rule for another tenant. Changing this creates a new
  /// firewall rule.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [RuleV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleV2]. {@macro pulumi_firewall_rule_v2_rule_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleV2(
    String name, {
    RuleV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:firewall/ruleV2:RuleV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    description = registerOutput<String?>('description');
    destinationIpAddress = registerOutput<String?>('destinationIpAddress');
    destinationPort = registerOutput<String?>('destinationPort');
    enabled = registerOutput<bool?>('enabled');
    ipVersion = registerOutput<int?>('ipVersion');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    shared = registerOutput<bool?>('shared');
    sourceIpAddress = registerOutput<String?>('sourceIpAddress');
    sourcePort = registerOutput<String?>('sourcePort');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [RuleV2] resource's state with the given [name] and [id].
  static RuleV2 get(
    String name,
    pulumi.Input<String> id, {
    RuleV2State? state,
  }) {
    return RuleV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RuleV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:firewall/ruleV2:RuleV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String?>('action');
    description = registerOutput<String?>('description');
    destinationIpAddress = registerOutput<String?>('destinationIpAddress');
    destinationPort = registerOutput<String?>('destinationPort');
    enabled = registerOutput<bool?>('enabled');
    ipVersion = registerOutput<int?>('ipVersion');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    shared = registerOutput<bool?>('shared');
    sourceIpAddress = registerOutput<String?>('sourceIpAddress');
    sourcePort = registerOutput<String?>('sourcePort');
    tenantId = registerOutput<String>('tenantId');
  }
}
