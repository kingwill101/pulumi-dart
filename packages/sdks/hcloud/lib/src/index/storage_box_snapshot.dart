import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_box_snapshot_args.dart';
import 'storage_box_snapshot_state.dart';

/// Provides a Hetzner Storage Box Snapshot resource.
///
/// See the [Storage Box Snapshots API documentation](https://docs.hetzner.cloud/reference/hetzner#storage-box-snapshots) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const main = new hcloud.StorageBox("main", {});
/// const backup = new hcloud.StorageBoxSnapshot("backup", {
///     storageBoxId: main.id,
///     description: "Before Tool XYZ Migration",
///     labels: {
///         env: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// main = hcloud.StorageBox("main")
/// backup = hcloud.StorageBoxSnapshot("backup",
///     storage_box_id=main.id,
///     description="Before Tool XYZ Migration",
///     labels={
///         "env": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new HCloud.StorageBox("main");
///
///     var backup = new HCloud.StorageBoxSnapshot("backup", new()
///     {
///         StorageBoxId = main.Id,
///         Description = "Before Tool XYZ Migration",
///         Labels =
///         {
///             { "env", "production" },
///         },
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
/// 		main, err := hcloud.NewStorageBox(ctx, "main", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewStorageBoxSnapshot(ctx, "backup", &hcloud.StorageBoxSnapshotArgs{
/// 			StorageBoxId: main.ID(),
/// 			Description:  pulumi.String("Before Tool XYZ Migration"),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("production"),
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
/// import com.pulumi.hcloud.StorageBox;
/// import com.pulumi.hcloud.StorageBoxSnapshot;
/// import com.pulumi.hcloud.StorageBoxSnapshotArgs;
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
///         var main = new StorageBox("main");
///
///         var backup = new StorageBoxSnapshot("backup", StorageBoxSnapshotArgs.builder()
///             .storageBoxId(main.id())
///             .description("Before Tool XYZ Migration")
///             .labels(Map.of("env", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:StorageBox
///   backup:
///     type: hcloud:StorageBoxSnapshot
///     properties:
///       storageBoxId: ${main.id}
///       description: Before Tool XYZ Migration
///       labels:
///         env: production
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/storageBoxSnapshot:StorageBoxSnapshot example "$STORAGE_BOX_ID/$STORAGE_BOX_SNAPSHOT_ID"
/// ```
class StorageBoxSnapshot extends pulumi.CustomResource {
  /// Description of the Storage Box Snapshot.
  late final pulumi.Output<String> description;

  /// Whether the Storage Box Snapshot was created automatically.
  late final pulumi.Output<bool> isAutomatic;

  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;

  /// Name of the Storage Box Snapshot.
  late final pulumi.Output<String> name;

  /// ID of the Storage Box.
  late final pulumi.Output<int> storageBoxId;

  /// Creates a new [StorageBoxSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageBoxSnapshot]. {@macro pulumi_index_storage_box_snapshot_storage_box_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageBoxSnapshot(
    String name, {
    StorageBoxSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/storageBoxSnapshot:StorageBoxSnapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    isAutomatic = registerOutput<bool>('isAutomatic');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    storageBoxId = registerOutput<int>('storageBoxId');
  }

  /// Gets an existing [StorageBoxSnapshot] resource's state with the given [name] and [id].
  static StorageBoxSnapshot get(
    String name,
    pulumi.Input<String> id, {
    StorageBoxSnapshotState? state,
  }) {
    return StorageBoxSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageBoxSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/storageBoxSnapshot:StorageBoxSnapshot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    isAutomatic = registerOutput<bool>('isAutomatic');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    storageBoxId = registerOutput<int>('storageBoxId');
  }
}
