import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attach_args.dart';
import 'volume_attach_state.dart';
import 'volume_attach_vendor_options.dart';

/// Attaches a Block Storage Volume to an Instance using the OpenStack
/// Compute (Nova) v2 API.
///
/// ## Example Usage
///
/// ### Basic attachment of a single volume to a single instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const volume1 = new openstack.blockstorage.Volume("volume_1", {
///     name: "volume_1",
///     size: 1,
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const va1 = new openstack.compute.VolumeAttach("va_1", {
///     instanceId: instance1.id,
///     volumeId: volume1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume1 = openstack.blockstorage.Volume("volume_1",
///     name="volume_1",
///     size=1)
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// va1 = openstack.compute.VolumeAttach("va_1",
///     instance_id=instance1.id,
///     volume_id=volume1.id)
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
///         Name = "volume_1",
///         Size = 1,
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var va1 = new OpenStack.Compute.VolumeAttach("va_1", new()
///     {
///         InstanceId = instance1.Id,
///         VolumeId = volume1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		volume1, err := blockstorage.NewVolume(ctx, "volume_1", &blockstorage.VolumeArgs{
/// 			Name: pulumi.String("volume_1"),
/// 			Size: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewVolumeAttach(ctx, "va_1", &compute.VolumeAttachArgs{
/// 			InstanceId: instance1.ID(),
/// 			VolumeId:   volume1.ID(),
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
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.VolumeAttach;
/// import com.pulumi.openstack.compute.VolumeAttachArgs;
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
///             .name("volume_1")
///             .size(1)
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var va1 = new VolumeAttach("va1", VolumeAttachArgs.builder()
///             .instanceId(instance1.id())
///             .volumeId(volume1.id())
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
///       name: volume_1
///       size: 1
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///   va1:
///     type: openstack:compute:VolumeAttach
///     name: va_1
///     properties:
///       instanceId: ${instance1.id}
///       volumeId: ${volume1.id}
/// ```
///
///
/// ### Attaching multiple volumes to a single instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const volumes: openstack.blockstorage.Volume[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     volumes.push(new openstack.blockstorage.Volume(`volumes-${range.value}`, {
///         name: std.format({
///             input: "vol-%02d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         size: 1,
///     }));
/// }
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const attachments: openstack.compute.VolumeAttach[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     attachments.push(new openstack.compute.VolumeAttach(`attachments-${range.value}`, {
///         instanceId: instance1.id,
///         volumeId: volumes[range.value].id,
///     }));
/// }
/// export const volumeDevices = attachments.map(__item => __item.device);
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// volumes = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     volumes.append(openstack.blockstorage.Volume(f"volumes-{range['value']}",
///         name=std.format(input="vol-%02d",
///             args=[range["value"] + 1]).result,
///         size=1))
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// attachments = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     attachments.append(openstack.compute.VolumeAttach(f"attachments-{range['value']}",
///         instance_id=instance1.id,
///         volume_id=volumes[range["value"]].id))
/// pulumi.export("volumeDevices", [__item.device for __item in attachments])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumes = new List<OpenStack.BlockStorage.Volume>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         volumes.Add(new OpenStack.BlockStorage.Volume($"volumes-{range.Value}", new()
///         {
///             Name = Std.Format.Invoke(new()
///             {
///                 Input = "vol-%02d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             Size = 1,
///         }));
///     }
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var attachments = new List<OpenStack.Compute.VolumeAttach>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         attachments.Add(new OpenStack.Compute.VolumeAttach($"attachments-{range.Value}", new()
///         {
///             InstanceId = instance1.Id,
///             VolumeId = volumes[range.Value].Id,
///         }));
///     }
///     return new Dictionary<string, object?>
///     {
///         ["volumeDevices"] = attachments.Select(__item => __item.Device).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// Input: "vol-%02d",
/// Args: []float64{
/// val0 + 1,
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var volumes []*blockstorage.Volume
/// for index := 0; index < 2; index++ {
///     key0 := index
///     _ := index
/// __res, err := blockstorage.NewVolume(ctx, fmt.Sprintf("volumes-%v", key0), &blockstorage.VolumeArgs{
/// Name: pulumi.String(invokeFormat.Result),
/// Size: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// volumes = append(volumes, __res)
/// }
/// instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// Name: pulumi.String("instance_1"),
/// SecurityGroups: pulumi.StringArray{
/// pulumi.String("default"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// var attachments []*compute.VolumeAttach
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := compute.NewVolumeAttach(ctx, fmt.Sprintf("attachments-%v", key0), &compute.VolumeAttachArgs{
/// InstanceId: instance1.ID(),
/// VolumeId: volumes[val0].ID(),
/// })
/// if err != nil {
/// return err
/// }
/// attachments = append(attachments, __res)
/// }
/// ctx.Export("volumeDevices", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:26,11-32)))
/// return nil
/// })
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.VolumeAttach;
/// import com.pulumi.openstack.compute.VolumeAttachArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         for (var i = 0; i < 2; i++) {
///             new Volume("volumes-" + i, VolumeArgs.builder()
///                 .name(StdFunctions.format(FormatArgs.builder()
///                     .input("vol-%02d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .size(1)
///                 .build());
///
///
/// }
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new VolumeAttach("attachments-" + i, VolumeAttachArgs.builder()
///                 .instanceId(instance1.id())
///                 .volumeId(volumes[range.value()].id())
///                 .build());
///
///
/// }
///         ctx.export("volumeDevices", attachments.stream().map(element -> element.device()).collect(toList()));
///     }
/// }
/// ```
///
///
/// Note that the above example will not guarantee that the volumes are attached in
/// a deterministic manner. The volumes will be attached in a seemingly random
/// order.
///
/// If you want to ensure that the volumes are attached in a given order, create
/// explicit dependencies between the volumes, such as:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const volumes: openstack.blockstorage.Volume[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     volumes.push(new openstack.blockstorage.Volume(`volumes-${range.value}`, {
///         name: std.format({
///             input: "vol-%02d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         size: 1,
///     }));
/// }
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const attach1 = new openstack.compute.VolumeAttach("attach_1", {
///     instanceId: instance1.id,
///     volumeId: volumes[0].id,
/// });
/// const attach2 = new openstack.compute.VolumeAttach("attach_2", {
///     instanceId: instance1.id,
///     volumeId: volumes[1].id,
/// }, {
///     dependsOn: [attach1],
/// });
/// export const volumeDevices = attachments.map(__item => __item.device);
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// volumes = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     volumes.append(openstack.blockstorage.Volume(f"volumes-{range['value']}",
///         name=std.format(input="vol-%02d",
///             args=[range["value"] + 1]).result,
///         size=1))
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// attach1 = openstack.compute.VolumeAttach("attach_1",
///     instance_id=instance1.id,
///     volume_id=volumes[0].id)
/// attach2 = openstack.compute.VolumeAttach("attach_2",
///     instance_id=instance1.id,
///     volume_id=volumes[1].id,
///     opts = pulumi.ResourceOptions(depends_on=[attach1]))
/// pulumi.export("volumeDevices", [__item["device"] for __item in attachments])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumes = new List<OpenStack.BlockStorage.Volume>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         volumes.Add(new OpenStack.BlockStorage.Volume($"volumes-{range.Value}", new()
///         {
///             Name = Std.Format.Invoke(new()
///             {
///                 Input = "vol-%02d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             Size = 1,
///         }));
///     }
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var attach1 = new OpenStack.Compute.VolumeAttach("attach_1", new()
///     {
///         InstanceId = instance1.Id,
///         VolumeId = volumes[0].Id,
///     });
///
///     var attach2 = new OpenStack.Compute.VolumeAttach("attach_2", new()
///     {
///         InstanceId = instance1.Id,
///         VolumeId = volumes[1].Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             attach1,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["volumeDevices"] = attachments.Select(__item => __item.Device).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// Input: "vol-%02d",
/// Args: []float64{
/// val0 + 1,
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var volumes []*blockstorage.Volume
/// for index := 0; index < 2; index++ {
///     key0 := index
///     _ := index
/// __res, err := blockstorage.NewVolume(ctx, fmt.Sprintf("volumes-%v", key0), &blockstorage.VolumeArgs{
/// Name: pulumi.String(invokeFormat.Result),
/// Size: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// volumes = append(volumes, __res)
/// }
/// instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// Name: pulumi.String("instance_1"),
/// SecurityGroups: pulumi.StringArray{
/// pulumi.String("default"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// attach1, err := compute.NewVolumeAttach(ctx, "attach_1", &compute.VolumeAttachArgs{
/// InstanceId: instance1.ID(),
/// VolumeId: volumes[0].ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewVolumeAttach(ctx, "attach_2", &compute.VolumeAttachArgs{
/// InstanceId: instance1.ID(),
/// VolumeId: volumes[1].ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// attach1,
/// }))
/// if err != nil {
/// return err
/// }
/// ctx.Export("volumeDevices", pulumi.Array(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:33,11-32)))
/// return nil
/// })
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.VolumeAttach;
/// import com.pulumi.openstack.compute.VolumeAttachArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         for (var i = 0; i < 2; i++) {
///             new Volume("volumes-" + i, VolumeArgs.builder()
///                 .name(StdFunctions.format(FormatArgs.builder()
///                     .input("vol-%02d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .size(1)
///                 .build());
///
///
/// }
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var attach1 = new VolumeAttach("attach1", VolumeAttachArgs.builder()
///             .instanceId(instance1.id())
///             .volumeId(volumes[0].id())
///             .build());
///
///         var attach2 = new VolumeAttach("attach2", VolumeAttachArgs.builder()
///             .instanceId(instance1.id())
///             .volumeId(volumes[1].id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(attach1)
///                 .build());
///
///         ctx.export("volumeDevices", attachments.stream().map(element -> element.device()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ### Using Multiattach-enabled volumes
///
/// Multiattach Volumes are dependent upon your OpenStack cloud and not all
/// clouds support multiattach. Multiattach volumes require a volume_type that has [multiattach enabled](https://docs.openstack.org/cinder/latest/admin/volume-multiattach.html#multiattach-volume-type).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const volume1 = new openstack.blockstorage.Volume("volume_1", {
///     name: "volume_1",
///     size: 1,
///     volumeType: "multiattach",
/// });
/// const instance1 = new openstack.compute.Instance("instance_1", {
///     name: "instance_1",
///     securityGroups: ["default"],
/// });
/// const instance2 = new openstack.compute.Instance("instance_2", {
///     name: "instance_2",
///     securityGroups: ["default"],
/// });
/// const va1 = new openstack.compute.VolumeAttach("va_1", {
///     instanceId: instance1.id,
///     volumeId: volume1.id,
///     multiattach: true,
/// });
/// const va2 = new openstack.compute.VolumeAttach("va_2", {
///     instanceId: instance2.id,
///     volumeId: volume1.id,
///     multiattach: true,
/// }, {
///     dependsOn: [va1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume1 = openstack.blockstorage.Volume("volume_1",
///     name="volume_1",
///     size=1,
///     volume_type="multiattach")
/// instance1 = openstack.compute.Instance("instance_1",
///     name="instance_1",
///     security_groups=["default"])
/// instance2 = openstack.compute.Instance("instance_2",
///     name="instance_2",
///     security_groups=["default"])
/// va1 = openstack.compute.VolumeAttach("va_1",
///     instance_id=instance1.id,
///     volume_id=volume1.id,
///     multiattach=True)
/// va2 = openstack.compute.VolumeAttach("va_2",
///     instance_id=instance2.id,
///     volume_id=volume1.id,
///     multiattach=True,
///     opts = pulumi.ResourceOptions(depends_on=[va1]))
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
///         Name = "volume_1",
///         Size = 1,
///         VolumeType = "multiattach",
///     });
///
///     var instance1 = new OpenStack.Compute.Instance("instance_1", new()
///     {
///         Name = "instance_1",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var instance2 = new OpenStack.Compute.Instance("instance_2", new()
///     {
///         Name = "instance_2",
///         SecurityGroups = new[]
///         {
///             "default",
///         },
///     });
///
///     var va1 = new OpenStack.Compute.VolumeAttach("va_1", new()
///     {
///         InstanceId = instance1.Id,
///         VolumeId = volume1.Id,
///         Multiattach = true,
///     });
///
///     var va2 = new OpenStack.Compute.VolumeAttach("va_2", new()
///     {
///         InstanceId = instance2.Id,
///         VolumeId = volume1.Id,
///         Multiattach = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             va1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/blockstorage"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		volume1, err := blockstorage.NewVolume(ctx, "volume_1", &blockstorage.VolumeArgs{
/// 			Name:       pulumi.String("volume_1"),
/// 			Size:       pulumi.Int(1),
/// 			VolumeType: pulumi.String("multiattach"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance1, err := compute.NewInstance(ctx, "instance_1", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_1"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance2, err := compute.NewInstance(ctx, "instance_2", &compute.InstanceArgs{
/// 			Name: pulumi.String("instance_2"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				pulumi.String("default"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		va1, err := compute.NewVolumeAttach(ctx, "va_1", &compute.VolumeAttachArgs{
/// 			InstanceId:  instance1.ID(),
/// 			VolumeId:    volume1.ID(),
/// 			Multiattach: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewVolumeAttach(ctx, "va_2", &compute.VolumeAttachArgs{
/// 			InstanceId:  instance2.ID(),
/// 			VolumeId:    volume1.ID(),
/// 			Multiattach: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			va1,
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
/// import com.pulumi.openstack.blockstorage.Volume;
/// import com.pulumi.openstack.blockstorage.VolumeArgs;
/// import com.pulumi.openstack.compute.Instance;
/// import com.pulumi.openstack.compute.InstanceArgs;
/// import com.pulumi.openstack.compute.VolumeAttach;
/// import com.pulumi.openstack.compute.VolumeAttachArgs;
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
///         var volume1 = new Volume("volume1", VolumeArgs.builder()
///             .name("volume_1")
///             .size(1)
///             .volumeType("multiattach")
///             .build());
///
///         var instance1 = new Instance("instance1", InstanceArgs.builder()
///             .name("instance_1")
///             .securityGroups("default")
///             .build());
///
///         var instance2 = new Instance("instance2", InstanceArgs.builder()
///             .name("instance_2")
///             .securityGroups("default")
///             .build());
///
///         var va1 = new VolumeAttach("va1", VolumeAttachArgs.builder()
///             .instanceId(instance1.id())
///             .volumeId(volume1.id())
///             .multiattach(true)
///             .build());
///
///         var va2 = new VolumeAttach("va2", VolumeAttachArgs.builder()
///             .instanceId(instance2.id())
///             .volumeId(volume1.id())
///             .multiattach(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(va1)
///                 .build());
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
///       name: volume_1
///       size: 1
///       volumeType: multiattach
///   instance1:
///     type: openstack:compute:Instance
///     name: instance_1
///     properties:
///       name: instance_1
///       securityGroups:
///         - default
///   instance2:
///     type: openstack:compute:Instance
///     name: instance_2
///     properties:
///       name: instance_2
///       securityGroups:
///         - default
///   va1:
///     type: openstack:compute:VolumeAttach
///     name: va_1
///     properties:
///       instanceId: ${instance1.id}
///       volumeId: ${volume1.id}
///       multiattach: true
///   va2:
///     type: openstack:compute:VolumeAttach
///     name: va_2
///     properties:
///       instanceId: ${instance2.id}
///       volumeId: ${volume1.id}
///       multiattach: true
///     options:
///       dependsOn:
///         - ${va1}
/// ```
///
///
/// It is recommended to use `depends_on` for the attach resources
/// to enforce the volume attachments to happen one at a time.
///
/// ## Import
///
/// Volume Attachments can be imported using the Instance ID and Volume ID
/// separated by a slash, e.g.
///
/// ```sh
/// $ pulumi import openstack:compute/volumeAttach:VolumeAttach va_1 89c60255-9bd6-460c-822a-e2b959ede9d2/45670584-225f-46c3-b33e-6707b589b666
/// ```
class VolumeAttach extends pulumi.CustomResource {
  late final pulumi.Output<String> device;
  /// The ID of the Instance to attach the Volume to.
  late final pulumi.Output<String> instanceId;
  /// Enable attachment of multiattach-capable volumes.
  late final pulumi.Output<bool?> multiattach;
  /// The region in which to obtain the V2 Compute client.
  /// A Compute client is needed to create a volume attachment. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a
  /// new volume attachment.
  late final pulumi.Output<String> region;
  /// Add a device role tag that is applied to the volume when
  /// attaching it to the VM. Changing this creates a new volume attachment with
  /// the new tag. Requires microversion &gt;= 2.49.
  late final pulumi.Output<String?> tag;
  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  late final pulumi.Output<VolumeAttachVendorOptions?> vendorOptions;
  /// The ID of the Volume to attach to an Instance.
  late final pulumi.Output<String> volumeId;

  /// Creates a new [VolumeAttach].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttach]. {@macro pulumi_compute_volume_attach_volume_attach_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttach(
    String name, {
    VolumeAttachArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/volumeAttach:VolumeAttach',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    device = registerOutput<String>('device');
    instanceId = registerOutput<String>('instanceId');
    multiattach = registerOutput<bool?>('multiattach');
    region = registerOutput<String>('region');
    tag = registerOutput<String?>('tag');
    vendorOptions = registerOutput<VolumeAttachVendorOptions?>('vendorOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachVendorOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    volumeId = registerOutput<String>('volumeId');
  }

  /// Gets an existing [VolumeAttach] resource's state with the given [name] and [id].
  static VolumeAttach get(
    String name,
    pulumi.Input<String> id, {
    VolumeAttachState? state,
  }) {
    return VolumeAttach._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VolumeAttach._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:compute/volumeAttach:VolumeAttach',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    device = registerOutput<String>('device');
    instanceId = registerOutput<String>('instanceId');
    multiattach = registerOutput<bool?>('multiattach');
    region = registerOutput<String>('region');
    tag = registerOutput<String?>('tag');
    vendorOptions = registerOutput<VolumeAttachVendorOptions?>('vendorOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeAttachVendorOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    volumeId = registerOutput<String>('volumeId');
  }
}
