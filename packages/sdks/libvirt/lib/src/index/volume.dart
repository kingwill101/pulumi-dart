import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_backing_store.dart';
import 'volume_create.dart';
import 'volume_state.dart';
import 'volume_target.dart';
import '../internal/package_registration.dart' as package_registration;

/// Storage volume within a storage pool
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as libvirt from "@pulumi/libvirt";
///
/// // Basic volume
/// const example = new libvirt.Volume("example", {
///     name: "example.qcow2",
///     pool: "default",
///     capacity: 10737418240,
///     target: {
///         format: {
///             type: "qcow2",
///         },
///     },
/// });
/// // Volume with backing store
/// const base = new libvirt.Volume("base", {
///     name: "base.qcow2",
///     pool: "default",
///     capacity: 10737418240,
///     target: {
///         format: {
///             type: "qcow2",
///         },
///     },
/// });
/// const overlay = new libvirt.Volume("overlay", {
///     name: "overlay.qcow2",
///     pool: "default",
///     capacity: 10737418240,
///     backingStore: {
///         path: base.path,
///         format: {
///             type: "qcow2",
///         },
///     },
/// });
/// // Volume from HTTP URL upload
/// const ubuntuBase = new libvirt.Volume("ubuntu_base", {
///     name: "ubuntu-22.04.qcow2",
///     pool: "default",
///     target: {
///         format: {
///             type: "qcow2",
///         },
///     },
///     create: {
///         content: {
///             url: "https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img",
///         },
///     },
/// });
/// // Volume from local file upload
/// const fromLocal = new libvirt.Volume("from_local", {
///     name: "custom-image.qcow2",
///     pool: "default",
///     target: {
///         format: {
///             type: "qcow2",
///         },
///     },
///     create: {
///         content: {
///             url: "/path/to/local/image.qcow2",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_libvirt as libvirt
///
/// # Basic volume
/// example = libvirt.Volume("example",
///     name="example.qcow2",
///     pool="default",
///     capacity=10737418240,
///     target={
///         "format": {
///             "type": "qcow2",
///         },
///     })
/// # Volume with backing store
/// base = libvirt.Volume("base",
///     name="base.qcow2",
///     pool="default",
///     capacity=10737418240,
///     target={
///         "format": {
///             "type": "qcow2",
///         },
///     })
/// overlay = libvirt.Volume("overlay",
///     name="overlay.qcow2",
///     pool="default",
///     capacity=10737418240,
///     backing_store={
///         "path": base.path,
///         "format": {
///             "type": "qcow2",
///         },
///     })
/// # Volume from HTTP URL upload
/// ubuntu_base = libvirt.Volume("ubuntu_base",
///     name="ubuntu-22.04.qcow2",
///     pool="default",
///     target={
///         "format": {
///             "type": "qcow2",
///         },
///     },
///     create={
///         "content": {
///             "url": "https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img",
///         },
///     })
/// # Volume from local file upload
/// from_local = libvirt.Volume("from_local",
///     name="custom-image.qcow2",
///     pool="default",
///     target={
///         "format": {
///             "type": "qcow2",
///         },
///     },
///     create={
///         "content": {
///             "url": "/path/to/local/image.qcow2",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Libvirt = Pulumi.Libvirt;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Basic volume
///     var example = new Libvirt.Volume("example", new()
///     {
///         Name = "example.qcow2",
///         Pool = "default",
///         Capacity = 10737418240,
///         Target = new Libvirt.Inputs.VolumeTargetArgs
///         {
///             Format = new Libvirt.Inputs.VolumeTargetFormatArgs
///             {
///                 Type = "qcow2",
///             },
///         },
///     });
///
///     // Volume with backing store
///     var @base = new Libvirt.Volume("base", new()
///     {
///         Name = "base.qcow2",
///         Pool = "default",
///         Capacity = 10737418240,
///         Target = new Libvirt.Inputs.VolumeTargetArgs
///         {
///             Format = new Libvirt.Inputs.VolumeTargetFormatArgs
///             {
///                 Type = "qcow2",
///             },
///         },
///     });
///
///     var overlay = new Libvirt.Volume("overlay", new()
///     {
///         Name = "overlay.qcow2",
///         Pool = "default",
///         Capacity = 10737418240,
///         BackingStore = new Libvirt.Inputs.VolumeBackingStoreArgs
///         {
///             Path = @base.Path,
///             Format = new Libvirt.Inputs.VolumeBackingStoreFormatArgs
///             {
///                 Type = "qcow2",
///             },
///         },
///     });
///
///     // Volume from HTTP URL upload
///     var ubuntuBase = new Libvirt.Volume("ubuntu_base", new()
///     {
///         Name = "ubuntu-22.04.qcow2",
///         Pool = "default",
///         Target = new Libvirt.Inputs.VolumeTargetArgs
///         {
///             Format = new Libvirt.Inputs.VolumeTargetFormatArgs
///             {
///                 Type = "qcow2",
///             },
///         },
///         Create = new Libvirt.Inputs.VolumeCreateArgs
///         {
///             Content = new Libvirt.Inputs.VolumeCreateContentArgs
///             {
///                 Url = "https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img",
///             },
///         },
///     });
///
///     // Volume from local file upload
///     var fromLocal = new Libvirt.Volume("from_local", new()
///     {
///         Name = "custom-image.qcow2",
///         Pool = "default",
///         Target = new Libvirt.Inputs.VolumeTargetArgs
///         {
///             Format = new Libvirt.Inputs.VolumeTargetFormatArgs
///             {
///                 Type = "qcow2",
///             },
///         },
///         Create = new Libvirt.Inputs.VolumeCreateArgs
///         {
///             Content = new Libvirt.Inputs.VolumeCreateContentArgs
///             {
///                 Url = "/path/to/local/image.qcow2",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-terraform-provider/sdks/go/libvirt/libvirt"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Basic volume
/// 		_, err := libvirt.NewVolume(ctx, "example", &libvirt.VolumeArgs{
/// 			Name:     pulumi.String("example.qcow2"),
/// 			Pool:     pulumi.String("default"),
/// 			Capacity: pulumi.Float64(10737418240),
/// 			Target: &libvirt.VolumeTargetArgs{
/// 				Format: &libvirt.VolumeTargetFormatArgs{
/// 					Type: pulumi.String("qcow2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Volume with backing store
/// 		base, err := libvirt.NewVolume(ctx, "base", &libvirt.VolumeArgs{
/// 			Name:     pulumi.String("base.qcow2"),
/// 			Pool:     pulumi.String("default"),
/// 			Capacity: pulumi.Float64(10737418240),
/// 			Target: &libvirt.VolumeTargetArgs{
/// 				Format: &libvirt.VolumeTargetFormatArgs{
/// 					Type: pulumi.String("qcow2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = libvirt.NewVolume(ctx, "overlay", &libvirt.VolumeArgs{
/// 			Name:     pulumi.String("overlay.qcow2"),
/// 			Pool:     pulumi.String("default"),
/// 			Capacity: pulumi.Float64(10737418240),
/// 			BackingStore: &libvirt.VolumeBackingStoreArgs{
/// 				Path: base.Path,
/// 				Format: &libvirt.VolumeBackingStoreFormatArgs{
/// 					Type: pulumi.String("qcow2"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Volume from HTTP URL upload
/// 		_, err = libvirt.NewVolume(ctx, "ubuntu_base", &libvirt.VolumeArgs{
/// 			Name: pulumi.String("ubuntu-22.04.qcow2"),
/// 			Pool: pulumi.String("default"),
/// 			Target: &libvirt.VolumeTargetArgs{
/// 				Format: &libvirt.VolumeTargetFormatArgs{
/// 					Type: pulumi.String("qcow2"),
/// 				},
/// 			},
/// 			Create: &libvirt.VolumeCreateArgs{
/// 				Content: &libvirt.VolumeCreateContentArgs{
/// 					Url: pulumi.String("https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Volume from local file upload
/// 		_, err = libvirt.NewVolume(ctx, "from_local", &libvirt.VolumeArgs{
/// 			Name: pulumi.String("custom-image.qcow2"),
/// 			Pool: pulumi.String("default"),
/// 			Target: &libvirt.VolumeTargetArgs{
/// 				Format: &libvirt.VolumeTargetFormatArgs{
/// 					Type: pulumi.String("qcow2"),
/// 				},
/// 			},
/// 			Create: &libvirt.VolumeCreateArgs{
/// 				Content: &libvirt.VolumeCreateContentArgs{
/// 					Url: pulumi.String("/path/to/local/image.qcow2"),
/// 				},
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
/// import com.pulumi.libvirt.Volume;
/// import com.pulumi.libvirt.VolumeArgs;
/// import com.pulumi.libvirt.inputs.VolumeTargetArgs;
/// import com.pulumi.libvirt.inputs.VolumeTargetFormatArgs;
/// import com.pulumi.libvirt.inputs.VolumeBackingStoreArgs;
/// import com.pulumi.libvirt.inputs.VolumeBackingStoreFormatArgs;
/// import com.pulumi.libvirt.inputs.VolumeCreateArgs;
/// import com.pulumi.libvirt.inputs.VolumeCreateContentArgs;
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
///         // Basic volume
///         var example = new Volume("example", VolumeArgs.builder()
///             .name("example.qcow2")
///             .pool("default")
///             .capacity(10737418240.0)
///             .target(VolumeTargetArgs.builder()
///                 .format(VolumeTargetFormatArgs.builder()
///                     .type("qcow2")
///                     .build())
///                 .build())
///             .build());
///
///         // Volume with backing store
///         var base = new Volume("base", VolumeArgs.builder()
///             .name("base.qcow2")
///             .pool("default")
///             .capacity(10737418240.0)
///             .target(VolumeTargetArgs.builder()
///                 .format(VolumeTargetFormatArgs.builder()
///                     .type("qcow2")
///                     .build())
///                 .build())
///             .build());
///
///         var overlay = new Volume("overlay", VolumeArgs.builder()
///             .name("overlay.qcow2")
///             .pool("default")
///             .capacity(10737418240.0)
///             .backingStore(VolumeBackingStoreArgs.builder()
///                 .path(base.path())
///                 .format(VolumeBackingStoreFormatArgs.builder()
///                     .type("qcow2")
///                     .build())
///                 .build())
///             .build());
///
///         // Volume from HTTP URL upload
///         var ubuntuBase = new Volume("ubuntuBase", VolumeArgs.builder()
///             .name("ubuntu-22.04.qcow2")
///             .pool("default")
///             .target(VolumeTargetArgs.builder()
///                 .format(VolumeTargetFormatArgs.builder()
///                     .type("qcow2")
///                     .build())
///                 .build())
///             .create(VolumeCreateArgs.builder()
///                 .content(VolumeCreateContentArgs.builder()
///                     .url("https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img")
///                     .build())
///                 .build())
///             .build());
///
///         // Volume from local file upload
///         var fromLocal = new Volume("fromLocal", VolumeArgs.builder()
///             .name("custom-image.qcow2")
///             .pool("default")
///             .target(VolumeTargetArgs.builder()
///                 .format(VolumeTargetFormatArgs.builder()
///                     .type("qcow2")
///                     .build())
///                 .build())
///             .create(VolumeCreateArgs.builder()
///                 .content(VolumeCreateContentArgs.builder()
///                     .url("/path/to/local/image.qcow2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Basic volume
///   example:
///     type: libvirt:Volume
///     properties:
///       name: example.qcow2
///       pool: default
///       capacity: 1.073741824e+10 # 10 GB
///       target:
///         format:
///           type: qcow2
///   # Volume with backing store
///   base:
///     type: libvirt:Volume
///     properties:
///       name: base.qcow2
///       pool: default
///       capacity: 1.073741824e+10
///       target:
///         format:
///           type: qcow2
///   overlay:
///     type: libvirt:Volume
///     properties:
///       name: overlay.qcow2
///       pool: default
///       capacity: 1.073741824e+10
///       backingStore:
///         path: ${base.path}
///         format:
///           type: qcow2
///   # Volume from HTTP URL upload
///   ubuntuBase:
///     type: libvirt:Volume
///     name: ubuntu_base
///     properties:
///       name: ubuntu-22.04.qcow2
///       pool: default
///       target:
///         format:
///           type: qcow2
///       create:
///         content:
///           url: https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img
///   # Volume from local file upload
///   fromLocal:
///     type: libvirt:Volume
///     name: from_local
///     properties:
///       name: custom-image.qcow2
///       pool: default
///       target:
///         format:
///           type: qcow2
///       create:
///         content:
///           url: /path/to/local/image.qcow2
/// ```
class Volume extends pulumi.CustomResource {
  /// Configures the total amount of space allocated for the storage volume.
  late final pulumi.Output<double> allocation;
  /// Specifies the units for the allocated space in the storage volume.
  late final pulumi.Output<String?> allocationUnit;
  /// Backing store configuration for copy-on-write volumes
  late final pulumi.Output<VolumeBackingStore?> backingStore;
  /// Volume capacity in bytes (required unless using create.content)
  late final pulumi.Output<double> capacity;
  /// Specifies the units for the total capacity in the storage volume.
  late final pulumi.Output<String?> capacityUnit;
  /// Volume creation options for initializing volume content from external sources
  late final pulumi.Output<VolumeCreate?> create;
  /// Defines a unique key identifier for the storage volume.
  late final pulumi.Output<String> key;
  /// Sets the name for the storage volume, which must be unique within the pool.
  late final pulumi.Output<String> name;
  /// Volume path on the host filesystem (same as target.path)
  late final pulumi.Output<String> path;
  /// Configures the physical size of the storage volume.
  late final pulumi.Output<double> physical;
  /// Specifies the units for the physical size in the storage volume.
  late final pulumi.Output<String?> physicalUnit;
  /// Name of the storage pool where the volume will be created
  late final pulumi.Output<String> pool;
  late final pulumi.Output<VolumeTarget?> target;
  /// Specifies the type of the storage volume, allowing for distinction of different volume types.
  late final pulumi.Output<String?> type;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    this.allocation = registerOutput<double>('allocation');
    this.allocationUnit = registerOutput<String?>('allocationUnit');
    this.backingStore = registerOutput<VolumeBackingStore?>('backingStore');
    this.capacity = registerOutput<double>('capacity');
    this.capacityUnit = registerOutput<String?>('capacityUnit');
    this.create = registerOutput<VolumeCreate?>('create');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.physical = registerOutput<double>('physical');
    this.physicalUnit = registerOutput<String?>('physicalUnit');
    this.pool = registerOutput<String>('pool');
    this.target = registerOutput<VolumeTarget?>('target');
    this.type = registerOutput<String?>('type');
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
          'libvirt:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocation = registerOutput<double>('allocation');
    this.allocationUnit = registerOutput<String?>('allocationUnit');
    this.backingStore = registerOutput<VolumeBackingStore?>('backingStore');
    this.capacity = registerOutput<double>('capacity');
    this.capacityUnit = registerOutput<String?>('capacityUnit');
    this.create = registerOutput<VolumeCreate?>('create');
    this.key = registerOutput<String>('key');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.physical = registerOutput<double>('physical');
    this.physicalUnit = registerOutput<String?>('physicalUnit');
    this.pool = registerOutput<String>('pool');
    this.target = registerOutput<VolumeTarget?>('target');
    this.type = registerOutput<String?>('type');
  }
}
