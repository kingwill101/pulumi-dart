import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_interface_args.dart';
import 'router_interface_state.dart';

/// Manages a Cloud Router interface. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/cloudrouter)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/routers).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RouterInterface("foobar", {
///     name: "interface-1",
///     router: "router-1",
///     region: "us-central1",
///     ipRange: "169.254.1.1/30",
///     vpnTunnel: "tunnel-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RouterInterface("foobar",
///     name="interface-1",
///     router="router-1",
///     region="us-central1",
///     ip_range="169.254.1.1/30",
///     vpn_tunnel="tunnel-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Gcp.Compute.RouterInterface("foobar", new()
///     {
///         Name = "interface-1",
///         Router = "router-1",
///         Region = "us-central1",
///         IpRange = "169.254.1.1/30",
///         VpnTunnel = "tunnel-1",
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
/// 		_, err := compute.NewRouterInterface(ctx, "foobar", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("interface-1"),
/// 			Router:    pulumi.String("router-1"),
/// 			Region:    pulumi.String("us-central1"),
/// 			IpRange:   pulumi.String("169.254.1.1/30"),
/// 			VpnTunnel: pulumi.String("tunnel-1"),
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
/// resource "gcp_compute_routerinterface" "foobar" {
///   name       = "interface-1"
///   router     = "router-1"
///   region     = "us-central1"
///   ip_range   = "169.254.1.1/30"
///   vpn_tunnel = "tunnel-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
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
///         var foobar = new RouterInterface("foobar", RouterInterfaceArgs.builder()
///             .name("interface-1")
///             .router("router-1")
///             .region("us-central1")
///             .ipRange("169.254.1.1/30")
///             .vpnTunnel("tunnel-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RouterInterface
///     properties:
///       name: interface-1
///       router: router-1
///       region: us-central1
///       ipRange: 169.254.1.1/30
///       vpnTunnel: tunnel-1
/// ```
///
///
/// ## Import
///
/// Router interfaces can be imported using the `project` (optional), `region`, `router`, and `name`, e.g.
///
/// * `{{project_id}}/{{region}}/{{router}}/{{name}}`
/// * `{{region}}/{{router}}/{{name}}`
///
///
/// When using the `pulumi import` command, router interfaces can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{project_id}}/{{region}}/{{router}}/{{name}}
/// $ pulumi import gcp:compute/routerInterface:RouterInterface default {{region}}/{{router}}/{{name}}
/// ```
class RouterInterface extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  late final pulumi.Output<String?> interconnectAttachment;
  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  late final pulumi.Output<String> ipRange;
  /// IP version of this interface. Can be either IPV4 or IPV6.
  late final pulumi.Output<String> ipVersion;
  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  late final pulumi.Output<String> name;
  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  late final pulumi.Output<String?> privateIpAddress;
  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  late final pulumi.Output<String> project;
  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  late final pulumi.Output<String> redundantInterface;
  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  late final pulumi.Output<String> region;
  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either `ipRange` or exactly one of `vpnTunnel`, `interconnectAttachment` or `subnetwork`, or both.
  ///
  /// - - -
  late final pulumi.Output<String> router;
  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  late final pulumi.Output<String?> subnetwork;
  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of `vpnTunnel`, `interconnectAttachment` or `subnetwork` can be specified.
  late final pulumi.Output<String?> vpnTunnel;

  /// Creates a new [RouterInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterInterface]. {@macro pulumi_compute_router_interface_router_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    interconnectAttachment = registerOutput<String?>('interconnectAttachment');
    ipRange = registerOutput<String>('ipRange');
    ipVersion = registerOutput<String>('ipVersion');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    project = registerOutput<String>('project');
    redundantInterface = registerOutput<String>('redundantInterface');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    subnetwork = registerOutput<String?>('subnetwork');
    vpnTunnel = registerOutput<String?>('vpnTunnel');
  }

  /// Gets an existing [RouterInterface] resource's state with the given [name] and [id].
  static RouterInterface get(
    String name,
    pulumi.Input<String> id, {
    RouterInterfaceState? state,
  }) {
    return RouterInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    interconnectAttachment = registerOutput<String?>('interconnectAttachment');
    ipRange = registerOutput<String>('ipRange');
    ipVersion = registerOutput<String>('ipVersion');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    project = registerOutput<String>('project');
    redundantInterface = registerOutput<String>('redundantInterface');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    subnetwork = registerOutput<String?>('subnetwork');
    vpnTunnel = registerOutput<String?>('vpnTunnel');
  }
}
