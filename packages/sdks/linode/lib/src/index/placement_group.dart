import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_args.dart';
import 'placement_group_state.dart';

/// Manages a Linode Placement Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-placement-group).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const test = new linode.PlacementGroup("test", {
///     label: "my-placement-group",
///     region: "us-mia",
///     placementGroupType: "anti_affinity:local",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.PlacementGroup("test",
///     label="my-placement-group",
///     region="us-mia",
///     placement_group_type="anti_affinity:local")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Linode.PlacementGroup("test", new()
///     {
///         Label = "my-placement-group",
///         Region = "us-mia",
///         PlacementGroupType = "anti_affinity:local",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewPlacementGroup(ctx, "test", &linode.PlacementGroupArgs{
/// 			Label:              pulumi.String("my-placement-group"),
/// 			Region:             pulumi.String("us-mia"),
/// 			PlacementGroupType: pulumi.String("anti_affinity:local"),
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
/// import com.pulumi.linode.PlacementGroup;
/// import com.pulumi.linode.PlacementGroupArgs;
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
///         var test = new PlacementGroup("test", PlacementGroupArgs.builder()
///             .label("my-placement-group")
///             .region("us-mia")
///             .placementGroupType("anti_affinity:local")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: linode:PlacementGroup
///     properties:
///       label: my-placement-group
///       region: us-mia
///       placementGroupType: anti_affinity:local
/// ```
///
///
/// ## Import
///
/// Placement Groups be imported using their unique `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/placementGroup:PlacementGroup mygroup 1234567
/// ```
class PlacementGroup extends pulumi.CustomResource {
  /// Whether this Linode is currently compliant with the group's placement group type.
  late final pulumi.Output<bool> isCompliant;

  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  late final pulumi.Output<String> label;

  /// A set of Linodes currently assigned to this Placement Group.
  late final pulumi.Output<List<Map<String, dynamic>>> members;

  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  late final pulumi.Output<String> placementGroupPolicy;

  /// The placement group type to use when placing Linodes in this group.
  late final pulumi.Output<String> placementGroupType;

  /// The region of the Placement Group.
  late final pulumi.Output<String> region;

  /// Creates a new [PlacementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementGroup]. {@macro pulumi_index_placement_group_placement_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementGroup(
    String name, {
    PlacementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isCompliant = registerOutput<bool>('isCompliant');
    label = registerOutput<String>('label');
    members = registerOutput<List<Map<String, dynamic>>>('members');
    placementGroupPolicy = registerOutput<String>('placementGroupPolicy');
    placementGroupType = registerOutput<String>('placementGroupType');
    region = registerOutput<String>('region');
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
         'linode:index/placementGroup:PlacementGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    isCompliant = registerOutput<bool>('isCompliant');
    label = registerOutput<String>('label');
    members = registerOutput<List<Map<String, dynamic>>>('members');
    placementGroupPolicy = registerOutput<String>('placementGroupPolicy');
    placementGroupType = registerOutput<String>('placementGroupType');
    region = registerOutput<String>('region');
  }
}
