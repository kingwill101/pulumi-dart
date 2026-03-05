import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_list_args.dart';
import 'network_endpoint_list_state.dart';

/// A set of network endpoints belonging to a network endpoint group (NEG). A
/// single network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group  (NEG). NEGs are zonal collections
/// of these endpoints for GCP resources within a single subnet. **NOTE**:
/// Network endpoints cannot be created outside of a network endpoint group.
///
/// This resource is authoritative for a single NEG. Any endpoints not specified
/// by this resource will be deleted when the resource configuration is applied.
///
/// &gt; **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replace_triggered_by` method, with the passed Instance's ID.
///
///
/// To get more information about NetworkEndpoints, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoints
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
/// const endpoint_instance1 = new gcp.compute.Instance("endpoint-instance1", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "endpoint-instance1",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const endpoint_instance2 = new gcp.compute.Instance("endpoint-instance2", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "endpoint-instance2",
///     machineType: "e2-medium",
///     bootDisk: {
///         initializeParams: {
///             image: myImage.then(myImage => myImage.selfLink),
///         },
///     },
/// });
/// const default_endpoints = new gcp.compute.NetworkEndpointList("default-endpoints", {
///     networkEndpointGroup: neg.name,
///     networkEndpoints: [
///         {
///             instance: endpoint_instance1.name,
///             port: neg.defaultPort,
///             ipAddress: endpoint_instance1.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
///         },
///         {
///             instance: endpoint_instance2.name,
///             port: neg.defaultPort,
///             ipAddress: endpoint_instance2.networkInterfaces.apply(networkInterfaces => networkInterfaces[0].networkIp),
///         },
///     ],
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
/// endpoint_instance1 = gcp.compute.Instance("endpoint-instance1",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="endpoint-instance1",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// endpoint_instance2 = gcp.compute.Instance("endpoint-instance2",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="endpoint-instance2",
///     machine_type="e2-medium",
///     boot_disk={
///         "initialize_params": {
///             "image": my_image.self_link,
///         },
///     })
/// default_endpoints = gcp.compute.NetworkEndpointList("default-endpoints",
///     network_endpoint_group=neg["name"],
///     network_endpoints=[
///         {
///             "instance": endpoint_instance1.name,
///             "port": neg["defaultPort"],
///             "ip_address": endpoint_instance1.network_interfaces[0].network_ip,
///         },
///         {
///             "instance": endpoint_instance2.name,
///             "port": neg["defaultPort"],
///             "ip_address": endpoint_instance2.network_interfaces[0].network_ip,
///         },
///     ])
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
///     var endpoint_instance1 = new Gcp.Compute.Instance("endpoint-instance1", new()
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
///         Name = "endpoint-instance1",
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
///     var endpoint_instance2 = new Gcp.Compute.Instance("endpoint-instance2", new()
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
///         Name = "endpoint-instance2",
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
///     var default_endpoints = new Gcp.Compute.NetworkEndpointList("default-endpoints", new()
///     {
///         NetworkEndpointGroup = neg.Name,
///         NetworkEndpoints = new[]
///         {
///             new Gcp.Compute.Inputs.NetworkEndpointListNetworkEndpointArgs
///             {
///                 Instance = endpoint_instance1.Name,
///                 Port = neg.DefaultPort,
///                 IpAddress = endpoint_instance1.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///             },
///             new Gcp.Compute.Inputs.NetworkEndpointListNetworkEndpointArgs
///             {
///                 Instance = endpoint_instance2.Name,
///                 Port = neg.DefaultPort,
///                 IpAddress = endpoint_instance2.NetworkInterfaces.Apply(networkInterfaces => networkInterfaces[0].NetworkIp),
///             },
///         },
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
/// 			Network:     _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint_instance1, err := compute.NewInstance(ctx, "endpoint-instance1", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("endpoint-instance1"),
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
/// 		endpoint_instance2, err := compute.NewInstance(ctx, "endpoint-instance2", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("endpoint-instance2"),
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
/// 		_, err = compute.NewNetworkEndpointList(ctx, "default-endpoints", &compute.NetworkEndpointListArgs{
/// 			NetworkEndpointGroup: pulumi.Any(neg.Name),
/// 			NetworkEndpoints: compute.NetworkEndpointListNetworkEndpointArray{
/// 				&compute.NetworkEndpointListNetworkEndpointArgs{
/// 					Instance: endpoint_instance1.Name,
/// 					Port:     pulumi.Any(neg.DefaultPort),
/// 					IpAddress: endpoint_instance1.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 						return &networkInterfaces[0].NetworkIp, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 				&compute.NetworkEndpointListNetworkEndpointArgs{
/// 					Instance: endpoint_instance2.Name,
/// 					Port:     pulumi.Any(neg.DefaultPort),
/// 					IpAddress: endpoint_instance2.NetworkInterfaces.ApplyT(func(networkInterfaces []compute.InstanceNetworkInterface) (*string, error) {
/// 						return &networkInterfaces[0].NetworkIp, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkEndpointGroup(ctx, "group", &compute.NetworkEndpointGroupArgs{
/// 			Name:        pulumi.String("my-lb-neg"),
/// 			Network:     _default.ID(),
/// 			Subnetwork:  defaultSubnetwork.ID(),
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
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointList;
/// import com.pulumi.gcp.compute.NetworkEndpointListArgs;
/// import com.pulumi.gcp.compute.inputs.NetworkEndpointListNetworkEndpointArgs;
/// import com.pulumi.gcp.compute.NetworkEndpointGroup;
/// import com.pulumi.gcp.compute.NetworkEndpointGroupArgs;
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
///         var endpoint_instance1 = new Instance("endpoint-instance1", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("endpoint-instance1")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var endpoint_instance2 = new Instance("endpoint-instance2", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("endpoint-instance2")
///             .machineType("e2-medium")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image(myImage.selfLink())
///                     .build())
///                 .build())
///             .build());
///
///         var default_endpoints = new NetworkEndpointList("default-endpoints", NetworkEndpointListArgs.builder()
///             .networkEndpointGroup(neg.name())
///             .networkEndpoints(
///                 NetworkEndpointListNetworkEndpointArgs.builder()
///                     .instance(endpoint_instance1.name())
///                     .port(neg.defaultPort())
///                     .ipAddress(endpoint_instance1.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
///                     .build(),
///                 NetworkEndpointListNetworkEndpointArgs.builder()
///                     .instance(endpoint_instance2.name())
///                     .port(neg.defaultPort())
///                     .ipAddress(endpoint_instance2.networkInterfaces().applyValue(_networkInterfaces -> _networkInterfaces[0].networkIp()))
///                     .build())
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
///   default-endpoints:
///     type: gcp:compute:NetworkEndpointList
///     properties:
///       networkEndpointGroup: ${neg.name}
///       networkEndpoints:
///         - instance: ${["endpoint-instance1"].name}
///           port: ${neg.defaultPort}
///           ipAddress: ${["endpoint-instance1"].networkInterfaces[0].networkIp}
///         - instance: ${["endpoint-instance2"].name}
///           port: ${neg.defaultPort}
///           ipAddress: ${["endpoint-instance2"].networkInterfaces[0].networkIp}
///   endpoint-instance1:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: endpoint-instance1
///       machineType: e2-medium
///       bootDisk:
///         initializeParams:
///           image: ${myImage.selfLink}
///   endpoint-instance2:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: endpoint-instance2
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
/// NetworkEndpoints can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}`
///
/// * `{{project}}/{{zone}}/{{network_endpoint_group}}`
///
/// * `{{zone}}/{{network_endpoint_group}}`
///
/// * `{{network_endpoint_group}}`
///
/// When using the `pulumi import` command, NetworkEndpoints can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{project}}/{{zone}}/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{zone}}/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{network_endpoint_group}}
/// ```
class NetworkEndpointList extends pulumi.CustomResource {
  /// The network endpoint group these endpoints are part of.
  late final pulumi.Output<String> networkEndpointGroup;
  /// The network endpoints to be added to the enclosing network endpoint group
  /// (NEG). Each endpoint specifies an IP address and port, along with
  /// additional information depending on the NEG type.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkEndpoints;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Zone where the containing network endpoint group is located.
  late final pulumi.Output<String> zone;

  /// Creates a new [NetworkEndpointList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkEndpointList]. {@macro pulumi_compute_network_endpoint_list_network_endpoint_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkEndpointList(
    String name, {
    NetworkEndpointListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointList:NetworkEndpointList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    networkEndpoints = registerOutput<List<Map<String, dynamic>>?>('networkEndpoints');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [NetworkEndpointList] resource's state with the given [name] and [id].
  static NetworkEndpointList get(
    String name,
    pulumi.Input<String> id, {
    NetworkEndpointListState? state,
  }) {
    return NetworkEndpointList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkEndpointList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointList:NetworkEndpointList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    networkEndpoints = registerOutput<List<Map<String, dynamic>>?>('networkEndpoints');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}
