import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_policy_args.dart';
import 'collector_policy_ipfx_emission.dart';
import 'collector_policy_ipfx_ingestion.dart';
import 'collector_policy_state.dart';

/// Manages a Network Function Collector Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West US 2",
/// });
/// const exampleExpressRoutePort = new azure.network.ExpressRoutePort("example", {
///     name: "example-erp",
///     resourceGroupName: example.name,
///     location: example.location,
///     peeringLocation: "Equinix-Seattle-SE2",
///     bandwidthInGbps: 10,
///     encapsulation: "Dot1Q",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "example-erc",
///     location: example.location,
///     resourceGroupName: example.name,
///     expressRoutePortId: exampleExpressRoutePort.id,
///     bandwidthInGbps: 1,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
/// });
/// const exampleExpressRouteCircuitPeering = new azure.network.ExpressRouteCircuitPeering("example", {
///     peeringType: "MicrosoftPeering",
///     expressRouteCircuitName: exampleExpressRouteCircuit.name,
///     resourceGroupName: example.name,
///     peerAsn: 100,
///     primaryPeerAddressPrefix: "192.168.199.0/30",
///     secondaryPeerAddressPrefix: "192.168.200.0/30",
///     vlanId: 300,
///     microsoftPeeringConfig: {
///         advertisedPublicPrefixes: ["123.6.0.0/24"],
///     },
/// });
/// const exampleAzureTrafficCollector = new azure.networkfunction.AzureTrafficCollector("example", {
///     name: "example-nfatc",
///     location: example.location,
///     resourceGroupName: example.name,
/// }, {
///     dependsOn: [exampleExpressRouteCircuitPeering],
/// });
/// const exampleCollectorPolicy = new azure.networkfunction.CollectorPolicy("example", {
///     name: "example-nfcp",
///     trafficCollectorId: exampleAzureTrafficCollector.id,
///     location: example.location,
///     ipfxEmission: {
///         destinationTypes: "AzureMonitor",
///     },
///     ipfxIngestion: {
///         sourceResourceIds: [exampleExpressRouteCircuit.id],
///     },
///     tags: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West US 2")
/// example_express_route_port = azure.network.ExpressRoutePort("example",
///     name="example-erp",
///     resource_group_name=example.name,
///     location=example.location,
///     peering_location="Equinix-Seattle-SE2",
///     bandwidth_in_gbps=10,
///     encapsulation="Dot1Q")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="example-erc",
///     location=example.location,
///     resource_group_name=example.name,
///     express_route_port_id=example_express_route_port.id,
///     bandwidth_in_gbps=1,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     })
/// example_express_route_circuit_peering = azure.network.ExpressRouteCircuitPeering("example",
///     peering_type="MicrosoftPeering",
///     express_route_circuit_name=example_express_route_circuit.name,
///     resource_group_name=example.name,
///     peer_asn=100,
///     primary_peer_address_prefix="192.168.199.0/30",
///     secondary_peer_address_prefix="192.168.200.0/30",
///     vlan_id=300,
///     microsoft_peering_config={
///         "advertised_public_prefixes": ["123.6.0.0/24"],
///     })
/// example_azure_traffic_collector = azure.networkfunction.AzureTrafficCollector("example",
///     name="example-nfatc",
///     location=example.location,
///     resource_group_name=example.name,
///     opts = pulumi.ResourceOptions(depends_on=[example_express_route_circuit_peering]))
/// example_collector_policy = azure.networkfunction.CollectorPolicy("example",
///     name="example-nfcp",
///     traffic_collector_id=example_azure_traffic_collector.id,
///     location=example.location,
///     ipfx_emission={
///         "destination_types": "AzureMonitor",
///     },
///     ipfx_ingestion={
///         "source_resource_ids": [example_express_route_circuit.id],
///     },
///     tags={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West US 2",
///     });
///
///     var exampleExpressRoutePort = new Azure.Network.ExpressRoutePort("example", new()
///     {
///         Name = "example-erp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PeeringLocation = "Equinix-Seattle-SE2",
///         BandwidthInGbps = 10,
///         Encapsulation = "Dot1Q",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "example-erc",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ExpressRoutePortId = exampleExpressRoutePort.Id,
///         BandwidthInGbps = 1,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///     });
///
///     var exampleExpressRouteCircuitPeering = new Azure.Network.ExpressRouteCircuitPeering("example", new()
///     {
///         PeeringType = "MicrosoftPeering",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
///         PeerAsn = 100,
///         PrimaryPeerAddressPrefix = "192.168.199.0/30",
///         SecondaryPeerAddressPrefix = "192.168.200.0/30",
///         VlanId = 300,
///         MicrosoftPeeringConfig = new Azure.Network.Inputs.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs
///         {
///             AdvertisedPublicPrefixes = new[]
///             {
///                 "123.6.0.0/24",
///             },
///         },
///     });
///
///     var exampleAzureTrafficCollector = new Azure.NetworkFunction.AzureTrafficCollector("example", new()
///     {
///         Name = "example-nfatc",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleExpressRouteCircuitPeering,
///         },
///     });
///
///     var exampleCollectorPolicy = new Azure.NetworkFunction.CollectorPolicy("example", new()
///     {
///         Name = "example-nfcp",
///         TrafficCollectorId = exampleAzureTrafficCollector.Id,
///         Location = example.Location,
///         IpfxEmission = new Azure.NetworkFunction.Inputs.CollectorPolicyIpfxEmissionArgs
///         {
///             DestinationTypes = "AzureMonitor",
///         },
///         IpfxIngestion = new Azure.NetworkFunction.Inputs.CollectorPolicyIpfxIngestionArgs
///         {
///             SourceResourceIds = new[]
///             {
///                 exampleExpressRouteCircuit.Id,
///             },
///         },
///         Tags =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/networkfunction"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West US 2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRoutePort, err := network.NewExpressRoutePort(ctx, "example", &network.ExpressRoutePortArgs{
/// 			Name:              pulumi.String("example-erp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PeeringLocation:   pulumi.String("Equinix-Seattle-SE2"),
/// 			BandwidthInGbps:   pulumi.Int(10),
/// 			Encapsulation:     pulumi.String("Dot1Q"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:               pulumi.String("example-erc"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			ExpressRoutePortId: exampleExpressRoutePort.ID(),
/// 			BandwidthInGbps:    pulumi.Float64(1),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuitPeering, err := network.NewExpressRouteCircuitPeering(ctx, "example", &network.ExpressRouteCircuitPeeringArgs{
/// 			PeeringType:                pulumi.String("MicrosoftPeering"),
/// 			ExpressRouteCircuitName:    exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:          example.Name,
/// 			PeerAsn:                    pulumi.Int(100),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("192.168.199.0/30"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("192.168.200.0/30"),
/// 			VlanId:                     pulumi.Int(300),
/// 			MicrosoftPeeringConfig: &network.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs{
/// 				AdvertisedPublicPrefixes: pulumi.StringArray{
/// 					pulumi.String("123.6.0.0/24"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAzureTrafficCollector, err := networkfunction.NewAzureTrafficCollector(ctx, "example", &networkfunction.AzureTrafficCollectorArgs{
/// 			Name:              pulumi.String("example-nfatc"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleExpressRouteCircuitPeering,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfunction.NewCollectorPolicy(ctx, "example", &networkfunction.CollectorPolicyArgs{
/// 			Name:               pulumi.String("example-nfcp"),
/// 			TrafficCollectorId: exampleAzureTrafficCollector.ID(),
/// 			Location:           example.Location,
/// 			IpfxEmission: &networkfunction.CollectorPolicyIpfxEmissionArgs{
/// 				DestinationTypes: pulumi.String("AzureMonitor"),
/// 			},
/// 			IpfxIngestion: &networkfunction.CollectorPolicyIpfxIngestionArgs{
/// 				SourceResourceIds: pulumi.StringArray{
/// 					exampleExpressRouteCircuit.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.ExpressRoutePort;
/// import com.pulumi.azure.network.ExpressRoutePortArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeering;
/// import com.pulumi.azure.network.ExpressRouteCircuitPeeringArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs;
/// import com.pulumi.azure.networkfunction.AzureTrafficCollector;
/// import com.pulumi.azure.networkfunction.AzureTrafficCollectorArgs;
/// import com.pulumi.azure.networkfunction.CollectorPolicy;
/// import com.pulumi.azure.networkfunction.CollectorPolicyArgs;
/// import com.pulumi.azure.networkfunction.inputs.CollectorPolicyIpfxEmissionArgs;
/// import com.pulumi.azure.networkfunction.inputs.CollectorPolicyIpfxIngestionArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West US 2")
///             .build());
///
///         var exampleExpressRoutePort = new ExpressRoutePort("exampleExpressRoutePort", ExpressRoutePortArgs.builder()
///             .name("example-erp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .peeringLocation("Equinix-Seattle-SE2")
///             .bandwidthInGbps(10)
///             .encapsulation("Dot1Q")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("example-erc")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .expressRoutePortId(exampleExpressRoutePort.id())
///             .bandwidthInGbps(1.0)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .build());
///
///         var exampleExpressRouteCircuitPeering = new ExpressRouteCircuitPeering("exampleExpressRouteCircuitPeering", ExpressRouteCircuitPeeringArgs.builder()
///             .peeringType("MicrosoftPeering")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
///             .peerAsn(100)
///             .primaryPeerAddressPrefix("192.168.199.0/30")
///             .secondaryPeerAddressPrefix("192.168.200.0/30")
///             .vlanId(300)
///             .microsoftPeeringConfig(ExpressRouteCircuitPeeringMicrosoftPeeringConfigArgs.builder()
///                 .advertisedPublicPrefixes("123.6.0.0/24")
///                 .build())
///             .build());
///
///         var exampleAzureTrafficCollector = new AzureTrafficCollector("exampleAzureTrafficCollector", AzureTrafficCollectorArgs.builder()
///             .name("example-nfatc")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleExpressRouteCircuitPeering)
///                 .build());
///
///         var exampleCollectorPolicy = new CollectorPolicy("exampleCollectorPolicy", CollectorPolicyArgs.builder()
///             .name("example-nfcp")
///             .trafficCollectorId(exampleAzureTrafficCollector.id())
///             .location(example.location())
///             .ipfxEmission(CollectorPolicyIpfxEmissionArgs.builder()
///                 .destinationTypes("AzureMonitor")
///                 .build())
///             .ipfxIngestion(CollectorPolicyIpfxIngestionArgs.builder()
///                 .sourceResourceIds(exampleExpressRouteCircuit.id())
///                 .build())
///             .tags(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West US 2
///   exampleExpressRoutePort:
///     type: azure:network:ExpressRoutePort
///     name: example
///     properties:
///       name: example-erp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       peeringLocation: Equinix-Seattle-SE2
///       bandwidthInGbps: 10
///       encapsulation: Dot1Q
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: example-erc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       expressRoutePortId: ${exampleExpressRoutePort.id}
///       bandwidthInGbps: 1
///       sku:
///         tier: Standard
///         family: MeteredData
///   exampleExpressRouteCircuitPeering:
///     type: azure:network:ExpressRouteCircuitPeering
///     name: example
///     properties:
///       peeringType: MicrosoftPeering
///       expressRouteCircuitName: ${exampleExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
///       peerAsn: 100
///       primaryPeerAddressPrefix: 192.168.199.0/30
///       secondaryPeerAddressPrefix: 192.168.200.0/30
///       vlanId: 300
///       microsoftPeeringConfig:
///         advertisedPublicPrefixes:
///           - 123.6.0.0/24
///   exampleAzureTrafficCollector:
///     type: azure:networkfunction:AzureTrafficCollector
///     name: example
///     properties:
///       name: example-nfatc
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///     options:
///       dependsOn:
///         - ${exampleExpressRouteCircuitPeering}
///   exampleCollectorPolicy:
///     type: azure:networkfunction:CollectorPolicy
///     name: example
///     properties:
///       name: example-nfcp
///       trafficCollectorId: ${exampleAzureTrafficCollector.id}
///       location: ${example.location}
///       ipfxEmission:
///         destinationTypes: AzureMonitor
///       ipfxIngestion:
///         sourceResourceIds:
///           - ${exampleExpressRouteCircuit.id}
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NetworkFunction` - 2022-11-01
///
/// ## Import
///
/// Network Function Collector Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:networkfunction/collectorPolicy:CollectorPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.NetworkFunction/azureTrafficCollectors/azureTrafficCollector1/collectorPolicies/collectorPolicy1
/// ```
class CollectorPolicy extends pulumi.CustomResource {
  /// An `ipfx_emission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  late final pulumi.Output<CollectorPolicyIpfxEmission> ipfxEmission;
  /// An `ipfx_ingestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  late final pulumi.Output<CollectorPolicyIpfxIngestion> ipfxIngestion;
  /// Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags which should be assigned to the Network Function Collector Policy.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  late final pulumi.Output<String> trafficCollectorId;

  /// Creates a new [CollectorPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CollectorPolicy]. {@macro pulumi_networkfunction_collector_policy_collector_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CollectorPolicy(
    String name, {
    CollectorPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:networkfunction/collectorPolicy:CollectorPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipfxEmission = registerOutput<CollectorPolicyIpfxEmission>('ipfxEmission', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorPolicyIpfxEmission.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipfxIngestion = registerOutput<CollectorPolicyIpfxIngestion>('ipfxIngestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorPolicyIpfxIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    trafficCollectorId = registerOutput<String>('trafficCollectorId');
  }

  /// Gets an existing [CollectorPolicy] resource's state with the given [name] and [id].
  static CollectorPolicy get(
    String name,
    pulumi.Input<String> id, {
    CollectorPolicyState? state,
  }) {
    return CollectorPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CollectorPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:networkfunction/collectorPolicy:CollectorPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipfxEmission = registerOutput<CollectorPolicyIpfxEmission>('ipfxEmission', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorPolicyIpfxEmission.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipfxIngestion = registerOutput<CollectorPolicyIpfxIngestion>('ipfxIngestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorPolicyIpfxIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    trafficCollectorId = registerOutput<String>('trafficCollectorId');
  }
}
