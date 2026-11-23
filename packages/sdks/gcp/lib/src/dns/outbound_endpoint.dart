import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_endpoint_args.dart';
import 'outbound_endpoint_state.dart';

/// An OutboundEndpoint is a regional resource to enable outbound forwarding from a private IP range in VPCs to on-premise or other networks.
///
///
/// To get more information about OutboundEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/reference/v1/outboundEndpoints)
/// * How-to Guides
/// * [Cloud DNS Outbound Endpoints](https://cloud.google.com/dns/docs/outbound-forwarding-zones)
///
///
/// ## Example Usage
///
/// ### Dns Outbound Endpoint Basic
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
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "test-subnetwork",
///     network: network.id,
///     ipCidrRange: "10.0.0.0/24",
///     region: "us-central1",
/// });
/// const proxySubnetwork = new gcp.compute.Subnetwork("proxy_subnetwork", {
///     name: "test-proxy-subnetwork",
///     network: network.id,
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     role: "ACTIVE",
/// });
/// const example_endpoint = new gcp.dns.OutboundEndpoint("example-endpoint", {
///     name: "example-endpoint",
///     location: "us-central1",
///     network: network.id,
///     subnetwork: subnetwork.id,
///     endpointIp: "10.0.0.10",
/// }, {
///     dependsOn: [proxySubnetwork],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="test-subnetwork",
///     network=network.id,
///     ip_cidr_range="10.0.0.0/24",
///     region="us-central1")
/// proxy_subnetwork = gcp.compute.Subnetwork("proxy_subnetwork",
///     name="test-proxy-subnetwork",
///     network=network.id,
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     purpose="REGIONAL_MANAGED_PROXY",
///     role="ACTIVE")
/// example_endpoint = gcp.dns.OutboundEndpoint("example-endpoint",
///     name="example-endpoint",
///     location="us-central1",
///     network=network.id,
///     subnetwork=subnetwork.id,
///     endpoint_ip="10.0.0.10",
///     opts = pulumi.ResourceOptions(depends_on=[proxy_subnetwork]))
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
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "test-subnetwork",
///         Network = network.Id,
///         IpCidrRange = "10.0.0.0/24",
///         Region = "us-central1",
///     });
///
///     var proxySubnetwork = new Gcp.Compute.Subnetwork("proxy_subnetwork", new()
///     {
///         Name = "test-proxy-subnetwork",
///         Network = network.Id,
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         Role = "ACTIVE",
///     });
///
///     var example_endpoint = new Gcp.Dns.OutboundEndpoint("example-endpoint", new()
///     {
///         Name = "example-endpoint",
///         Location = "us-central1",
///         Network = network.Id,
///         Subnetwork = subnetwork.Id,
///         EndpointIp = "10.0.0.10",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxySubnetwork,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dns"
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
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("test-subnetwork"),
/// 			Network:     network.ID(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxySubnetwork, err := compute.NewSubnetwork(ctx, "proxy_subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("test-proxy-subnetwork"),
/// 			Network:     network.ID(),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewOutboundEndpoint(ctx, "example-endpoint", &dns.OutboundEndpointArgs{
/// 			Name:       pulumi.String("example-endpoint"),
/// 			Location:   pulumi.String("us-central1"),
/// 			Network:    network.ID(),
/// 			Subnetwork: subnetwork.ID(),
/// 			EndpointIp: pulumi.String("10.0.0.10"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxySubnetwork,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "network" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                    = "test-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "test-subnetwork"
///   network       = gcp_compute_network.network.id
///   ip_cidr_range = "10.0.0.0/24"
///   region        = "us-central1"
/// }
/// resource "gcp_compute_subnetwork" "proxy_subnetwork" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name          = "test-proxy-subnetwork"
///   network       = gcp_compute_network.network.id
///   ip_cidr_range = "10.0.1.0/24"
///   region        = "us-central1"
///   purpose       = "REGIONAL_MANAGED_PROXY"
///   role          = "ACTIVE"
/// }
/// resource "gcp_dns_outbound_endpoint" "example-endpoint" {
///   depends_on = [gcp_compute_subnetwork.proxy_subnetwork]
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "example-endpoint"
///   location    = "us-central1"
///   network     = gcp_compute_network.network.id
///   subnetwork  = gcp_compute_subnetwork.subnetwork.id
///   endpoint_ip = "10.0.0.10"
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
/// import com.pulumi.gcp.dns.OutboundEndpoint;
/// import com.pulumi.gcp.dns.OutboundEndpointArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("test-subnetwork")
///             .network(network.id())
///             .ipCidrRange("10.0.0.0/24")
///             .region("us-central1")
///             .build());
///
///         var proxySubnetwork = new Subnetwork("proxySubnetwork", SubnetworkArgs.builder()
///             .name("test-proxy-subnetwork")
///             .network(network.id())
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .role("ACTIVE")
///             .build());
///
///         var example_endpoint = new OutboundEndpoint("example-endpoint", OutboundEndpointArgs.builder()
///             .name("example-endpoint")
///             .location("us-central1")
///             .network(network.id())
///             .subnetwork(subnetwork.id())
///             .endpointIp("10.0.0.10")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxySubnetwork)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: test-subnetwork
///       network: ${network.id}
///       ipCidrRange: 10.0.0.0/24
///       region: us-central1
///   proxySubnetwork:
///     type: gcp:compute:Subnetwork
///     name: proxy_subnetwork
///     properties:
///       name: test-proxy-subnetwork
///       network: ${network.id}
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       purpose: REGIONAL_MANAGED_PROXY
///       role: ACTIVE
///   example-endpoint:
///     type: gcp:dns:OutboundEndpoint
///     properties:
///       name: example-endpoint
///       location: us-central1
///       network: ${network.id}
///       subnetwork: ${subnetwork.id}
///       endpointIp: 10.0.0.10
///     options:
///       dependsOn:
///         - ${proxySubnetwork}
/// ```
///
///
/// ## Import
///
/// OutboundEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/outboundEndpoints/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, OutboundEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/outboundEndpoint:OutboundEndpoint default projects/{{project}}/locations/{{location}}/outboundEndpoints/{{name}}
/// $ pulumi import gcp:dns/outboundEndpoint:OutboundEndpoint default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:dns/outboundEndpoint:OutboundEndpoint default {{location}}/{{name}}
/// ```
class OutboundEndpoint extends pulumi.CustomResource {
  /// Annotations as key value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User provided description.
  late final pulumi.Output<String?> description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// User provided IP address to use for outbound DNS forwarding. This address
  /// must be a free address on the subnetwork. If omitted, a free IP address
  /// from the subnetwork is automatically allocated.
  late final pulumi.Output<String> endpointIp;
  /// Labels as key value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the OutboundEndpoint.
  late final pulumi.Output<String> location;
  /// The name of the OutboundEndpoint.
  late final pulumi.Output<String> name;
  /// The VPC network containing the outbound endpoint, specified as full path.
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The subnetwork holding the endpoint_ip, specified as full path.
  late final pulumi.Output<String> subnetwork;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OutboundEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OutboundEndpoint]. {@macro pulumi_dns_outbound_endpoint_outbound_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OutboundEndpoint(
    String name, {
    OutboundEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/outboundEndpoint:OutboundEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [OutboundEndpoint] resource's state with the given [name] and [id].
  static OutboundEndpoint get(
    String name,
    pulumi.Input<String> id, {
    OutboundEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OutboundEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OutboundEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/outboundEndpoint:OutboundEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [OutboundEndpoint] resource.
  OutboundEndpoint.reference(String urn)
    : super(
        'gcp:dns/outboundEndpoint:OutboundEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    endpointIp = registerOutput<String>('endpointIp');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    subnetwork = registerOutput<String>('subnetwork');
    updateTime = registerOutput<String>('updateTime');
  }
}
