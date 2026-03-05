import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_network_args.dart';
import 'share_network_state.dart';

/// Use this resource to configure a share network.
///
/// A share network stores network information that share servers can use when
/// shares are created.
///
/// ## Example Usage
///
/// ### Basic share network
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
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
///     networkId: network1.id,
/// });
/// const sharenetwork1 = new openstack.sharedfilesystem.ShareNetwork("sharenetwork_1", {
///     name: "test_sharenetwork",
///     description: "test share network",
///     neutronNetId: network1.id,
///     neutronSubnetId: subnet1.id,
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
///     cidr="192.168.199.0/24",
///     ip_version=4,
///     network_id=network1.id)
/// sharenetwork1 = openstack.sharedfilesystem.ShareNetwork("sharenetwork_1",
///     name="test_sharenetwork",
///     description="test share network",
///     neutron_net_id=network1.id,
///     neutron_subnet_id=subnet1.id)
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
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///         NetworkId = network1.Id,
///     });
///
///     var sharenetwork1 = new OpenStack.SharedFileSystem.ShareNetwork("sharenetwork_1", new()
///     {
///         Name = "test_sharenetwork",
///         Description = "test share network",
///         NeutronNetId = network1.Id,
///         NeutronSubnetId = subnet1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
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
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 			NetworkId: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShareNetwork(ctx, "sharenetwork_1", &sharedfilesystem.ShareNetworkArgs{
/// 			Name:            pulumi.String("test_sharenetwork"),
/// 			Description:     pulumi.String("test share network"),
/// 			NeutronNetId:    network1.ID(),
/// 			NeutronSubnetId: subnet1.ID(),
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
/// import com.pulumi.openstack.sharedfilesystem.ShareNetwork;
/// import com.pulumi.openstack.sharedfilesystem.ShareNetworkArgs;
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
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .networkId(network1.id())
///             .build());
///
///         var sharenetwork1 = new ShareNetwork("sharenetwork1", ShareNetworkArgs.builder()
///             .name("test_sharenetwork")
///             .description("test share network")
///             .neutronNetId(network1.id())
///             .neutronSubnetId(subnet1.id())
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
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///       networkId: ${network1.id}
///   sharenetwork1:
///     type: openstack:sharedfilesystem:ShareNetwork
///     name: sharenetwork_1
///     properties:
///       name: test_sharenetwork
///       description: test share network
///       neutronNetId: ${network1.id}
///       neutronSubnetId: ${subnet1.id}
/// ```
///
///
/// ### Share network with associated security services
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
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
///     networkId: network1.id,
/// });
/// const securityservice1 = new openstack.sharedfilesystem.SecurityService("securityservice_1", {
///     name: "security",
///     description: "created by terraform",
///     type: "active_directory",
///     server: "192.168.199.10",
///     dnsIp: "192.168.199.10",
///     domain: "example.com",
///     ou: "CN=Computers,DC=example,DC=com",
///     user: "joinDomainUser",
///     password: "s8cret",
/// });
/// const sharenetwork1 = new openstack.sharedfilesystem.ShareNetwork("sharenetwork_1", {
///     name: "test_sharenetwork",
///     description: "test share network with security services",
///     neutronNetId: network1.id,
///     neutronSubnetId: subnet1.id,
///     securityServiceIds: [securityservice1.id],
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
///     cidr="192.168.199.0/24",
///     ip_version=4,
///     network_id=network1.id)
/// securityservice1 = openstack.sharedfilesystem.SecurityService("securityservice_1",
///     name="security",
///     description="created by terraform",
///     type="active_directory",
///     server="192.168.199.10",
///     dns_ip="192.168.199.10",
///     domain="example.com",
///     ou="CN=Computers,DC=example,DC=com",
///     user="joinDomainUser",
///     password="s8cret")
/// sharenetwork1 = openstack.sharedfilesystem.ShareNetwork("sharenetwork_1",
///     name="test_sharenetwork",
///     description="test share network with security services",
///     neutron_net_id=network1.id,
///     neutron_subnet_id=subnet1.id,
///     security_service_ids=[securityservice1.id])
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
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///         NetworkId = network1.Id,
///     });
///
///     var securityservice1 = new OpenStack.SharedFileSystem.SecurityService("securityservice_1", new()
///     {
///         Name = "security",
///         Description = "created by terraform",
///         Type = "active_directory",
///         Server = "192.168.199.10",
///         DnsIp = "192.168.199.10",
///         Domain = "example.com",
///         Ou = "CN=Computers,DC=example,DC=com",
///         User = "joinDomainUser",
///         Password = "s8cret",
///     });
///
///     var sharenetwork1 = new OpenStack.SharedFileSystem.ShareNetwork("sharenetwork_1", new()
///     {
///         Name = "test_sharenetwork",
///         Description = "test share network with security services",
///         NeutronNetId = network1.Id,
///         NeutronSubnetId = subnet1.Id,
///         SecurityServiceIds = new[]
///         {
///             securityservice1.Id,
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
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
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 			NetworkId: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityservice1, err := sharedfilesystem.NewSecurityService(ctx, "securityservice_1", &sharedfilesystem.SecurityServiceArgs{
/// 			Name:        pulumi.String("security"),
/// 			Description: pulumi.String("created by terraform"),
/// 			Type:        pulumi.String("active_directory"),
/// 			Server:      pulumi.String("192.168.199.10"),
/// 			DnsIp:       pulumi.String("192.168.199.10"),
/// 			Domain:      pulumi.String("example.com"),
/// 			Ou:          pulumi.String("CN=Computers,DC=example,DC=com"),
/// 			User:        pulumi.String("joinDomainUser"),
/// 			Password:    pulumi.String("s8cret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShareNetwork(ctx, "sharenetwork_1", &sharedfilesystem.ShareNetworkArgs{
/// 			Name:            pulumi.String("test_sharenetwork"),
/// 			Description:     pulumi.String("test share network with security services"),
/// 			NeutronNetId:    network1.ID(),
/// 			NeutronSubnetId: subnet1.ID(),
/// 			SecurityServiceIds: pulumi.StringArray{
/// 				securityservice1.ID(),
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
/// import com.pulumi.openstack.sharedfilesystem.SecurityService;
/// import com.pulumi.openstack.sharedfilesystem.SecurityServiceArgs;
/// import com.pulumi.openstack.sharedfilesystem.ShareNetwork;
/// import com.pulumi.openstack.sharedfilesystem.ShareNetworkArgs;
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
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .networkId(network1.id())
///             .build());
///
///         var securityservice1 = new SecurityService("securityservice1", SecurityServiceArgs.builder()
///             .name("security")
///             .description("created by terraform")
///             .type("active_directory")
///             .server("192.168.199.10")
///             .dnsIp("192.168.199.10")
///             .domain("example.com")
///             .ou("CN=Computers,DC=example,DC=com")
///             .user("joinDomainUser")
///             .password("s8cret")
///             .build());
///
///         var sharenetwork1 = new ShareNetwork("sharenetwork1", ShareNetworkArgs.builder()
///             .name("test_sharenetwork")
///             .description("test share network with security services")
///             .neutronNetId(network1.id())
///             .neutronSubnetId(subnet1.id())
///             .securityServiceIds(securityservice1.id())
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
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///       networkId: ${network1.id}
///   securityservice1:
///     type: openstack:sharedfilesystem:SecurityService
///     name: securityservice_1
///     properties:
///       name: security
///       description: created by terraform
///       type: active_directory
///       server: 192.168.199.10
///       dnsIp: 192.168.199.10
///       domain: example.com
///       ou: CN=Computers,DC=example,DC=com
///       user: joinDomainUser
///       password: s8cret
///   sharenetwork1:
///     type: openstack:sharedfilesystem:ShareNetwork
///     name: sharenetwork_1
///     properties:
///       name: test_sharenetwork
///       description: test share network with security services
///       neutronNetId: ${network1.id}
///       neutronSubnetId: ${subnet1.id}
///       securityServiceIds:
///         - ${securityservice1.id}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the ID of the share network:
///
/// ```sh
/// $ pulumi import openstack:sharedfilesystem/shareNetwork:ShareNetwork sharenetwork_1 id
/// ```
class ShareNetwork extends pulumi.CustomResource {
  /// The share network CIDR.
  late final pulumi.Output<String> cidr;
  /// The human-readable description for the share network.
  /// Changing this updates the description of the existing share network.
  late final pulumi.Output<String?> description;
  /// The IP version of the share network. Can either be 4 or 6.
  late final pulumi.Output<int> ipVersion;
  /// The name for the share network. Changing this updates the name
  /// of the existing share network.
  late final pulumi.Output<String> name;
  /// The share network type. Can either be VLAN, VXLAN, GRE, or flat.
  late final pulumi.Output<String> networkType;
  /// The UUID of a neutron network when setting up or updating
  /// a share network. Changing this updates the existing share network if it's not used by
  /// shares.
  late final pulumi.Output<String> neutronNetId;
  /// The UUID of the neutron subnet when setting up or
  /// updating a share network. Changing this updates the existing share network if it's
  /// not used by shares.
  late final pulumi.Output<String> neutronSubnetId;
  /// The owner of the Share Network.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a share network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// share network.
  late final pulumi.Output<String> region;
  /// The list of security service IDs to associate with
  /// the share network. The security service must be specified by ID and not name.
  late final pulumi.Output<List<String>?> securityServiceIds;
  /// The share network segmentation ID.
  late final pulumi.Output<int> segmentationId;

  /// Creates a new [ShareNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareNetwork]. {@macro pulumi_sharedfilesystem_share_network_share_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareNetwork(
    String name, {
    ShareNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/shareNetwork:ShareNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    description = registerOutput<String?>('description');
    ipVersion = registerOutput<int>('ipVersion');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    neutronNetId = registerOutput<String>('neutronNetId');
    neutronSubnetId = registerOutput<String>('neutronSubnetId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    securityServiceIds = registerOutput<List<String>?>('securityServiceIds');
    segmentationId = registerOutput<int>('segmentationId');
  }

  /// Gets an existing [ShareNetwork] resource's state with the given [name] and [id].
  static ShareNetwork get(
    String name,
    pulumi.Input<String> id, {
    ShareNetworkState? state,
  }) {
    return ShareNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShareNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/shareNetwork:ShareNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    description = registerOutput<String?>('description');
    ipVersion = registerOutput<int>('ipVersion');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String>('networkType');
    neutronNetId = registerOutput<String>('neutronNetId');
    neutronSubnetId = registerOutput<String>('neutronSubnetId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    securityServiceIds = registerOutput<List<String>?>('securityServiceIds');
    segmentationId = registerOutput<int>('segmentationId');
  }
}
