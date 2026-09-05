import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_args.dart';
import 'network_endpoint_state.dart';

/// A Network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group (NEG). NEGs are zonal
/// collections of these endpoints for GCP resources within a
/// single subnet. **NOTE**: Network endpoints cannot be created outside of a
/// network endpoint group.
///
/// &gt; **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replaceTriggeredBy` method, with the passed Instance's ID.
///
///
/// To get more information about NetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
///     family: "debian-11",
///     project: "debian-cloud",
/// });
/// const _default = new gcp.compute.Network("default", {
///     name: "neg-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "neg-subnetwork",
///     ipCidrRange: "10.0.0.1/16",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const endpoint_instance = new gcp.compute.Instance("endpoint-instance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "endpoint-instance",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const default_endpoint = new gcp.compute.NetworkEndpoint("default-endpoint", {
///     networkEndpointGroup: neg.name,
///     instance: endpoint_instance.name,
///     port: Number(neg.defaultPort),
///     ipAddress: endpoint_instance.networkInterfaces[0].networkIp,
/// });
/// const group = new gcp.compute.NetworkEndpointGroup("group", {
///     name: "my-lb-neg",
///     network: _default.id,
///     subnetwork: defaultSubnetwork.id,
///     defaultPort: 90,
///     zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
///     project="debian-cloud")
/// default = gcp.compute.Network("default",
///     name="neg-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="neg-subnetwork",
///     ip_cidr_range="10.0.0.1/16",
///     region="us-central1",
///     network=default.id)
/// endpoint_instance = gcp.compute.Instance("endpoint-instance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="endpoint-instance",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// default_endpoint = gcp.compute.NetworkEndpoint("default-endpoint",
///     network_endpoint_group=neg["name"],
///     instance=endpoint_instance.name,
///     port=int(neg["defaultPort"]),
///     ip_address=endpoint_instance.network_interfaces[0].network_ip)
/// group = gcp.compute.NetworkEndpointGroup("group",
///     name="my-lb-neg",
///     network=default.id,
///     subnetwork=default_subnetwork.id,
///     default_port=90,
///     zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myImage = Gcp.Compute.GetImage.Invoke(new()
///     {
///         Family = "debian-11",
///         Project = "debian-cloud",
///     });
///
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "neg-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "neg-subnetwork",
///         IpCidrRange = "10.0.0.1/16",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var endpoint_instance = new Gcp.Compute.Instance("endpoint-instance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///             },
///         },
///         Name = "endpoint-instance",
///         MachineType = "e2-medium",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = myImage.Apply(getImageResult => getImageResult.SelfLink),
///             },
///         },
///     });
///
///     var default_endpoint = new Gcp.Compute.NetworkEndpoint("default-endpoint", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         Instance = endpoint_instance.Name,
///         Port = int.Parse(neg.DefaultPort, System.Globalization.CultureInfo.InvariantCulture),
///         IpAddress = endpoint_instance.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///     });
///
///     var @group = new Gcp.Compute.NetworkEndpointGroup("group", new()
///     {
///         Name = "my-lb-neg",
///         Network = @default.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DefaultPort = 90,
///         Zone = "us-central1-a",
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
/// 		myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// 			Family:  pulumi.StringRef("debian-11"),
/// 			Project: pulumi.StringRef("debian-cloud"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("neg-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("neg-subnetwork"),
/// 			IpCidrRange: pulumi.String("10.0.0.1/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint_instance, err := compute.NewInstance(ctx, "endpoint-instance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("endpoint-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String(myImage.SelfLink),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpoint(ctx, "default-endpoint", &compute.NetworkEndpointArgs{
/// 			NetworkEndpointGroup: pulumi.Any(neg.Name),
/// 			Instance:             endpoint_instance.Name,
/// 			Port:                 pulumi.Any(neg.DefaultPort),
/// 			IpAddress: endpoint_instance.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 				return networkInterfaces[0].NetworkIp, nil
/// 			}).(pulumi.StringPtrOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpointGroup(ctx, "group", &compute.NetworkEndpointGroupArgs{
/// 			Name:        pulumi.String("my-lb-neg"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 			Subnetwork:  defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 			DefaultPort: pulumi.Int(90),
/// 			Zone:        pulumi.String("us-central1-a"),
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
/// data "gcp_compute_getimage" "myImage" {
///   family  = "debian-11"
///   project = "debian-cloud"
/// }
///
/// resource "gcp_compute_networkendpoint" "default-endpoint" {
///   network_endpoint_group = neg.name
///   instance               = gcp_compute_instance.endpoint-instance.name
///   port                   = neg.defaultPort
///   ip_address             = gcp_compute_instance.endpoint-instance.network_interfaces[0].network_ip
/// }
/// resource "gcp_compute_instance" "endpoint-instance" {
///   network_interfaces {
///     access_configs {
///     }
///     subnetwork = gcp_compute_subnetwork.default.id
///   }
///   name         = "endpoint-instance"
///   machine_type = "e2-medium"
///   boot_disk = {
///     initialize_params = {
///       image = data.gcp_compute_getimage.myImage.self_link
///     }
///   }
/// }
/// resource "gcp_compute_networkendpointgroup" "group" {
///   name         = "my-lb-neg"
///   network      = gcp_compute_network.default.id
///   subnetwork   = gcp_compute_subnetwork.default.id
///   default_port = "90"
///   zone         = "us-central1-a"
/// }
/// resource "gcp_compute_network" "default" {
///   name                    = "neg-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "neg-subnetwork"
///   ip_cidr_range = "10.0.0.1/16"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.NetworkEndpoint;
/// import com.pulumi.gcp.compute.NetworkEndpointArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
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
///         final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
///             .family("debian-11")
///             .project("debian-cloud")
///             .build());
///
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("neg-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("neg-subnetwork")
///             .ipCidrRange("10.0.0.1/16")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         var endpoint_instance = new Instance("endpoint-instance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("endpoint-instance")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var default_endpoint = new NetworkEndpoint("default-endpoint", NetworkEndpointArgs.builder()
///             .networkEndpointGroup(neg.get("name"))
///             .instance(endpoint_instance.name())
///             .port(((Number) neg.get("defaultPort")).intValue())
///             .ipAddress(endpoint_instance.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces.get(0).networkIp()))
///             .build());
///
///         var group = new NetworkEndpointGroup("group", NetworkEndpointGroupArgs.builder()
///             .name("my-lb-neg")
///             .network(default_.id())
///             .subnetwork(defaultSubnetwork.id())
///             .defaultPort(90)
///             .zone("us-central1-a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-endpoint:
///     type: gcp:compute:NetworkEndpoint
///     properties:
///       networkEndpointGroup: ${neg.name}
///       instance: ${["endpoint-instance"].name}
///       port: ${neg.defaultPort}
///       ipAddress: ${["endpoint-instance"].networkInterfaces[0].networkIp}
///   endpoint-instance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: endpoint-instance
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///   group:
///     type: gcp:compute:NetworkEndpointGroup
///     properties:
///       name: my-lb-neg
///       network: ${default.id}
///       subnetwork: ${defaultSubnetwork.id}
///       defaultPort: '90'
///       zone: us-central1-a
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: neg-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: neg-subnetwork
///       ipCidrRange: 10.0.0.1/16
///       region: us-central1
///       network: ${default.id}
/// variables:
///   myImage:
///     fn::invoke:
///       function: gcp:compute:getImage
///       arguments:
///         family: debian-11
///         project: debian-cloud
/// ```
///
///
/// ## Import
///
/// NetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
/// * `{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}`
///
///
/// When using the `pulumi import` command, NetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{project}}/{{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{zone}}/{{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// $ pulumi import gcp:compute/networkEndpoint:NetworkEndpoint default {{network_endpoint_group}}/{{instance}}/{{ip_address}}/{{port}}
/// ```
class NetworkEndpoint extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone of network endpoint group.
  late final pulumi.Output<String?> instance;
  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  late final pulumi.Output<String> ipAddress;
  /// The network endpoint group this endpoint is part of.
  late final pulumi.Output<String> networkEndpointGroup;
  /// Port number of network endpoint.
  /// **Note** `port` is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  late final pulumi.Output<int?> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Zone where the containing network endpoint group is located.
  late final pulumi.Output<String> zone;

  /// Creates a new [NetworkEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEndpoint]. {@macro pulumi_compute_network_endpoint_network_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEndpoint(
    String name, {
    NetworkEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpoint:NetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String>('ipAddress');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [NetworkEndpoint] resource's state with the given [name] and [id].
  static NetworkEndpoint get(
    String name,
    pulumi.Input<String> id, {
    NetworkEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpoint:NetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String>('ipAddress');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Creates a typed reference to an existing [NetworkEndpoint] resource.
  NetworkEndpoint.reference(String urn)
    : super(
        'gcp:compute/networkEndpoint:NetworkEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String?>('instance');
    ipAddress = registerOutput<String>('ipAddress');
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    port = registerOutput<int?>('port');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}
