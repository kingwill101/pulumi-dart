import 'package:pulumi/pulumi.dart' as pulumi;
import 'ha_vpn_gateway_args.dart';
import 'ha_vpn_gateway_state.dart';

/// Represents a VPN gateway running in GCP. This virtual device is managed
/// by Google, but used only by you. This type of VPN Gateway allows for the creation
/// of VPN solutions with higher availability than classic Target VPN Gateways.
///
///
/// To get more information about HaVpnGateway, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/vpnGateways)
/// * How-to Guides
/// * [Choosing a VPN](https://cloud.google.com/vpn/docs/how-to/choosing-a-vpn)
/// * [Cloud VPN Overview](https://cloud.google.com/vpn/docs/concepts/overview)
///
/// ## Example Usage
///
/// ### Ha Vpn Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {
///     name: "network1",
///     autoCreateSubnetworks: false,
/// });
/// const haGateway1 = new gcp.compute.HaVpnGateway("ha_gateway1", {
///     region: "us-central1",
///     name: "ha-vpn-1",
///     network: network1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1",
///     name="network1",
///     auto_create_subnetworks=False)
/// ha_gateway1 = gcp.compute.HaVpnGateway("ha_gateway1",
///     region="us-central1",
///     name="ha-vpn-1",
///     network=network1.id)
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
///         Name = "network1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var haGateway1 = new Gcp.Compute.HaVpnGateway("ha_gateway1", new()
///     {
///         Region = "us-central1",
///         Name = "ha-vpn-1",
///         Network = network1.Id,
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
/// 			Name:                  pulumi.String("network1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewHaVpnGateway(ctx, "ha_gateway1", &compute.HaVpnGatewayArgs{
/// 			Region:  pulumi.String("us-central1"),
/// 			Name:    pulumi.String("ha-vpn-1"),
/// 			Network: network1.ID(),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
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
///             .name("network1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var haGateway1 = new HaVpnGateway("haGateway1", HaVpnGatewayArgs.builder()
///             .region("us-central1")
///             .name("ha-vpn-1")
///             .network(network1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   haGateway1:
///     type: gcp:compute:HaVpnGateway
///     name: ha_gateway1
///     properties:
///       region: us-central1
///       name: ha-vpn-1
///       network: ${network1.id}
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network1
///       autoCreateSubnetworks: false
/// ```
///
/// ### Ha Vpn Gateway Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network1", {
///     name: "network1",
///     autoCreateSubnetworks: false,
/// });
/// const haGateway1 = new gcp.compute.HaVpnGateway("ha_gateway1", {
///     region: "us-central1",
///     name: "ha-vpn-1",
///     network: network1.id,
///     stackType: "IPV4_IPV6",
///     labels: {
///         mykey: "myvalue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network1",
///     name="network1",
///     auto_create_subnetworks=False)
/// ha_gateway1 = gcp.compute.HaVpnGateway("ha_gateway1",
///     region="us-central1",
///     name="ha-vpn-1",
///     network=network1.id,
///     stack_type="IPV4_IPV6",
///     labels={
///         "mykey": "myvalue",
///     })
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
///         Name = "network1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var haGateway1 = new Gcp.Compute.HaVpnGateway("ha_gateway1", new()
///     {
///         Region = "us-central1",
///         Name = "ha-vpn-1",
///         Network = network1.Id,
///         StackType = "IPV4_IPV6",
///         Labels =
///         {
///             { "mykey", "myvalue" },
///         },
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
/// 			Name:                  pulumi.String("network1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewHaVpnGateway(ctx, "ha_gateway1", &compute.HaVpnGatewayArgs{
/// 			Region:    pulumi.String("us-central1"),
/// 			Name:      pulumi.String("ha-vpn-1"),
/// 			Network:   network1.ID(),
/// 			StackType: pulumi.String("IPV4_IPV6"),
/// 			Labels: pulumi.StringMap{
/// 				"mykey": pulumi.String("myvalue"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
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
///             .name("network1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var haGateway1 = new HaVpnGateway("haGateway1", HaVpnGatewayArgs.builder()
///             .region("us-central1")
///             .name("ha-vpn-1")
///             .network(network1.id())
///             .stackType("IPV4_IPV6")
///             .labels(Map.of("mykey", "myvalue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   haGateway1:
///     type: gcp:compute:HaVpnGateway
///     name: ha_gateway1
///     properties:
///       region: us-central1
///       name: ha-vpn-1
///       network: ${network1.id}
///       stackType: IPV4_IPV6
///       labels:
///         mykey: myvalue
///   network1:
///     type: gcp:compute:Network
///     properties:
///       name: network1
///       autoCreateSubnetworks: false
/// ```
///
/// ### Compute Ha Vpn Gateway Encrypted Interconnect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network",
///     autoCreateSubnetworks: false,
/// });
/// const address1 = new gcp.compute.Address("address1", {
///     name: "test-address1",
///     addressType: "INTERNAL",
///     purpose: "IPSEC_INTERCONNECT",
///     address: "192.168.1.0",
///     prefixLength: 29,
///     network: network.selfLink,
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "test-router",
///     network: network.name,
///     encryptedInterconnectRouter: true,
///     bgp: {
///         asn: 16550,
///     },
/// });
/// const attachment1 = new gcp.compute.InterconnectAttachment("attachment1", {
///     name: "test-interconnect-attachment1",
///     edgeAvailabilityDomain: "AVAILABILITY_DOMAIN_1",
///     type: "PARTNER",
///     router: router.id,
///     encryption: "IPSEC",
///     ipsecInternalAddresses: [address1.selfLink],
/// });
/// const address2 = new gcp.compute.Address("address2", {
///     name: "test-address2",
///     addressType: "INTERNAL",
///     purpose: "IPSEC_INTERCONNECT",
///     address: "192.168.2.0",
///     prefixLength: 29,
///     network: network.selfLink,
/// });
/// const attachment2 = new gcp.compute.InterconnectAttachment("attachment2", {
///     name: "test-interconnect-attachment2",
///     edgeAvailabilityDomain: "AVAILABILITY_DOMAIN_2",
///     type: "PARTNER",
///     router: router.id,
///     encryption: "IPSEC",
///     ipsecInternalAddresses: [address2.selfLink],
/// });
/// const vpn_gateway = new gcp.compute.HaVpnGateway("vpn-gateway", {
///     name: "test-ha-vpngw",
///     network: network.id,
///     vpnInterfaces: [
///         {
///             id: 0,
///             interconnectAttachment: attachment1.selfLink,
///         },
///         {
///             id: 1,
///             interconnectAttachment: attachment2.selfLink,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network",
///     auto_create_subnetworks=False)
/// address1 = gcp.compute.Address("address1",
///     name="test-address1",
///     address_type="INTERNAL",
///     purpose="IPSEC_INTERCONNECT",
///     address="192.168.1.0",
///     prefix_length=29,
///     network=network.self_link)
/// router = gcp.compute.Router("router",
///     name="test-router",
///     network=network.name,
///     encrypted_interconnect_router=True,
///     bgp={
///         "asn": 16550,
///     })
/// attachment1 = gcp.compute.InterconnectAttachment("attachment1",
///     name="test-interconnect-attachment1",
///     edge_availability_domain="AVAILABILITY_DOMAIN_1",
///     type="PARTNER",
///     router=router.id,
///     encryption="IPSEC",
///     ipsec_internal_addresses=[address1.self_link])
/// address2 = gcp.compute.Address("address2",
///     name="test-address2",
///     address_type="INTERNAL",
///     purpose="IPSEC_INTERCONNECT",
///     address="192.168.2.0",
///     prefix_length=29,
///     network=network.self_link)
/// attachment2 = gcp.compute.InterconnectAttachment("attachment2",
///     name="test-interconnect-attachment2",
///     edge_availability_domain="AVAILABILITY_DOMAIN_2",
///     type="PARTNER",
///     router=router.id,
///     encryption="IPSEC",
///     ipsec_internal_addresses=[address2.self_link])
/// vpn_gateway = gcp.compute.HaVpnGateway("vpn-gateway",
///     name="test-ha-vpngw",
///     network=network.id,
///     vpn_interfaces=[
///         {
///             "id": 0,
///             "interconnect_attachment": attachment1.self_link,
///         },
///         {
///             "id": 1,
///             "interconnect_attachment": attachment2.self_link,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var address1 = new Gcp.Compute.Address("address1", new()
///     {
///         Name = "test-address1",
///         AddressType = "INTERNAL",
///         Purpose = "IPSEC_INTERCONNECT",
///         IPAddress = "192.168.1.0",
///         PrefixLength = 29,
///         Network = network.SelfLink,
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "test-router",
///         Network = network.Name,
///         EncryptedInterconnectRouter = true,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 16550,
///         },
///     });
///
///     var attachment1 = new Gcp.Compute.InterconnectAttachment("attachment1", new()
///     {
///         Name = "test-interconnect-attachment1",
///         EdgeAvailabilityDomain = "AVAILABILITY_DOMAIN_1",
///         Type = "PARTNER",
///         Router = router.Id,
///         Encryption = "IPSEC",
///         IpsecInternalAddresses = new[]
///         {
///             address1.SelfLink,
///         },
///     });
///
///     var address2 = new Gcp.Compute.Address("address2", new()
///     {
///         Name = "test-address2",
///         AddressType = "INTERNAL",
///         Purpose = "IPSEC_INTERCONNECT",
///         IPAddress = "192.168.2.0",
///         PrefixLength = 29,
///         Network = network.SelfLink,
///     });
///
///     var attachment2 = new Gcp.Compute.InterconnectAttachment("attachment2", new()
///     {
///         Name = "test-interconnect-attachment2",
///         EdgeAvailabilityDomain = "AVAILABILITY_DOMAIN_2",
///         Type = "PARTNER",
///         Router = router.Id,
///         Encryption = "IPSEC",
///         IpsecInternalAddresses = new[]
///         {
///             address2.SelfLink,
///         },
///     });
///
///     var vpn_gateway = new Gcp.Compute.HaVpnGateway("vpn-gateway", new()
///     {
///         Name = "test-ha-vpngw",
///         Network = network.Id,
///         VpnInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.HaVpnGatewayVpnInterfaceArgs
///             {
///                 Id = 0,
///                 InterconnectAttachment = attachment1.SelfLink,
///             },
///             new Gcp.Compute.Inputs.HaVpnGatewayVpnInterfaceArgs
///             {
///                 Id = 1,
///                 InterconnectAttachment = attachment2.SelfLink,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		address1, err := compute.NewAddress(ctx, "address1", &compute.AddressArgs{
/// 			Name:         pulumi.String("test-address1"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("IPSEC_INTERCONNECT"),
/// 			Address:      pulumi.String("192.168.1.0"),
/// 			PrefixLength: pulumi.Int(29),
/// 			Network:      network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:                        pulumi.String("test-router"),
/// 			Network:                     network.Name,
/// 			EncryptedInterconnectRouter: pulumi.Bool(true),
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(16550),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		attachment1, err := compute.NewInterconnectAttachment(ctx, "attachment1", &compute.InterconnectAttachmentArgs{
/// 			Name:                   pulumi.String("test-interconnect-attachment1"),
/// 			EdgeAvailabilityDomain: pulumi.String("AVAILABILITY_DOMAIN_1"),
/// 			Type:                   pulumi.String("PARTNER"),
/// 			Router:                 router.ID(),
/// 			Encryption:             pulumi.String("IPSEC"),
/// 			IpsecInternalAddresses: pulumi.StringArray{
/// 				address1.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		address2, err := compute.NewAddress(ctx, "address2", &compute.AddressArgs{
/// 			Name:         pulumi.String("test-address2"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			Purpose:      pulumi.String("IPSEC_INTERCONNECT"),
/// 			Address:      pulumi.String("192.168.2.0"),
/// 			PrefixLength: pulumi.Int(29),
/// 			Network:      network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		attachment2, err := compute.NewInterconnectAttachment(ctx, "attachment2", &compute.InterconnectAttachmentArgs{
/// 			Name:                   pulumi.String("test-interconnect-attachment2"),
/// 			EdgeAvailabilityDomain: pulumi.String("AVAILABILITY_DOMAIN_2"),
/// 			Type:                   pulumi.String("PARTNER"),
/// 			Router:                 router.ID(),
/// 			Encryption:             pulumi.String("IPSEC"),
/// 			IpsecInternalAddresses: pulumi.StringArray{
/// 				address2.SelfLink,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewHaVpnGateway(ctx, "vpn-gateway", &compute.HaVpnGatewayArgs{
/// 			Name:    pulumi.String("test-ha-vpngw"),
/// 			Network: network.ID(),
/// 			VpnInterfaces: compute.HaVpnGatewayVpnInterfaceArray{
/// 				&compute.HaVpnGatewayVpnInterfaceArgs{
/// 					Id:                     pulumi.Int(0),
/// 					InterconnectAttachment: attachment1.SelfLink,
/// 				},
/// 				&compute.HaVpnGatewayVpnInterfaceArgs{
/// 					Id:                     pulumi.Int(1),
/// 					InterconnectAttachment: attachment2.SelfLink,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.InterconnectAttachment;
/// import com.pulumi.gcp.compute.InterconnectAttachmentArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
/// import com.pulumi.gcp.compute.inputs.HaVpnGatewayVpnInterfaceArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var address1 = new Address("address1", AddressArgs.builder()
///             .name("test-address1")
///             .addressType("INTERNAL")
///             .purpose("IPSEC_INTERCONNECT")
///             .address("192.168.1.0")
///             .prefixLength(29)
///             .network(network.selfLink())
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("test-router")
///             .network(network.name())
///             .encryptedInterconnectRouter(true)
///             .bgp(RouterBgpArgs.builder()
///                 .asn(16550)
///                 .build())
///             .build());
///
///         var attachment1 = new InterconnectAttachment("attachment1", InterconnectAttachmentArgs.builder()
///             .name("test-interconnect-attachment1")
///             .edgeAvailabilityDomain("AVAILABILITY_DOMAIN_1")
///             .type("PARTNER")
///             .router(router.id())
///             .encryption("IPSEC")
///             .ipsecInternalAddresses(address1.selfLink())
///             .build());
///
///         var address2 = new Address("address2", AddressArgs.builder()
///             .name("test-address2")
///             .addressType("INTERNAL")
///             .purpose("IPSEC_INTERCONNECT")
///             .address("192.168.2.0")
///             .prefixLength(29)
///             .network(network.selfLink())
///             .build());
///
///         var attachment2 = new InterconnectAttachment("attachment2", InterconnectAttachmentArgs.builder()
///             .name("test-interconnect-attachment2")
///             .edgeAvailabilityDomain("AVAILABILITY_DOMAIN_2")
///             .type("PARTNER")
///             .router(router.id())
///             .encryption("IPSEC")
///             .ipsecInternalAddresses(address2.selfLink())
///             .build());
///
///         var vpn_gateway = new HaVpnGateway("vpn-gateway", HaVpnGatewayArgs.builder()
///             .name("test-ha-vpngw")
///             .network(network.id())
///             .vpnInterfaces(
///                 HaVpnGatewayVpnInterfaceArgs.builder()
///                     .id(0)
///                     .interconnectAttachment(attachment1.selfLink())
///                     .build(),
///                 HaVpnGatewayVpnInterfaceArgs.builder()
///                     .id(1)
///                     .interconnectAttachment(attachment2.selfLink())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpn-gateway:
///     type: gcp:compute:HaVpnGateway
///     properties:
///       name: test-ha-vpngw
///       network: ${network.id}
///       vpnInterfaces:
///         - id: 0
///           interconnectAttachment: ${attachment1.selfLink}
///         - id: 1
///           interconnectAttachment: ${attachment2.selfLink}
///   attachment1:
///     type: gcp:compute:InterconnectAttachment
///     properties:
///       name: test-interconnect-attachment1
///       edgeAvailabilityDomain: AVAILABILITY_DOMAIN_1
///       type: PARTNER
///       router: ${router.id}
///       encryption: IPSEC
///       ipsecInternalAddresses:
///         - ${address1.selfLink}
///   attachment2:
///     type: gcp:compute:InterconnectAttachment
///     properties:
///       name: test-interconnect-attachment2
///       edgeAvailabilityDomain: AVAILABILITY_DOMAIN_2
///       type: PARTNER
///       router: ${router.id}
///       encryption: IPSEC
///       ipsecInternalAddresses:
///         - ${address2.selfLink}
///   address1:
///     type: gcp:compute:Address
///     properties:
///       name: test-address1
///       addressType: INTERNAL
///       purpose: IPSEC_INTERCONNECT
///       address: 192.168.1.0
///       prefixLength: 29
///       network: ${network.selfLink}
///   address2:
///     type: gcp:compute:Address
///     properties:
///       name: test-address2
///       addressType: INTERNAL
///       purpose: IPSEC_INTERCONNECT
///       address: 192.168.2.0
///       prefixLength: 29
///       network: ${network.selfLink}
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: test-router
///       network: ${network.name}
///       encryptedInterconnectRouter: true
///       bgp:
///         asn: 16550
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
/// ```
///
///
/// ## Import
///
/// HaVpnGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/vpnGateways/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HaVpnGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/haVpnGateway:HaVpnGateway default projects/{{project}}/regions/{{region}}/vpnGateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/haVpnGateway:HaVpnGateway default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/haVpnGateway:HaVpnGateway default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/haVpnGateway:HaVpnGateway default {{name}}
/// ```
class HaVpnGateway extends pulumi.CustomResource {
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The IP family of the gateway IPs for the HA-VPN gateway interfaces. If not specified, IPV4 will be used.
  /// Default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  late final pulumi.Output<String?> gatewayIpVersion;

  /// A fingerprint for the labels being applied to this VpnGateway, which is essentially a hash
  /// of the labels set used for optimistic locking. The fingerprint is initially generated by
  /// Compute Engine and changes after every request to modify or update labels.
  /// You must always provide an up-to-date fingerprint hash in order to update or change labels,
  /// otherwise the request will fail with error 412 conditionNotMet.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels for this resource. These can only be added or modified by the setLabels method.
  /// Each label key/value pair must comply with RFC1035. Label values may be empty.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

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

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region this gateway should sit in.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The stack type for this VPN gateway to identify the IP protocols that are enabled.
  /// If not specified, IPV4_ONLY will be used.
  /// Default value is `IPV4_ONLY`.
  /// Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  late final pulumi.Output<String?> stackType;

  /// A list of interfaces on this VPN gateway.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> vpnInterfaces;

  /// Creates a new [HaVpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HaVpnGateway]. {@macro pulumi_compute_ha_vpn_gateway_ha_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HaVpnGateway(
    String name, {
    HaVpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/haVpnGateway:HaVpnGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gatewayIpVersion = registerOutput<String?>('gatewayIpVersion');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    stackType = registerOutput<String?>('stackType');
    vpnInterfaces = registerOutput<List<Map<String, dynamic>>>('vpnInterfaces');
  }

  /// Gets an existing [HaVpnGateway] resource's state with the given [name] and [id].
  static HaVpnGateway get(
    String name,
    pulumi.Input<String> id, {
    HaVpnGatewayState? state,
  }) {
    return HaVpnGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HaVpnGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/haVpnGateway:HaVpnGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gatewayIpVersion = registerOutput<String?>('gatewayIpVersion');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
    stackType = registerOutput<String?>('stackType');
    vpnInterfaces = registerOutput<List<Map<String, dynamic>>>('vpnInterfaces');
  }
}
