import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_args.dart';
import 'peering_properties_direct_response.dart';
import 'peering_properties_exchange_response.dart';
import 'peering_sku_response.dart';

/// Peering is a logical representation of a set of connections to the Microsoft Cloud Edge at a location.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native peering [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a direct peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peering = new AzureNative.Peering.Peering("peering", new()
///     {
///         Direct = new AzureNative.Peering.Inputs.PeeringPropertiesDirectArgs
///         {
///             Connections = new[]
///             {
///                 new AzureNative.Peering.Inputs.DirectConnectionArgs
///                 {
///                     BandwidthInMbps = 10000,
///                     BgpSession = new AzureNative.Peering.Inputs.BgpSessionArgs
///                     {
///                         MaxPrefixesAdvertisedV4 = 1000,
///                         MaxPrefixesAdvertisedV6 = 100,
///                         Md5AuthenticationKey = "test-md5-auth-key",
///                         SessionPrefixV4 = "192.168.0.0/31",
///                         SessionPrefixV6 = "fd00::0/127",
///                     },
///                     ConnectionIdentifier = "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///                     PeeringDBFacilityId = 99999,
///                     SessionAddressProvider = AzureNative.Peering.SessionAddressProvider.Peer,
///                     UseForPeeringService = false,
///                 },
///                 new AzureNative.Peering.Inputs.DirectConnectionArgs
///                 {
///                     BandwidthInMbps = 10000,
///                     ConnectionIdentifier = "8AB00818-D533-4504-A25A-03A17F61201C",
///                     PeeringDBFacilityId = 99999,
///                     SessionAddressProvider = AzureNative.Peering.SessionAddressProvider.Microsoft,
///                     UseForPeeringService = true,
///                 },
///             },
///             DirectPeeringType = AzureNative.Peering.DirectPeeringType.Edge,
///             PeerAsn = new AzureNative.Peering.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///             },
///         },
///         Kind = AzureNative.Peering.Kind.Direct,
///         Location = "eastus",
///         PeeringLocation = "peeringLocation0",
///         PeeringName = "peeringName",
///         ResourceGroupName = "rgName",
///         Sku = new AzureNative.Peering.Inputs.PeeringSkuArgs
///         {
///             Name = "Basic_Direct_Free",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewPeering(ctx, "peering", &peering.PeeringArgs{
/// 			Direct: &peering.PeeringPropertiesDirectArgs{
/// 				Connections: peering.DirectConnectionArray{
/// 					&peering.DirectConnectionArgs{
/// 						BandwidthInMbps: pulumi.Int(10000),
/// 						BgpSession: &peering.BgpSessionArgs{
/// 							MaxPrefixesAdvertisedV4: pulumi.Int(1000),
/// 							MaxPrefixesAdvertisedV6: pulumi.Int(100),
/// 							Md5AuthenticationKey:    pulumi.String("test-md5-auth-key"),
/// 							SessionPrefixV4:         pulumi.String("192.168.0.0/31"),
/// 							SessionPrefixV6:         pulumi.String("fd00::0/127"),
/// 						},
/// 						ConnectionIdentifier:   pulumi.String("5F4CB5C7-6B43-4444-9338-9ABC72606C16"),
/// 						PeeringDBFacilityId:    pulumi.Int(99999),
/// 						SessionAddressProvider: pulumi.String(peering.SessionAddressProviderPeer),
/// 						UseForPeeringService:   pulumi.Bool(false),
/// 					},
/// 					&peering.DirectConnectionArgs{
/// 						BandwidthInMbps:        pulumi.Int(10000),
/// 						ConnectionIdentifier:   pulumi.String("8AB00818-D533-4504-A25A-03A17F61201C"),
/// 						PeeringDBFacilityId:    pulumi.Int(99999),
/// 						SessionAddressProvider: pulumi.String(peering.SessionAddressProviderMicrosoft),
/// 						UseForPeeringService:   pulumi.Bool(true),
/// 					},
/// 				},
/// 				DirectPeeringType: pulumi.String(peering.DirectPeeringTypeEdge),
/// 				PeerAsn: &peering.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1"),
/// 				},
/// 			},
/// 			Kind:              pulumi.String(peering.KindDirect),
/// 			Location:          pulumi.String("eastus"),
/// 			PeeringLocation:   pulumi.String("peeringLocation0"),
/// 			PeeringName:       pulumi.String("peeringName"),
/// 			ResourceGroupName: pulumi.String("rgName"),
/// 			Sku: &peering.PeeringSkuArgs{
/// 				Name: pulumi.String("Basic_Direct_Free"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.peering.Peering;
/// import com.pulumi.azurenative.peering.PeeringArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringPropertiesDirectArgs;
/// import com.pulumi.azurenative.peering.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringSkuArgs;
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
///         var peering = new Peering("peering", PeeringArgs.builder()
///             .direct(PeeringPropertiesDirectArgs.builder()
///                 .connections(
///                     DirectConnectionArgs.builder()
///                         .bandwidthInMbps(10000)
///                         .bgpSession(BgpSessionArgs.builder()
///                             .maxPrefixesAdvertisedV4(1000)
///                             .maxPrefixesAdvertisedV6(100)
///                             .md5AuthenticationKey("test-md5-auth-key")
///                             .sessionPrefixV4("192.168.0.0/31")
///                             .sessionPrefixV6("fd00::0/127")
///                             .build())
///                         .connectionIdentifier("5F4CB5C7-6B43-4444-9338-9ABC72606C16")
///                         .peeringDBFacilityId(99999)
///                         .sessionAddressProvider("Peer")
///                         .useForPeeringService(false)
///                         .build(),
///                     DirectConnectionArgs.builder()
///                         .bandwidthInMbps(10000)
///                         .connectionIdentifier("8AB00818-D533-4504-A25A-03A17F61201C")
///                         .peeringDBFacilityId(99999)
///                         .sessionAddressProvider("Microsoft")
///                         .useForPeeringService(true)
///                         .build())
///                 .directPeeringType("Edge")
///                 .peerAsn(SubResourceArgs.builder()
///                     .id("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1")
///                     .build())
///                 .build())
///             .kind("Direct")
///             .location("eastus")
///             .peeringLocation("peeringLocation0")
///             .peeringName("peeringName")
///             .resourceGroupName("rgName")
///             .sku(PeeringSkuArgs.builder()
///                 .name("Basic_Direct_Free")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const peering = new azure_native.peering.Peering("peering", {
///     direct: {
///         connections: [
///             {
///                 bandwidthInMbps: 10000,
///                 bgpSession: {
///                     maxPrefixesAdvertisedV4: 1000,
///                     maxPrefixesAdvertisedV6: 100,
///                     md5AuthenticationKey: "test-md5-auth-key",
///                     sessionPrefixV4: "192.168.0.0/31",
///                     sessionPrefixV6: "fd00::0/127",
///                 },
///                 connectionIdentifier: "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///                 peeringDBFacilityId: 99999,
///                 sessionAddressProvider: azure_native.peering.SessionAddressProvider.Peer,
///                 useForPeeringService: false,
///             },
///             {
///                 bandwidthInMbps: 10000,
///                 connectionIdentifier: "8AB00818-D533-4504-A25A-03A17F61201C",
///                 peeringDBFacilityId: 99999,
///                 sessionAddressProvider: azure_native.peering.SessionAddressProvider.Microsoft,
///                 useForPeeringService: true,
///             },
///         ],
///         directPeeringType: azure_native.peering.DirectPeeringType.Edge,
///         peerAsn: {
///             id: "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind: azure_native.peering.Kind.Direct,
///     location: "eastus",
///     peeringLocation: "peeringLocation0",
///     peeringName: "peeringName",
///     resourceGroupName: "rgName",
///     sku: {
///         name: "Basic_Direct_Free",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// peering = azure_native.peering.Peering("peering",
///     direct={
///         "connections": [
///             {
///                 "bandwidth_in_mbps": 10000,
///                 "bgp_session": {
///                     "max_prefixes_advertised_v4": 1000,
///                     "max_prefixes_advertised_v6": 100,
///                     "md5_authentication_key": "test-md5-auth-key",
///                     "session_prefix_v4": "192.168.0.0/31",
///                     "session_prefix_v6": "fd00::0/127",
///                 },
///                 "connection_identifier": "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///                 "peering_db_facility_id": 99999,
///                 "session_address_provider": azure_native.peering.SessionAddressProvider.PEER,
///                 "use_for_peering_service": False,
///             },
///             {
///                 "bandwidth_in_mbps": 10000,
///                 "connection_identifier": "8AB00818-D533-4504-A25A-03A17F61201C",
///                 "peering_db_facility_id": 99999,
///                 "session_address_provider": azure_native.peering.SessionAddressProvider.MICROSOFT,
///                 "use_for_peering_service": True,
///             },
///         ],
///         "direct_peering_type": azure_native.peering.DirectPeeringType.EDGE,
///         "peer_asn": {
///             "id": "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind=azure_native.peering.Kind.DIRECT,
///     location="eastus",
///     peering_location="peeringLocation0",
///     peering_name="peeringName",
///     resource_group_name="rgName",
///     sku={
///         "name": "Basic_Direct_Free",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   peering:
///     type: azure-native:peering:Peering
///     properties:
///       direct:
///         connections:
///           - bandwidthInMbps: 10000
///             bgpSession:
///               maxPrefixesAdvertisedV4: 1000
///               maxPrefixesAdvertisedV6: 100
///               md5AuthenticationKey: test-md5-auth-key
///               sessionPrefixV4: 192.168.0.0/31
///               sessionPrefixV6: fd00::0/127
///             connectionIdentifier: 5F4CB5C7-6B43-4444-9338-9ABC72606C16
///             peeringDBFacilityId: 99999
///             sessionAddressProvider: Peer
///             useForPeeringService: false
///           - bandwidthInMbps: 10000
///             connectionIdentifier: 8AB00818-D533-4504-A25A-03A17F61201C
///             peeringDBFacilityId: 99999
///             sessionAddressProvider: Microsoft
///             useForPeeringService: true
///         directPeeringType: Edge
///         peerAsn:
///           id: /subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1
///       kind: Direct
///       location: eastus
///       peeringLocation: peeringLocation0
///       peeringName: peeringName
///       resourceGroupName: rgName
///       sku:
///         name: Basic_Direct_Free
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a peering with exchange route server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peering = new AzureNative.Peering.Peering("peering", new()
///     {
///         Direct = new AzureNative.Peering.Inputs.PeeringPropertiesDirectArgs
///         {
///             Connections = new[]
///             {
///                 new AzureNative.Peering.Inputs.DirectConnectionArgs
///                 {
///                     BandwidthInMbps = 10000,
///                     BgpSession = new AzureNative.Peering.Inputs.BgpSessionArgs
///                     {
///                         MaxPrefixesAdvertisedV4 = 1000,
///                         MaxPrefixesAdvertisedV6 = 100,
///                         MicrosoftSessionIPv4Address = "192.168.0.123",
///                         PeerSessionIPv4Address = "192.168.0.234",
///                         SessionPrefixV4 = "192.168.0.0/24",
///                     },
///                     ConnectionIdentifier = "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///                     PeeringDBFacilityId = 99999,
///                     SessionAddressProvider = AzureNative.Peering.SessionAddressProvider.Peer,
///                     UseForPeeringService = true,
///                 },
///             },
///             DirectPeeringType = AzureNative.Peering.DirectPeeringType.IxRs,
///             PeerAsn = new AzureNative.Peering.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///             },
///         },
///         Kind = AzureNative.Peering.Kind.Direct,
///         Location = "eastus",
///         PeeringLocation = "peeringLocation0",
///         PeeringName = "peeringName",
///         ResourceGroupName = "rgName",
///         Sku = new AzureNative.Peering.Inputs.PeeringSkuArgs
///         {
///             Name = "Premium_Direct_Free",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewPeering(ctx, "peering", &peering.PeeringArgs{
/// 			Direct: &peering.PeeringPropertiesDirectArgs{
/// 				Connections: peering.DirectConnectionArray{
/// 					&peering.DirectConnectionArgs{
/// 						BandwidthInMbps: pulumi.Int(10000),
/// 						BgpSession: &peering.BgpSessionArgs{
/// 							MaxPrefixesAdvertisedV4:     pulumi.Int(1000),
/// 							MaxPrefixesAdvertisedV6:     pulumi.Int(100),
/// 							MicrosoftSessionIPv4Address: pulumi.String("192.168.0.123"),
/// 							PeerSessionIPv4Address:      pulumi.String("192.168.0.234"),
/// 							SessionPrefixV4:             pulumi.String("192.168.0.0/24"),
/// 						},
/// 						ConnectionIdentifier:   pulumi.String("5F4CB5C7-6B43-4444-9338-9ABC72606C16"),
/// 						PeeringDBFacilityId:    pulumi.Int(99999),
/// 						SessionAddressProvider: pulumi.String(peering.SessionAddressProviderPeer),
/// 						UseForPeeringService:   pulumi.Bool(true),
/// 					},
/// 				},
/// 				DirectPeeringType: pulumi.String(peering.DirectPeeringTypeIxRs),
/// 				PeerAsn: &peering.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1"),
/// 				},
/// 			},
/// 			Kind:              pulumi.String(peering.KindDirect),
/// 			Location:          pulumi.String("eastus"),
/// 			PeeringLocation:   pulumi.String("peeringLocation0"),
/// 			PeeringName:       pulumi.String("peeringName"),
/// 			ResourceGroupName: pulumi.String("rgName"),
/// 			Sku: &peering.PeeringSkuArgs{
/// 				Name: pulumi.String("Premium_Direct_Free"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.peering.Peering;
/// import com.pulumi.azurenative.peering.PeeringArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringPropertiesDirectArgs;
/// import com.pulumi.azurenative.peering.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringSkuArgs;
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
///         var peering = new Peering("peering", PeeringArgs.builder()
///             .direct(PeeringPropertiesDirectArgs.builder()
///                 .connections(DirectConnectionArgs.builder()
///                     .bandwidthInMbps(10000)
///                     .bgpSession(BgpSessionArgs.builder()
///                         .maxPrefixesAdvertisedV4(1000)
///                         .maxPrefixesAdvertisedV6(100)
///                         .microsoftSessionIPv4Address("192.168.0.123")
///                         .peerSessionIPv4Address("192.168.0.234")
///                         .sessionPrefixV4("192.168.0.0/24")
///                         .build())
///                     .connectionIdentifier("5F4CB5C7-6B43-4444-9338-9ABC72606C16")
///                     .peeringDBFacilityId(99999)
///                     .sessionAddressProvider("Peer")
///                     .useForPeeringService(true)
///                     .build())
///                 .directPeeringType("IxRs")
///                 .peerAsn(SubResourceArgs.builder()
///                     .id("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1")
///                     .build())
///                 .build())
///             .kind("Direct")
///             .location("eastus")
///             .peeringLocation("peeringLocation0")
///             .peeringName("peeringName")
///             .resourceGroupName("rgName")
///             .sku(PeeringSkuArgs.builder()
///                 .name("Premium_Direct_Free")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const peering = new azure_native.peering.Peering("peering", {
///     direct: {
///         connections: [{
///             bandwidthInMbps: 10000,
///             bgpSession: {
///                 maxPrefixesAdvertisedV4: 1000,
///                 maxPrefixesAdvertisedV6: 100,
///                 microsoftSessionIPv4Address: "192.168.0.123",
///                 peerSessionIPv4Address: "192.168.0.234",
///                 sessionPrefixV4: "192.168.0.0/24",
///             },
///             connectionIdentifier: "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///             peeringDBFacilityId: 99999,
///             sessionAddressProvider: azure_native.peering.SessionAddressProvider.Peer,
///             useForPeeringService: true,
///         }],
///         directPeeringType: azure_native.peering.DirectPeeringType.IxRs,
///         peerAsn: {
///             id: "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind: azure_native.peering.Kind.Direct,
///     location: "eastus",
///     peeringLocation: "peeringLocation0",
///     peeringName: "peeringName",
///     resourceGroupName: "rgName",
///     sku: {
///         name: "Premium_Direct_Free",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// peering = azure_native.peering.Peering("peering",
///     direct={
///         "connections": [{
///             "bandwidth_in_mbps": 10000,
///             "bgp_session": {
///                 "max_prefixes_advertised_v4": 1000,
///                 "max_prefixes_advertised_v6": 100,
///                 "microsoft_session_i_pv4_address": "192.168.0.123",
///                 "peer_session_i_pv4_address": "192.168.0.234",
///                 "session_prefix_v4": "192.168.0.0/24",
///             },
///             "connection_identifier": "5F4CB5C7-6B43-4444-9338-9ABC72606C16",
///             "peering_db_facility_id": 99999,
///             "session_address_provider": azure_native.peering.SessionAddressProvider.PEER,
///             "use_for_peering_service": True,
///         }],
///         "direct_peering_type": azure_native.peering.DirectPeeringType.IX_RS,
///         "peer_asn": {
///             "id": "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind=azure_native.peering.Kind.DIRECT,
///     location="eastus",
///     peering_location="peeringLocation0",
///     peering_name="peeringName",
///     resource_group_name="rgName",
///     sku={
///         "name": "Premium_Direct_Free",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   peering:
///     type: azure-native:peering:Peering
///     properties:
///       direct:
///         connections:
///           - bandwidthInMbps: 10000
///             bgpSession:
///               maxPrefixesAdvertisedV4: 1000
///               maxPrefixesAdvertisedV6: 100
///               microsoftSessionIPv4Address: 192.168.0.123
///               peerSessionIPv4Address: 192.168.0.234
///               sessionPrefixV4: 192.168.0.0/24
///             connectionIdentifier: 5F4CB5C7-6B43-4444-9338-9ABC72606C16
///             peeringDBFacilityId: 99999
///             sessionAddressProvider: Peer
///             useForPeeringService: true
///         directPeeringType: IxRs
///         peerAsn:
///           id: /subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1
///       kind: Direct
///       location: eastus
///       peeringLocation: peeringLocation0
///       peeringName: peeringName
///       resourceGroupName: rgName
///       sku:
///         name: Premium_Direct_Free
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create an exchange peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peering = new AzureNative.Peering.Peering("peering", new()
///     {
///         Exchange = new AzureNative.Peering.Inputs.PeeringPropertiesExchangeArgs
///         {
///             Connections = new[]
///             {
///                 new AzureNative.Peering.Inputs.ExchangeConnectionArgs
///                 {
///                     BgpSession = new AzureNative.Peering.Inputs.BgpSessionArgs
///                     {
///                         MaxPrefixesAdvertisedV4 = 1000,
///                         MaxPrefixesAdvertisedV6 = 100,
///                         Md5AuthenticationKey = "test-md5-auth-key",
///                         PeerSessionIPv4Address = "192.168.2.1",
///                         PeerSessionIPv6Address = "fd00::1",
///                     },
///                     ConnectionIdentifier = "CE495334-0E94-4E51-8164-8116D6CD284D",
///                     PeeringDBFacilityId = 99999,
///                 },
///                 new AzureNative.Peering.Inputs.ExchangeConnectionArgs
///                 {
///                     BgpSession = new AzureNative.Peering.Inputs.BgpSessionArgs
///                     {
///                         MaxPrefixesAdvertisedV4 = 1000,
///                         MaxPrefixesAdvertisedV6 = 100,
///                         Md5AuthenticationKey = "test-md5-auth-key",
///                         PeerSessionIPv4Address = "192.168.2.2",
///                         PeerSessionIPv6Address = "fd00::2",
///                     },
///                     ConnectionIdentifier = "CDD8E673-CB07-47E6-84DE-3739F778762B",
///                     PeeringDBFacilityId = 99999,
///                 },
///             },
///             PeerAsn = new AzureNative.Peering.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///             },
///         },
///         Kind = AzureNative.Peering.Kind.Exchange,
///         Location = "eastus",
///         PeeringLocation = "peeringLocation0",
///         PeeringName = "peeringName",
///         ResourceGroupName = "rgName",
///         Sku = new AzureNative.Peering.Inputs.PeeringSkuArgs
///         {
///             Name = "Basic_Exchange_Free",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	peering "github.com/pulumi/pulumi-azure-native-sdk/peering/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := peering.NewPeering(ctx, "peering", &peering.PeeringArgs{
/// 			Exchange: &peering.PeeringPropertiesExchangeArgs{
/// 				Connections: peering.ExchangeConnectionArray{
/// 					&peering.ExchangeConnectionArgs{
/// 						BgpSession: &peering.BgpSessionArgs{
/// 							MaxPrefixesAdvertisedV4: pulumi.Int(1000),
/// 							MaxPrefixesAdvertisedV6: pulumi.Int(100),
/// 							Md5AuthenticationKey:    pulumi.String("test-md5-auth-key"),
/// 							PeerSessionIPv4Address:  pulumi.String("192.168.2.1"),
/// 							PeerSessionIPv6Address:  pulumi.String("fd00::1"),
/// 						},
/// 						ConnectionIdentifier: pulumi.String("CE495334-0E94-4E51-8164-8116D6CD284D"),
/// 						PeeringDBFacilityId:  pulumi.Int(99999),
/// 					},
/// 					&peering.ExchangeConnectionArgs{
/// 						BgpSession: &peering.BgpSessionArgs{
/// 							MaxPrefixesAdvertisedV4: pulumi.Int(1000),
/// 							MaxPrefixesAdvertisedV6: pulumi.Int(100),
/// 							Md5AuthenticationKey:    pulumi.String("test-md5-auth-key"),
/// 							PeerSessionIPv4Address:  pulumi.String("192.168.2.2"),
/// 							PeerSessionIPv6Address:  pulumi.String("fd00::2"),
/// 						},
/// 						ConnectionIdentifier: pulumi.String("CDD8E673-CB07-47E6-84DE-3739F778762B"),
/// 						PeeringDBFacilityId:  pulumi.Int(99999),
/// 					},
/// 				},
/// 				PeerAsn: &peering.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1"),
/// 				},
/// 			},
/// 			Kind:              pulumi.String(peering.KindExchange),
/// 			Location:          pulumi.String("eastus"),
/// 			PeeringLocation:   pulumi.String("peeringLocation0"),
/// 			PeeringName:       pulumi.String("peeringName"),
/// 			ResourceGroupName: pulumi.String("rgName"),
/// 			Sku: &peering.PeeringSkuArgs{
/// 				Name: pulumi.String("Basic_Exchange_Free"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.peering.Peering;
/// import com.pulumi.azurenative.peering.PeeringArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringPropertiesExchangeArgs;
/// import com.pulumi.azurenative.peering.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.peering.inputs.PeeringSkuArgs;
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
///         var peering = new Peering("peering", PeeringArgs.builder()
///             .exchange(PeeringPropertiesExchangeArgs.builder()
///                 .connections(
///                     ExchangeConnectionArgs.builder()
///                         .bgpSession(BgpSessionArgs.builder()
///                             .maxPrefixesAdvertisedV4(1000)
///                             .maxPrefixesAdvertisedV6(100)
///                             .md5AuthenticationKey("test-md5-auth-key")
///                             .peerSessionIPv4Address("192.168.2.1")
///                             .peerSessionIPv6Address("fd00::1")
///                             .build())
///                         .connectionIdentifier("CE495334-0E94-4E51-8164-8116D6CD284D")
///                         .peeringDBFacilityId(99999)
///                         .build(),
///                     ExchangeConnectionArgs.builder()
///                         .bgpSession(BgpSessionArgs.builder()
///                             .maxPrefixesAdvertisedV4(1000)
///                             .maxPrefixesAdvertisedV6(100)
///                             .md5AuthenticationKey("test-md5-auth-key")
///                             .peerSessionIPv4Address("192.168.2.2")
///                             .peerSessionIPv6Address("fd00::2")
///                             .build())
///                         .connectionIdentifier("CDD8E673-CB07-47E6-84DE-3739F778762B")
///                         .peeringDBFacilityId(99999)
///                         .build())
///                 .peerAsn(SubResourceArgs.builder()
///                     .id("/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1")
///                     .build())
///                 .build())
///             .kind("Exchange")
///             .location("eastus")
///             .peeringLocation("peeringLocation0")
///             .peeringName("peeringName")
///             .resourceGroupName("rgName")
///             .sku(PeeringSkuArgs.builder()
///                 .name("Basic_Exchange_Free")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const peering = new azure_native.peering.Peering("peering", {
///     exchange: {
///         connections: [
///             {
///                 bgpSession: {
///                     maxPrefixesAdvertisedV4: 1000,
///                     maxPrefixesAdvertisedV6: 100,
///                     md5AuthenticationKey: "test-md5-auth-key",
///                     peerSessionIPv4Address: "192.168.2.1",
///                     peerSessionIPv6Address: "fd00::1",
///                 },
///                 connectionIdentifier: "CE495334-0E94-4E51-8164-8116D6CD284D",
///                 peeringDBFacilityId: 99999,
///             },
///             {
///                 bgpSession: {
///                     maxPrefixesAdvertisedV4: 1000,
///                     maxPrefixesAdvertisedV6: 100,
///                     md5AuthenticationKey: "test-md5-auth-key",
///                     peerSessionIPv4Address: "192.168.2.2",
///                     peerSessionIPv6Address: "fd00::2",
///                 },
///                 connectionIdentifier: "CDD8E673-CB07-47E6-84DE-3739F778762B",
///                 peeringDBFacilityId: 99999,
///             },
///         ],
///         peerAsn: {
///             id: "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind: azure_native.peering.Kind.Exchange,
///     location: "eastus",
///     peeringLocation: "peeringLocation0",
///     peeringName: "peeringName",
///     resourceGroupName: "rgName",
///     sku: {
///         name: "Basic_Exchange_Free",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// peering = azure_native.peering.Peering("peering",
///     exchange={
///         "connections": [
///             {
///                 "bgp_session": {
///                     "max_prefixes_advertised_v4": 1000,
///                     "max_prefixes_advertised_v6": 100,
///                     "md5_authentication_key": "test-md5-auth-key",
///                     "peer_session_i_pv4_address": "192.168.2.1",
///                     "peer_session_i_pv6_address": "fd00::1",
///                 },
///                 "connection_identifier": "CE495334-0E94-4E51-8164-8116D6CD284D",
///                 "peering_db_facility_id": 99999,
///             },
///             {
///                 "bgp_session": {
///                     "max_prefixes_advertised_v4": 1000,
///                     "max_prefixes_advertised_v6": 100,
///                     "md5_authentication_key": "test-md5-auth-key",
///                     "peer_session_i_pv4_address": "192.168.2.2",
///                     "peer_session_i_pv6_address": "fd00::2",
///                 },
///                 "connection_identifier": "CDD8E673-CB07-47E6-84DE-3739F778762B",
///                 "peering_db_facility_id": 99999,
///             },
///         ],
///         "peer_asn": {
///             "id": "/subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1",
///         },
///     },
///     kind=azure_native.peering.Kind.EXCHANGE,
///     location="eastus",
///     peering_location="peeringLocation0",
///     peering_name="peeringName",
///     resource_group_name="rgName",
///     sku={
///         "name": "Basic_Exchange_Free",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   peering:
///     type: azure-native:peering:Peering
///     properties:
///       exchange:
///         connections:
///           - bgpSession:
///               maxPrefixesAdvertisedV4: 1000
///               maxPrefixesAdvertisedV6: 100
///               md5AuthenticationKey: test-md5-auth-key
///               peerSessionIPv4Address: 192.168.2.1
///               peerSessionIPv6Address: fd00::1
///             connectionIdentifier: CE495334-0E94-4E51-8164-8116D6CD284D
///             peeringDBFacilityId: 99999
///           - bgpSession:
///               maxPrefixesAdvertisedV4: 1000
///               maxPrefixesAdvertisedV6: 100
///               md5AuthenticationKey: test-md5-auth-key
///               peerSessionIPv4Address: 192.168.2.2
///               peerSessionIPv6Address: fd00::2
///             connectionIdentifier: CDD8E673-CB07-47E6-84DE-3739F778762B
///             peeringDBFacilityId: 99999
///         peerAsn:
///           id: /subscriptions/subId/providers/Microsoft.Peering/peerAsns/myAsn1
///       kind: Exchange
///       location: eastus
///       peeringLocation: peeringLocation0
///       peeringName: peeringName
///       resourceGroupName: rgName
///       sku:
///         name: Basic_Exchange_Free
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:peering:Peering peeringName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Peering/peerings/{peeringName}
/// ```
class Peering extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The properties that define a direct peering.
  late final pulumi.Output<PeeringPropertiesDirectResponse?> direct;

  /// The properties that define an exchange peering.
  late final pulumi.Output<PeeringPropertiesExchangeResponse?> exchange;

  /// The kind of the peering.
  late final pulumi.Output<String> kind;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The location of the peering.
  late final pulumi.Output<String?> peeringLocation;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The SKU that defines the tier and kind of the peering.
  late final pulumi.Output<PeeringSkuResponse> sku;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Peering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Peering]. {@macro pulumi_peering_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Peering(
    String name, {
    PeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:peering:Peering',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    direct = registerOutput<PeeringPropertiesDirectResponse?>('direct');
    exchange = registerOutput<PeeringPropertiesExchangeResponse?>('exchange');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peeringLocation = registerOutput<String?>('peeringLocation');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<PeeringSkuResponse>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
