import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpngateway_args.dart';
import 'vpngateway_params.dart';
import 'vpngateway_state.dart';

/// Represents a VPN gateway running in GCP. This virtual device is managed
/// by Google, but used only by you.
///
///
/// To get more information about VpnGateway, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/targetVpnGateways)
///
/// &gt; **Warning:** Classic VPN is deprecating certain functionality on October 31, 2021. For more information,
/// see the [Classic VPN partial deprecation page](https://cloud.google.com/network-connectivity/docs/vpn/deprecations/classic-vpn-deprecation).
///
/// ## Example Usage
///
/// ### Target Vpn Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {name: "network-1"});
/// const targetGateway = new gcp.compute.VPNGateway("target_gateway", {
///     name: "vpn-1",
///     network: network1.id,
/// });
/// const vpnStaticIp = new gcp.compute.Address("vpn_static_ip", {name: "vpn-static-ip"});
/// const frEsp = new gcp.compute.ForwardingRule("fr_esp", {
///     name: "fr-esp",
///     ipProtocol: "ESP",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp500 = new gcp.compute.ForwardingRule("fr_udp500", {
///     name: "fr-udp500",
///     ipProtocol: "UDP",
///     portRange: "500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const frUdp4500 = new gcp.compute.ForwardingRule("fr_udp4500", {
///     name: "fr-udp4500",
///     ipProtocol: "UDP",
///     portRange: "4500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGateway.id,
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "tunnel1",
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
/// const route1 = new gcp.compute.Route("route1", {
///     name: "route1",
///     network: network1.name,
///     destRange: "15.0.0.0/24",
///     priority: 1000,
///     nextHopVpnTunnel: tunnel1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1", name="network-1")
/// target_gateway = gcp.compute.VPNGateway("target_gateway",
///     name="vpn-1",
///     network=network1.id)
/// vpn_static_ip = gcp.compute.Address("vpn_static_ip", name="vpn-static-ip")
/// fr_esp = gcp.compute.ForwardingRule("fr_esp",
///     name="fr-esp",
///     ip_protocol="ESP",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp500 = gcp.compute.ForwardingRule("fr_udp500",
///     name="fr-udp500",
///     ip_protocol="UDP",
///     port_range="500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// fr_udp4500 = gcp.compute.ForwardingRule("fr_udp4500",
///     name="fr-udp4500",
///     ip_protocol="UDP",
///     port_range="4500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway.id)
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="tunnel1",
///     peer_ip="15.0.0.120",
///     shared_secret="a secret message",
///     target_vpn_gateway=target_gateway.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             fr_esp,
///             fr_udp500,
///             fr_udp4500,
///         ]))
/// route1 = gcp.compute.Route("route1",
///     name="route1",
///     network=network1.name,
///     dest_range="15.0.0.0/24",
///     priority=1000,
///     next_hop_vpn_tunnel=tunnel1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "network-1",
///     });
///
///     var targetGateway = new Gcp.Compute.VPNGateway("target_gateway", new()
///     {
///         Name = "vpn-1",
///         Network = network1.Id,
///     });
///
///     var vpnStaticIp = new Gcp.Compute.Address("vpn_static_ip", new()
///     {
///         Name = "vpn-static-ip",
///     });
///
///     var frEsp = new Gcp.Compute.ForwardingRule("fr_esp", new()
///     {
///         Name = "fr-esp",
///         IpProtocol = "ESP",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp500 = new Gcp.Compute.ForwardingRule("fr_udp500", new()
///     {
///         Name = "fr-udp500",
///         IpProtocol = "UDP",
///         PortRange = "500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var frUdp4500 = new Gcp.Compute.ForwardingRule("fr_udp4500", new()
///     {
///         Name = "fr-udp4500",
///         IpProtocol = "UDP",
///         PortRange = "4500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGateway.Id,
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "tunnel1",
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
///     var route1 = new Gcp.Compute.Route("route1", new()
///     {
///         Name = "route1",
///         Network = network1.Name,
///         DestRange = "15.0.0.0/24",
///         Priority = 1000,
///         NextHopVpnTunnel = tunnel1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetGateway, err := compute.NewVPNGateway(ctx, "target_gateway", &compute.VPNGatewayArgs{
/// 			Name:    pulumi.String("vpn-1"),
/// 			Network: network1.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnStaticIp, err := compute.NewAddress(ctx, "vpn_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("vpn-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frEsp, err := compute.NewForwardingRule(ctx, "fr_esp", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-esp"),
/// 			IpProtocol: pulumi.String("ESP"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp500, err := compute.NewForwardingRule(ctx, "fr_udp500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp4500, err := compute.NewForwardingRule(ctx, "fr_udp4500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp4500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("4500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGateway.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:             pulumi.String("tunnel1"),
/// 			PeerIp:           pulumi.String("15.0.0.120"),
/// 			SharedSecret:     pulumi.String("a secret message"),
/// 			TargetVpnGateway: targetGateway.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frEsp,
/// 			frUdp500,
/// 			frUdp4500,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route1", &compute.RouteArgs{
/// 			Name:             pulumi.String("route1"),
/// 			Network:          network1.Name,
/// 			DestRange:        pulumi.String("15.0.0.0/24"),
/// 			Priority:         pulumi.Int(1000),
/// 			NextHopVpnTunnel: tunnel1.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_vpngateway" "target_gateway" {
///   name    = "vpn-1"
///   network = gcp_compute_network.network1.id
/// }
/// resource "gcp_compute_network" "network1" {
///   name = "network-1"
/// }
/// resource "gcp_compute_address" "vpn_static_ip" {
///   name = "vpn-static-ip"
/// }
/// resource "gcp_compute_forwardingrule" "fr_esp" {
///   name        = "fr-esp"
///   ip_protocol = "ESP"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway.id
/// }
/// resource "gcp_compute_forwardingrule" "fr_udp500" {
///   name        = "fr-udp500"
///   ip_protocol = "UDP"
///   port_range  = "500"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway.id
/// }
/// resource "gcp_compute_forwardingrule" "fr_udp4500" {
///   name        = "fr-udp4500"
///   ip_protocol = "UDP"
///   port_range  = "4500"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway.id
/// }
/// resource "gcp_compute_vpntunnel" "tunnel1" {
///   depends_on         = [gcp_compute_forwardingrule.fr_esp, gcp_compute_forwardingrule.fr_udp500, gcp_compute_forwardingrule.fr_udp4500]
///   name               = "tunnel1"
///   peer_ip            = "15.0.0.120"
///   shared_secret      = "a secret message"
///   target_vpn_gateway = gcp_compute_vpngateway.target_gateway.id
/// }
/// resource "gcp_compute_route" "route1" {
///   name                = "route1"
///   network             = gcp_compute_network.network1.name
///   dest_range          = "15.0.0.0/24"
///   priority            = 1000
///   next_hop_vpn_tunnel = gcp_compute_vpntunnel.tunnel1.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("network-1")
///             .build());
///
///         var targetGateway = new VPNGateway("targetGateway", VPNGatewayArgs.builder()
///             .name("vpn-1")
///             .network(network1.id())
///             .build());
///
///         var vpnStaticIp = new Address("vpnStaticIp", AddressArgs.builder()
///             .name("vpn-static-ip")
///             .build());
///
///         var frEsp = new ForwardingRule("frEsp", ForwardingRuleArgs.builder()
///             .name("fr-esp")
///             .ipProtocol("ESP")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp500 = new ForwardingRule("frUdp500", ForwardingRuleArgs.builder()
///             .name("fr-udp500")
///             .ipProtocol("UDP")
///             .portRange("500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var frUdp4500 = new ForwardingRule("frUdp4500", ForwardingRuleArgs.builder()
///             .name("fr-udp4500")
///             .ipProtocol("UDP")
///             .portRange("4500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGateway.id())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("tunnel1")
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
///         var route1 = new Route("route1", RouteArgs.builder()
///             .name("route1")
///             .network(network1.name())
///             .destRange("15.0.0.0/24")
///             .priority(1000)
///             .nextHopVpnTunnel(tunnel1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   targetGateway:
///     type: gcp:compute:VPNGateway
///     name: target_gateway
///     properties:
///       name: vpn-1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///   vpnStaticIp:
///     type: gcp:compute:Address
///     name: vpn_static_ip
///     properties:
///       name: vpn-static-ip
///   frEsp:
///     type: gcp:compute:ForwardingRule
///     name: fr_esp
///     properties:
///       name: fr-esp
///       ipProtocol: ESP
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp500
///     properties:
///       name: fr-udp500
///       ipProtocol: UDP
///       portRange: '500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   frUdp4500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp4500
///     properties:
///       name: fr-udp4500
///       ipProtocol: UDP
///       portRange: '4500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGateway.id}
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel1
///       peerIp: 15.0.0.120
///       sharedSecret: a secret message
///       targetVpnGateway: ${targetGateway.id}
///     options:
///       dependsOn:
///         - ${frEsp}
///         - ${frUdp500}
///         - ${frUdp4500}
///   route1:
///     type: gcp:compute:Route
///     properties:
///       name: route1
///       network: ${network1.name}
///       destRange: 15.0.0.0/24
///       priority: 1000
///       nextHopVpnTunnel: ${tunnel1.id}
/// ```
///
/// ### Target Vpn Gateway Tags
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const tagKey1 = new gcp.tags.TagKey("tag_key1", {
///     parent: "organizations/123456789",
///     shortName: "tagkey",
/// });
/// const tagValue1 = new gcp.tags.TagValue("tag_value1", {
///     parent: tagKey1.id,
///     shortName: "tagvalue",
/// });
/// const network1 = new gcp.compute.Network("network1", {name: "network-1"});
/// const targetGatewayTags = new gcp.compute.VPNGateway("target_gateway_tags", {
///     name: "vpn-1",
///     network: network1.id,
///     params: {
///         resourceManagerTags: pulumi.all([tagKey1.id, tagValue1.id]).apply(([tagKey1Id, tagValue1Id]) => {
///             [tagKey1Id]: tagValue1Id,
///         }),
///     },
/// });
/// const vpnStaticIp = new gcp.compute.Address("vpn_static_ip", {name: "vpn-static-ip"});
/// const frEsp = new gcp.compute.ForwardingRule("fr_esp", {
///     name: "fr-esp",
///     ipProtocol: "ESP",
///     ipAddress: vpnStaticIp.address,
///     target: targetGatewayTags.id,
/// });
/// const frUdp500 = new gcp.compute.ForwardingRule("fr_udp500", {
///     name: "fr-udp500",
///     ipProtocol: "UDP",
///     portRange: "500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGatewayTags.id,
/// });
/// const frUdp4500 = new gcp.compute.ForwardingRule("fr_udp4500", {
///     name: "fr-udp4500",
///     ipProtocol: "UDP",
///     portRange: "4500",
///     ipAddress: vpnStaticIp.address,
///     target: targetGatewayTags.id,
/// });
/// const tunnel1 = new gcp.compute.VPNTunnel("tunnel1", {
///     name: "tunnel1",
///     peerIp: "15.0.0.120",
///     sharedSecret: "a secret message",
///     targetVpnGateway: targetGatewayTags.id,
/// }, {
///     dependsOn: [
///         frEsp,
///         frUdp500,
///         frUdp4500,
///     ],
/// });
/// const route1 = new gcp.compute.Route("route1", {
///     name: "route1",
///     network: network1.name,
///     destRange: "15.0.0.0/24",
///     priority: 1000,
///     nextHopVpnTunnel: tunnel1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// tag_key1 = gcp.tags.TagKey("tag_key1",
///     parent="organizations/123456789",
///     short_name="tagkey")
/// tag_value1 = gcp.tags.TagValue("tag_value1",
///     parent=tag_key1.id,
///     short_name="tagvalue")
/// network1 = gcp.compute.Network("network1", name="network-1")
/// target_gateway_tags = gcp.compute.VPNGateway("target_gateway_tags",
///     name="vpn-1",
///     network=network1.id,
///     params={
///         "resource_manager_tags": pulumi.Output.all(
///             tagKey1Id=tag_key1.id,
///             tagValue1Id=tag_value1.id
/// ).apply(lambda resolved_outputs: {
///             str(resolved_outputs['tagKey1Id']): resolved_outputs['tagValue1Id'],
///         })
/// ,
///     })
/// vpn_static_ip = gcp.compute.Address("vpn_static_ip", name="vpn-static-ip")
/// fr_esp = gcp.compute.ForwardingRule("fr_esp",
///     name="fr-esp",
///     ip_protocol="ESP",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway_tags.id)
/// fr_udp500 = gcp.compute.ForwardingRule("fr_udp500",
///     name="fr-udp500",
///     ip_protocol="UDP",
///     port_range="500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway_tags.id)
/// fr_udp4500 = gcp.compute.ForwardingRule("fr_udp4500",
///     name="fr-udp4500",
///     ip_protocol="UDP",
///     port_range="4500",
///     ip_address=vpn_static_ip.address,
///     target=target_gateway_tags.id)
/// tunnel1 = gcp.compute.VPNTunnel("tunnel1",
///     name="tunnel1",
///     peer_ip="15.0.0.120",
///     shared_secret="a secret message",
///     target_vpn_gateway=target_gateway_tags.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             fr_esp,
///             fr_udp500,
///             fr_udp4500,
///         ]))
/// route1 = gcp.compute.Route("route1",
///     name="route1",
///     network=network1.name,
///     dest_range="15.0.0.0/24",
///     priority=1000,
///     next_hop_vpn_tunnel=tunnel1.id)
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
///     var tagKey1 = new Gcp.Tags.TagKey("tag_key1", new()
///     {
///         Parent = "organizations/123456789",
///         ShortName = "tagkey",
///     });
///
///     var tagValue1 = new Gcp.Tags.TagValue("tag_value1", new()
///     {
///         Parent = tagKey1.Id,
///         ShortName = "tagvalue",
///     });
///
///     var network1 = new Gcp.Compute.Network("network1", new()
///     {
///         Name = "network-1",
///     });
///
///     var targetGatewayTags = new Gcp.Compute.VPNGateway("target_gateway_tags", new()
///     {
///         Name = "vpn-1",
///         Network = network1.Id,
///         Params = new Gcp.Compute.Inputs.VPNGatewayParamsArgs
///         {
///             ResourceManagerTags = Output.Tuple(tagKey1.Id, tagValue1.Id).Apply(values =>
///             {
///                 var tagKey1Id = values.Item1;
///                 var tagValue1Id = values.Item2;
///                 return
///                 {
///                     { tagKey1Id, tagValue1Id },
///                 };
///             }),
///         },
///     });
///
///     var vpnStaticIp = new Gcp.Compute.Address("vpn_static_ip", new()
///     {
///         Name = "vpn-static-ip",
///     });
///
///     var frEsp = new Gcp.Compute.ForwardingRule("fr_esp", new()
///     {
///         Name = "fr-esp",
///         IpProtocol = "ESP",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGatewayTags.Id,
///     });
///
///     var frUdp500 = new Gcp.Compute.ForwardingRule("fr_udp500", new()
///     {
///         Name = "fr-udp500",
///         IpProtocol = "UDP",
///         PortRange = "500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGatewayTags.Id,
///     });
///
///     var frUdp4500 = new Gcp.Compute.ForwardingRule("fr_udp4500", new()
///     {
///         Name = "fr-udp4500",
///         IpProtocol = "UDP",
///         PortRange = "4500",
///         IpAddress = vpnStaticIp.IPAddress,
///         Target = targetGatewayTags.Id,
///     });
///
///     var tunnel1 = new Gcp.Compute.VPNTunnel("tunnel1", new()
///     {
///         Name = "tunnel1",
///         PeerIp = "15.0.0.120",
///         SharedSecret = "a secret message",
///         TargetVpnGateway = targetGatewayTags.Id,
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
///     var route1 = new Gcp.Compute.Route("route1", new()
///     {
///         Name = "route1",
///         Network = network1.Name,
///         DestRange = "15.0.0.0/24",
///         Priority = 1000,
///         NextHopVpnTunnel = tunnel1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagKey1, err := tags.NewTagKey(ctx, "tag_key1", &tags.TagKeyArgs{
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			ShortName: pulumi.String("tagkey"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tagValue1, err := tags.NewTagValue(ctx, "tag_value1", &tags.TagValueArgs{
/// 			Parent:    tagKey1.ID().ToIDOutput().ToStringOutput(),
/// 			ShortName: pulumi.String("tagvalue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network1, err := compute.NewNetwork(ctx, "network1", &compute.NetworkArgs{
/// 			Name: pulumi.String("network-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetGatewayTags, err := compute.NewVPNGateway(ctx, "target_gateway_tags", &compute.VPNGatewayArgs{
/// 			Name:    pulumi.String("vpn-1"),
/// 			Network: network1.ID().ToIDOutput().ToStringOutput(),
/// 			Params: &compute.VPNGatewayParamsArgs{
/// 				ResourceManagerTags: pulumi.StringMap(pulumi.All(tagKey1.ID(), tagValue1.ID()).ApplyT(func(_args []interface{}) (map[string]pulumi.ID, error) {
/// 					tagKey1Id := _args[0].(pulumi.ID)
/// 					tagValue1Id := _args[1].(pulumi.ID)
/// 					return map[string]pulumi.ID(pulumi.String(tagKey1Id).ApplyT(func(__convert string) (map[string]pulumi.ID, error) {
/// 						return map[string]pulumi.ID{
/// 							__convert: tagValue1Id,
/// 						}, nil
/// 					}).(pulumi.IDMapOutput)), nil
/// 				}).(pulumi.IDMapOutput)),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnStaticIp, err := compute.NewAddress(ctx, "vpn_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("vpn-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frEsp, err := compute.NewForwardingRule(ctx, "fr_esp", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-esp"),
/// 			IpProtocol: pulumi.String("ESP"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGatewayTags.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp500, err := compute.NewForwardingRule(ctx, "fr_udp500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGatewayTags.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		frUdp4500, err := compute.NewForwardingRule(ctx, "fr_udp4500", &compute.ForwardingRuleArgs{
/// 			Name:       pulumi.String("fr-udp4500"),
/// 			IpProtocol: pulumi.String("UDP"),
/// 			PortRange:  pulumi.String("4500"),
/// 			IpAddress:  vpnStaticIp.Address,
/// 			Target:     targetGatewayTags.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tunnel1, err := compute.NewVPNTunnel(ctx, "tunnel1", &compute.VPNTunnelArgs{
/// 			Name:             pulumi.String("tunnel1"),
/// 			PeerIp:           pulumi.String("15.0.0.120"),
/// 			SharedSecret:     pulumi.String("a secret message"),
/// 			TargetVpnGateway: targetGatewayTags.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			frEsp,
/// 			frUdp500,
/// 			frUdp4500,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route1", &compute.RouteArgs{
/// 			Name:             pulumi.String("route1"),
/// 			Network:          network1.Name,
/// 			DestRange:        pulumi.String("15.0.0.0/24"),
/// 			Priority:         pulumi.Int(1000),
/// 			NextHopVpnTunnel: tunnel1.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_compute_vpngateway" "target_gateway_tags" {
///   name    = "vpn-1"
///   network = gcp_compute_network.network1.id
///   params = {
///     resource_manager_tags = {
///       gcp_tags_tagkey.tag_key1.id = gcp_tags_tagvalue.tag_value1.id
///     }
///   }
/// }
/// resource "gcp_tags_tagkey" "tag_key1" {
///   parent     = "organizations/123456789"
///   short_name = "tagkey"
/// }
/// resource "gcp_tags_tagvalue" "tag_value1" {
///   parent     = gcp_tags_tagkey.tag_key1.id
///   short_name = "tagvalue"
/// }
/// resource "gcp_compute_network" "network1" {
///   name = "network-1"
/// }
/// resource "gcp_compute_address" "vpn_static_ip" {
///   name = "vpn-static-ip"
/// }
/// resource "gcp_compute_forwardingrule" "fr_esp" {
///   name        = "fr-esp"
///   ip_protocol = "ESP"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway_tags.id
/// }
/// resource "gcp_compute_forwardingrule" "fr_udp500" {
///   name        = "fr-udp500"
///   ip_protocol = "UDP"
///   port_range  = "500"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway_tags.id
/// }
/// resource "gcp_compute_forwardingrule" "fr_udp4500" {
///   name        = "fr-udp4500"
///   ip_protocol = "UDP"
///   port_range  = "4500"
///   ip_address  = gcp_compute_address.vpn_static_ip.address
///   target      = gcp_compute_vpngateway.target_gateway_tags.id
/// }
/// resource "gcp_compute_vpntunnel" "tunnel1" {
///   depends_on         = [gcp_compute_forwardingrule.fr_esp, gcp_compute_forwardingrule.fr_udp500, gcp_compute_forwardingrule.fr_udp4500]
///   name               = "tunnel1"
///   peer_ip            = "15.0.0.120"
///   shared_secret      = "a secret message"
///   target_vpn_gateway = gcp_compute_vpngateway.target_gateway_tags.id
/// }
/// resource "gcp_compute_route" "route1" {
///   name                = "route1"
///   network             = gcp_compute_network.network1.name
///   dest_range          = "15.0.0.0/24"
///   priority            = 1000
///   next_hop_vpn_tunnel = gcp_compute_vpntunnel.tunnel1.id
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
/// import com.pulumi.gcp.tags.TagKey;
/// import com.pulumi.gcp.tags.TagKeyArgs;
/// import com.pulumi.gcp.tags.TagValue;
/// import com.pulumi.gcp.tags.TagValueArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.VPNGateway;
/// import com.pulumi.gcp.compute.VPNGatewayArgs;
/// import com.pulumi.gcp.compute.inputs.VPNGatewayParamsArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var tagKey1 = new TagKey("tagKey1", TagKeyArgs.builder()
///             .parent("organizations/123456789")
///             .shortName("tagkey")
///             .build());
///
///         var tagValue1 = new TagValue("tagValue1", TagValueArgs.builder()
///             .parent(tagKey1.id())
///             .shortName("tagvalue")
///             .build());
///
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network-1")
///             .build());
///
///         var targetGatewayTags = new VPNGateway("targetGatewayTags", VPNGatewayArgs.builder()
///             .name("vpn-1")
///             .network(network1.id())
///             .params(VPNGatewayParamsArgs.builder()
///                 .resourceManagerTags(Output.tuple(tagKey1.id(), tagValue1.id()).applyValue(values -> {
///                     var tagKey1Id = values.t1;
///                     var tagValue1Id = values.t2;
///                     return tagKey1Id.applyValue(___convert -> Map.of(___convert, tagValue1Id));
///                 }))
///                 .build())
///             .build());
///
///         var vpnStaticIp = new Address("vpnStaticIp", AddressArgs.builder()
///             .name("vpn-static-ip")
///             .build());
///
///         var frEsp = new ForwardingRule("frEsp", ForwardingRuleArgs.builder()
///             .name("fr-esp")
///             .ipProtocol("ESP")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGatewayTags.id())
///             .build());
///
///         var frUdp500 = new ForwardingRule("frUdp500", ForwardingRuleArgs.builder()
///             .name("fr-udp500")
///             .ipProtocol("UDP")
///             .portRange("500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGatewayTags.id())
///             .build());
///
///         var frUdp4500 = new ForwardingRule("frUdp4500", ForwardingRuleArgs.builder()
///             .name("fr-udp4500")
///             .ipProtocol("UDP")
///             .portRange("4500")
///             .ipAddress(vpnStaticIp.address())
///             .target(targetGatewayTags.id())
///             .build());
///
///         var tunnel1 = new VPNTunnel("tunnel1", VPNTunnelArgs.builder()
///             .name("tunnel1")
///             .peerIp("15.0.0.120")
///             .sharedSecret("a secret message")
///             .targetVpnGateway(targetGatewayTags.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     frEsp,
///                     frUdp500,
///                     frUdp4500)
///                 .build());
///
///         var route1 = new Route("route1", RouteArgs.builder()
///             .name("route1")
///             .network(network1.name())
///             .destRange("15.0.0.0/24")
///             .priority(1000)
///             .nextHopVpnTunnel(tunnel1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   targetGatewayTags:
///     type: gcp:compute:VPNGateway
///     name: target_gateway_tags
///     properties:
///       name: vpn-1
///       network: ${network1.id}
///       params:
///         resourceManagerTags:
///           ${tagKey1.id}: ${tagValue1.id}
///   tagKey1:
///     type: gcp:tags:TagKey
///     name: tag_key1
///     properties:
///       parent: organizations/123456789
///       shortName: tagkey
///   tagValue1:
///     type: gcp:tags:TagValue
///     name: tag_value1
///     properties:
///       parent: ${tagKey1.id}
///       shortName: tagvalue
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///   vpnStaticIp:
///     type: gcp:compute:Address
///     name: vpn_static_ip
///     properties:
///       name: vpn-static-ip
///   frEsp:
///     type: gcp:compute:ForwardingRule
///     name: fr_esp
///     properties:
///       name: fr-esp
///       ipProtocol: ESP
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGatewayTags.id}
///   frUdp500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp500
///     properties:
///       name: fr-udp500
///       ipProtocol: UDP
///       portRange: '500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGatewayTags.id}
///   frUdp4500:
///     type: gcp:compute:ForwardingRule
///     name: fr_udp4500
///     properties:
///       name: fr-udp4500
///       ipProtocol: UDP
///       portRange: '4500'
///       ipAddress: ${vpnStaticIp.address}
///       target: ${targetGatewayTags.id}
///   tunnel1:
///     type: gcp:compute:VPNTunnel
///     properties:
///       name: tunnel1
///       peerIp: 15.0.0.120
///       sharedSecret: a secret message
///       targetVpnGateway: ${targetGatewayTags.id}
///     options:
///       dependsOn:
///         - ${frEsp}
///         - ${frUdp500}
///         - ${frUdp4500}
///   route1:
///     type: gcp:compute:Route
///     properties:
///       name: route1
///       network: ${network1.name}
///       destRange: 15.0.0.0/24
///       priority: 1000
///       nextHopVpnTunnel: ${tunnel1.id}
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
/// VpnGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetVpnGateways/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, VpnGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default projects/{{project}}/regions/{{region}}/targetVpnGateways/{{name}}
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{region}}/{{name}}
/// $ pulumi import gcp:compute/vPNGateway:VPNGateway default {{name}}
/// ```
class VPNGateway extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> gatewayId;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The network this VPN gateway is accepting traffic for.
  late final pulumi.Output<String> network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<VPNGatewayParams?> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region this gateway should sit in.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [VPNGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VPNGateway]. {@macro pulumi_compute_v_pngateway_vpngateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VPNGateway(
    String name, {
    VPNGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/vPNGateway:VPNGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gatewayId = registerOutput<int>('gatewayId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    params = registerOutput<VPNGatewayParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VPNGatewayParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [VPNGateway] resource's state with the given [name] and [id].
  static VPNGateway get(
    String name,
    pulumi.Input<String> id, {
    VPNGatewayState? state,
  }) {
    return VPNGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VPNGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/vPNGateway:VPNGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gatewayId = registerOutput<int>('gatewayId');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    params = registerOutput<VPNGatewayParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VPNGatewayParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}
