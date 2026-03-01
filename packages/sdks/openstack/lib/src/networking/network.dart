import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_segment.dart';
import 'network_state.dart';

/// Manages a V2 Neutron network resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     name: "subnet_1",
///     networkId: network1.id,
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
/// });
/// const secgroup1 = new openstack.networking.SecGroup("secgroup_1", {
///     name: "secgroup_1",
///     description: "a security group",
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
/// const port1 = new openstack.networking.Port("port_1", {
///     name: "port_1",
///     networkId: network1.id,
///     adminStateUp: true,
///     securityGroupIds: [secgroup1.id],
///     fixedIps: [{
///         subnetId: subnet1.id,
///         ipAddress: "192.168.199.10",
///     }],
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: [secgroup1.name],
///     networks: [{
///         port: port1.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     name="subnet_1",
///     network_id=network1.id,
///     cidr="192.168.199.0/24",
///     ip_version=4)
/// secgroup1 = openstack.networking.SecGroup("secgroup_1",
///     name="secgroup_1",
///     description="a security group")
/// secgroup_rule1 = openstack.networking.SecGroupRule("secgroup_rule_1",
///     direction="ingress",
///     ethertype="IPv4",
///     protocol="tcp",
///     port_range_min=22,
///     port_range_max=22,
///     remote_ip_prefix="0.0.0.0/0",
///     security_group_id=secgroup1.id)
/// port1 = openstack.networking.Port("port_1",
///     name="port_1",
///     network_id=network1.id,
///     admin_state_up=True,
///     security_group_ids=[secgroup1.id],
///     fixed_ips=[{
///         "subnet_id": subnet1.id,
///         "ip_address": "192.168.199.10",
///     }])
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=[secgroup1.name],
///     networks=[{
///         "port": port1.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         Name = "subnet_1",
///         NetworkId = network1.Id,
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///     });
///
///     var secgroup1 = new OpenStack.Networking.SecGroup("secgroup_1", new()
///     {
///         Name = "secgroup_1",
///         Description = "a security group",
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
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         Name = "port_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
///         SecurityGroupIds = new[]
///         {
///             secgroup1.Id,
///         },
///         FixedIps = new[]
///         {
///             new OpenStack.Networking.Inputs.PortFixedIpArgs
///             {
///                 SubnetId = subnet1.Id,
///                 IpAddress = "192.168.199.10",
///             },
///         },
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             secgroup1.Name,
///         },
///         Networks = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceNetworkArgs
///             {
///                 Port = port1.Id,
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			Name:      pulumi.String("subnet_1"),
/// 			NetworkId: network1.ID(),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secgroup1, err := networking.NewSecGroup(ctx, "secgroup_1", &networking.SecGroupArgs{
/// 			Name:        pulumi.String("secgroup_1"),
/// 			Description: pulumi.String("a security group"),
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
/// 		port1, err := networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("port_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				secgroup1.ID(),
/// 			},
/// 			FixedIps: networking.PortFixedIpArray{
/// 				&networking.PortFixedIpArgs{
/// 					SubnetId:  subnet1.ID(),
/// 					IpAddress: pulumi.String("192.168.199.10"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				secgroup1.Name,
/// 			},
/// 			Networks: compute.InstanceNetworkArray{
/// 				&compute.InstanceNetworkArgs{
/// 					Port: port1.ID(),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import com.pulumi.openstack.networking.SecGroup;
/// import com.pulumi.openstack.networking.SecGroupArgs;
/// import com.pulumi.openstack.networking.SecGroupRule;
/// import com.pulumi.openstack.networking.SecGroupRuleArgs;
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.openstack.networking.inputs.PortFixedIpArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceNetworkArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .name("subnet_1")
///             .networkId(network1.id())
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .build());
///
///         var secgroup1 = new SecGroup("secgroup1", SecGroupArgs.builder()
///             .name("secgroup_1")
///             .description("a security group")
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
///         var port1 = new Port("port1", PortArgs.builder()
///             .name("port_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
///             .securityGroupIds(secgroup1.id())
///             .fixedIps(PortFixedIpArgs.builder()
///                 .subnetId(subnet1.id())
///                 .ipAddress("192.168.199.10")
///                 .build())
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups(secgroup1.name())
///             .networks(InstanceNetworkArgs.builder()
///                 .port(port1.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       name: subnet_1
///       networkId: ${network1.id}
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///   secgroup1:
///     type: openstack:networking:SecGroup
///     name: secgroup_1
///     properties:
///       name: secgroup_1
///       description: a security group
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
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       name: port_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
///       securityGroupIds:
///         - ${secgroup1.id}
///       fixedIps:
///         - subnetId: ${subnet1.id}
///           ipAddress: 192.168.199.10
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - ${secgroup1.name}
///       networks:
///         - port: ${port1.id}
/// ```
///
///
/// ## Import
///
/// Networks can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/network:Network network_1 d90ce693-5ccf-4136-a0ed-152ce412b6b9
/// ```
class Network extends pulumi.CustomResource {
  /// The administrative state of the network.
  /// Acceptable values are "true" and "false". Changing this value updates the
  /// state of the existing network.
  late final pulumi.Output<bool> adminStateUp;
  /// The collection of tags assigned on the network, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// An availability zone is used to make
  /// network resources highly available. Used for resources with high availability
  /// so that they are scheduled on different availability zones. Changing this
  /// creates a new network.
  late final pulumi.Output<List<String>> availabilityZoneHints;
  /// Human-readable description of the network. Changing this
  /// updates the name of the existing network.
  late final pulumi.Output<String?> description;
  /// The network DNS domain. Available, when Neutron DNS
  /// extension is enabled. The `dns_domain` of a network in conjunction with the
  /// `dns_name` attribute of its ports will be published in an external DNS
  /// service when Neutron is configured to integrate with such a service.
  late final pulumi.Output<String> dnsDomain;
  /// Specifies whether the network resource has the
  /// external routing facility. Valid values are true and false. Defaults to
  /// false. Changing this updates the external attribute of the existing network.
  late final pulumi.Output<bool> external;
  /// The network MTU. Available for read-only, when Neutron
  /// `net-mtu` extension is enabled. Available for the modification, when
  /// Neutron `net-mtu-writable` extension is enabled.
  late final pulumi.Output<int> mtu;
  /// The name of the network. Changing this updates the name of
  /// the existing network.
  late final pulumi.Output<String> name;
  /// Whether to explicitly enable or disable
  /// port security on the network. Port Security is usually enabled by default, so
  /// omitting this argument will usually result in a value of "true". Setting this
  /// explicitly to `false` will disable port security. Valid values are `true` and
  /// `false`.
  late final pulumi.Output<bool> portSecurityEnabled;
  /// Reference to the associated QoS policy.
  late final pulumi.Output<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// network.
  late final pulumi.Output<String> region;
  /// An array of one or more provider segment objects.
  /// Note: most Networking plug-ins (e.g. ML2 Plugin) and drivers do not support
  /// updating any provider related segments attributes. Check your plug-in whether
  /// it supports updating.
  late final pulumi.Output<List<NetworkSegment>> segments;
  /// Specifies whether the network resource can be accessed
  /// by any tenant or not. Changing this updates the sharing capabilities of the
  /// existing network.
  late final pulumi.Output<bool> shared;
  /// A set of string tags for the network.
  late final pulumi.Output<List<String>?> tags;
  /// The owner of the network. Required if admin wants to
  /// create a network for another tenant. Changing this creates a new network.
  late final pulumi.Output<String> tenantId;
  /// Specifies whether the network resource has the
  /// VLAN transparent attribute set. Valid values are true and false. Defaults to
  /// false. Changing this updates the `transparent_vlan` attribute of the existing
  /// network.
  late final pulumi.Output<bool> transparentVlan;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_networking_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool>('adminStateUp');
    this.allTags = registerOutput<List<String>>('allTags');
    this.availabilityZoneHints = registerOutput<List<String>>('availabilityZoneHints');
    this.description = registerOutput<String?>('description');
    this.dnsDomain = registerOutput<String>('dnsDomain');
    this.external = registerOutput<bool>('external');
    this.mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    this.portSecurityEnabled = registerOutput<bool>('portSecurityEnabled');
    this.qosPolicyId = registerOutput<String>('qosPolicyId');
    this.region = registerOutput<String>('region');
    this.segments = registerOutput<List<NetworkSegment>>('segments');
    this.shared = registerOutput<bool>('shared');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.transparentVlan = registerOutput<bool>('transparentVlan');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminStateUp = registerOutput<bool>('adminStateUp');
    this.allTags = registerOutput<List<String>>('allTags');
    this.availabilityZoneHints = registerOutput<List<String>>('availabilityZoneHints');
    this.description = registerOutput<String?>('description');
    this.dnsDomain = registerOutput<String>('dnsDomain');
    this.external = registerOutput<bool>('external');
    this.mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    this.portSecurityEnabled = registerOutput<bool>('portSecurityEnabled');
    this.qosPolicyId = registerOutput<String>('qosPolicyId');
    this.region = registerOutput<String>('region');
    this.segments = registerOutput<List<NetworkSegment>>('segments');
    this.shared = registerOutput<bool>('shared');
    this.tags = registerOutput<List<String>?>('tags');
    this.tenantId = registerOutput<String>('tenantId');
    this.transparentVlan = registerOutput<bool>('transparentVlan');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
