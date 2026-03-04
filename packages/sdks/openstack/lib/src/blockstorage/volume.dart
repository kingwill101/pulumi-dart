import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_state.dart';

/// Manages a V3 volume resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const volume1 = new openstack.blockstorage.Volume("volume_1", {
///     region: "RegionOne",
///     name: "volume_1",
///     description: "first test volume",
///     size: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume1 = openstack.blockstorage.Volume("volume_1",
///     region="RegionOne",
///     name="volume_1",
///     description="first test volume",
///     size=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume1 = new OpenStack.BlockStorage.Volume("volume_1", new()
///     {
///         Region = "RegionOne",
///         Name = "volume_1",
///         Description = "first test volume",
///         Size = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blockstorage.NewVolume(ctx, "volume_1", &blockstorage.VolumeArgs{
/// 			Region:      pulumi.String("RegionOne"),
/// 			Name:        pulumi.String("volume_1"),
/// 			Description: pulumi.String("first test volume"),
/// 			Size:        pulumi.Int(3),
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
/// import com.pulumi.openstack.blockstorage.Volume;
/// import com.pulumi.openstack.blockstorage.VolumeArgs;
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
///         var volume1 = new Volume("volume1", VolumeArgs.builder()
///             .region("RegionOne")
///             .name("volume_1")
///             .description("first test volume")
///             .size(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   volume1:
///     type: openstack:blockstorage:Volume
///     name: volume_1
///     properties:
///       region: RegionOne
///       name: volume_1
///       description: first test volume
///       size: 3
/// ```
///
///
/// ## Import
///
/// Volumes can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:blockstorage/volume:Volume volume_1 ea257959-eeb1-4c10-8d33-26f0409a755d
/// ```
class Volume extends pulumi.CustomResource {
  /// If a volume is attached to an instance, this attribute will
  /// display the Attachment ID, Instance ID, and the Device as the Instance
  /// sees it.
  late final pulumi.Output<List<Map<String, dynamic>>> attachments;

  /// The availability zone for the volume.
  /// Changing this creates a new volume.
  late final pulumi.Output<String> availabilityZone;

  /// The backup ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `source_vol_id`, `image_id`. Changing this
  /// creates a new volume. Requires microversion &gt;= 3.47.
  late final pulumi.Output<String?> backupId;

  /// The consistency group to place the volume
  /// in.
  late final pulumi.Output<String?> consistencyGroupId;

  /// A description of the volume. Changing this updates
  /// the volume's description.
  late final pulumi.Output<String?> description;

  /// When this option is set it allows extending
  /// attached volumes. Note: updating size of an attached volume requires Cinder
  /// support for version 3.42 and a compatible storage driver.
  late final pulumi.Output<bool?> enableOnlineResize;

  /// The image ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `source_vol_id`, `backup_id`. Changing this
  /// creates a new volume.
  late final pulumi.Output<String?> imageId;

  /// Metadata key/value pairs to associate with the volume.
  /// Changing this updates the existing volume metadata.
  late final pulumi.Output<Map<String, String>> metadata;

  /// A unique name for the volume. Changing this updates the
  /// volume's name.
  late final pulumi.Output<String> name;

  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new volume.
  late final pulumi.Output<String> region;

  /// Provide the Cinder scheduler with hints on where
  /// to instantiate a volume in the OpenStack cloud. The available hints are described below.
  late final pulumi.Output<List<Map<String, dynamic>>?> schedulerHints;

  /// The size of the volume to create (in gigabytes).
  late final pulumi.Output<int> size;

  /// The snapshot ID from which to create the volume.
  /// Conflicts with `source_vol_id`, `image_id`, `backup_id`. Changing this
  /// creates a new volume.
  late final pulumi.Output<String?> snapshotId;

  /// The volume ID to replicate with.
  late final pulumi.Output<String?> sourceReplica;

  /// The volume ID from which to create the volume.
  /// Conflicts with `snapshot_id`, `image_id`, `backup_id`. Changing this
  /// creates a new volume.
  late final pulumi.Output<String?> sourceVolId;

  /// Migration policy when changing `volume_type`.
  /// `"never"` *(default)* prevents migration to another storage backend, while `"on-demand"`
  /// allows migration if needed. Applicable only when updating `volume_type`.
  late final pulumi.Output<String?> volumeRetypePolicy;

  /// The type of volume to create or update.
  /// Changing this will attempt an in-place retype operation; migration depends on `volume_retype_policy`.
  late final pulumi.Output<String> volumeType;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_blockstorage_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(String name, {VolumeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'openstack:blockstorage/volume:Volume',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    attachments = registerOutput<List<Map<String, dynamic>>>('attachments');
    availabilityZone = registerOutput<String>('availabilityZone');
    backupId = registerOutput<String?>('backupId');
    consistencyGroupId = registerOutput<String?>('consistencyGroupId');
    description = registerOutput<String?>('description');
    enableOnlineResize = registerOutput<bool?>('enableOnlineResize');
    imageId = registerOutput<String?>('imageId');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schedulerHints = registerOutput<List<Map<String, dynamic>>?>(
      'schedulerHints',
    );
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    sourceReplica = registerOutput<String?>('sourceReplica');
    sourceVolId = registerOutput<String?>('sourceVolId');
    volumeRetypePolicy = registerOutput<String?>('volumeRetypePolicy');
    volumeType = registerOutput<String>('volumeType');
  }

  /// Gets an existing [Volume] resource's state with the given [name] and [id].
  static Volume get(
    String name,
    pulumi.Input<String> id, {
    VolumeState? state,
  }) {
    return Volume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Volume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:blockstorage/volume:Volume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachments = registerOutput<List<Map<String, dynamic>>>('attachments');
    availabilityZone = registerOutput<String>('availabilityZone');
    backupId = registerOutput<String?>('backupId');
    consistencyGroupId = registerOutput<String?>('consistencyGroupId');
    description = registerOutput<String?>('description');
    enableOnlineResize = registerOutput<bool?>('enableOnlineResize');
    imageId = registerOutput<String?>('imageId');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    schedulerHints = registerOutput<List<Map<String, dynamic>>?>(
      'schedulerHints',
    );
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    sourceReplica = registerOutput<String?>('sourceReplica');
    sourceVolId = registerOutput<String?>('sourceVolId');
    volumeRetypePolicy = registerOutput<String?>('volumeRetypePolicy');
    volumeType = registerOutput<String>('volumeType');
  }
}
