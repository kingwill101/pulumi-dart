import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_access_args.dart';
import 'share_access_state.dart';

/// ## Example Usage
///
/// ### NFS
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
///     description: "test share network with security services",
///     neutronNetId: network1.id,
///     neutronSubnetId: subnet1.id,
/// });
/// const share1 = new openstack.sharedfilesystem.Share("share_1", {
///     name: "nfs_share",
///     description: "test share description",
///     shareProto: "NFS",
///     size: 1,
///     shareNetworkId: sharenetwork1.id,
/// });
/// const shareAccess1 = new openstack.sharedfilesystem.ShareAccess("share_access_1", {
///     shareId: share1.id,
///     accessType: "ip",
///     accessTo: "192.168.199.10",
///     accessLevel: "rw",
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
///     description="test share network with security services",
///     neutron_net_id=network1.id,
///     neutron_subnet_id=subnet1.id)
/// share1 = openstack.sharedfilesystem.Share("share_1",
///     name="nfs_share",
///     description="test share description",
///     share_proto="NFS",
///     size=1,
///     share_network_id=sharenetwork1.id)
/// share_access1 = openstack.sharedfilesystem.ShareAccess("share_access_1",
///     share_id=share1.id,
///     access_type="ip",
///     access_to="192.168.199.10",
///     access_level="rw")
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
///         Description = "test share network with security services",
///         NeutronNetId = network1.Id,
///         NeutronSubnetId = subnet1.Id,
///     });
///
///     var share1 = new OpenStack.SharedFileSystem.Share("share_1", new()
///     {
///         Name = "nfs_share",
///         Description = "test share description",
///         ShareProto = "NFS",
///         Size = 1,
///         ShareNetworkId = sharenetwork1.Id,
///     });
///
///     var shareAccess1 = new OpenStack.SharedFileSystem.ShareAccess("share_access_1", new()
///     {
///         ShareId = share1.Id,
///         AccessType = "ip",
///         AccessTo = "192.168.199.10",
///         AccessLevel = "rw",
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
/// 		sharenetwork1, err := sharedfilesystem.NewShareNetwork(ctx, "sharenetwork_1", &sharedfilesystem.ShareNetworkArgs{
/// 			Name:            pulumi.String("test_sharenetwork"),
/// 			Description:     pulumi.String("test share network with security services"),
/// 			NeutronNetId:    network1.ID(),
/// 			NeutronSubnetId: subnet1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share1, err := sharedfilesystem.NewShare(ctx, "share_1", &sharedfilesystem.ShareArgs{
/// 			Name:           pulumi.String("nfs_share"),
/// 			Description:    pulumi.String("test share description"),
/// 			ShareProto:     pulumi.String("NFS"),
/// 			Size:           pulumi.Int(1),
/// 			ShareNetworkId: sharenetwork1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShareAccess(ctx, "share_access_1", &sharedfilesystem.ShareAccessArgs{
/// 			ShareId:     share1.ID(),
/// 			AccessType:  pulumi.String("ip"),
/// 			AccessTo:    pulumi.String("192.168.199.10"),
/// 			AccessLevel: pulumi.String("rw"),
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
/// import com.pulumi.openstack.sharedfilesystem.Share;
/// import com.pulumi.openstack.sharedfilesystem.ShareArgs;
/// import com.pulumi.openstack.sharedfilesystem.ShareAccess;
/// import com.pulumi.openstack.sharedfilesystem.ShareAccessArgs;
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
///             .description("test share network with security services")
///             .neutronNetId(network1.id())
///             .neutronSubnetId(subnet1.id())
///             .build());
///
///         var share1 = new Share("share1", ShareArgs.builder()
///             .name("nfs_share")
///             .description("test share description")
///             .shareProto("NFS")
///             .size(1)
///             .shareNetworkId(sharenetwork1.id())
///             .build());
///
///         var shareAccess1 = new ShareAccess("shareAccess1", ShareAccessArgs.builder()
///             .shareId(share1.id())
///             .accessType("ip")
///             .accessTo("192.168.199.10")
///             .accessLevel("rw")
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
///       description: test share network with security services
///       neutronNetId: ${network1.id}
///       neutronSubnetId: ${subnet1.id}
///   share1:
///     type: openstack:sharedfilesystem:Share
///     name: share_1
///     properties:
///       name: nfs_share
///       description: test share description
///       shareProto: NFS
///       size: 1
///       shareNetworkId: ${sharenetwork1.id}
///   shareAccess1:
///     type: openstack:sharedfilesystem:ShareAccess
///     name: share_access_1
///     properties:
///       shareId: ${share1.id}
///       accessType: ip
///       accessTo: 192.168.199.10
///       accessLevel: rw
/// ```
///
///
/// ### CIFS
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
///     name: "test_sharenetwork_secure",
///     description: "share the secure love",
///     neutronNetId: network1.id,
///     neutronSubnetId: subnet1.id,
///     securityServiceIds: [securityservice1.id],
/// });
/// const share1 = new openstack.sharedfilesystem.Share("share_1", {
///     name: "cifs_share",
///     shareProto: "CIFS",
///     size: 1,
///     shareNetworkId: sharenetwork1.id,
/// });
/// const shareAccess1 = new openstack.sharedfilesystem.ShareAccess("share_access_1", {
///     shareId: share1.id,
///     accessType: "user",
///     accessTo: "windows",
///     accessLevel: "ro",
/// });
/// const shareAccess2 = new openstack.sharedfilesystem.ShareAccess("share_access_2", {
///     shareId: share1.id,
///     accessType: "user",
///     accessTo: "linux",
///     accessLevel: "rw",
/// });
/// export const exportLocations = share1.exportLocations;
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
///     name="test_sharenetwork_secure",
///     description="share the secure love",
///     neutron_net_id=network1.id,
///     neutron_subnet_id=subnet1.id,
///     security_service_ids=[securityservice1.id])
/// share1 = openstack.sharedfilesystem.Share("share_1",
///     name="cifs_share",
///     share_proto="CIFS",
///     size=1,
///     share_network_id=sharenetwork1.id)
/// share_access1 = openstack.sharedfilesystem.ShareAccess("share_access_1",
///     share_id=share1.id,
///     access_type="user",
///     access_to="windows",
///     access_level="ro")
/// share_access2 = openstack.sharedfilesystem.ShareAccess("share_access_2",
///     share_id=share1.id,
///     access_type="user",
///     access_to="linux",
///     access_level="rw")
/// pulumi.export("exportLocations", share1.export_locations)
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
///         Name = "test_sharenetwork_secure",
///         Description = "share the secure love",
///         NeutronNetId = network1.Id,
///         NeutronSubnetId = subnet1.Id,
///         SecurityServiceIds = new[]
///         {
///             securityservice1.Id,
///         },
///     });
///
///     var share1 = new OpenStack.SharedFileSystem.Share("share_1", new()
///     {
///         Name = "cifs_share",
///         ShareProto = "CIFS",
///         Size = 1,
///         ShareNetworkId = sharenetwork1.Id,
///     });
///
///     var shareAccess1 = new OpenStack.SharedFileSystem.ShareAccess("share_access_1", new()
///     {
///         ShareId = share1.Id,
///         AccessType = "user",
///         AccessTo = "windows",
///         AccessLevel = "ro",
///     });
///
///     var shareAccess2 = new OpenStack.SharedFileSystem.ShareAccess("share_access_2", new()
///     {
///         ShareId = share1.Id,
///         AccessType = "user",
///         AccessTo = "linux",
///         AccessLevel = "rw",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["exportLocations"] = share1.ExportLocations,
///     };
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
/// 		sharenetwork1, err := sharedfilesystem.NewShareNetwork(ctx, "sharenetwork_1", &sharedfilesystem.ShareNetworkArgs{
/// 			Name:            pulumi.String("test_sharenetwork_secure"),
/// 			Description:     pulumi.String("share the secure love"),
/// 			NeutronNetId:    network1.ID(),
/// 			NeutronSubnetId: subnet1.ID(),
/// 			SecurityServiceIds: pulumi.StringArray{
/// 				securityservice1.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		share1, err := sharedfilesystem.NewShare(ctx, "share_1", &sharedfilesystem.ShareArgs{
/// 			Name:           pulumi.String("cifs_share"),
/// 			ShareProto:     pulumi.String("CIFS"),
/// 			Size:           pulumi.Int(1),
/// 			ShareNetworkId: sharenetwork1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShareAccess(ctx, "share_access_1", &sharedfilesystem.ShareAccessArgs{
/// 			ShareId:     share1.ID(),
/// 			AccessType:  pulumi.String("user"),
/// 			AccessTo:    pulumi.String("windows"),
/// 			AccessLevel: pulumi.String("ro"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShareAccess(ctx, "share_access_2", &sharedfilesystem.ShareAccessArgs{
/// 			ShareId:     share1.ID(),
/// 			AccessType:  pulumi.String("user"),
/// 			AccessTo:    pulumi.String("linux"),
/// 			AccessLevel: pulumi.String("rw"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("exportLocations", share1.ExportLocations)
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
/// import com.pulumi.openstack.sharedfilesystem.Share;
/// import com.pulumi.openstack.sharedfilesystem.ShareArgs;
/// import com.pulumi.openstack.sharedfilesystem.ShareAccess;
/// import com.pulumi.openstack.sharedfilesystem.ShareAccessArgs;
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
///             .name("test_sharenetwork_secure")
///             .description("share the secure love")
///             .neutronNetId(network1.id())
///             .neutronSubnetId(subnet1.id())
///             .securityServiceIds(securityservice1.id())
///             .build());
///
///         var share1 = new Share("share1", ShareArgs.builder()
///             .name("cifs_share")
///             .shareProto("CIFS")
///             .size(1)
///             .shareNetworkId(sharenetwork1.id())
///             .build());
///
///         var shareAccess1 = new ShareAccess("shareAccess1", ShareAccessArgs.builder()
///             .shareId(share1.id())
///             .accessType("user")
///             .accessTo("windows")
///             .accessLevel("ro")
///             .build());
///
///         var shareAccess2 = new ShareAccess("shareAccess2", ShareAccessArgs.builder()
///             .shareId(share1.id())
///             .accessType("user")
///             .accessTo("linux")
///             .accessLevel("rw")
///             .build());
///
///         ctx.export("exportLocations", share1.exportLocations());
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
///       name: test_sharenetwork_secure
///       description: share the secure love
///       neutronNetId: ${network1.id}
///       neutronSubnetId: ${subnet1.id}
///       securityServiceIds:
///         - ${securityservice1.id}
///   share1:
///     type: openstack:sharedfilesystem:Share
///     name: share_1
///     properties:
///       name: cifs_share
///       shareProto: CIFS
///       size: 1
///       shareNetworkId: ${sharenetwork1.id}
///   shareAccess1:
///     type: openstack:sharedfilesystem:ShareAccess
///     name: share_access_1
///     properties:
///       shareId: ${share1.id}
///       accessType: user
///       accessTo: windows
///       accessLevel: ro
///   shareAccess2:
///     type: openstack:sharedfilesystem:ShareAccess
///     name: share_access_2
///     properties:
///       shareId: ${share1.id}
///       accessType: user
///       accessTo: linux
///       accessLevel: rw
/// outputs:
///   exportLocations: ${share1.exportLocations}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the ID of the share and the ID of the
/// share access, separated by a slash, e.g.:
///
/// ```sh
/// $ pulumi import openstack:sharedfilesystem/shareAccess:ShareAccess share_access_1 share_id/share_access_id
/// ```
class ShareAccess extends pulumi.CustomResource {
  /// The access credential of the entity granted access.
  late final pulumi.Output<String> accessKey;
  /// The access level to the share. Can either be `rw` or `ro`.
  late final pulumi.Output<String> accessLevel;
  /// The value that defines the access. Can either be an IP
  /// address or a username verified by configured Security Service of the Share Network.
  late final pulumi.Output<String> accessTo;
  /// The access rule type. Can either be an ip, user,
  /// cert, or cephx. cephx support requires an OpenStack environment that supports
  /// Shared Filesystem microversion 2.13 (Mitaka) or later.
  late final pulumi.Output<String> accessType;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share access.
  /// Changing this creates a new share access.
  late final pulumi.Output<String> region;
  /// The UUID of the share to which you are granted access.
  late final pulumi.Output<String> shareId;
  /// The share access state.
  late final pulumi.Output<String> state;

  /// Creates a new [ShareAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareAccess]. {@macro pulumi_sharedfilesystem_share_access_share_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareAccess(
    String name, {
    ShareAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/shareAccess:ShareAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    accessLevel = registerOutput<String>('accessLevel');
    accessTo = registerOutput<String>('accessTo');
    accessType = registerOutput<String>('accessType');
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [ShareAccess] resource's state with the given [name] and [id].
  static ShareAccess get(
    String name,
    pulumi.Input<String> id, {
    ShareAccessState? state,
  }) {
    return ShareAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShareAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/shareAccess:ShareAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessKey = registerOutput<String>('accessKey');
    accessLevel = registerOutput<String>('accessLevel');
    accessTo = registerOutput<String>('accessTo');
    accessType = registerOutput<String>('accessType');
    region = registerOutput<String>('region');
    shareId = registerOutput<String>('shareId');
    this.state = registerOutput<String>('state');
  }
}
