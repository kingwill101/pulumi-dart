import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_service_controls_args.dart';
import 'vpc_service_controls_state.dart';

/// Manages the VPC Service Controls configuration for a service
/// networking connection
///
/// When enabled, Google Cloud makes the following
/// route configuration changes in the service producer VPC network:
/// - Removes the IPv4 default route (destination 0.0.0.0/0,
/// next hop default internet gateway), Google Cloud then creates an
/// IPv4 route for destination 199.36.153.4/30 using the default
/// internet gateway next hop.
/// - Creates Cloud DNS managed private zones and authorizes those zones
/// for the service producer VPC network. The zones include
/// googleapis.com, gcr.io, pkg.dev, notebooks.cloud.google.com,
/// kernels.googleusercontent.com, backupdr.cloud.google.com, and
/// backupdr.googleusercontent.com as necessary domains or host names
/// for Google APIs and services that are compatible with VPC Service
/// Controls. Record data in the zones resolves all host names to
/// 199.36.153.4, 199.36.153.5, 199.36.153.6, and 199.36.153.7.
///
/// When disabled, Google Cloud makes the following route configuration
/// changes in the service producer VPC network:
/// - Restores a default route (destination 0.0.0.0/0, next hop default
/// internet gateway)
/// - Deletes the Cloud DNS managed private zones that provided the host
/// name overrides.
///
///
/// To get more information about VPCServiceControls, see:
///
/// * [API documentation](https://cloud.google.com/service-infrastructure/docs/service-networking/reference/rest/v1/services)
/// * How-to Guides
/// * [Enable VPC Service Controls for service networking](https://cloud.google.com/sdk/gcloud/reference/services/vpc-peerings/enable-vpc-service-controls)
/// * [Private Google Access with VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/private-connectivity)
/// * [Set up private connectivity to Google APIs and services](https://cloud.google.com/vpc-service-controls/docs/set-up-private-connectivity)
///
/// &gt; **Note:** Destroying a `gcp.servicenetworking.VpcServiceControls`
/// resource will remove it from state, but will not change the
/// underlying VPC Service Controls configuration for the service
/// producer network.
///
/// ## Example Usage
///
/// ### Service Networking Vpc Service Controls Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Create a VPC
/// const _default = new gcp.compute.Network("default", {name: "example-network"});
/// // Create an IP address
/// const defaultGlobalAddress = new gcp.compute.GlobalAddress("default", {
///     name: "psa-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 16,
///     network: _default.id,
/// });
/// // Create a private connection
/// const defaultConnection = new gcp.servicenetworking.Connection("default", {
///     network: _default.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [defaultGlobalAddress.name],
/// });
/// // Enable VPC-SC on the producer network
/// const defaultVpcServiceControls = new gcp.servicenetworking.VpcServiceControls("default", {
///     network: _default.name,
///     service: "servicenetworking.googleapis.com",
///     enabled: true,
/// }, {
///     dependsOn: [defaultConnection],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Create a VPC
/// default = gcp.compute.Network("default", name="example-network")
/// # Create an IP address
/// default_global_address = gcp.compute.GlobalAddress("default",
///     name="psa-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=16,
///     network=default.id)
/// # Create a private connection
/// default_connection = gcp.servicenetworking.Connection("default",
///     network=default.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[default_global_address.name])
/// # Enable VPC-SC on the producer network
/// default_vpc_service_controls = gcp.servicenetworking.VpcServiceControls("default",
///     network=default.name,
///     service="servicenetworking.googleapis.com",
///     enabled=True,
///     opts = pulumi.ResourceOptions(depends_on=[default_connection]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a VPC
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "example-network",
///     });
///
///     // Create an IP address
///     var defaultGlobalAddress = new Gcp.Compute.GlobalAddress("default", new()
///     {
///         Name = "psa-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 16,
///         Network = @default.Id,
///     });
///
///     // Create a private connection
///     var defaultConnection = new Gcp.ServiceNetworking.Connection("default", new()
///     {
///         Network = @default.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             defaultGlobalAddress.Name,
///         },
///     });
///
///     // Enable VPC-SC on the producer network
///     var defaultVpcServiceControls = new Gcp.ServiceNetworking.VpcServiceControls("default", new()
///     {
///         Network = @default.Name,
///         Service = "servicenetworking.googleapis.com",
///         Enabled = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultConnection,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a VPC
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("example-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create an IP address
/// 		defaultGlobalAddress, err := compute.NewGlobalAddress(ctx, "default", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("psa-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(16),
/// 			Network:      _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a private connection
/// 		defaultConnection, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// 			Network: _default.ID(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				defaultGlobalAddress.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable VPC-SC on the producer network
/// 		_, err = servicenetworking.NewVpcServiceControls(ctx, "default", &servicenetworking.VpcServiceControlsArgs{
/// 			Network: _default.Name,
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			Enabled: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultConnection,
/// 		}))
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
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.servicenetworking.VpcServiceControls;
/// import com.pulumi.gcp.servicenetworking.VpcServiceControlsArgs;
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
///         // Create a VPC
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("example-network")
///             .build());
///
///         // Create an IP address
///         var defaultGlobalAddress = new GlobalAddress("defaultGlobalAddress", GlobalAddressArgs.builder()
///             .name("psa-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(16)
///             .network(default_.id())
///             .build());
///
///         // Create a private connection
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .network(default_.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(defaultGlobalAddress.name())
///             .build());
///
///         // Enable VPC-SC on the producer network
///         var defaultVpcServiceControls = new VpcServiceControls("defaultVpcServiceControls", VpcServiceControlsArgs.builder()
///             .network(default_.name())
///             .service("servicenetworking.googleapis.com")
///             .enabled(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultConnection)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a VPC
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: example-network
///   # Create an IP address
///   defaultGlobalAddress:
///     type: gcp:compute:GlobalAddress
///     name: default
///     properties:
///       name: psa-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 16
///       network: ${default.id}
///   # Create a private connection
///   defaultConnection:
///     type: gcp:servicenetworking:Connection
///     name: default
///     properties:
///       network: ${default.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${defaultGlobalAddress.name}
///   # Enable VPC-SC on the producer network
///   defaultVpcServiceControls:
///     type: gcp:servicenetworking:VpcServiceControls
///     name: default
///     properties:
///       network: ${default.name}
///       service: servicenetworking.googleapis.com
///       enabled: true
///     options:
///       dependsOn:
///         - ${defaultConnection}
/// ```
///
///
/// ## Import
///
/// VPCServiceControls can be imported using any of these accepted formats:
///
/// * `services/{{service}}/projects/{{project}}/networks/{{network}}`
///
/// * `{{service}}/{{project}}/{{network}}`
///
/// * `{{service}}/{{network}}`
///
/// When using the `pulumi import` command, VPCServiceControls can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default services/{{service}}/projects/{{project}}/networks/{{network}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default {{service}}/{{project}}/{{network}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicenetworking/vpcServiceControls:VpcServiceControls default {{service}}/{{network}}
/// ```
class VpcServiceControls extends pulumi.CustomResource {
  /// Desired VPC Service Controls state service producer VPC network, as
  /// described at the top of this page.
  late final pulumi.Output<bool> enabled;

  /// The network that the consumer is using to connect with services.
  late final pulumi.Output<String> network;

  /// The id of the Google Cloud project containing the consumer network.
  late final pulumi.Output<String?> project;

  /// The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`.
  late final pulumi.Output<String> service;

  /// Creates a new [VpcServiceControls].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcServiceControls]. {@macro pulumi_servicenetworking_vpc_service_controls_vpc_service_controls_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcServiceControls(
    String name, {
    VpcServiceControlsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:servicenetworking/vpcServiceControls:VpcServiceControls',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
    network = registerOutput<String>('network');
    project = registerOutput<String?>('project');
    service = registerOutput<String>('service');
  }

  /// Gets an existing [VpcServiceControls] resource's state with the given [name] and [id].
  static VpcServiceControls get(
    String name,
    pulumi.Input<String> id, {
    VpcServiceControlsState? state,
  }) {
    return VpcServiceControls._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcServiceControls._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:servicenetworking/vpcServiceControls:VpcServiceControls',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool>('enabled');
    network = registerOutput<String>('network');
    project = registerOutput<String?>('project');
    service = registerOutput<String>('service');
  }
}
