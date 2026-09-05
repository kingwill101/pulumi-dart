import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_advertised_route_args.dart';
import 'gateway_advertised_route_state.dart';

/// A gateway advertised route is a route that a gateway spoke advertises somewhere.
///
///
/// To get more information about GatewayAdvertisedRoute, see:
///
/// * [API documentation](https://docs.cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.spokes.gatewayAdvertisedRoutes)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://docs.cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/ncc-gateway-overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Gateway Advertised Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net-spoke",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "tf-test-subnet_48153",
///     ipCidrRange: "10.0.0.0/28",
///     region: "us-central1",
///     network: network.selfLink,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
///     presetTopology: "HYBRID_INSPECTION",
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "spoke-name",
///     location: "us-central1",
///     description: "A sample spoke of type Gateway",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     gateway: {
///         ipRangeReservations: [{
///             ipRange: "10.0.0.0/23",
///         }],
///         capacity: "CAPACITY_1_GBPS",
///     },
///     group: "gateways",
/// });
/// const _default = new gcp.networkconnectivity.GatewayAdvertisedRoute("default", {
///     spoke: primary.name,
///     location: "us-central1",
///     name: "gateway-advertised-route-name",
///     labels: {
///         "label-one": "value-one",
///     },
///     description: "description of the gateway advertised route",
///     ipRange: "0.0.0.0/24",
///     recipient: "ADVERTISE_TO_HUB",
///     priority: 200,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net-spoke",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="tf-test-subnet_48153",
///     ip_cidr_range="10.0.0.0/28",
///     region="us-central1",
///     network=network.self_link)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     },
///     preset_topology="HYBRID_INSPECTION")
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="spoke-name",
///     location="us-central1",
///     description="A sample spoke of type Gateway",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     gateway={
///         "ip_range_reservations": [{
///             "ip_range": "10.0.0.0/23",
///         }],
///         "capacity": "CAPACITY_1_GBPS",
///     },
///     group="gateways")
/// default = gcp.networkconnectivity.GatewayAdvertisedRoute("default",
///     spoke=primary.name,
///     location="us-central1",
///     name="gateway-advertised-route-name",
///     labels={
///         "label-one": "value-one",
///     },
///     description="description of the gateway advertised route",
///     ip_range="0.0.0.0/24",
///     recipient="ADVERTISE_TO_HUB",
///     priority=200)
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
///         Name = "net-spoke",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "tf-test-subnet_48153",
///         IpCidrRange = "10.0.0.0/28",
///         Region = "us-central1",
///         Network = network.SelfLink,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///         PresetTopology = "HYBRID_INSPECTION",
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "spoke-name",
///         Location = "us-central1",
///         Description = "A sample spoke of type Gateway",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         Gateway = new Gcp.NetworkConnectivity.Inputs.SpokeGatewayArgs
///         {
///             IpRangeReservations = new[]
///             {
///                 new Gcp.NetworkConnectivity.Inputs.SpokeGatewayIpRangeReservationArgs
///                 {
///                     IpRange = "10.0.0.0/23",
///                 },
///             },
///             Capacity = "CAPACITY_1_GBPS",
///         },
///         Group = "gateways",
///     });
///
///     var @default = new Gcp.NetworkConnectivity.GatewayAdvertisedRoute("default", new()
///     {
///         Spoke = primary.Name,
///         Location = "us-central1",
///         Name = "gateway-advertised-route-name",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Description = "description of the gateway advertised route",
///         IpRange = "0.0.0.0/24",
///         Recipient = "ADVERTISE_TO_HUB",
///         Priority = 200,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-spoke"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-subnet_48153"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 			PresetTopology: pulumi.String("HYBRID_INSPECTION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("spoke-name"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke of type Gateway"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID().ToIDOutput().ToStringOutput(),
/// 			Gateway: &networkconnectivity.SpokeGatewayArgs{
/// 				IpRangeReservations: networkconnectivity.SpokeGatewayIpRangeReservationArray{
/// 					&networkconnectivity.SpokeGatewayIpRangeReservationArgs{
/// 						IpRange: pulumi.String("10.0.0.0/23"),
/// 					},
/// 				},
/// 				Capacity: pulumi.String("CAPACITY_1_GBPS"),
/// 			},
/// 			Group: pulumi.String("gateways"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkconnectivity.NewGatewayAdvertisedRoute(ctx, "default", &networkconnectivity.GatewayAdvertisedRouteArgs{
/// 			Spoke:    primary.Name,
/// 			Location: pulumi.String("us-central1"),
/// 			Name:     pulumi.String("gateway-advertised-route-name"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Description: pulumi.String("description of the gateway advertised route"),
/// 			IpRange:     pulumi.String("0.0.0.0/24"),
/// 			Recipient:   pulumi.String("ADVERTISE_TO_HUB"),
/// 			Priority:    pulumi.Int(200),
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
/// resource "gcp_compute_network" "network" {
///   name                    = "net-spoke"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork" {
///   name          = "tf-test-subnet_48153"
///   ip_cidr_range = "10.0.0.0/28"
///   region        = "us-central1"
///   network       = gcp_compute_network.network.self_link
/// }
/// resource "gcp_networkconnectivity_hub" "basic_hub" {
///   name        = "hub"
///   description = "A sample hub"
///   labels = {
///     "label-two" = "value-one"
///   }
///   preset_topology = "HYBRID_INSPECTION"
/// }
/// resource "gcp_networkconnectivity_spoke" "primary" {
///   name        = "spoke-name"
///   location    = "us-central1"
///   description = "A sample spoke of type Gateway"
///   labels = {
///     "label-one" = "value-one"
///   }
///   hub = gcp_networkconnectivity_hub.basic_hub.id
///   gateway = {
///     ip_range_reservations = [{
///       "ipRange" = "10.0.0.0/23"
///     }]
///     capacity = "CAPACITY_1_GBPS"
///   }
///   group = "gateways"
/// }
/// resource "gcp_networkconnectivity_gatewayadvertisedroute" "default" {
///   spoke    = gcp_networkconnectivity_spoke.primary.name
///   location = "us-central1"
///   name     = "gateway-advertised-route-name"
///   labels = {
///     "label-one" = "value-one"
///   }
///   description = "description of the gateway advertised route"
///   ip_range    = "0.0.0.0/24"
///   recipient   = "ADVERTISE_TO_HUB"
///   priority    = 200
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeGatewayArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeGatewayIpRangeReservationArgs;
/// import com.pulumi.gcp.networkconnectivity.GatewayAdvertisedRoute;
/// import com.pulumi.gcp.networkconnectivity.GatewayAdvertisedRouteArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("net-spoke")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("tf-test-subnet_48153")
///             .ipCidrRange("10.0.0.0/28")
///             .region("us-central1")
///             .network(network.selfLink())
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .presetTopology("HYBRID_INSPECTION")
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("spoke-name")
///             .location("us-central1")
///             .description("A sample spoke of type Gateway")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .gateway(SpokeGatewayArgs.builder()
///                 .ipRangeReservations(SpokeGatewayIpRangeReservationArgs.builder()
///                     .ipRange("10.0.0.0/23")
///                     .build())
///                 .capacity("CAPACITY_1_GBPS")
///                 .build())
///             .group("gateways")
///             .build());
///
///         var default_ = new GatewayAdvertisedRoute("default", GatewayAdvertisedRouteArgs.builder()
///             .spoke(primary.name())
///             .location("us-central1")
///             .name("gateway-advertised-route-name")
///             .labels(Map.of("label-one", "value-one"))
///             .description("description of the gateway advertised route")
///             .ipRange("0.0.0.0/24")
///             .recipient("ADVERTISE_TO_HUB")
///             .priority(200)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: net-spoke
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: tf-test-subnet_48153
///       ipCidrRange: 10.0.0.0/28
///       region: us-central1
///       network: ${network.selfLink}
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub
///       description: A sample hub
///       labels:
///         label-two: value-one
///       presetTopology: HYBRID_INSPECTION
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: spoke-name
///       location: us-central1
///       description: A sample spoke of type Gateway
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       gateway:
///         ipRangeReservations:
///           - ipRange: 10.0.0.0/23
///         capacity: CAPACITY_1_GBPS
///       group: gateways
///   default:
///     type: gcp:networkconnectivity:GatewayAdvertisedRoute
///     properties:
///       spoke: ${primary.name}
///       location: us-central1
///       name: gateway-advertised-route-name
///       labels:
///         label-one: value-one
///       description: description of the gateway advertised route
///       ipRange: 0.0.0.0/24
///       recipient: ADVERTISE_TO_HUB
///       priority: 200
/// ```
///
///
/// ## Import
///
/// GatewayAdvertisedRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spokes/{{spoke}}/gatewayAdvertisedRoutes/{{name}}`
/// * `{{project}}/{{location}}/{{spoke}}/{{name}}`
/// * `{{location}}/{{spoke}}/{{name}}`
///
///
/// When using the `pulumi import` command, GatewayAdvertisedRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default projects/{{project}}/locations/{{location}}/spokes/{{spoke}}/gatewayAdvertisedRoutes/{{name}}
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default {{project}}/{{location}}/{{spoke}}/{{name}}
/// $ pulumi import gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute default {{location}}/{{spoke}}/{{name}}
/// ```
class GatewayAdvertisedRoute extends pulumi.CustomResource {
  /// The time the gateway advertised route was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of the gateway advertised route.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// This route's advertised IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a /32 singular IP address range, and, for IPv6, /128
  late final pulumi.Output<String?> ipRange;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The name of the gateway advertised route. Route names must be unique.
  late final pulumi.Output<String> name;
  /// The priority of this advertised route. You can choose a value from 0 to 65335.
  /// If you don't provide a value, Google Cloud assigns a priority of 100 to the ranges.
  late final pulumi.Output<int?> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// the recipient of this advertised route
  /// Possible values are: `RECIPIENT_UNSPECIFIED`, `ADVERTISE_TO_HUB`.
  late final pulumi.Output<String?> recipient;
  /// The name of the spoke
  late final pulumi.Output<String> spoke;
  /// The current lifecycle state of this gateway advertised route.
  late final pulumi.Output<String> state;
  /// The Google-generated UUID for the gateway advertised route.
  /// This value is unique across all gateway advertised route resources.
  /// If a gateway advertised route is deleted and another with the same name is created, the new route is assigned a different uniqueId.
  late final pulumi.Output<String> uniqueId;
  /// The time the gateway advertised route was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GatewayAdvertisedRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayAdvertisedRoute]. {@macro pulumi_networkconnectivity_gateway_advertised_route_gateway_advertised_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayAdvertisedRoute(
    String name, {
    GatewayAdvertisedRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    ipRange = registerOutput<String?>('ipRange');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recipient = registerOutput<String?>('recipient');
    spoke = registerOutput<String>('spoke');
    state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GatewayAdvertisedRoute] resource's state with the given [name] and [id].
  static GatewayAdvertisedRoute get(
    String name,
    pulumi.Input<String> id, {
    GatewayAdvertisedRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GatewayAdvertisedRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GatewayAdvertisedRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    ipRange = registerOutput<String?>('ipRange');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recipient = registerOutput<String?>('recipient');
    spoke = registerOutput<String>('spoke');
    this.state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [GatewayAdvertisedRoute] resource.
  GatewayAdvertisedRoute.reference(String urn)
    : super(
        'gcp:networkconnectivity/gatewayAdvertisedRoute:GatewayAdvertisedRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    ipRange = registerOutput<String?>('ipRange');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recipient = registerOutput<String?>('recipient');
    spoke = registerOutput<String>('spoke');
    state = registerOutput<String>('state');
    uniqueId = registerOutput<String>('uniqueId');
    updateTime = registerOutput<String>('updateTime');
  }
}
