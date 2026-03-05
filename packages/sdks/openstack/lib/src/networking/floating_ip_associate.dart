import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_associate_args.dart';
import 'floating_ip_associate_state.dart';

/// Associates a floating IP to a port. This is useful for situations
/// where you have a pre-allocated floating IP or are unable to use the
/// `openstack.networking.FloatingIp` resource to create a floating IP.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const port1 = new openstack.networking.Port("port_1", {networkId: "a5bbd213-e1d3-49b6-aed1-9df60ea94b9a"});
/// const fip1 = new openstack.networking.FloatingIpAssociate("fip_1", {
///     floatingIp: "1.2.3.4",
///     portId: port1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// port1 = openstack.networking.Port("port_1", network_id="a5bbd213-e1d3-49b6-aed1-9df60ea94b9a")
/// fip1 = openstack.networking.FloatingIpAssociate("fip_1",
///     floating_ip="1.2.3.4",
///     port_id=port1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var port1 = new OpenStack.Networking.Port("port_1", new()
///     {
///         NetworkId = "a5bbd213-e1d3-49b6-aed1-9df60ea94b9a",
///     });
///
///     var fip1 = new OpenStack.Networking.FloatingIpAssociate("fip_1", new()
///     {
///         FloatingIp = "1.2.3.4",
///         PortId = port1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		port1, err := networking.NewPort(ctx, "port_1", &networking.PortArgs{
/// 			NetworkId: pulumi.String("a5bbd213-e1d3-49b6-aed1-9df60ea94b9a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewFloatingIpAssociate(ctx, "fip_1", &networking.FloatingIpAssociateArgs{
/// 			FloatingIp: pulumi.String("1.2.3.4"),
/// 			PortId:     port1.ID(),
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
/// import com.pulumi.openstack.networking.Port;
/// import com.pulumi.openstack.networking.PortArgs;
/// import com.pulumi.openstack.networking.FloatingIpAssociate;
/// import com.pulumi.openstack.networking.FloatingIpAssociateArgs;
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
///         var port1 = new Port("port1", PortArgs.builder()
///             .networkId("a5bbd213-e1d3-49b6-aed1-9df60ea94b9a")
///             .build());
///
///         var fip1 = new FloatingIpAssociate("fip1", FloatingIpAssociateArgs.builder()
///             .floatingIp("1.2.3.4")
///             .portId(port1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   port1:
///     type: openstack:networking:Port
///     name: port_1
///     properties:
///       networkId: a5bbd213-e1d3-49b6-aed1-9df60ea94b9a
///   fip1:
///     type: openstack:networking:FloatingIpAssociate
///     name: fip_1
///     properties:
///       floatingIp: 1.2.3.4
///       portId: ${port1.id}
/// ```
///
///
/// ## Import
///
/// Floating IP associations can be imported using the `id` of the floating IP, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/floatingIpAssociate:FloatingIpAssociate fip 2c7f39f3-702b-48d1-940c-b50384177ee1
/// ```
class FloatingIpAssociate extends pulumi.CustomResource {
  late final pulumi.Output<String> fixedIp;
  /// IP Address of an existing floating IP.
  late final pulumi.Output<String> floatingIp;
  /// ID of an existing port with at least one IP address to
  /// associate with this floating IP.
  late final pulumi.Output<String> portId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a floating IP that can be used with
  /// another networking resource, such as a load balancer. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// floating IP (which may or may not have a different address).
  late final pulumi.Output<String> region;

  /// Creates a new [FloatingIpAssociate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIpAssociate]. {@macro pulumi_networking_floating_ip_associate_floating_ip_associate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIpAssociate(
    String name, {
    FloatingIpAssociateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/floatingIpAssociate:FloatingIpAssociate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fixedIp = registerOutput<String>('fixedIp');
    floatingIp = registerOutput<String>('floatingIp');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FloatingIpAssociate] resource's state with the given [name] and [id].
  static FloatingIpAssociate get(
    String name,
    pulumi.Input<String> id, {
    FloatingIpAssociateState? state,
  }) {
    return FloatingIpAssociate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FloatingIpAssociate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/floatingIpAssociate:FloatingIpAssociate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fixedIp = registerOutput<String>('fixedIp');
    floatingIp = registerOutput<String>('floatingIp');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
  }
}
