import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgpvpn_port_associate_v2_args.dart';
import 'bgpvpn_port_associate_v2_state.dart';

/// Manages a V2 BGP VPN port association resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const association1 = new openstack.bgpvpn.PortAssociateV2("association_1", {
///     bgpvpnId: "19382ec5-8098-47d9-a9c6-6270c91103f4",
///     portId: "b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f",
///     routes: [
///         {
///             type: "prefix",
///             prefix: "192.168.170.1/32",
///         },
///         {
///             type: "bgpvpn",
///             bgpvpnId: "35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// association1 = openstack.bgpvpn.PortAssociateV2("association_1",
///     bgpvpn_id="19382ec5-8098-47d9-a9c6-6270c91103f4",
///     port_id="b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f",
///     routes=[
///         {
///             "type": "prefix",
///             "prefix": "192.168.170.1/32",
///         },
///         {
///             "type": "bgpvpn",
///             "bgpvpn_id": "35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var association1 = new OpenStack.BGPVPN.PortAssociateV2("association_1", new()
///     {
///         BgpvpnId = "19382ec5-8098-47d9-a9c6-6270c91103f4",
///         PortId = "b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f",
///         Routes = new[]
///         {
///             new OpenStack.BGPVPN.Inputs.PortAssociateV2RouteArgs
///             {
///                 Type = "prefix",
///                 Prefix = "192.168.170.1/32",
///             },
///             new OpenStack.BGPVPN.Inputs.PortAssociateV2RouteArgs
///             {
///                 Type = "bgpvpn",
///                 BgpvpnId = "35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/bgpvpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bgpvpn.NewPortAssociateV2(ctx, "association_1", &bgpvpn.PortAssociateV2Args{
/// 			BgpvpnId: pulumi.String("19382ec5-8098-47d9-a9c6-6270c91103f4"),
/// 			PortId:   pulumi.String("b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f"),
/// 			Routes: bgpvpn.PortAssociateV2RouteArray{
/// 				&bgpvpn.PortAssociateV2RouteArgs{
/// 					Type:   pulumi.String("prefix"),
/// 					Prefix: pulumi.String("192.168.170.1/32"),
/// 				},
/// 				&bgpvpn.PortAssociateV2RouteArgs{
/// 					Type:     pulumi.String("bgpvpn"),
/// 					BgpvpnId: pulumi.String("35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c"),
/// 				},
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
/// import com.pulumi.openstack.bgpvpn.PortAssociateV2;
/// import com.pulumi.openstack.bgpvpn.PortAssociateV2Args;
/// import com.pulumi.openstack.bgpvpn.inputs.PortAssociateV2RouteArgs;
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
///         var association1 = new PortAssociateV2("association1", PortAssociateV2Args.builder()
///             .bgpvpnId("19382ec5-8098-47d9-a9c6-6270c91103f4")
///             .portId("b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f")
///             .routes(
///                 PortAssociateV2RouteArgs.builder()
///                     .type("prefix")
///                     .prefix("192.168.170.1/32")
///                     .build(),
///                 PortAssociateV2RouteArgs.builder()
///                     .type("bgpvpn")
///                     .bgpvpnId("35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   association1:
///     type: openstack:bgpvpn:PortAssociateV2
///     name: association_1
///     properties:
///       bgpvpnId: 19382ec5-8098-47d9-a9c6-6270c91103f4
///       portId: b83a95b8-c2c8-4eac-9a9e-ddc85bd1266f
///       routes:
///         - type: prefix
///           prefix: 192.168.170.1/32
///         - type: bgpvpn
///           bgpvpnId: 35af1cc6-3d0f-4c5d-86f8-8cdb508d3f0c
/// ```
///
///
/// ## Import
///
/// BGP VPN port associations can be imported using the BGP VPN ID and BGP VPN port
///
/// association ID separated by a slash, e.g.:
///
/// hcl
///
/// ```sh
/// $ pulumi import openstack:index/bgpvpnPortAssociateV2:BgpvpnPortAssociateV2 association_1 5bb44ecf-f8fe-4d75-8fc5-313f96ee2696/8f8fc660-3f28-414e-896a-0c7c51162fcf
/// ```
class BgpvpnPortAssociateV2 extends pulumi.CustomResource {
  /// A boolean flag indicating whether fixed
  /// IPs should be advertised. Defaults to true.
  late final pulumi.Output<bool> advertiseFixedIps;

  /// The ID of the BGP VPN to which the port will be
  /// associated. Changing this creates a new BGP VPN port association.
  late final pulumi.Output<String> bgpvpnId;

  /// The ID of the port to be associated with the BGP VPN.
  /// Changing this creates a new BGP VPN port association.
  late final pulumi.Output<String> portId;

  /// The ID of the project that owns the port
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN port
  /// association.
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN port association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN port association.
  late final pulumi.Output<String> region;

  /// A list of dictionaries containing the following keys:
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;

  /// Creates a new [BgpvpnPortAssociateV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpvpnPortAssociateV2]. {@macro pulumi_index_bgpvpn_port_associate_v2_bgpvpn_port_associate_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpvpnPortAssociateV2(
    String name, {
    BgpvpnPortAssociateV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/bgpvpnPortAssociateV2:BgpvpnPortAssociateV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advertiseFixedIps = registerOutput<bool>('advertiseFixedIps');
    bgpvpnId = registerOutput<String>('bgpvpnId');
    portId = registerOutput<String>('portId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
  }

  /// Gets an existing [BgpvpnPortAssociateV2] resource's state with the given [name] and [id].
  static BgpvpnPortAssociateV2 get(
    String name,
    pulumi.Input<String> id, {
    BgpvpnPortAssociateV2State? state,
  }) {
    return BgpvpnPortAssociateV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpvpnPortAssociateV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/bgpvpnPortAssociateV2:BgpvpnPortAssociateV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advertiseFixedIps = registerOutput<bool>('advertiseFixedIps');
    bgpvpnId = registerOutput<String>('bgpvpnId');
    portId = registerOutput<String>('portId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
  }
}
