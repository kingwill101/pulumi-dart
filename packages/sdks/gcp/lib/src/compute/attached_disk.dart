import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_args.dart';
import 'attached_disk_state.dart';

/// Persistent disks can be attached to a compute instance using the `attached_disk`
/// section within the compute instance configuration.
/// However there may be situations where managing the attached disks via the compute
/// instance config isn't preferable or possible, such as attaching dynamic
/// numbers of disks using the `count` variable.
///
///
/// To get more information about attaching disks, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instances/attachDisk)
/// * How-to Guides
/// * [Adding a persistent disk](https://cloud.google.com/compute/docs/disks/add-persistent-disk)
///
/// **Note:** When using `gcp.compute.AttachedDisk` you **must** use `lifecycle.ignore_changes = ["attached_disk"]` on the `gcp.compute.Instance` resource that has the disks attached. Otherwise the two resources will fight for control of the attached disk block.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultInstance = new gcp.compute.Instance("default", {
///     name: "attached-disk-instance",
///     machineType: "e2-medium",
///     zone: "us-west1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [{
///         network: "default",
///     }],
/// });
/// const _default = new gcp.compute.AttachedDisk("default", {
///     disk: defaultGoogleComputeDisk.id,
///     instance: defaultInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_instance = gcp.compute.Instance("default",
///     name="attached-disk-instance",
///     machine_type="e2-medium",
///     zone="us-west1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[{
///         "network": "default",
///     }])
/// default = gcp.compute.AttachedDisk("default",
///     disk=default_google_compute_disk["id"],
///     instance=default_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultInstance = new Gcp.Compute.Instance("default", new()
///     {
///         Name = "attached-disk-instance",
///         MachineType = "e2-medium",
///         Zone = "us-west1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 Network = "default",
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.AttachedDisk("default", new()
///     {
///         Disk = defaultGoogleComputeDisk.Id,
///         Instance = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInstance, err := compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// 			Name:        pulumi.String("attached-disk-instance"),
/// 			MachineType: pulumi.String("e2-medium"),
/// 			Zone:        pulumi.String("us-west1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 				},
/// 			},
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewAttachedDisk(ctx, "default", &compute.AttachedDiskArgs{
/// 			Disk:     pulumi.Any(defaultGoogleComputeDisk.Id),
/// 			Instance: defaultInstance.ID(),
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
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.AttachedDisk;
/// import com.pulumi.gcp.compute.AttachedDiskArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name("attached-disk-instance")
///             .machineType("e2-medium")
///             .zone("us-west1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .network("default")
///                 .build())
///             .build());
///
///         var default_ = new AttachedDisk("default", AttachedDiskArgs.builder()
///             .disk(defaultGoogleComputeDisk.id())
///             .instance(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:AttachedDisk
///     properties:
///       disk: ${defaultGoogleComputeDisk.id}
///       instance: ${defaultInstance.id}
///   defaultInstance:
///     type: gcp:compute:Instance
///     name: default
///     properties:
///       name: attached-disk-instance
///       machineType: e2-medium
///       zone: us-west1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - network: default
/// ```
///
///
/// ## Import
///
/// Attached Disk can be imported the following ways:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{instance.name}}/{{disk.name}}`
///
/// * `{{project}}/{{zone}}/{{instance.name}}/{{disk.name}}`
///
/// When using the `pulumi import` command, Attached Disk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/attachedDisk:AttachedDisk default projects/{{project}}/zones/{{zone}}/instances/{{instance.name}}/{{disk.name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/attachedDisk:AttachedDisk default {{project}}/{{zone}}/{{instance.name}}/{{disk.name}}
/// ```
class AttachedDisk extends pulumi.CustomResource {
  /// Specifies a unique device name of your choice that is
  /// reflected into the /dev/disk/by-id/google-* tree of a Linux operating
  /// system running within the instance. This name can be used to
  /// reference the device for mounting, resizing, and so on, from within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply
  /// to this disk, in the form persistent-disks-x, where x is a number
  /// assigned by Google Compute Engine.
  late final pulumi.Output<String> deviceName;

  /// `name` or `self_link` of the disk that will be attached.
  ///
  ///
  /// - - -
  late final pulumi.Output<String> disk;

  /// `name` or `self_link` of the compute instance that the disk will be attached to.
  /// If the `self_link` is provided then `zone` and `project` are extracted from the
  /// self link. If only the name is used then `zone` and `project` must be defined
  /// as properties on the resource or provider.
  late final pulumi.Output<String> instance;

  /// The disk interface used for attaching this disk.
  ///
  /// This field is only used for specific cases, please don't specify
  /// this field without advice from Google. Not specifying the field
  /// will allow the the server to assign the correct interface.
  ///
  /// Possible values:
  /// "SCSI"
  /// "NVME"
  late final pulumi.Output<String?> interface;

  /// The mode in which to attach this disk, either READ_WRITE or
  /// READ_ONLY. If not specified, the default is to attach the disk in
  /// READ_WRITE mode.
  ///
  /// Possible values:
  /// "READ_ONLY"
  /// "READ_WRITE"
  late final pulumi.Output<String?> mode;

  /// The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// `self_link` the project defined in the link will take precedence.
  late final pulumi.Output<String> project;

  /// The zone that the referenced compute instance is located within. If `instance` is referenced by its
  /// `self_link` the zone defined in the link will take precedence.
  late final pulumi.Output<String> zone;

  /// Creates a new [AttachedDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AttachedDisk]. {@macro pulumi_compute_attached_disk_attached_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AttachedDisk(
    String name, {
    AttachedDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/attachedDisk:AttachedDisk',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deviceName = registerOutput<String>('deviceName');
    disk = registerOutput<String>('disk');
    instance = registerOutput<String>('instance');
    interface = registerOutput<String?>('interface');
    mode = registerOutput<String?>('mode');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }

  /// Gets an existing [AttachedDisk] resource's state with the given [name] and [id].
  static AttachedDisk get(
    String name,
    pulumi.Input<String> id, {
    AttachedDiskState? state,
  }) {
    return AttachedDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AttachedDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/attachedDisk:AttachedDisk',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deviceName = registerOutput<String>('deviceName');
    disk = registerOutput<String>('disk');
    instance = registerOutput<String>('instance');
    interface = registerOutput<String?>('interface');
    mode = registerOutput<String?>('mode');
    project = registerOutput<String>('project');
    zone = registerOutput<String>('zone');
  }
}
