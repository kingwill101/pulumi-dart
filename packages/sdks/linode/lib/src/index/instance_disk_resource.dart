import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_disk_args.dart';
import 'instance_disk_state.dart';
import 'instance_disk_timeouts.dart';

/// Provides a Linode Instance Disk resource. This can be used to create, modify, and delete Linode Instance Disks.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-add-linode-disk).
///
/// **NOTE:** Deleting a disk will shut down the attached instance if the instance is booted. If the disk was not in use by the booted configuration profile, the instance will be automatically rebooted.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {
///     label: "my-instance",
///     type: "g6-standard-1",
///     region: "us-southeast",
/// });
/// const boot = new linode.InstanceDisk("boot", {
///     label: "boot",
///     linodeId: my_instance.id,
///     size: 512,
///     filesystem: "ext4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance",
///     label="my-instance",
///     type="g6-standard-1",
///     region="us-southeast")
/// boot = linode.InstanceDisk("boot",
///     label="boot",
///     linode_id=my_instance.id,
///     size=512,
///     filesystem="ext4")
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
///         Label = "my-instance",
///         Type = "g6-standard-1",
///         Region = "us-southeast",
///     });
///
///     var boot = new Linode.InstanceDisk("boot", new()
///     {
///         Label = "boot",
///         LinodeId = my_instance.Id,
///         Size = 512,
///         Filesystem = "ext4",
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
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-instance"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			Region: pulumi.String("us-southeast"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceDisk(ctx, "boot", &linode.InstanceDiskArgs{
/// 			Label:      pulumi.String("boot"),
/// 			LinodeId:   my_instance.ID(),
/// 			Size:       pulumi.Int(512),
/// 			Filesystem: pulumi.String("ext4"),
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
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
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
///             .label("my-instance")
///             .type("g6-standard-1")
///             .region("us-southeast")
///             .build());
///
///         var boot = new InstanceDisk("boot", InstanceDiskArgs.builder()
///             .label("boot")
///             .linodeId(my_instance.id())
///             .size(512)
///             .filesystem("ext4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   boot:
///     type: linode:InstanceDisk
///     properties:
///       label: boot
///       linodeId: ${["my-instance"].id}
///       size: 512
///       filesystem: ext4
///   my-instance:
///     type: linode:Instance
///     properties:
///       label: my-instance
///       type: g6-standard-1
///       region: us-southeast
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instance = new linode.Instance("my-instance", {
///     label: "my-instance",
///     type: "g6-standard-1",
///     region: "us-southeast",
/// });
/// const boot = new linode.InstanceDisk("boot", {
///     label: "boot",
///     linodeId: my_instance.id,
///     size: my_instance.specs.apply(specs => specs[0].disk),
///     image: "linode/ubuntu22.04",
///     rootPass: "myc00lpass!",
///     authorizedKeys: ["ssh-rsa AAAA...Gw== user@example.local"],
///     stackscriptId: 12345,
///     stackscriptData: {
///         my_var: "my_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my-instance",
///     label="my-instance",
///     type="g6-standard-1",
///     region="us-southeast")
/// boot = linode.InstanceDisk("boot",
///     label="boot",
///     linode_id=my_instance.id,
///     size=my_instance.specs[0].disk,
///     image="linode/ubuntu22.04",
///     root_pass="myc00lpass!",
///     authorized_keys=["ssh-rsa AAAA...Gw== user@example.local"],
///     stackscript_id=12345,
///     stackscript_data={
///         "my_var": "my_value",
///     })
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
///         Label = "my-instance",
///         Type = "g6-standard-1",
///         Region = "us-southeast",
///     });
///
///     var boot = new Linode.InstanceDisk("boot", new()
///     {
///         Label = "boot",
///         LinodeId = my_instance.Id,
///         Size = my_instance.Specs.Apply(specs => specs[0].Disk),
///         Image = "linode/ubuntu22.04",
///         RootPass = "myc00lpass!",
///         AuthorizedKeys = new[]
///         {
///             "ssh-rsa AAAA...Gw== user@example.local",
///         },
///         StackscriptId = 12345,
///         StackscriptData =
///         {
///             { "my_var", "my_value" },
///         },
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
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-instance"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			Region: pulumi.String("us-southeast"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceDisk(ctx, "boot", &linode.InstanceDiskArgs{
/// 			Label:    pulumi.String("boot"),
/// 			LinodeId: my_instance.ID(),
/// 			Size: pulumi.Int(my_instance.Specs.ApplyT(func(specs []linode.InstanceSpec) (*int, error) {
/// 				return &specs[0].Disk, nil
/// 			}).(pulumi.IntPtrOutput)),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			RootPass: pulumi.String("myc00lpass!"),
/// 			AuthorizedKeys: pulumi.StringArray{
/// 				pulumi.String("ssh-rsa AAAA...Gw== user@example.local"),
/// 			},
/// 			StackscriptId: pulumi.Int(12345),
/// 			StackscriptData: pulumi.StringMap{
/// 				"my_var": pulumi.String("my_value"),
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
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
///             .label("my-instance")
///             .type("g6-standard-1")
///             .region("us-southeast")
///             .build());
///
///         var boot = new InstanceDisk("boot", InstanceDiskArgs.builder()
///             .label("boot")
///             .linodeId(my_instance.id())
///             .size(my_instance.specs().applyValue(_specs -> _specs[0].disk()))
///             .image("linode/ubuntu22.04")
///             .rootPass("myc00lpass!")
///             .authorizedKeys("ssh-rsa AAAA...Gw== user@example.local")
///             .stackscriptId(12345)
///             .stackscriptData(Map.of("my_var", "my_value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   boot:
///     type: linode:InstanceDisk
///     properties:
///       label: boot
///       linodeId: ${["my-instance"].id}
///       size: ${["my-instance"].specs[0].disk}
///       image: linode/ubuntu22.04
///       rootPass: myc00lpass!
///       authorizedKeys:
///         - ssh-rsa AAAA...Gw== user@example.local
///       stackscriptId: 12345
///       stackscriptData:
///         my_var: my_value
///   my-instance:
///     type: linode:Instance
///     properties:
///       label: my-instance
///       type: g6-standard-1
///       region: us-southeast
/// ```
///
///
/// ## Import
///
/// Instance Disks can be imported using the `linode_id` followed by the Instance Disk `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/instanceDisk:InstanceDisk my-disk 1234567,7654321
/// ```
class InstanceDiskResource extends pulumi.CustomResource {
  /// A list of public SSH keys that will be automatically appended to the root user’s ~/.ssh/authorized_keys file when deploying from an Image. (Requires `image`)
  late final pulumi.Output<List<String>?> authorizedKeys;
  /// A list of usernames. If the usernames have associated SSH keys, the keys will be appended to the root user's ~/.ssh/authorized_keys file. (Requires `image`)
  late final pulumi.Output<List<String>?> authorizedUsers;
  /// When this disk was created.
  late final pulumi.Output<String> created;
  /// The disk encryption policy for this disk's parent instance. (`enabled`, `disabled`)
  late final pulumi.Output<String> diskEncryption;
  /// The filesystem of this disk. (`raw`, `swap`, `ext3`, `ext4`, `initrd`)
  late final pulumi.Output<String> filesystem;
  /// An Image ID to deploy the Linode Disk from.
  late final pulumi.Output<String?> image;
  /// The Disk's label for display purposes only.
  late final pulumi.Output<String> label;
  /// The ID of the Linode to create this Disk under.
  late final pulumi.Output<int> linodeId;
  /// The root user’s password on a newly-created Linode Disk when deploying from an Image. (Requires `image`)
  late final pulumi.Output<String?> rootPass;
  /// The size of the Disk in MB. **NOTE:** Resizing a disk will trigger a Linode reboot.
  ///
  /// - - -
  late final pulumi.Output<int> size;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Disk. Only accepted if `stackscript_id` is given. (Requires `image`)
  late final pulumi.Output<Map<String, String>?> stackscriptData;
  /// A StackScript ID that will cause the referenced StackScript to be run during deployment of this Disk. (Requires `image`)
  late final pulumi.Output<int?> stackscriptId;
  /// A brief description of this Disk's current state.
  late final pulumi.Output<String> status;
  late final pulumi.Output<InstanceDiskTimeouts?> timeouts;
  /// When this disk was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [InstanceDiskResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceDiskResource]. {@macro pulumi_index_instance_disk_instance_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceDiskResource(
    String name, {
    InstanceDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/instanceDisk:InstanceDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizedKeys = registerOutput<List<String>?>('authorizedKeys');
    this.authorizedUsers = registerOutput<List<String>?>('authorizedUsers');
    this.created = registerOutput<String>('created');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.filesystem = registerOutput<String>('filesystem');
    this.image = registerOutput<String?>('image');
    this.label = registerOutput<String>('label');
    this.linodeId = registerOutput<int>('linodeId');
    this.rootPass = registerOutput<String?>('rootPass');
    this.size = registerOutput<int>('size');
    this.stackscriptData = registerOutput<Map<String, String>?>('stackscriptData');
    this.stackscriptId = registerOutput<int?>('stackscriptId');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<InstanceDiskTimeouts?>('timeouts');
    this.updated = registerOutput<String>('updated');
  }

  /// Gets an existing [InstanceDiskResource] resource's state with the given [name] and [id].
  static InstanceDiskResource get(
    String name,
    pulumi.Input<String> id, {
    InstanceDiskState? state,
  }) {
    return InstanceDiskResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceDiskResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/instanceDisk:InstanceDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizedKeys = registerOutput<List<String>?>('authorizedKeys');
    this.authorizedUsers = registerOutput<List<String>?>('authorizedUsers');
    this.created = registerOutput<String>('created');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.filesystem = registerOutput<String>('filesystem');
    this.image = registerOutput<String?>('image');
    this.label = registerOutput<String>('label');
    this.linodeId = registerOutput<int>('linodeId');
    this.rootPass = registerOutput<String?>('rootPass');
    this.size = registerOutput<int>('size');
    this.stackscriptData = registerOutput<Map<String, String>?>('stackscriptData');
    this.stackscriptId = registerOutput<int?>('stackscriptId');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<InstanceDiskTimeouts?>('timeouts');
    this.updated = registerOutput<String>('updated');
  }
}
