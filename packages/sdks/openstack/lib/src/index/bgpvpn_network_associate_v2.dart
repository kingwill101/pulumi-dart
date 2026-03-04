import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgpvpn_network_associate_v2_args.dart';
import 'bgpvpn_network_associate_v2_state.dart';

/// Manages a V2 BGP VPN network association resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const association1 = new openstack.bgpvpn.NetworkAssociateV2("association_1", {
///     bgpvpnId: "e7189337-5684-46ee-bcb1-44f1a57066c9",
///     networkId: "de83d56c-4d2f-44f7-ac24-af393252204f",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// association1 = openstack.bgpvpn.NetworkAssociateV2("association_1",
///     bgpvpn_id="e7189337-5684-46ee-bcb1-44f1a57066c9",
///     network_id="de83d56c-4d2f-44f7-ac24-af393252204f")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var association1 = new OpenStack.BGPVPN.NetworkAssociateV2("association_1", new()
///     {
///         BgpvpnId = "e7189337-5684-46ee-bcb1-44f1a57066c9",
///         NetworkId = "de83d56c-4d2f-44f7-ac24-af393252204f",
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
/// 		_, err := bgpvpn.NewNetworkAssociateV2(ctx, "association_1", &bgpvpn.NetworkAssociateV2Args{
/// 			BgpvpnId:  pulumi.String("e7189337-5684-46ee-bcb1-44f1a57066c9"),
/// 			NetworkId: pulumi.String("de83d56c-4d2f-44f7-ac24-af393252204f"),
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
/// import com.pulumi.openstack.bgpvpn.NetworkAssociateV2;
/// import com.pulumi.openstack.bgpvpn.NetworkAssociateV2Args;
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
///         var association1 = new NetworkAssociateV2("association1", NetworkAssociateV2Args.builder()
///             .bgpvpnId("e7189337-5684-46ee-bcb1-44f1a57066c9")
///             .networkId("de83d56c-4d2f-44f7-ac24-af393252204f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   association1:
///     type: openstack:bgpvpn:NetworkAssociateV2
///     name: association_1
///     properties:
///       bgpvpnId: e7189337-5684-46ee-bcb1-44f1a57066c9
///       networkId: de83d56c-4d2f-44f7-ac24-af393252204f
/// ```
///
///
/// ## Import
///
/// BGP VPN network associations can be imported using the BGP VPN ID and BGP VPN
///
/// network association ID separated by a slash, e.g.:
///
/// hcl
///
/// ```sh
/// $ pulumi import openstack:index/bgpvpnNetworkAssociateV2:BgpvpnNetworkAssociateV2 association_1 2145aaa9-edaa-44fb-9815-e47a96677a72/67bb952a-f9d1-4fc8-ae84-082253a879d4
/// ```
class BgpvpnNetworkAssociateV2 extends pulumi.CustomResource {
  /// The ID of the BGP VPN to which the network will be
  /// associated. Changing this creates a new BGP VPN network association
  late final pulumi.Output<String> bgpvpnId;

  /// The ID of the network to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN network association.
  late final pulumi.Output<String> networkId;

  /// The ID of the project that owns the BGP VPN network
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN network
  /// association.
  late final pulumi.Output<String> projectId;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN network association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN network association.
  late final pulumi.Output<String> region;

  /// Creates a new [BgpvpnNetworkAssociateV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpvpnNetworkAssociateV2]. {@macro pulumi_index_bgpvpn_network_associate_v2_bgpvpn_network_associate_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpvpnNetworkAssociateV2(
    String name, {
    BgpvpnNetworkAssociateV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/bgpvpnNetworkAssociateV2:BgpvpnNetworkAssociateV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bgpvpnId = registerOutput<String>('bgpvpnId');
    networkId = registerOutput<String>('networkId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BgpvpnNetworkAssociateV2] resource's state with the given [name] and [id].
  static BgpvpnNetworkAssociateV2 get(
    String name,
    pulumi.Input<String> id, {
    BgpvpnNetworkAssociateV2State? state,
  }) {
    return BgpvpnNetworkAssociateV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpvpnNetworkAssociateV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:index/bgpvpnNetworkAssociateV2:BgpvpnNetworkAssociateV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bgpvpnId = registerOutput<String>('bgpvpnId');
    networkId = registerOutput<String>('networkId');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
  }
}
