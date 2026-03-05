import 'package:pulumi/pulumi.dart' as pulumi;
import 'segment_v2_args.dart';
import 'segment_v2_state.dart';

/// Manages a Neutron network segment resource within OpenStack.
///
/// &gt; **Note:** This resource is only available if the Neutron service is
/// configured with the `segments` extension.
///
/// &gt; **Note:** This ussually requires admin privileges to create or manage
/// segments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const net1 = new openstack.networking.Network("net_1", {name: "demo-net"});
/// const segment1 = new openstack.networking.SegmentV2("segment_1", {
///     name: "flat-segment",
///     description: "Example flat segment",
///     networkId: net1.id,
///     networkType: "flat",
///     physicalNetwork: "public",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// net1 = openstack.networking.Network("net_1", name="demo-net")
/// segment1 = openstack.networking.SegmentV2("segment_1",
///     name="flat-segment",
///     description="Example flat segment",
///     network_id=net1.id,
///     network_type="flat",
///     physical_network="public")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var net1 = new OpenStack.Networking.Network("net_1", new()
///     {
///         Name = "demo-net",
///     });
///
///     var segment1 = new OpenStack.Networking.SegmentV2("segment_1", new()
///     {
///         Name = "flat-segment",
///         Description = "Example flat segment",
///         NetworkId = net1.Id,
///         NetworkType = "flat",
///         PhysicalNetwork = "public",
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
/// 		net1, err := networking.NewNetwork(ctx, "net_1", &networking.NetworkArgs{
/// 			Name: pulumi.String("demo-net"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewSegmentV2(ctx, "segment_1", &networking.SegmentV2Args{
/// 			Name:            pulumi.String("flat-segment"),
/// 			Description:     pulumi.String("Example flat segment"),
/// 			NetworkId:       net1.ID(),
/// 			NetworkType:     pulumi.String("flat"),
/// 			PhysicalNetwork: pulumi.String("public"),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.SegmentV2;
/// import com.pulumi.openstack.networking.SegmentV2Args;
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
///         var net1 = new Network("net1", NetworkArgs.builder()
///             .name("demo-net")
///             .build());
///
///         var segment1 = new SegmentV2("segment1", SegmentV2Args.builder()
///             .name("flat-segment")
///             .description("Example flat segment")
///             .networkId(net1.id())
///             .networkType("flat")
///             .physicalNetwork("public")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   net1:
///     type: openstack:networking:Network
///     name: net_1
///     properties:
///       name: demo-net
///   segment1:
///     type: openstack:networking:SegmentV2
///     name: segment_1
///     properties:
///       name: flat-segment
///       description: Example flat segment
///       networkId: ${net1.id}
///       networkType: flat
///       physicalNetwork: public
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the segment ID:
///
/// ```sh
/// $ pulumi import openstack:networking/segmentV2:SegmentV2 segment1 a5e3a494-26ee-4fde-ad26-2d846c47072e
/// ```
class SegmentV2 extends pulumi.CustomResource {
  /// Creation timestamp (RFC3339 format).
  late final pulumi.Output<String> createdAt;
  /// A description for the segment.
  late final pulumi.Output<String?> description;
  /// A name for the segment.
  late final pulumi.Output<String> name;
  /// The UUID of the network this segment belongs to.
  /// Changing this will create a new segment.
  late final pulumi.Output<String> networkId;
  /// The network type. Valid values depend on the
  /// backend (e.g., `vlan`, `vxlan`, `flat`, `gre`, `geneve`, `local`). Changing
  /// this will create a new segment.
  late final pulumi.Output<String> networkType;
  /// The name of the physical network. Changing this
  /// will create a new segment.
  late final pulumi.Output<String?> physicalNetwork;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// segment.
  late final pulumi.Output<String> region;
  /// The revision number of the segment.
  late final pulumi.Output<int> revisionNumber;
  /// A segmentation identifier. Changing is allowed
  /// only for `vlan`.
  late final pulumi.Output<int> segmentationId;
  /// Last update timestamp (RFC3339 format).
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [SegmentV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SegmentV2]. {@macro pulumi_networking_segment_v2_segment_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SegmentV2(
    String name, {
    SegmentV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/segmentV2:SegmentV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    networkType = registerOutput<String>('networkType');
    physicalNetwork = registerOutput<String?>('physicalNetwork');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    segmentationId = registerOutput<int>('segmentationId');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [SegmentV2] resource's state with the given [name] and [id].
  static SegmentV2 get(
    String name,
    pulumi.Input<String> id, {
    SegmentV2State? state,
  }) {
    return SegmentV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SegmentV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/segmentV2:SegmentV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    networkId = registerOutput<String>('networkId');
    networkType = registerOutput<String>('networkType');
    physicalNetwork = registerOutput<String?>('physicalNetwork');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    segmentationId = registerOutput<int>('segmentationId');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
