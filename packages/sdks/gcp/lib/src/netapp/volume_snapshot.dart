import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_snapshot_args.dart';
import 'volume_snapshot_state.dart';

/// NetApp Volumes helps you manage your data usage with snapshots that can quickly restore lost data.
/// Snapshots are point-in-time versions of your volume's content. They are resources of volumes and are
/// instant captures of your data that consume space only for modified data. Because data changes over
/// time, snapshots usually consume more space as they get older.
/// NetApp Volumes volumes use just-in-time copy-on-write so that unmodified files in snapshots don't
/// consume any of the volume's capacity.
///
///
/// To get more information about VolumeSnapshot, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes.snapshots)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volume-snapshots/overview)
///
/// ## Example Usage
///
/// ### Volume Snapshot Create
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "test-network",
/// });
/// const defaultStoragePool = new gcp.netapp.StoragePool("default", {
///     name: "test-pool",
///     location: "us-west2",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: _default.then(_default => _default.id),
/// });
/// const defaultVolume = new gcp.netapp.Volume("default", {
///     location: defaultStoragePool.location,
///     name: "test-volume",
///     capacityGib: "100",
///     shareName: "test-volume",
///     storagePool: defaultStoragePool.name,
///     protocols: ["NFSV3"],
/// });
/// const testSnapshot = new gcp.netapp.VolumeSnapshot("test_snapshot", {
///     location: defaultVolume.location,
///     volumeName: defaultVolume.name,
///     name: "testvolumesnap",
/// }, {
///     dependsOn: [defaultVolume],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="test-network")
/// default_storage_pool = gcp.netapp.StoragePool("default",
///     name="test-pool",
///     location="us-west2",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=default.id)
/// default_volume = gcp.netapp.Volume("default",
///     location=default_storage_pool.location,
///     name="test-volume",
///     capacity_gib="100",
///     share_name="test-volume",
///     storage_pool=default_storage_pool.name,
///     protocols=["NFSV3"])
/// test_snapshot = gcp.netapp.VolumeSnapshot("test_snapshot",
///     location=default_volume.location,
///     volume_name=default_volume.name,
///     name="testvolumesnap",
///     opts = pulumi.ResourceOptions(depends_on=[default_volume]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "test-network",
///     });
///
///     var defaultStoragePool = new Gcp.Netapp.StoragePool("default", new()
///     {
///         Name = "test-pool",
///         Location = "us-west2",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///     });
///
///     var defaultVolume = new Gcp.Netapp.Volume("default", new()
///     {
///         Location = defaultStoragePool.Location,
///         Name = "test-volume",
///         CapacityGib = "100",
///         ShareName = "test-volume",
///         StoragePool = defaultStoragePool.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///     });
///
///     var testSnapshot = new Gcp.Netapp.VolumeSnapshot("test_snapshot", new()
///     {
///         Location = defaultVolume.Location,
///         VolumeName = defaultVolume.Name,
///         Name = "testvolumesnap",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultVolume,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: "test-network",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStoragePool, err := netapp.NewStoragePool(ctx, "default", &netapp.StoragePoolArgs{
/// 			Name:         pulumi.String("test-pool"),
/// 			Location:     pulumi.String("us-west2"),
/// 			ServiceLevel: pulumi.String("PREMIUM"),
/// 			CapacityGib:  pulumi.String("2048"),
/// 			Network:      pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVolume, err := netapp.NewVolume(ctx, "default", &netapp.VolumeArgs{
/// 			Location:    defaultStoragePool.Location,
/// 			Name:        pulumi.String("test-volume"),
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("test-volume"),
/// 			StoragePool: defaultStoragePool.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewVolumeSnapshot(ctx, "test_snapshot", &netapp.VolumeSnapshotArgs{
/// 			Location:   defaultVolume.Location,
/// 			VolumeName: defaultVolume.Name,
/// 			Name:       pulumi.String("testvolumesnap"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultVolume,
/// 		}))
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.netapp.VolumeSnapshot;
/// import com.pulumi.gcp.netapp.VolumeSnapshotArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("test-network")
///             .build());
///
///         var defaultStoragePool = new StoragePool("defaultStoragePool", StoragePoolArgs.builder()
///             .name("test-pool")
///             .location("us-west2")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(default_.id())
///             .build());
///
///         var defaultVolume = new Volume("defaultVolume", VolumeArgs.builder()
///             .location(defaultStoragePool.location())
///             .name("test-volume")
///             .capacityGib("100")
///             .shareName("test-volume")
///             .storagePool(defaultStoragePool.name())
///             .protocols("NFSV3")
///             .build());
///
///         var testSnapshot = new VolumeSnapshot("testSnapshot", VolumeSnapshotArgs.builder()
///             .location(defaultVolume.location())
///             .volumeName(defaultVolume.name())
///             .name("testvolumesnap")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultVolume)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultStoragePool:
///     type: gcp:netapp:StoragePool
///     name: default
///     properties:
///       name: test-pool
///       location: us-west2
///       serviceLevel: PREMIUM
///       capacityGib: 2048
///       network: ${default.id}
///   defaultVolume:
///     type: gcp:netapp:Volume
///     name: default
///     properties:
///       location: ${defaultStoragePool.location}
///       name: test-volume
///       capacityGib: 100
///       shareName: test-volume
///       storagePool: ${defaultStoragePool.name}
///       protocols:
///         - NFSV3
///   testSnapshot:
///     type: gcp:netapp:VolumeSnapshot
///     name: test_snapshot
///     properties:
///       location: ${defaultVolume.location}
///       volumeName: ${defaultVolume.name}
///       name: testvolumesnap
///     options:
///       dependsOn:
///         - ${defaultVolume}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: test-network
/// ```
///
///
/// ## Import
///
/// VolumeSnapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/snapshots/{{name}}`
///
/// * `{{project}}/{{location}}/{{volume_name}}/{{name}}`
///
/// * `{{location}}/{{volume_name}}/{{name}}`
///
/// When using the `pulumi import` command, VolumeSnapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default projects/{{project}}/locations/{{location}}/volumes/{{volume_name}}/snapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default {{project}}/{{location}}/{{volume_name}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volumeSnapshot:VolumeSnapshot default {{location}}/{{volume_name}}/{{name}}
/// ```
class VolumeSnapshot extends pulumi.CustomResource {
  /// Description for the snapshot.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the snapshot location. Snapshots are child resources of volumes and live in the same location.
  late final pulumi.Output<String> location;
  /// The name of the snapshot.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Storage used to store blocks unique to this snapshot.
  late final pulumi.Output<int> usedBytes;
  /// The name of the volume to create the snapshot in.
  late final pulumi.Output<String> volumeName;

  /// Creates a new [VolumeSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeSnapshot]. {@macro pulumi_netapp_volume_snapshot_volume_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeSnapshot(
    String name, {
    VolumeSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeSnapshot:VolumeSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    usedBytes = registerOutput<int>('usedBytes');
    volumeName = registerOutput<String>('volumeName');
  }

  /// Gets an existing [VolumeSnapshot] resource's state with the given [name] and [id].
  static VolumeSnapshot get(
    String name,
    pulumi.Input<String> id, {
    VolumeSnapshotState? state,
  }) {
    return VolumeSnapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeSnapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volumeSnapshot:VolumeSnapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    usedBytes = registerOutput<int>('usedBytes');
    volumeName = registerOutput<String>('volumeName');
  }
}
