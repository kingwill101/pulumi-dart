import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_state.dart';

/// Cloud IDS is an intrusion detection service that provides threat detection for intrusions, malware, spyware, and command-and-control attacks on your network.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/intrusion-detection-system/docs/configuring-ids)
///
/// ## Example Usage
///
/// ### Cloudids Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "tf-test-my-network"});
/// const serviceRange = new gcp.compute.GlobalAddress("service_range", {
///     name: "address",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: _default.id,
/// });
/// const privateServiceConnection = new gcp.servicenetworking.Connection("private_service_connection", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [serviceRange.name],
/// });
/// const example_endpoint = new gcp.cloudids.Endpoint("example-endpoint", {
///     name: "test",
///     location: "us-central1-f",
///     network: _default.id,
///     severity: "INFORMATIONAL",
/// }, {
///     dependsOn: [privateServiceConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="tf-test-my-network")
/// service_range = gcp.compute.GlobalAddress("service_range",
///     name="address",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=default.id)
/// private_service_connection = gcp.servicenetworking.Connection("private_service_connection",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[service_range.name])
/// example_endpoint = gcp.cloudids.Endpoint("example-endpoint",
///     name="test",
///     location="us-central1-f",
///     network=default.id,
///     severity="INFORMATIONAL",
///     opts = pulumi.ResourceOptions(depends_on=[private_service_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "tf-test-my-network",
///     });
///
///     var serviceRange = new Gcp.Compute.GlobalAddress("service_range", new()
///     {
///         Name = "address",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = @default.Id,
///     });
///
///     var privateServiceConnection = new Gcp.ServiceNetworking.Connection("private_service_connection", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             serviceRange.Name,
///         },
///     });
///
///     var example_endpoint = new Gcp.CloudIds.Endpoint("example-endpoint", new()
///     {
///         Name = "test",
///         Location = "us-central1-f",
///         Network = @default.Id,
///         Severity = "INFORMATIONAL",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             privateServiceConnection,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudids"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("tf-test-my-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceRange, err := compute.NewGlobalAddress(ctx, "service_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("address"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateServiceConnection, err := servicenetworking.NewConnection(ctx, "private_service_connection", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				serviceRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudids.NewEndpoint(ctx, "example-endpoint", &cloudids.EndpointArgs{
/// 			Name:     pulumi.String("test"),
/// 			Location: pulumi.String("us-central1-f"),
/// 			Network:  _default.ID().ToIDOutput().ToStringOutput(),
/// 			Severity: pulumi.String("INFORMATIONAL"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			privateServiceConnection,
/// 		}))
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
/// resource "gcp_compute_network" "default" {
///   name = "tf-test-my-network"
/// }
/// resource "gcp_compute_globaladdress" "service_range" {
///   name          = "address"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 16
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_servicenetworking_connection" "private_service_connection" {
///   network                 = gcp_compute_network.default.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.service_range.name]
/// }
/// resource "gcp_cloudids_endpoint" "example-endpoint" {
///   depends_on = [gcp_servicenetworking_connection.private_service_connection]
///   name       = "test"
///   location   = "us-central1-f"
///   network    = gcp_compute_network.default.id
///   severity   = "INFORMATIONAL"
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.cloudids.Endpoint;
/// import com.pulumi.gcp.cloudids.EndpointArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("tf-test-my-network")
///             .build());
///
///         var serviceRange = new GlobalAddress("serviceRange", GlobalAddressArgs.builder()
///             .name("address")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(default_.id())
///             .build());
///
///         var privateServiceConnection = new Connection("privateServiceConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(serviceRange.name())
///             .build());
///
///         var example_endpoint = new Endpoint("example-endpoint", EndpointArgs.builder()
///             .name("test")
///             .location("us-central1-f")
///             .network(default_.id())
///             .severity("INFORMATIONAL")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(privateServiceConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: tf-test-my-network
///   serviceRange:
///     type: gcp:compute:GlobalAddress
///     name: service_range
///     properties:
///       name: address
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${default.id}
///   privateServiceConnection:
///     type: gcp:servicenetworking:Connection
///     name: private_service_connection
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${serviceRange.name}
///   example-endpoint:
///     type: gcp:cloudids:Endpoint
///     properties:
///       name: test
///       location: us-central1-f
///       network: ${default.id}
///       severity: INFORMATIONAL
///     options:
///       dependsOn:
///         - ${privateServiceConnection}
/// ```
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpoints/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default projects/{{project}}/locations/{{location}}/endpoints/{{name}}
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:cloudids/endpoint:Endpoint default {{location}}/{{name}}
/// ```
class Endpoint extends pulumi.CustomResource {
  /// Creation timestamp in RFC 3339 text format.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of the endpoint.
  late final pulumi.Output<String?> description;
  /// URL of the endpoint's network address to which traffic is to be sent by Packet Mirroring.
  late final pulumi.Output<String> endpointForwardingRule;
  /// Internal IP address of the endpoint's network entry point.
  late final pulumi.Output<String> endpointIp;
  /// The location for the endpoint.
  late final pulumi.Output<String> location;
  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  late final pulumi.Output<String> name;
  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  late final pulumi.Output<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  late final pulumi.Output<String> severity;
  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  late final pulumi.Output<List<String>?> threatExceptions;
  /// Last update timestamp in RFC 3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_cloudids_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudids/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpointForwardingRule = registerOutput<String>('endpointForwardingRule');
    endpointIp = registerOutput<String>('endpointIp');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    severity = registerOutput<String>('severity');
    threatExceptions = registerOutput<List<String>?>('threatExceptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudids/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpointForwardingRule = registerOutput<String>('endpointForwardingRule');
    endpointIp = registerOutput<String>('endpointIp');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    severity = registerOutput<String>('severity');
    threatExceptions = registerOutput<List<String>?>('threatExceptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Endpoint] resource.
  Endpoint.reference(String urn)
    : super(
        'gcp:cloudids/endpoint:Endpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    endpointForwardingRule = registerOutput<String>('endpointForwardingRule');
    endpointIp = registerOutput<String>('endpointIp');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    severity = registerOutput<String>('severity');
    threatExceptions = registerOutput<List<String>?>('threatExceptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
