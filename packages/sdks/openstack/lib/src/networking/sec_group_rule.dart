import 'package:pulumi/pulumi.dart' as pulumi;
import 'sec_group_rule_args.dart';
import 'sec_group_rule_state.dart';

/// Manages a V2 neutron security group rule resource within OpenStack.
/// Unlike Nova security groups, neutron separates the group from the rules
/// and also allows an admin to target a specific tenant_id.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const secgroup1 = new openstack.networking.SecGroup("secgroup_1", {
///     name: "secgroup_1",
///     description: "My neutron security group",
/// });
/// const secgroupRule1 = new openstack.networking.SecGroupRule("secgroup_rule_1", {
///     direction: "ingress",
///     ethertype: "IPv4",
///     protocol: "tcp",
///     portRangeMin: 22,
///     portRangeMax: 22,
///     remoteIpPrefix: "0.0.0.0/0",
///     securityGroupId: secgroup1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// secgroup1 = openstack.networking.SecGroup("secgroup_1",
///     name="secgroup_1",
///     description="My neutron security group")
/// secgroup_rule1 = openstack.networking.SecGroupRule("secgroup_rule_1",
///     direction="ingress",
///     ethertype="IPv4",
///     protocol="tcp",
///     port_range_min=22,
///     port_range_max=22,
///     remote_ip_prefix="0.0.0.0/0",
///     security_group_id=secgroup1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secgroup1 = new OpenStack.Networking.SecGroup("secgroup_1", new()
///     {
///         Name = "secgroup_1",
///         Description = "My neutron security group",
///     });
///
///     var secgroupRule1 = new OpenStack.Networking.SecGroupRule("secgroup_rule_1", new()
///     {
///         Direction = "ingress",
///         Ethertype = "IPv4",
///         Protocol = "tcp",
///         PortRangeMin = 22,
///         PortRangeMax = 22,
///         RemoteIpPrefix = "0.0.0.0/0",
///         SecurityGroupId = secgroup1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secgroup1, err := networking.NewSecGroup(ctx, "secgroup_1", &networking.SecGroupArgs{
/// 			Name:        pulumi.String("secgroup_1"),
/// 			Description: pulumi.String("My neutron security group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewSecGroupRule(ctx, "secgroup_rule_1", &networking.SecGroupRuleArgs{
/// 			Direction:       pulumi.String("ingress"),
/// 			Ethertype:       pulumi.String("IPv4"),
/// 			Protocol:        pulumi.String("tcp"),
/// 			PortRangeMin:    pulumi.Int(22),
/// 			PortRangeMax:    pulumi.Int(22),
/// 			RemoteIpPrefix:  pulumi.String("0.0.0.0/0"),
/// 			SecurityGroupId: secgroup1.ID(),
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
/// import com.pulumi.openstack.networking.SecGroup;
/// import com.pulumi.openstack.networking.SecGroupArgs;
/// import com.pulumi.openstack.networking.SecGroupRule;
/// import com.pulumi.openstack.networking.SecGroupRuleArgs;
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
///         var secgroup1 = new SecGroup("secgroup1", SecGroupArgs.builder()
///             .name("secgroup_1")
///             .description("My neutron security group")
///             .build());
///
///         var secgroupRule1 = new SecGroupRule("secgroupRule1", SecGroupRuleArgs.builder()
///             .direction("ingress")
///             .ethertype("IPv4")
///             .protocol("tcp")
///             .portRangeMin(22)
///             .portRangeMax(22)
///             .remoteIpPrefix("0.0.0.0/0")
///             .securityGroupId(secgroup1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secgroup1:
///     type: openstack:networking:SecGroup
///     name: secgroup_1
///     properties:
///       name: secgroup_1
///       description: My neutron security group
///   secgroupRule1:
///     type: openstack:networking:SecGroupRule
///     name: secgroup_rule_1
///     properties:
///       direction: ingress
///       ethertype: IPv4
///       protocol: tcp
///       portRangeMin: 22
///       portRangeMax: 22
///       remoteIpPrefix: 0.0.0.0/0
///       securityGroupId: ${secgroup1.id}
/// ```
///
///
/// &gt; **Note:** To expose the full port-range 1:65535, use `0` for `port_range_min`
/// and `port_range_max`.
///
/// ## Import
///
/// Security Group Rules can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/secGroupRule:SecGroupRule secgroup_rule_1 aeb68ee3-6e9d-4256-955c-9584a6212745
/// ```
class SecGroupRule extends pulumi.CustomResource {
  /// A description of the rule. Changing this creates a new security group rule.
  late final pulumi.Output<String?> description;

  /// The direction of the rule, valid values are __ingress__
  /// or __egress__. Changing this creates a new security group rule.
  late final pulumi.Output<String> direction;

  /// The layer 3 protocol type, valid values are __IPv4__
  /// or __IPv6__. Changing this creates a new security group rule.
  late final pulumi.Output<String> ethertype;

  /// The higher part of the allowed port range, valid
  /// integer value needs to be between 1 and 65535. Changing this creates a new
  /// security group rule.
  late final pulumi.Output<int?> portRangeMax;

  /// The lower part of the allowed port range, valid
  /// integer value needs to be between 1 and 65535. Changing this creates a new
  /// security group rule.
  late final pulumi.Output<int?> portRangeMin;

  /// The layer 4 protocol type, valid values are
  /// following. Changing this creates a new security group rule. This is required
  /// if you want to specify a port range.
  /// * empty string or omitted (any protocol)
  /// * integer value between 0 and 255 (valid IP protocol number)
  /// * __tcp__
  /// * __udp__
  /// * __icmp__
  /// * __ah__
  /// * __dccp__
  /// * __egp__
  /// * __esp__
  /// * __gre__
  /// * __igmp__
  /// * __ipv6-encap__
  /// * __ipv6-frag__
  /// * __ipv6-icmp__
  /// * __ipv6-nonxt__
  /// * __ipv6-opts__
  /// * __ipv6-route__
  /// * __ospf__
  /// * __pgm__
  /// * __rsvp__
  /// * __sctp__
  /// * __udplite__
  /// * __vrrp__
  /// * __ipip__
  late final pulumi.Output<String?> protocol;

  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security group rule.
  late final pulumi.Output<String> region;

  /// The remote address group id, the value
  /// needs to be an OpenStack ID of an address group in the same tenant. Changing
  /// this creates a new security group rule. This argument is mutually exclusive
  /// with `remote_ip_prefix` and `remote_group_id`.
  late final pulumi.Output<String> remoteAddressGroupId;

  /// The remote group id, the value needs to be an
  /// Openstack ID of a security group in the same tenant. Changing this creates
  /// a new security group rule.
  late final pulumi.Output<String> remoteGroupId;

  /// The remote CIDR, the value needs to be a valid
  /// CIDR (i.e. 192.168.0.0/16). Changing this creates a new security group rule.
  late final pulumi.Output<String> remoteIpPrefix;

  /// The security group id the rule should belong
  /// to, the value needs to be an Openstack ID of a security group in the same
  /// tenant. Changing this creates a new security group rule.
  late final pulumi.Output<String> securityGroupId;

  /// The owner of the security group. Required if admin
  /// wants to create a port for another tenant. Changing this creates a new
  /// security group rule.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [SecGroupRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecGroupRule]. {@macro pulumi_networking_sec_group_rule_sec_group_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecGroupRule(
    String name, {
    SecGroupRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/secGroupRule:SecGroupRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    ethertype = registerOutput<String>('ethertype');
    portRangeMax = registerOutput<int?>('portRangeMax');
    portRangeMin = registerOutput<int?>('portRangeMin');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    remoteAddressGroupId = registerOutput<String>('remoteAddressGroupId');
    remoteGroupId = registerOutput<String>('remoteGroupId');
    remoteIpPrefix = registerOutput<String>('remoteIpPrefix');
    securityGroupId = registerOutput<String>('securityGroupId');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [SecGroupRule] resource's state with the given [name] and [id].
  static SecGroupRule get(
    String name,
    pulumi.Input<String> id, {
    SecGroupRuleState? state,
  }) {
    return SecGroupRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecGroupRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/secGroupRule:SecGroupRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    direction = registerOutput<String>('direction');
    ethertype = registerOutput<String>('ethertype');
    portRangeMax = registerOutput<int?>('portRangeMax');
    portRangeMin = registerOutput<int?>('portRangeMin');
    protocol = registerOutput<String?>('protocol');
    region = registerOutput<String>('region');
    remoteAddressGroupId = registerOutput<String>('remoteAddressGroupId');
    remoteGroupId = registerOutput<String>('remoteGroupId');
    remoteIpPrefix = registerOutput<String>('remoteIpPrefix');
    securityGroupId = registerOutput<String>('securityGroupId');
    tenantId = registerOutput<String>('tenantId');
  }
}
