import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_args.dart';
import 'placement_group_state.dart';

/// Provides a Hetzner Cloud Placement Group to represent a Placement Group in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const my_placement_group = new hcloud.PlacementGroup("my-placement-group", {
///     name: "my-placement-group",
///     type: "spread",
///     labels: {
///         key: "value",
///     },
/// });
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
///     placementGroupId: my_placement_group.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// my_placement_group = hcloud.PlacementGroup("my-placement-group",
///     name="my-placement-group",
///     type="spread",
///     labels={
///         "key": "value",
///     })
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23",
///     placement_group_id=my_placement_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_placement_group = new HCloud.PlacementGroup("my-placement-group", new()
///     {
///         Name = "my-placement-group",
///         Type = "spread",
///         Labels =
///         {
///             { "key", "value" },
///         },
///     });
///
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///         PlacementGroupId = my_placement_group.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_placement_group, err := hcloud.NewPlacementGroup(ctx, "my-placement-group", &hcloud.PlacementGroupArgs{
/// 			Name: pulumi.String("my-placement-group"),
/// 			Type: pulumi.String("spread"),
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:             pulumi.String("node1"),
/// 			Image:            pulumi.String("debian-12"),
/// 			ServerType:       pulumi.String("cx23"),
/// 			PlacementGroupId: my_placement_group.ID(),
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
/// import com.pulumi.hcloud.PlacementGroup;
/// import com.pulumi.hcloud.PlacementGroupArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
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
///         var my_placement_group = new PlacementGroup("my-placement-group", PlacementGroupArgs.builder()
///             .name("my-placement-group")
///             .type("spread")
///             .labels(Map.of("key", "value"))
///             .build());
///
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .placementGroupId(my_placement_group.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-placement-group:
///     type: hcloud:PlacementGroup
///     properties:
///       name: my-placement-group
///       type: spread
///       labels:
///         key: value
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///       placementGroupId: ${["my-placement-group"].id}
/// ```
///
///
/// ## Import
///
/// Placement Groups can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/placementGroup:PlacementGroup example "$PLACEMENT_GROUP_ID"
/// ```
class PlacementGroup extends pulumi.CustomResource {
  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the Placement Group.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<int>> servers;

  /// Type of the Placement Group.
  late final pulumi.Output<String> type;

  /// Creates a new [PlacementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementGroup]. {@macro pulumi_index_placement_group_placement_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    servers = registerOutput<List<int>>('servers');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [PlacementGroup] resource's state with the given [name] and [id].
  static PlacementGroup get(
    String name,
    pulumi.Input<String> id, {
    PlacementGroupState? state,
  }) {
    return PlacementGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PlacementGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    servers = registerOutput<List<int>>('servers');
    type = registerOutput<String>('type');
  }
}
