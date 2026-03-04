import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_flow_logs_config_args.dart';
import 'vpc_flow_logs_config_state.dart';

/// VPC Flow Logs Config is a resource that lets you configure Flow Logs for Networks, Subnets, Interconnect attachments or VPN Tunnels.
///
///
///
/// ## Example Usage
///
/// ### Network Management Vpc Flow Logs Config Interconnect Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const network = new gcp.compute.Network("network", {name: "basic-interconnect-test-network"});
/// const router = new gcp.compute.Router("router", {
///     name: "basic-interconnect-test-router",
///     network: network.name,
///     bgp: {
///         asn: 16550,
///     },
/// });
/// const attachment = new gcp.compute.InterconnectAttachment("attachment", {
///     name: "basic-interconnect-test-id",
///     edgeAvailabilityDomain: "AVAILABILITY_DOMAIN_1",
///     type: "PARTNER",
///     router: router.id,
///     mtu: "1500",
/// });
/// const interconnect_test = new gcp.networkmanagement.VpcFlowLogsConfig("interconnect-test", {
///     vpcFlowLogsConfigId: "basic-interconnect-test-id",
///     location: "global",
///     interconnectAttachment: pulumi.all([project, attachment.name]).apply(([project, name]) => `projects/${project.number}/regions/us-east4/interconnectAttachments/${name}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// network = gcp.compute.Network("network", name="basic-interconnect-test-network")
/// router = gcp.compute.Router("router",
///     name="basic-interconnect-test-router",
///     network=network.name,
///     bgp={
///         "asn": 16550,
///     })
/// attachment = gcp.compute.InterconnectAttachment("attachment",
///     name="basic-interconnect-test-id",
///     edge_availability_domain="AVAILABILITY_DOMAIN_1",
///     type="PARTNER",
///     router=router.id,
///     mtu="1500")
/// interconnect_test = gcp.networkmanagement.VpcFlowLogsConfig("interconnect-test",
///     vpc_flow_logs_config_id="basic-interconnect-test-id",
///     location="global",
///     interconnect_attachment=attachment.name.apply(lambda name: f"projects/{project.number}/regions/us-east4/interconnectAttachments/{name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-interconnect-test-network",
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "basic-interconnect-test-router",
///         Network = network.Name,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 16550,
///         },
///     });
///
///     var attachment = new Gcp.Compute.InterconnectAttachment("attachment", new()
///     {
///         Name = "basic-interconnect-test-id",
///         EdgeAvailabilityDomain = "AVAILABILITY_DOMAIN_1",
///         Type = "PARTNER",
///         Router = router.Id,
///         Mtu = "1500",
///     });
///
///     var interconnect_test = new Gcp.NetworkManagement.VpcFlowLogsConfig("interconnect-test", new()
///     {
///         VpcFlowLogsConfigId = "basic-interconnect-test-id",
///         Location = "global",
///         InterconnectAttachment = Output.Tuple(project, attachment.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-east4/interconnectAttachments/{name}";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("basic-interconnect-test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("basic-interconnect-test-router"),
/// 			Network: network.Name,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(16550),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		attachment, err := compute.NewInterconnectAttachment(ctx, "attachment", &compute.InterconnectAttachmentArgs{
/// 			Name:                   pulumi.String("basic-interconnect-test-id"),
/// 			EdgeAvailabilityDomain: pulumi.String("AVAILABILITY_DOMAIN_1"),
/// 			Type:                   pulumi.String("PARTNER"),
/// 			Router:                 router.ID(),
/// 			Mtu:                    pulumi.String("1500"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewVpcFlowLogsConfig(ctx, "interconnect-test", &networkmanagement.VpcFlowLogsConfigArgs{
/// 			VpcFlowLogsConfigId: pulumi.String("basic-interconnect-test-id"),
/// 			Location:            pulumi.String("global"),
/// 			InterconnectAttachment: attachment.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/regions/us-east4/interconnectAttachments/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.InterconnectAttachment;
/// import com.pulumi.gcp.compute.InterconnectAttachmentArgs;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-interconnect-test-network")
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("basic-interconnect-test-router")
///             .network(network.name())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(16550)
///                 .build())
///             .build());
///
///         var attachment = new InterconnectAttachment("attachment", InterconnectAttachmentArgs.builder()
///             .name("basic-interconnect-test-id")
///             .edgeAvailabilityDomain("AVAILABILITY_DOMAIN_1")
///             .type("PARTNER")
///             .router(router.id())
///             .mtu("1500")
///             .build());
///
///         var interconnect_test = new VpcFlowLogsConfig("interconnect-test", VpcFlowLogsConfigArgs.builder()
///             .vpcFlowLogsConfigId("basic-interconnect-test-id")
///             .location("global")
///             .interconnectAttachment(attachment.name().applyValue(_name -> String.format("projects/%s/regions/us-east4/interconnectAttachments/%s", project.number(),_name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   interconnect-test:
///     type: gcp:networkmanagement:VpcFlowLogsConfig
///     properties:
///       vpcFlowLogsConfigId: basic-interconnect-test-id
///       location: global
///       interconnectAttachment: projects/${project.number}/regions/us-east4/interconnectAttachments/${attachment.name}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-interconnect-test-network
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: basic-interconnect-test-router
///       network: ${network.name}
///       bgp:
///         asn: 16550
///   attachment:
///     type: gcp:compute:InterconnectAttachment
///     properties:
///       name: basic-interconnect-test-id
///       edgeAvailabilityDomain: AVAILABILITY_DOMAIN_1
///       type: PARTNER
///       router: ${router.id}
///       mtu: 1500
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Management Vpc Flow Logs Config Vpn Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const network = new gcp.compute.Network("network", {name: "basic-test-network"});
/// const targetGateway = new gcp.compute.VPNGateway("target_gateway", {
///     name: "basic-test-gateway",
///     network: network.id,
/// });
/// const vpnStaticIp = new gcp.compute.Address("vpn_static_ip", {name: "basic-test-address"});
/// const frEsp = new gcp.compute.ForwardingRule("fr_esp", {
///     name: "basic-test-fresp",
///     ipProtocol: "ESP",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp500 = new gcp.compute.ForwardingRule("fr_udp500", {
///     name: "basic-test-fr500",
///     ipProtocol: "UDP",
///     portRange: "500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp4500 = new gcp.compute.ForwardingRule("fr_udp4500", {
///     name: "basic-test-fr4500",
///     ipProtocol: "UDP",
///     portRange: "4500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const tunnel = new gcp.compute.VPNTunnel("tunnel", {
///     name: "basic-test-tunnel",
///     peerIp: "15.0.0.120",
///     sharedSecret: "a secret message",
///     targetVpnGateway: targetGateway.id,
/// }, {
///     dependsOn: [
///         frEsp,
///         frUdp500,
///         frUdp4500,
///     ],
/// });
/// const vpn_test = new gcp.networkmanagement.VpcFlowLogsConfig("vpn-test", {
///     vpcFlowLogsConfigId: "basic-test-id",
///     location: "global",
///     vpnTunnel: pulumi.all([project, tunnel.name]).apply(([project, name]) => `projects/${project.number}/regions/us-central1/vpnTunnels/${name}`),
/// });
/// const route = new gcp.compute.Route("route", {
///     name: "basic-test-route",
///     network: network.name,
///     destRange: "15.0.0.0/24",
///     priority: 1000,
///     nextHopVpnTunnel: tunnel.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// network = gcp.compute.Network("network", name="basic-test-network")
/// target_gateway = gcp.compute.VPNGateway("target_gateway",
///     name="basic-test-gateway",
///     network=network.id)
/// vpn_static_ip = gcp.compute.Address("vpn_static_ip", name="basic-test-address")
/// fr_esp = gcp.compute.ForwardingRule("fr_esp",
///     name="basic-test-fresp",
///     ip_protocol="ESP",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp500 = gcp.compute.ForwardingRule("fr_udp500",
///     name="basic-test-fr500",
///     ip_protocol="UDP",
///     port_range="500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp4500 = gcp.compute.ForwardingRule("fr_udp4500",
///     name="basic-test-fr4500",
///     ip_protocol="UDP",
///     port_range="4500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// tunnel = gcp.compute.VPNTunnel("tunnel",
///     name="basic-test-tunnel",
///     peer_ip="15.0.0.120",
///     shared_secret="a secret message",
///     target_vpn_gateway=target_gateway.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             fr_esp,
///             fr_udp500,
///             fr_udp4500,
///         ]))
/// vpn_test = gcp.networkmanagement.VpcFlowLogsConfig("vpn-test",
///     vpc_flow_logs_config_id="basic-test-id",
///     location="global",
///     vpn_tunnel=tunnel.name.apply(lambda name: f"projects/{project.number}/regions/us-central1/vpnTunnels/{name}"))
/// route = gcp.compute.Route("route",
///     name="basic-test-route",
///     network=network.name,
///     dest_range="15.0.0.0/24",
///     priority=1000,
///     next_hop_vpn_tunnel=tunnel.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-test-network",
///     });
///
///     var targetGateway = new Gcp.Compute.VPNGateway("target_gateway", new()
///     {
///         Name = "basic-test-gateway",
///         Network = network.Id,
///     });
///
///     var vpnStaticIp = new Gcp.Compute.Address("vpn_static_ip", new()
///     {
///         Name = "basic-test-address",
///     });
///
///     var frEsp = new Gcp.Compute.ForwardingRule("fr_esp", new()
///     {
///         Name = "basic-test-fresp",
///         IpProtocol = "ESP",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp500 = new Gcp.Compute.ForwardingRule("fr_udp500", new()
///     {
///         Name = "basic-test-fr500",
///         IpProtocol = "UDP",
///         PortRange = "500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp4500 = new Gcp.Compute.ForwardingRule("fr_udp4500", new()
///     {
///         Name = "basic-test-fr4500",
///         IpProtocol = "UDP",
///         PortRange = "4500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var tunnel = new Gcp.Compute.VPNTunnel("tunnel", new()
///     {
///         Name = "basic-test-tunnel",
///         PeerIp = "15.0.0.120",
///         SharedSecret = "a secret message",
///         TargetVpnGateway = targetGateway.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             frEsp,
///             frUdp500,
///             frUdp4500,
///         },
///     });
///
///     var vpn_test = new Gcp.NetworkManagement.VpcFlowLogsConfig("vpn-test", new()
///     {
///         VpcFlowLogsConfigId = "basic-test-id",
///         Location = "global",
///         VpnTunnel = Output.Tuple(project, tunnel.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/vpnTunnels/{name}";
///         }),
///     });
///
///     var route = new Gcp.Compute.Route("route", new()
///     {
///         Name = "basic-test-route",
///         Network = network.Name,
///         DestRange = "15.0.0.0/24",
///         Priority = 1000,
///         NextHopVpnTunnel = tunnel.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("basic-test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetGateway, err := compute.NewVPNGateway(ctx, "target_gateway", &compute.VPNGatewayArgs{
/// 			Name:    pulumi.String("basic-test-gateway"),
/// 			Network: network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnStaticIp, err := compute.NewAddress(ctx, "vpn_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("basic-test-address"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frEsp, err := compute.NewForwardingRule(ctx, "fr_esp", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("basic-test-fresp"),
/// 			IpProtocol: pulumi.String("ESP"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp500, err := compute.NewForwardingRule(ctx, "fr_udp500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("basic-test-fr500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp4500, err := compute.NewForwardingRule(ctx, "fr_udp4500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("basic-test-fr4500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("4500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel, err := compute.NewVPNTunnel(ctx, "tunnel", &compute.VPNTunnelArgs{
/// 			Name:             pulumi.String("basic-test-tunnel"),
/// 			PeerIp:           pulumi.String("15.0.0.120"),
/// 			SharedSecret:     pulumi.String("a secret message"),
/// 			TargetVpnGateway: targetGateway.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frEsp,
/// 			frUdp500,
/// 			frUdp4500,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewVpcFlowLogsConfig(ctx, "vpn-test", &networkmanagement.VpcFlowLogsConfigArgs{
/// 			VpcFlowLogsConfigId: pulumi.String("basic-test-id"),
/// 			Location:            pulumi.String("global"),
/// 			VpnTunnel: tunnel.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/regions/us-central1/vpnTunnels/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route", &compute.RouteArgs{
/// 			Name:             pulumi.String("basic-test-route"),
/// 			Network:          network.Name,
/// 			DestRange:        pulumi.String("15.0.0.0/24"),
/// 			Priority:         pulumi.Int(1000),
/// 			NextHopVpnTunnel: tunnel.ID(),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.VPNGateway;
/// import com.pulumi.gcp.compute.VPNGatewayArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfigArgs;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-test-network")
///             .build());
///
///         var targetGateway = new VPNGateway("targetGateway", VPNGatewayArgs.builder()
///             .name("basic-test-gateway")
///             .network(network.id())
///             .build());
///
///         var vpnStaticIp = new Address("vpnStaticIp", AddressArgs.builder()
///             .name("basic-test-address")
///             .build());
///
///         var frEsp = new ForwardingRule("frEsp", ForwardingRuleArgs.builder()
///             .name("basic-test-fresp")
///             .ipProtocol("ESP")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp500 = new ForwardingRule("frUdp500", ForwardingRuleArgs.builder()
///             .name("basic-test-fr500")
///             .ipProtocol("UDP")
///             .portRange("500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp4500 = new ForwardingRule("frUdp4500", ForwardingRuleArgs.builder()
///             .name("basic-test-fr4500")
///             .ipProtocol("UDP")
///             .portRange("4500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var tunnel = new VPNTunnel("tunnel", VPNTunnelArgs.builder()
///             .name("basic-test-tunnel")
///             .peerIp("15.0.0.120")
///             .sharedSecret("a secret message")
///             .targetVpnGateway(targetGateway.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     frEsp,
///                     frUdp500,
///                     frUdp4500)
///                 .build());
///
///         var vpn_test = new VpcFlowLogsConfig("vpn-test", VpcFlowLogsConfigArgs.builder()
///             .vpcFlowLogsConfigId("basic-test-id")
///             .location("global")
///             .vpnTunnel(tunnel.name().applyValue(_name -> String.format("projects/%s/regions/us-central1/vpnTunnels/%s", project.number(),_name)))
///             .build());
///
///         var route = new Route("route", RouteArgs.builder()
///             .name("basic-test-route")
///             .network(network.name())
///             .destRange("15.0.0.0/24")
///             .priority(1000)
///             .nextHopVpnTunnel(tunnel.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpn-test:
///     type: gcp:networkmanagement:VpcFlowLogsConfig
///     properties:
///       vpcFlowLogsConfigId: basic-test-id
///       location: global
///       vpnTunnel: projects/${project.number}/regions/us-central1/vpnTunnels/${tunnel.name}
///   tunnel:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: basic-test-tunnel
///       peerIp: 15.0.0.120
///       sharedSecret: a secret message
///       targetVpnGateway: ${targetGateway.id}
///     options:
///       dependsOn:
///         - ${frEsp}
///         - ${frUdp500}
///         - ${frUdp4500}
///   targetGateway:
///     type: gcp:compute:VPNGateway
///     name: target_gateway
///     properties:
///       name: basic-test-gateway
///       network: ${network.id}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-test-network
///   vpnStaticIp:
///     type: gcp:compute:Address
///     name: vpn_static_ip
///     properties:
///       name: basic-test-address
///   frEsp:
///     type: gcp:compute:ForwardingRule
///     name: fr_esp
///     properties:
///       name: basic-test-fresp
///       ipProtocol: ESP
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp500
///     properties:
///       name: basic-test-fr500
///       ipProtocol: UDP
///       portRange: '500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp4500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp4500
///     properties:
///       name: basic-test-fr4500
///       ipProtocol: UDP
///       portRange: '4500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   route:
///     type: gcp:compute:Route
///     properties:
///       name: basic-test-route
///       network: ${network.name}
///       destRange: 15.0.0.0/24
///       priority: 1000
///       nextHopVpnTunnel: ${tunnel.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Management Vpc Flow Logs Config Network Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const network = new gcp.compute.Network("network", {name: "basic-network-test-network"});
/// const network_test = new gcp.networkmanagement.VpcFlowLogsConfig("network-test", {
///     vpcFlowLogsConfigId: "basic-network-test-id",
///     location: "global",
///     network: pulumi.all([project, network.name]).apply(([project, name]) => `projects/${project.number}/global/networks/${name}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// network = gcp.compute.Network("network", name="basic-network-test-network")
/// network_test = gcp.networkmanagement.VpcFlowLogsConfig("network-test",
///     vpc_flow_logs_config_id="basic-network-test-id",
///     location="global",
///     network=network.name.apply(lambda name: f"projects/{project.number}/global/networks/{name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-network-test-network",
///     });
///
///     var network_test = new Gcp.NetworkManagement.VpcFlowLogsConfig("network-test", new()
///     {
///         VpcFlowLogsConfigId = "basic-network-test-id",
///         Location = "global",
///         Network = Output.Tuple(project, network.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/global/networks/{name}";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name: pulumi.String("basic-network-test-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewVpcFlowLogsConfig(ctx, "network-test", &networkmanagement.VpcFlowLogsConfigArgs{
/// 			VpcFlowLogsConfigId: pulumi.String("basic-network-test-id"),
/// 			Location:            pulumi.String("global"),
/// 			Network: network.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/global/networks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-network-test-network")
///             .build());
///
///         var network_test = new VpcFlowLogsConfig("network-test", VpcFlowLogsConfigArgs.builder()
///             .vpcFlowLogsConfigId("basic-network-test-id")
///             .location("global")
///             .network(network.name().applyValue(_name -> String.format("projects/%s/global/networks/%s", project.number(),_name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-test:
///     type: gcp:networkmanagement:VpcFlowLogsConfig
///     properties:
///       vpcFlowLogsConfigId: basic-network-test-id
///       location: global
///       network: projects/${project.number}/global/networks/${network.name}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-network-test-network
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Network Management Vpc Flow Logs Config Subnet Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const network = new gcp.compute.Network("network", {
///     name: "basic-subnet-test-network",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "basic-subnet-test-subnetwork",
///     ipCidrRange: "10.2.0.0/16",
///     region: "us-central1",
///     network: network.id,
/// });
/// const subnet_test = new gcp.networkmanagement.VpcFlowLogsConfig("subnet-test", {
///     vpcFlowLogsConfigId: "basic-subnet-test-id",
///     location: "global",
///     subnet: pulumi.all([project, subnetwork.name]).apply(([project, name]) => `projects/${project.number}/regions/us-central1/subnetworks/${name}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// network = gcp.compute.Network("network",
///     name="basic-subnet-test-network",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="basic-subnet-test-subnetwork",
///     ip_cidr_range="10.2.0.0/16",
///     region="us-central1",
///     network=network.id)
/// subnet_test = gcp.networkmanagement.VpcFlowLogsConfig("subnet-test",
///     vpc_flow_logs_config_id="basic-subnet-test-id",
///     location="global",
///     subnet=subnetwork.name.apply(lambda name: f"projects/{project.number}/regions/us-central1/subnetworks/{name}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "basic-subnet-test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "basic-subnet-test-subnetwork",
///         IpCidrRange = "10.2.0.0/16",
///         Region = "us-central1",
///         Network = network.Id,
///     });
///
///     var subnet_test = new Gcp.NetworkManagement.VpcFlowLogsConfig("subnet-test", new()
///     {
///         VpcFlowLogsConfigId = "basic-subnet-test-id",
///         Location = "global",
///         Subnet = Output.Tuple(project, subnetwork.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/regions/us-central1/subnetworks/{name}";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkmanagement"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("basic-subnet-test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("basic-subnet-test-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.2.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanagement.NewVpcFlowLogsConfig(ctx, "subnet-test", &networkmanagement.VpcFlowLogsConfigArgs{
/// 			VpcFlowLogsConfigId: pulumi.String("basic-subnet-test-id"),
/// 			Location:            pulumi.String("global"),
/// 			Subnet: subnetwork.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/regions/us-central1/subnetworks/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfig;
/// import com.pulumi.gcp.networkmanagement.VpcFlowLogsConfigArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("basic-subnet-test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("basic-subnet-test-subnetwork")
///             .ipCidrRange("10.2.0.0/16")
///             .region("us-central1")
///             .network(network.id())
///             .build());
///
///         var subnet_test = new VpcFlowLogsConfig("subnet-test", VpcFlowLogsConfigArgs.builder()
///             .vpcFlowLogsConfigId("basic-subnet-test-id")
///             .location("global")
///             .subnet(subnetwork.name().applyValue(_name -> String.format("projects/%s/regions/us-central1/subnetworks/%s", project.number(),_name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subnet-test:
///     type: gcp:networkmanagement:VpcFlowLogsConfig
///     properties:
///       vpcFlowLogsConfigId: basic-subnet-test-id
///       location: global
///       subnet: projects/${project.number}/regions/us-central1/subnetworks/${subnetwork.name}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: basic-subnet-test-network
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: basic-subnet-test-subnetwork
///       ipCidrRange: 10.2.0.0/16
///       region: us-central1
///       network: ${network.id}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// VpcFlowLogsConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}`
///
/// * `{{project}}/{{location}}/{{vpc_flow_logs_config_id}}`
///
/// * `{{location}}/{{vpc_flow_logs_config_id}}`
///
/// When using the `pulumi import` command, VpcFlowLogsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default projects/{{project}}/locations/{{location}}/vpcFlowLogsConfigs/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default {{project}}/{{location}}/{{vpc_flow_logs_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig default {{location}}/{{vpc_flow_logs_config_id}}
/// ```
class VpcFlowLogsConfig extends pulumi.CustomResource {
  /// Optional. The aggregation interval for the logs. Default value is
  /// INTERVAL_5_SEC.   Possible values:  AGGREGATION_INTERVAL_UNSPECIFIED INTERVAL_5_SEC INTERVAL_30_SEC INTERVAL_1_MIN INTERVAL_5_MIN INTERVAL_10_MIN INTERVAL_15_MIN
  late final pulumi.Output<String> aggregationInterval;

  /// Output only. The time the config was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum
  /// of 512 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Export filter used to define which VPC Flow Logs should be logged.
  late final pulumi.Output<String?> filterExpr;

  /// Optional. The value of the field must be in (0, 1]. The sampling rate
  /// of VPC Flow Logs where 1.0 means all collected logs are reported. Setting the
  /// sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
  /// the state field instead. Default value is 1.0.
  late final pulumi.Output<double> flowSampling;

  /// Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  late final pulumi.Output<String?> interconnectAttachment;

  /// Optional. Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource
  /// within its parent collection as described in https://google.aip.dev/122. See documentation
  /// for resource type `networkmanagement.googleapis.com/VpcFlowLogsConfig`.
  late final pulumi.Output<String> location;

  /// Optional. Configures whether all, none or a subset of metadata fields
  /// should be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
  /// Possible values:  METADATA_UNSPECIFIED INCLUDE_ALL_METADATA EXCLUDE_ALL_METADATA CUSTOM_METADATA
  late final pulumi.Output<String> metadata;

  /// Optional. Custom metadata fields to include in the reported VPC flow
  /// logs. Can only be specified if \"metadata\" was set to CUSTOM_METADATA.
  late final pulumi.Output<List<String>?> metadataFields;

  /// Identifier. Unique name of the configuration using the form:     `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  late final pulumi.Output<String> name;

  /// Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. Format: projects/{project_id}/global/networks/{name}
  late final pulumi.Output<String?> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Optional. The state of the VPC Flow Log configuration. Default value
  /// is ENABLED. When creating a new configuration, it must be enabled.
  /// Possible values: STATE_UNSPECIFIED ENABLED DISABLED
  late final pulumi.Output<String> state;

  /// Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{region}/subnetworks/{name}
  late final pulumi.Output<String?> subnet;

  /// Describes the state of the configured target resource for diagnostic
  /// purposes.
  /// Possible values:
  /// TARGET_RESOURCE_STATE_UNSPECIFIED
  /// TARGET_RESOURCE_EXISTS
  /// TARGET_RESOURCE_DOES_NOT_EXIST
  late final pulumi.Output<String> targetResourceState;

  /// Output only. The time the config was updated.
  late final pulumi.Output<String> updateTime;

  /// Required. ID of the `VpcFlowLogsConfig`.
  late final pulumi.Output<String> vpcFlowLogsConfigId;

  /// Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  late final pulumi.Output<String?> vpnTunnel;

  /// Creates a new [VpcFlowLogsConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcFlowLogsConfig]. {@macro pulumi_networkmanagement_vpc_flow_logs_config_vpc_flow_logs_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcFlowLogsConfig(
    String name, {
    VpcFlowLogsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregationInterval = registerOutput<String>('aggregationInterval');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterExpr = registerOutput<String?>('filterExpr');
    flowSampling = registerOutput<double>('flowSampling');
    interconnectAttachment = registerOutput<String?>('interconnectAttachment');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    state = registerOutput<String>('state');
    subnet = registerOutput<String?>('subnet');
    targetResourceState = registerOutput<String>('targetResourceState');
    updateTime = registerOutput<String>('updateTime');
    vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
    vpnTunnel = registerOutput<String?>('vpnTunnel');
  }

  /// Gets an existing [VpcFlowLogsConfig] resource's state with the given [name] and [id].
  static VpcFlowLogsConfig get(
    String name,
    pulumi.Input<String> id, {
    VpcFlowLogsConfigState? state,
  }) {
    return VpcFlowLogsConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcFlowLogsConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkmanagement/vpcFlowLogsConfig:VpcFlowLogsConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregationInterval = registerOutput<String>('aggregationInterval');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterExpr = registerOutput<String?>('filterExpr');
    flowSampling = registerOutput<double>('flowSampling');
    interconnectAttachment = registerOutput<String?>('interconnectAttachment');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<String>('metadata');
    metadataFields = registerOutput<List<String>?>('metadataFields');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    subnet = registerOutput<String?>('subnet');
    targetResourceState = registerOutput<String>('targetResourceState');
    updateTime = registerOutput<String>('updateTime');
    vpcFlowLogsConfigId = registerOutput<String>('vpcFlowLogsConfigId');
    vpnTunnel = registerOutput<String?>('vpnTunnel');
  }
}
