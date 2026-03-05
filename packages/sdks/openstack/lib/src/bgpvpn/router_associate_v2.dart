import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_associate_v2_args.dart';
import 'router_associate_v2_state.dart';

/// Manages a V2 BGP VPN router association resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const association1 = new openstack.bgpvpn.RouterAssociateV2("association_1", {
///     bgpvpnId: "d57d39e1-dc63-44fd-8cbd-a4e1488100c5",
///     routerId: "423fa80f-e0d7-4d02-a9a5-8b8c05812bf6",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// association1 = openstack.bgpvpn.RouterAssociateV2("association_1",
///     bgpvpn_id="d57d39e1-dc63-44fd-8cbd-a4e1488100c5",
///     router_id="423fa80f-e0d7-4d02-a9a5-8b8c05812bf6")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var association1 = new OpenStack.BGPVPN.RouterAssociateV2("association_1", new()
///     {
///         BgpvpnId = "d57d39e1-dc63-44fd-8cbd-a4e1488100c5",
///         RouterId = "423fa80f-e0d7-4d02-a9a5-8b8c05812bf6",
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
/// 		_, err := bgpvpn.NewRouterAssociateV2(ctx, "association_1", &bgpvpn.RouterAssociateV2Args{
/// 			BgpvpnId: pulumi.String("d57d39e1-dc63-44fd-8cbd-a4e1488100c5"),
/// 			RouterId: pulumi.String("423fa80f-e0d7-4d02-a9a5-8b8c05812bf6"),
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
/// import com.pulumi.openstack.bgpvpn.RouterAssociateV2;
/// import com.pulumi.openstack.bgpvpn.RouterAssociateV2Args;
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
///         var association1 = new RouterAssociateV2("association1", RouterAssociateV2Args.builder()
///             .bgpvpnId("d57d39e1-dc63-44fd-8cbd-a4e1488100c5")
///             .routerId("423fa80f-e0d7-4d02-a9a5-8b8c05812bf6")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   association1:
///     type: openstack:bgpvpn:RouterAssociateV2
///     name: association_1
///     properties:
///       bgpvpnId: d57d39e1-dc63-44fd-8cbd-a4e1488100c5
///       routerId: 423fa80f-e0d7-4d02-a9a5-8b8c05812bf6
/// ```
///
///
/// ## Import
///
/// BGP VPN router associations can be imported using the BGP VPN ID and BGP VPN
///
/// router association ID separated by a slash, e.g.:
///
/// hcl
///
/// ```sh
/// $ pulumi import openstack:bgpvpn/routerAssociateV2:RouterAssociateV2 association_1 e26d509e-fc2d-4fb5-8562-619911a9a6bc/3cc9df2d-80db-4536-8ba6-295d1d0f723f
/// ```
class RouterAssociateV2 extends pulumi.CustomResource {
  /// A boolean flag indicating whether extra
  /// routes should be advertised. Defaults to true.
  late final pulumi.Output<bool> advertiseExtraRoutes;
  /// The ID of the BGP VPN to which the router will be
  /// associated. Changing this creates a new BGP VPN router association.
  late final pulumi.Output<String> bgpvpnId;
  /// The ID of the project that owns the BGP VPN router
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN router
  /// association.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN router association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN router association.
  late final pulumi.Output<String> region;
  /// The ID of the router to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN router association.
  late final pulumi.Output<String> routerId;

  /// Creates a new [RouterAssociateV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterAssociateV2]. {@macro pulumi_bgpvpn_router_associate_v2_router_associate_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterAssociateV2(
    String name, {
    RouterAssociateV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:bgpvpn/routerAssociateV2:RouterAssociateV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseExtraRoutes = registerOutput<bool>('advertiseExtraRoutes');
    bgpvpnId = registerOutput<String>('bgpvpnId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
  }

  /// Gets an existing [RouterAssociateV2] resource's state with the given [name] and [id].
  static RouterAssociateV2 get(
    String name,
    pulumi.Input<String> id, {
    RouterAssociateV2State? state,
  }) {
    return RouterAssociateV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterAssociateV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:bgpvpn/routerAssociateV2:RouterAssociateV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseExtraRoutes = registerOutput<bool>('advertiseExtraRoutes');
    bgpvpnId = registerOutput<String>('bgpvpnId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
  }
}
