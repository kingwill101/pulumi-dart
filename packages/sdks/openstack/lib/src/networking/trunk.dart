import 'package:pulumi/pulumi.dart' as pulumi;
import 'trunk_args.dart';
import 'trunk_state.dart';

/// Manages a networking V2 trunk resource within OpenStack.
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
///     cidr: "192.168.1.0/24",
///     ipVersion: 4,
///     enableDhcp: true,
///     noGateway: true,
/// });
/// const parentPort1 = new openstack.networking.Port("parent_port_1", {
///     name: "parent_port_1",
///     networkId: network1.id,
///     adminStateUp: true,
/// }, {
///     dependsOn: [subnet1],
/// });
/// const subport1 = new openstack.networking.Port("subport_1", {
///     name: "subport_1",
///     networkId: network1.id,
///     adminStateUp: true,
/// }, {
///     dependsOn: [subnet1],
/// });
/// const trunk1 = new openstack.networking.Trunk("trunk_1", {
///     name: "trunk_1",
///     adminStateUp: true,
///     portId: parentPort1.id,
///     subPorts: [{
///         portId: subport1.id,
///         segmentationId: 1,
///         segmentationType: "vlan",
///     }],
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
///     networks: [{
///         port: trunk1.portId,
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
///     cidr="192.168.1.0/24",
///     ip_version=4,
///     enable_dhcp=True,
///     no_gateway=True)
/// parent_port1 = openstack.networking.Port("parent_port_1",
///     name="parent_port_1",
///     network_id=network1.id,
///     admin_state_up=True,
///     opts = pulumi.ResourceOptions(depends_on=[subnet1]))
/// subport1 = openstack.networking.Port("subport_1",
///     name="subport_1",
///     network_id=network1.id,
///     admin_state_up=True,
///     opts = pulumi.ResourceOptions(depends_on=[subnet1]))
/// trunk1 = openstack.networking.Trunk("trunk_1",
///     name="trunk_1",
///     admin_state_up=True,
///     port_id=parent_port1.id,
///     sub_ports=[{
///         "port_id": subport1.id,
///         "segmentation_id": 1,
///         "segmentation_type": "vlan",
///     }])
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"],
///     networks=[{
///         "port": trunk1.port_id,
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
///         Cidr = "192.168.1.0/24",
///         IpVersion = 4,
///         EnableDhcp = true,
///         NoGateway = true,
///     });
///
///     var parentPort1 = new OpenStack.Networking.Port("parent_port_1", new()
///     {
///         Name = "parent_port_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             subnet1,
///         },
///     });
///
///     var subport1 = new OpenStack.Networking.Port("subport_1", new()
///     {
///         Name = "subport_1",
///         NetworkId = network1.Id,
///         AdminStateUp = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             subnet1,
///         },
///     });
///
///     var trunk1 = new OpenStack.Networking.Trunk("trunk_1", new()
///     {
///         Name = "trunk_1",
///         AdminStateUp = true,
///         PortId = parentPort1.Id,
///         SubPorts = new[]
///         {
///             new OpenStack.Networking.Inputs.TrunkSubPortArgs
///             {
///                 PortId = subport1.Id,
///                 SegmentationId = 1,
///                 SegmentationType = "vlan",
///             },
///         },
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///         Networks = new[]
///         {
///             new OpenStack.Compute.Inputs.InstanceNetworkArgs
///             {
///                 Port = trunk1.PortId,
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
/// 			Name:       pulumi.String("subnet_1"),
/// 			NetworkId:  network1.ID(),
/// 			Cidr:       pulumi.String("192.168.1.0/24"),
/// 			IpVersion:  pulumi.Int(4),
/// 			EnableDhcp: pulumi.Bool(true),
/// 			NoGateway:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		parentPort1, err := networking.NewPort(ctx, "parent_port_1", &networking.PortArgs{
/// 			Name:         pulumi.String("parent_port_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			subnet1,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subport1, err := networking.NewPort(ctx, "subport_1", &networking.PortArgs{
/// 			Name:         pulumi.String("subport_1"),
/// 			NetworkId:    network1.ID(),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			subnet1,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		trunk1, err := networking.NewTrunk(ctx, "trunk_1", &networking.TrunkArgs{
/// 			Name:         pulumi.String("trunk_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 			PortId:       parentPort1.ID(),
/// 			SubPorts: networking.TrunkSubPortArray{
/// 				&networking.TrunkSubPortArgs{
/// 					PortId:           subport1.ID(),
/// 					SegmentationId:   pulumi.Int(1),
/// 					SegmentationType: pulumi.String("vlan"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 			Networks: compute.InstanceNetworkArray{
/// 				&compute.InstanceNetworkArgs{
/// 					Port: trunk1.PortId,
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
/// import com.pulumi.openstack.networking.Trunk;
/// import com.pulumi.openstack.networking.TrunkArgs;
/// import com.pulumi.openstack.networking.inputs.TrunkSubPortArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.inputs.InstanceNetworkArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .cidr("192.168.1.0/24")
///             .ipVersion(4)
///             .enableDhcp(true)
///             .noGateway(true)
///             .build());
///
///         var parentPort1 = new Port("parentPort1", PortArgs.builder()
///             .name("parent_port_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(subnet1)
///                 .build());
///
///         var subport1 = new Port("subport1", PortArgs.builder()
///             .name("subport_1")
///             .networkId(network1.id())
///             .adminStateUp(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(subnet1)
///                 .build());
///
///         var trunk1 = new Trunk("trunk1", TrunkArgs.builder()
///             .name("trunk_1")
///             .adminStateUp(true)
///             .portId(parentPort1.id())
///             .subPorts(TrunkSubPortArgs.builder()
///                 .portId(subport1.id())
///                 .segmentationId(1)
///                 .segmentationType("vlan")
///                 .build())
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .networks(InstanceNetworkArgs.builder()
///                 .port(trunk1.portId())
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
///       cidr: 192.168.1.0/24
///       ipVersion: 4
///       enableDhcp: true
///       noGateway: true
///   parentPort1:
///     type: openstack:networking:Port
///     name: parent_port_1
///     properties:
///       name: parent_port_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
///     options:
///       dependsOn:
///         - ${subnet1}
///   subport1:
///     type: openstack:networking:Port
///     name: subport_1
///     properties:
///       name: subport_1
///       networkId: ${network1.id}
///       adminStateUp: 'true'
///     options:
///       dependsOn:
///         - ${subnet1}
///   trunk1:
///     type: openstack:networking:Trunk
///     name: trunk_1
///     properties:
///       name: trunk_1
///       adminStateUp: 'true'
///       portId: ${parentPort1.id}
///       subPorts:
///         - portId: ${subport1.id}
///           segmentationId: 1
///           segmentationType: vlan
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///       networks:
///         - port: ${trunk1.portId}
/// ```
class Trunk extends pulumi.CustomResource {
  /// Administrative up/down status for the trunk
  /// (must be "true" or "false" if provided). Changing this updates the
  /// `admin_state_up` of an existing trunk.
  late final pulumi.Output<bool?> adminStateUp;

  /// The collection of tags assigned on the trunk, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;

  /// Human-readable description of the trunk. Changing this
  /// updates the name of the existing trunk.
  late final pulumi.Output<String?> description;

  /// A unique name for the trunk. Changing this
  /// updates the `name` of an existing trunk.
  late final pulumi.Output<String> name;

  /// The ID of the port to be used as the parent port of the
  /// trunk. This is the port that should be used as the compute instance network
  /// port. Changing this creates a new trunk.
  late final pulumi.Output<String> portId;

  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a trunk. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// trunk.
  late final pulumi.Output<String> region;

  /// The set of ports that will be made subports of the trunk.
  /// The structure of each subport is described below.
  late final pulumi.Output<List<Map<String, dynamic>>?> subPorts;

  /// A set of string tags for the port.
  late final pulumi.Output<List<String>?> tags;

  /// The owner of the Trunk. Required if admin wants
  /// to create a trunk on behalf of another tenant. Changing this creates a new trunk.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [Trunk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trunk]. {@macro pulumi_networking_trunk_trunk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trunk(String name, {TrunkArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:networking/trunk:Trunk',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    allTags = registerOutput<List<String>>('allTags');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    subPorts = registerOutput<List<Map<String, dynamic>>?>('subPorts');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [Trunk] resource's state with the given [name] and [id].
  static Trunk get(String name, pulumi.Input<String> id, {TrunkState? state}) {
    return Trunk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Trunk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/trunk:Trunk',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    allTags = registerOutput<List<String>>('allTags');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    subPorts = registerOutput<List<Map<String, dynamic>>?>('subPorts');
    tags = registerOutput<List<String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
  }
}
