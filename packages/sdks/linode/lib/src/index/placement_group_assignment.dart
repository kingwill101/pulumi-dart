import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_group_assignment_args.dart';
import 'placement_group_assignment_state.dart';

/// Manages a single assignment between a Linode and a Placement Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-group-add-linode).
///
/// To prevent update conflicts, Linodes managed through the `linode.Instance` resource should specify `placement_group_externally_managed`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {placementGroupExternallyManaged: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance", placement_group_externally_managed=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instance = new Linode.Instance("my-instance", new()
///     {
///         PlacementGroupExternallyManaged = true,
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
/// 		_, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			PlacementGroupExternallyManaged: pulumi.Bool(true),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
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
///         var my_instance = new Instance("my-instance", InstanceArgs.builder()
///             .placementGroupExternallyManaged(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-instance:
///     type: linode:Instance
///     properties:
///       placementGroupExternallyManaged: true
/// ```
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_pg = new linode.PlacementGroup("my-pg", {
///     label: "my-pg",
///     region: "us-east",
///     placementGroupType: "anti_affinity:local",
/// });
/// const my_inst = new linode.Instance("my-inst", {
///     label: "my-inst",
///     region: "us-east",
///     type: "g6-nanode-1",
///     placementGroupExternallyManaged: true,
/// });
/// const my_assignment = new linode.PlacementGroupAssignment("my-assignment", {
///     placementGroupId: my_pg.id,
///     linodeId: my_inst.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_pg = linode.PlacementGroup("my-pg",
///     label="my-pg",
///     region="us-east",
///     placement_group_type="anti_affinity:local")
/// my_inst = linode.Instance("my-inst",
///     label="my-inst",
///     region="us-east",
///     type="g6-nanode-1",
///     placement_group_externally_managed=True)
/// my_assignment = linode.PlacementGroupAssignment("my-assignment",
///     placement_group_id=my_pg.id,
///     linode_id=my_inst.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pg = new Linode.PlacementGroup("my-pg", new()
///     {
///         Label = "my-pg",
///         Region = "us-east",
///         PlacementGroupType = "anti_affinity:local",
///     });
///
///     var my_inst = new Linode.Instance("my-inst", new()
///     {
///         Label = "my-inst",
///         Region = "us-east",
///         Type = "g6-nanode-1",
///         PlacementGroupExternallyManaged = true,
///     });
///
///     var my_assignment = new Linode.PlacementGroupAssignment("my-assignment", new()
///     {
///         PlacementGroupId = my_pg.Id,
///         LinodeId = my_inst.Id,
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
/// 		my_pg, err := linode.NewPlacementGroup(ctx, "my-pg", &linode.PlacementGroupArgs{
/// 			Label:              pulumi.String("my-pg"),
/// 			Region:             pulumi.String("us-east"),
/// 			PlacementGroupType: pulumi.String("anti_affinity:local"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_inst, err := linode.NewInstance(ctx, "my-inst", &linode.InstanceArgs{
/// 			Label:                           pulumi.String("my-inst"),
/// 			Region:                          pulumi.String("us-east"),
/// 			Type:                            pulumi.String("g6-nanode-1"),
/// 			PlacementGroupExternallyManaged: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewPlacementGroupAssignment(ctx, "my-assignment", &linode.PlacementGroupAssignmentArgs{
/// 			PlacementGroupId: my_pg.ID(),
/// 			LinodeId:         my_inst.ID(),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.PlacementGroupAssignment;
/// import com.pulumi.linode.PlacementGroupAssignmentArgs;
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
///         var my_pg = new PlacementGroup("my-pg", PlacementGroupArgs.builder()
///             .label("my-pg")
///             .region("us-east")
///             .placementGroupType("anti_affinity:local")
///             .build());
///
///         var my_inst = new Instance("my-inst", InstanceArgs.builder()
///             .label("my-inst")
///             .region("us-east")
///             .type("g6-nanode-1")
///             .placementGroupExternallyManaged(true)
///             .build());
///
///         var my_assignment = new PlacementGroupAssignment("my-assignment", PlacementGroupAssignmentArgs.builder()
///             .placementGroupId(my_pg.id())
///             .linodeId(my_inst.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-assignment:
///     type: linode:PlacementGroupAssignment
///     properties:
///       placementGroupId: ${["my-pg"].id}
///       linodeId: ${["my-inst"].id}
///   my-pg:
///     type: linode:PlacementGroup
///     properties:
///       label: my-pg
///       region: us-east
///       placementGroupType: anti_affinity:local
///   my-inst:
///     type: linode:Instance
///     properties:
///       label: my-inst
///       region: us-east
///       type: g6-nanode-1
///       placementGroupExternallyManaged: true
/// ```
///
///
/// ## Import
///
/// Placement Group assignments can be imported using the Placement Group's ID followed by the Linode's ID separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/placementGroupAssignment:PlacementGroupAssignment my-assignment 1234567,7654321
/// ```
class PlacementGroupAssignment extends pulumi.CustomResource {
  late final pulumi.Output<bool?> compliantOnly;

  /// The unique ID of the Linode to assign.
  late final pulumi.Output<int> linodeId;

  /// The unique ID of the target Placement Group.
  late final pulumi.Output<int> placementGroupId;

  /// Creates a new [PlacementGroupAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlacementGroupAssignment]. {@macro pulumi_index_placement_group_assignment_placement_group_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlacementGroupAssignment(
    String name, {
    PlacementGroupAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/placementGroupAssignment:PlacementGroupAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compliantOnly = registerOutput<bool?>('compliantOnly');
    linodeId = registerOutput<int>('linodeId');
    placementGroupId = registerOutput<int>('placementGroupId');
  }

  /// Gets an existing [PlacementGroupAssignment] resource's state with the given [name] and [id].
  static PlacementGroupAssignment get(
    String name,
    pulumi.Input<String> id, {
    PlacementGroupAssignmentState? state,
  }) {
    return PlacementGroupAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PlacementGroupAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/placementGroupAssignment:PlacementGroupAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    compliantOnly = registerOutput<bool?>('compliantOnly');
    linodeId = registerOutput<int>('linodeId');
    placementGroupId = registerOutput<int>('placementGroupId');
  }
}
