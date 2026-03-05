import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_state.dart';
import 'volume_timeouts.dart';

/// Provides a Linode Volume resource.  This can be used to create, modify, and delete Linodes Block Storage Volumes.  Block Storage Volumes are removable storage disks that persist outside the life-cycle of Linode Instances. These volumes can be attached to and detached from Linode instances throughout a region.
///
/// For more information, see [How to Use Block Storage with Your Linode](https://www.linode.com/docs/platform/block-storage/how-to-use-block-storage-with-your-linode/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-volume).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a Block Storage Volume attached to a Linode Instance.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobaz = new linode.Instance("foobaz", {
///     rootPass: "3X4mp13",
///     type: "g6-nanode-1",
///     region: "us-west",
///     tags: ["foobaz"],
/// });
/// const foobar = new linode.Volume("foobar", {
///     label: "foo-volume",
///     region: foobaz.region,
///     linodeId: foobaz.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobaz = linode.Instance("foobaz",
///     root_pass="3X4mp13",
///     type="g6-nanode-1",
///     region="us-west",
///     tags=["foobaz"])
/// foobar = linode.Volume("foobar",
///     label="foo-volume",
///     region=foobaz.region,
///     linode_id=foobaz.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobaz = new Linode.Instance("foobaz", new()
///     {
///         RootPass = "3X4mp13",
///         Type = "g6-nanode-1",
///         Region = "us-west",
///         Tags = new[]
///         {
///             "foobaz",
///         },
///     });
///
///     var foobar = new Linode.Volume("foobar", new()
///     {
///         Label = "foo-volume",
///         Region = foobaz.Region,
///         LinodeId = foobaz.Id,
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
/// 		foobaz, err := linode.NewInstance(ctx, "foobaz", &linode.InstanceArgs{
/// 			RootPass: pulumi.String("3X4mp13"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			Region:   pulumi.String("us-west"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foobaz"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewVolume(ctx, "foobar", &linode.VolumeArgs{
/// 			Label:    pulumi.String("foo-volume"),
/// 			Region:   foobaz.Region,
/// 			LinodeId: foobaz.ID(),
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
/// import com.pulumi.linode.Volume;
/// import com.pulumi.linode.VolumeArgs;
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
///         var foobaz = new Instance("foobaz", InstanceArgs.builder()
///             .rootPass("3X4mp13")
///             .type("g6-nanode-1")
///             .region("us-west")
///             .tags("foobaz")
///             .build());
///
///         var foobar = new Volume("foobar", VolumeArgs.builder()
///             .label("foo-volume")
///             .region(foobaz.region())
///             .linodeId(foobaz.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobaz:
///     type: linode:Instance
///     properties:
///       rootPass: 3X4mp13
///       type: g6-nanode-1
///       region: us-west
///       tags:
///         - foobaz
///   foobar:
///     type: linode:Volume
///     properties:
///       label: foo-volume
///       region: ${foobaz.region}
///       linodeId: ${foobaz.id}
/// ```
///
///
/// Volumes can also be attached using the Linode Instance config device map.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = new linode.Instance("foo", {
///     region: "us-east",
///     type: "g6-nanode-1",
/// });
/// const fooInstanceConfig = new linode.InstanceConfig("foo", {
///     linodeId: foo.id,
///     label: "boot-existing-volume",
///     kernel: "linode/grub2",
///     devices: [{
///         deviceName: "sda",
///         volumeId: 12345,
///     }],
///     booted: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.Instance("foo",
///     region="us-east",
///     type="g6-nanode-1")
/// foo_instance_config = linode.InstanceConfig("foo",
///     linode_id=foo.id,
///     label="boot-existing-volume",
///     kernel="linode/grub2",
///     devices=[{
///         "deviceName": "sda",
///         "volumeId": 12345,
///     }],
///     booted=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Linode.Instance("foo", new()
///     {
///         Region = "us-east",
///         Type = "g6-nanode-1",
///     });
///
///     var fooInstanceConfig = new Linode.InstanceConfig("foo", new()
///     {
///         LinodeId = foo.Id,
///         Label = "boot-existing-volume",
///         Kernel = "linode/grub2",
///         Devices = new[]
///         {
///
///             {
///                 { "deviceName", "sda" },
///                 { "volumeId", 12345 },
///             },
///         },
///         Booted = true,
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
/// 		foo, err := linode.NewInstance(ctx, "foo", &linode.InstanceArgs{
/// 			Region: pulumi.String("us-east"),
/// 			Type:   pulumi.String("g6-nanode-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceConfig(ctx, "foo", &linode.InstanceConfigArgs{
/// 			LinodeId: foo.ID(),
/// 			Label:    pulumi.String("boot-existing-volume"),
/// 			Kernel:   pulumi.String("linode/grub2"),
/// 			Devices: linode.InstanceConfigDevicesArgs{
/// 				map[string]interface{}{
/// 					"deviceName": "sda",
/// 					"volumeId":   12345,
/// 				},
/// 			},
/// 			Booted: pulumi.Bool(true),
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
/// import com.pulumi.linode.InstanceConfig;
/// import com.pulumi.linode.InstanceConfigArgs;
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
///         var foo = new Instance("foo", InstanceArgs.builder()
///             .region("us-east")
///             .type("g6-nanode-1")
///             .build());
///
///         var fooInstanceConfig = new InstanceConfig("fooInstanceConfig", InstanceConfigArgs.builder()
///             .linodeId(foo.id())
///             .label("boot-existing-volume")
///             .kernel("linode/grub2")
///             .devices(InstanceConfigDevicesArgs.builder()
///                 .deviceName("sda")
///                 .volumeId(12345)
///                 .build())
///             .booted(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: linode:Instance
///     properties:
///       region: us-east
///       type: g6-nanode-1
///   fooInstanceConfig:
///     type: linode:InstanceConfig
///     name: foo
///     properties:
///       linodeId: ${foo.id}
///       label: boot-existing-volume
///       kernel: linode/grub2
///       devices:
///         - deviceName: sda
///           volumeId: 12345
///       booted: true
/// ```
///
///
/// Volumes may also be cloned from existing volumes.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.Volume("foobar", {
///     label: "my-cloned-volume",
///     sourceVolumeId: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.Volume("foobar",
///     label="my-cloned-volume",
///     source_volume_id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.Volume("foobar", new()
///     {
///         Label = "my-cloned-volume",
///         SourceVolumeId = 12345,
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
/// 		_, err := linode.NewVolume(ctx, "foobar", &linode.VolumeArgs{
/// 			Label:          pulumi.String("my-cloned-volume"),
/// 			SourceVolumeId: pulumi.Int(12345),
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
/// import com.pulumi.linode.Volume;
/// import com.pulumi.linode.VolumeArgs;
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
///         var foobar = new Volume("foobar", VolumeArgs.builder()
///             .label("my-cloned-volume")
///             .sourceVolumeId(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:Volume
///     properties:
///       label: my-cloned-volume
///       sourceVolumeId: 12345 # Region is optional when cloning a volume
/// ```
///
///
/// ## Import
///
/// Linodes Volumes can be imported using the Linode Volume `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/volume:Volume myvolume 1234567
/// ```
class Volume extends pulumi.CustomResource {
  /// Whether Block Storage Disk Encryption is enabled or disabled on this Volume.
  late final pulumi.Output<String> encryption;
  /// The full filesystem path for the Volume based on the Volume's label. The path is "/dev/disk/by-id/scsi-0Linode_Volume_" + the Volume label
  late final pulumi.Output<String> filesystemPath;
  /// The label of the Linode Volume
  late final pulumi.Output<String> label;
  /// The ID of a Linode Instance where the Volume should be attached.
  late final pulumi.Output<int> linodeId;
  /// The region where this volume will be deployed.  Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). This field is optional for cloned volumes. *Changing `region` forces the creation of a new Linode Volume.*.
  ///
  /// - - -
  late final pulumi.Output<String> region;
  /// Size of the Volume in GB.
  late final pulumi.Output<int> size;
  /// The ID of a Linode Volume to clone. NOTE: Cloned volumes must be in the same region as the source volume.
  late final pulumi.Output<int?> sourceVolumeId;
  /// The status of the Linode Volume. (`creating`, `active`, `resizing`, `contact_support`)
  late final pulumi.Output<String> status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;
  late final pulumi.Output<VolumeTimeouts?> timeouts;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    encryption = registerOutput<String>('encryption');
    filesystemPath = registerOutput<String>('filesystemPath');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int>('linodeId');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    sourceVolumeId = registerOutput<int?>('sourceVolumeId');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>>('tags');
    timeouts = registerOutput<VolumeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
          'linode:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    encryption = registerOutput<String>('encryption');
    filesystemPath = registerOutput<String>('filesystemPath');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int>('linodeId');
    region = registerOutput<String>('region');
    size = registerOutput<int>('size');
    sourceVolumeId = registerOutput<int?>('sourceVolumeId');
    status = registerOutput<String>('status');
    tags = registerOutput<List<String>>('tags');
    timeouts = registerOutput<VolumeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
