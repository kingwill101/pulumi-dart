import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_args.dart';
import 'port_binding.dart';
import 'port_state.dart';

/// Manages a V2 port resource within OpenStack.
///
/// &gt; **Note:** Ports do not get an IP if the network they are attached
/// to does not have a subnet. If you create the subnet resource in the
/// same run as the port, make sure to use `fixed_ip.subnet_id` or
/// `depends_on` to enforce the subnet resource creation before the port
/// creation is triggered. More info here
///
/// ## Example Usage
///
/// ### Simple port
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
/// const port1 = new openstack.networking.Port("port_1", {
///     name: "port_1",
///     networkId: network1.id,
///     adminStateUp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// port1 = openstack.networking.Port("port_1",
///     name="port_1",
///     network_id=network1.id,
///     admin_state_up=True)
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
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         Name = "port_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
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
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("port_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
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
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
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
///         var port1 = new Port("port1", PortArgs.builder()
///             .name("port_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
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
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       name: port_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
/// ```
///
///
/// ### Port defining fixed_ip.subnet_id
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
/// });
/// const port1 = new openstack.networking.Port("port_1", {
///     name: "port_1",
///     networkId: network1.id,
///     adminStateUp: true,
///     fixedIps: [{
///         subnetId: subnet1.id,
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
///     cidr="192.168.199.0/24")
/// port1 = openstack.networking.Port("port_1",
///     name="port_1",
///     network_id=network1.id,
///     admin_state_up=True,
///     fixed_ips=[{
///         "subnet_id": subnet1.id,
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
///     });
///
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         Name = "port_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
///         FixedIps = new[]
///         {
///             new OpenStack.Networking.Inputs.PortFixedIpArgs
///             {
///                 SubnetId = subnet1.Id,
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("port_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
/// 			FixedIps: networking.PortFixedIpArray{
/// 				&networking.PortFixedIpArgs{
/// 					SubnetId: subnet1.ID(),
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
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.openstack.networking.inputs.PortFixedIpArgs;
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
///             .build());
///
///         var port1 = new Port("port1", PortArgs.builder()
///             .name("port_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
///             .fixedIps(PortFixedIpArgs.builder()
///                 .subnetId(subnet1.id())
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
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       name: port_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
///       fixedIps:
///         - subnetId: ${subnet1.id}
/// ```
///
///
/// ### Port with physical binding information
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
/// const port1 = new openstack.networking.Port("port_1", {
///     name: "port_1",
///     networkId: network1.id,
///     deviceId: "cdf70fcf-c161-4f24-9c70-96b3f5a54b71",
///     deviceOwner: "baremetal:none",
///     adminStateUp: true,
///     binding: {
///         hostId: "b080b9cf-46e0-4ce8-ad47-0fd4accc872b",
///         vnicType: "baremetal",
///         profile: `{
///   \\"local_link_information\\": [
///     {
///       \\"switch_info\\": \\"info1\\",
///       \\"port_id\\": \\"Ethernet3/4\\",
///       \\"switch_id\\": \\"12:34:56:78:9A:BC\\"
///     },
///     {
///       \\"switch_info\\": \\"info2\\",
///       \\"port_id\\": \\"Ethernet3/4\\",
///       \\"switch_id\\": \\"12:34:56:78:9A:BD\\"
///     }
///   ],
///   \\"vlan_type\\": \\"allowed\\"
/// }
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// port1 = openstack.networking.Port("port_1",
///     name="port_1",
///     network_id=network1.id,
///     device_id="cdf70fcf-c161-4f24-9c70-96b3f5a54b71",
///     device_owner="baremetal:none",
///     admin_state_up=True,
///     binding={
///         "host_id": "b080b9cf-46e0-4ce8-ad47-0fd4accc872b",
///         "vnic_type": "baremetal",
///         "profile": """{
///   \"local_link_information\": [
///     {
///       \"switch_info\": \"info1\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BC\"
///     },
///     {
///       \"switch_info\": \"info2\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BD\"
///     }
///   ],
///   \"vlan_type\": \"allowed\"
/// }
/// """,
///     })
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
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         Name = "port_1",
///         NetworkId = network1.Id,
///         DeviceId = "cdf70fcf-c161-4f24-9c70-96b3f5a54b71",
///         DeviceOwner = "baremetal:none",
///         AdminStateUp = true,
///         Binding = new OpenStack.Networking.Inputs.PortBindingArgs
///         {
///             HostId = "b080b9cf-46e0-4ce8-ad47-0fd4accc872b",
///             VnicType = "baremetal",
///             Profile = @"{
///   \""local_link_information\"": [
///     {
///       \""switch_info\"": \""info1\"",
///       \""port_id\"": \""Ethernet3/4\"",
///       \""switch_id\"": \""12:34:56:78:9A:BC\""
///     },
///     {
///       \""switch_info\"": \""info2\"",
///       \""port_id\"": \""Ethernet3/4\"",
///       \""switch_id\"": \""12:34:56:78:9A:BD\""
///     }
///   ],
///   \""vlan_type\"": \""allowed\""
/// }
/// ",
///         },
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
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("port_1"),
/// 			NetworkId:    network1.ID(),
/// 			DeviceId:     pulumi.String("cdf70fcf-c161-4f24-9c70-96b3f5a54b71"),
/// 			DeviceOwner:  pulumi.String("baremetal:none"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 			Binding: &networking.PortBindingArgs{
/// 				HostId:   pulumi.String("b080b9cf-46e0-4ce8-ad47-0fd4accc872b"),
/// 				VnicType: pulumi.String("baremetal"),
/// 				Profile: pulumi.String(`{
///   \"local_link_information\": [
///     {
///       \"switch_info\": \"info1\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BC\"
///     },
///     {
///       \"switch_info\": \"info2\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BD\"
///     }
///   ],
///   \"vlan_type\": \"allowed\"
/// }
/// `),
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
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.openstack.networking.inputs.PortBindingArgs;
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
///         var port1 = new Port("port1", PortArgs.builder()
///             .name("port_1")
///             .networkId(network1.id())
///             .deviceId("cdf70fcf-c161-4f24-9c70-96b3f5a54b71")
///             .deviceOwner("baremetal:none")
///             .adminStateUp(true)
///             .binding(PortBindingArgs.builder()
///                 .hostId("b080b9cf-46e0-4ce8-ad47-0fd4accc872b")
///                 .vnicType("baremetal")
///                 .profile("""
/// {
///   \"local_link_information\": [
///     {
///       \"switch_info\": \"info1\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BC\"
///     },
///     {
///       \"switch_info\": \"info2\",
///       \"port_id\": \"Ethernet3/4\",
///       \"switch_id\": \"12:34:56:78:9A:BD\"
///     }
///   ],
///   \"vlan_type\": \"allowed\"
/// }
///                 """)
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
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       name: port_1
///       networkId: ${network1.id}
///       deviceId: cdf70fcf-c161-4f24-9c70-96b3f5a54b71
///       deviceOwner: baremetal:none
///       adminStateUp: 'true'
///       binding:
///         hostId: b080b9cf-46e0-4ce8-ad47-0fd4accc872b
///         vnicType: baremetal
///         profile: |
///           {
///             \"local_link_information\": [
///               {
///                 \"switch_info\": \"info1\",
///                 \"port_id\": \"Ethernet3/4\",
///                 \"switch_id\": \"12:34:56:78:9A:BC\"
///               },
///               {
///                 \"switch_info\": \"info2\",
///                 \"port_id\": \"Ethernet3/4\",
///                 \"switch_id\": \"12:34:56:78:9A:BD\"
///               }
///             ],
///             \"vlan_type\": \"allowed\"
///           }
/// ```
///
///
/// ## Notes
///
/// ### Ports and Instances
///
/// There are some notes to consider when connecting Instances to networks using
/// Ports. Please see the `openstack.compute.Instance` documentation for further
/// documentation.
///
/// ## Import
///
/// Ports can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/port:Port port_1 eae26a3e-1c33-4cc1-9c31-0cd729c438a1
/// ```
class Port extends pulumi.CustomResource {
  /// Administrative up/down status for the port
  /// (must be `true` or `false` if provided). Changing this updates the
  /// `admin_state_up` of an existing port.
  late final pulumi.Output<bool> adminStateUp;
  /// The collection of Fixed IP addresses on the port in the
  /// order returned by the Network v2 API.
  late final pulumi.Output<List<String>> allFixedIps;
  /// The collection of Security Group IDs on the port
  /// which have been explicitly and implicitly added.
  late final pulumi.Output<List<String>> allSecurityGroupIds;
  /// The collection of tags assigned on the port, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// An IP/MAC Address pair of additional IP
  /// addresses that can be active on this port. The structure is described
  /// below.
  late final pulumi.Output<List<Map<String, dynamic>>?> allowedAddressPairs;
  /// The port binding allows to specify binding information
  /// for the port. The structure is described below.
  late final pulumi.Output<PortBinding> binding;
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing port.
  late final pulumi.Output<String?> description;
  /// The ID of the device attached to the port. Changing this
  /// creates a new port.
  late final pulumi.Output<String> deviceId;
  /// The device owner of the port. Changing this creates
  /// a new port.
  late final pulumi.Output<String> deviceOwner;
  /// The list of maps representing port DNS assignments.
  late final pulumi.Output<List<Map<String, dynamic>>> dnsAssignments;
  /// The port DNS name. Available, when Neutron DNS extension
  /// is enabled.
  late final pulumi.Output<String> dnsName;
  /// An extra DHCP option that needs to be configured
  /// on the port. The structure is described below. Can be specified multiple
  /// times.
  late final pulumi.Output<List<Map<String, dynamic>>?> extraDhcpOptions;
  /// An array of desired IPs for
  /// this port. The structure is described below.
  late final pulumi.Output<List<Map<String, dynamic>>?> fixedIps;
  /// Specify a specific MAC address for the port. Changing
  /// this creates a new port.
  late final pulumi.Output<String> macAddress;
  /// A unique name for the port. Changing this
  /// updates the `name` of an existing port.
  late final pulumi.Output<String> name;
  /// The ID of the network to attach the port to. Changing
  /// this creates a new port.
  late final pulumi.Output<String> networkId;
  /// Create a port with no fixed
  /// IP address. This will also remove any fixed IPs previously set on a port. `true`
  /// is the only valid value for this argument.
  late final pulumi.Output<bool?> noFixedIp;
  /// If set to
  /// `true`, then no security groups are applied to the port. If set to `false` and
  /// no `security_group_ids` are specified, then the port will yield to the default
  /// behavior of the Networking service, which is to usually apply the "default"
  /// security group.
  late final pulumi.Output<bool?> noSecurityGroups;
  /// Whether to explicitly enable or disable
  /// port security on the port. Port Security is usually enabled by default, so
  /// omitting argument will usually result in a value of `true`. Setting this
  /// explicitly to `false` will disable port security. In order to disable port
  /// security, the port must not have any security groups. Valid values are `true`
  /// and `false`.
  late final pulumi.Output<bool> portSecurityEnabled;
  /// Reference to the associated QoS policy.
  late final pulumi.Output<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port.
  late final pulumi.Output<String> region;
  /// A list
  /// of security group IDs to apply to the port. The security groups must be
  /// specified by ID and not name (as opposed to how they are configured with
  /// the Compute Instance).
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// A set of string tags for the port.
  late final pulumi.Output<List<String>?> tags;
  /// The owner of the port. Required if admin wants
  /// to create a port for another tenant. Changing this creates a new port.
  late final pulumi.Output<String> tenantId;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Port].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Port]. {@macro pulumi_networking_port_port_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Port(
    String name, {
    PortArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/port:Port',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool>('adminStateUp');
    allFixedIps = registerOutput<List<String>>('allFixedIps');
    allSecurityGroupIds = registerOutput<List<String>>('allSecurityGroupIds');
    allTags = registerOutput<List<String>>('allTags');
    allowedAddressPairs = registerOutput<List<Map<String, dynamic>>?>('allowedAddressPairs');
    binding = registerOutput<PortBinding>('binding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PortBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    deviceId = registerOutput<String>('deviceId');
    deviceOwner = registerOutput<String>('deviceOwner');
    dnsAssignments = registerOutput<List<Map<String, dynamic>>>('dnsAssignments');
    dnsName = registerOutput<String>('dnsName');
    extraDhcpOptions = registerOutput<List<Map<String, dynamic>>?>('extraDhcpOptions');
    fixedIps = registerOutput<List<Map<String, dynamic>>?>('fixedIps');
    macAddress = registerOutput<String>('macAddress');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    noFixedIp = registerOutput<bool?>('noFixedIp');
    noSecurityGroups = registerOutput<bool?>('noSecurityGroups');
    portSecurityEnabled = registerOutput<bool>('portSecurityEnabled');
    qosPolicyId = registerOutput<String>('qosPolicyId');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [Port] resource's state with the given [name] and [id].
  static Port get(
    String name,
    pulumi.Input<String> id, {
    PortState? state,
  }) {
    return Port._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Port._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/port:Port',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool>('adminStateUp');
    allFixedIps = registerOutput<List<String>>('allFixedIps');
    allSecurityGroupIds = registerOutput<List<String>>('allSecurityGroupIds');
    allTags = registerOutput<List<String>>('allTags');
    allowedAddressPairs = registerOutput<List<Map<String, dynamic>>?>('allowedAddressPairs');
    binding = registerOutput<PortBinding>('binding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PortBinding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    deviceId = registerOutput<String>('deviceId');
    deviceOwner = registerOutput<String>('deviceOwner');
    dnsAssignments = registerOutput<List<Map<String, dynamic>>>('dnsAssignments');
    dnsName = registerOutput<String>('dnsName');
    extraDhcpOptions = registerOutput<List<Map<String, dynamic>>?>('extraDhcpOptions');
    fixedIps = registerOutput<List<Map<String, dynamic>>?>('fixedIps');
    macAddress = registerOutput<String>('macAddress');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    noFixedIp = registerOutput<bool?>('noFixedIp');
    noSecurityGroups = registerOutput<bool?>('noSecurityGroups');
    portSecurityEnabled = registerOutput<bool>('portSecurityEnabled');
    qosPolicyId = registerOutput<String>('qosPolicyId');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
