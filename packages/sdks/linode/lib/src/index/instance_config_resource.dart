import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_args.dart';
import 'instance_config_devices.dart';
import 'instance_config_state.dart';

/// Provides a Linode Instance Config resource. This can be used to create, modify, and delete Linode Instance Configs.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-add-linode-config).
///
/// &gt; **NOTICE:** If a VPC interface is defined in your `linode.InstanceConfig` resource and the config is currently booted with the Linode, then the Linode is required to be powered off during the update operation. The Terraform provider will try to implicitly shutdown you Linode instance during the update and restart it when it's finished. Unless you explicitly config the `booted` attribute in the resource or explicitly set `skip_implicit_reboots` to `false` in the Terraform provider config.
///
/// **NOTE:** Changes to a config that is currently booted will trigger a reboot, in order to skip this explicitly set `skip_implicit_reboots` to `true` in the Terraform provider config.
///
/// **NOTE:** Deleting a config will shut down the attached instance if the config is in use.
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
///     size: my_instance.specs.apply(specs => specs[0].disk),
///     image: "linode/ubuntu22.04",
///     rootPass: "myc00lpass!",
/// });
/// const my_config = new linode.InstanceConfig("my-config", {
///     linodeId: my_instance.id,
///     label: "my-config",
///     devices: [{
///         deviceName: "sda",
///         diskId: boot.id,
///     }],
///     booted: true,
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
///     root_pass="myc00lpass!")
/// my_config = linode.InstanceConfig("my-config",
///     linode_id=my_instance.id,
///     label="my-config",
///     devices=[{
///         "deviceName": "sda",
///         "diskId": boot.id,
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
///     });
///
///     var my_config = new Linode.InstanceConfig("my-config", new()
///     {
///         LinodeId = my_instance.Id,
///         Label = "my-config",
///         Devices = new[]
///         {
///
///             {
///                 { "deviceName", "sda" },
///                 { "diskId", boot.Id },
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
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-instance"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			Region: pulumi.String("us-southeast"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		boot, err := linode.NewInstanceDisk(ctx, "boot", &linode.InstanceDiskArgs{
/// 			Label:    pulumi.String("boot"),
/// 			LinodeId: my_instance.ID(),
/// 			Size: pulumi.Int(my_instance.Specs.ApplyT(func(specs []linode.InstanceSpec) (*int, error) {
/// 				return &specs[0].Disk, nil
/// 			}).(pulumi.IntPtrOutput)),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			RootPass: pulumi.String("myc00lpass!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceConfig(ctx, "my-config", &linode.InstanceConfigArgs{
/// 			LinodeId: my_instance.ID(),
/// 			Label:    pulumi.String("my-config"),
/// 			Devices: linode.InstanceConfigDevicesArgs{
/// 				map[string]interface{}{
/// 					"deviceName": "sda",
/// 					"diskId":     boot.ID(),
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
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
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
///             .build());
///
///         var my_config = new InstanceConfig("my-config", InstanceConfigArgs.builder()
///             .linodeId(my_instance.id())
///             .label("my-config")
///             .devices(InstanceConfigDevicesArgs.builder()
///                 .deviceName("sda")
///                 .diskId(boot.id())
///                 .build())
///             .booted(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-config:
///     type: linode:InstanceConfig
///     properties:
///       linodeId: ${["my-instance"].id}
///       label: my-config
///       devices:
///         - deviceName: sda
///           diskId: ${boot.id}
///       booted: true
///   boot:
///     type: linode:InstanceDisk
///     properties:
///       label: boot
///       linodeId: ${["my-instance"].id}
///       size: ${["my-instance"].specs[0].disk}
///       image: linode/ubuntu22.04
///       rootPass: myc00lpass!
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
/// // Create a VPC and a subnet
/// const foobar = new linode.Vpc("foobar", {
///     label: "my-vpc",
///     region: "us-mia",
///     description: "test description",
/// });
/// const foobarVpcSubnet = new linode.VpcSubnet("foobar", {
///     vpcId: foobar.id,
///     label: "my-subnet",
///     ipv4: "10.0.4.0/24",
/// });
/// const my_instance = new linode.Instance("my-instance", {
///     label: "my-instance",
///     type: "g6-standard-1",
///     region: "us-mia",
/// });
/// // Create a boot disk
/// const boot = new linode.InstanceDisk("boot", {
///     label: "boot",
///     linodeId: my_instance.id,
///     size: my_instance.specs.apply(specs => specs[0].disk - 512),
///     image: "linode/ubuntu22.04",
///     rootPass: "myc00lpass!ciuw23asxbviwuc",
/// });
/// // Create a swap disk
/// const swap = new linode.InstanceDisk("swap", {
///     label: "swap",
///     linodeId: my_instance.id,
///     size: 512,
///     filesystem: "swap",
/// });
/// const my_config = new linode.InstanceConfig("my-config", {
///     linodeId: my_instance.id,
///     label: "my-config",
///     devices: [
///         {
///             deviceName: "sda",
///             diskId: boot.id,
///         },
///         {
///             deviceName: "sdb",
///             diskId: swap.id,
///         },
///     ],
///     helpers: [{
///         updatedbDisabled: false,
///     }],
///     interfaces: [
///         {
///             purpose: "public",
///         },
///         {
///             purpose: "vlan",
///             label: "my-vlan",
///             ipamAddress: "10.0.0.2/24",
///         },
///         {
///             purpose: "vpc",
///             subnetId: foobarVpcSubnet.id,
///             ipv4: {
///                 vpc: "10.0.4.250",
///             },
///         },
///     ],
///     booted: true,
/// });
/// // Unsupported provisioner type remote-exec
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// # Create a VPC and a subnet
/// foobar = linode.Vpc("foobar",
///     label="my-vpc",
///     region="us-mia",
///     description="test description")
/// foobar_vpc_subnet = linode.VpcSubnet("foobar",
///     vpc_id=foobar.id,
///     label="my-subnet",
///     ipv4="10.0.4.0/24")
/// my_instance = linode.Instance("my-instance",
///     label="my-instance",
///     type="g6-standard-1",
///     region="us-mia")
/// # Create a boot disk
/// boot = linode.InstanceDisk("boot",
///     label="boot",
///     linode_id=my_instance.id,
///     size=my_instance.specs.apply(lambda specs: specs[0].disk - 512),
///     image="linode/ubuntu22.04",
///     root_pass="myc00lpass!ciuw23asxbviwuc")
/// # Create a swap disk
/// swap = linode.InstanceDisk("swap",
///     label="swap",
///     linode_id=my_instance.id,
///     size=512,
///     filesystem="swap")
/// my_config = linode.InstanceConfig("my-config",
///     linode_id=my_instance.id,
///     label="my-config",
///     devices=[
///         {
///             "deviceName": "sda",
///             "diskId": boot.id,
///         },
///         {
///             "deviceName": "sdb",
///             "diskId": swap.id,
///         },
///     ],
///     helpers=[{
///         "updatedb_disabled": False,
///     }],
///     interfaces=[
///         {
///             "purpose": "public",
///         },
///         {
///             "purpose": "vlan",
///             "label": "my-vlan",
///             "ipam_address": "10.0.0.2/24",
///         },
///         {
///             "purpose": "vpc",
///             "subnet_id": foobar_vpc_subnet.id,
///             "ipv4": {
///                 "vpc": "10.0.4.250",
///             },
///         },
///     ],
///     booted=True)
/// # Unsupported provisioner type remote-exec
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a VPC and a subnet
///     var foobar = new Linode.Vpc("foobar", new()
///     {
///         Label = "my-vpc",
///         Region = "us-mia",
///         Description = "test description",
///     });
///
///     var foobarVpcSubnet = new Linode.VpcSubnet("foobar", new()
///     {
///         VpcId = foobar.Id,
///         Label = "my-subnet",
///         Ipv4 = "10.0.4.0/24",
///     });
///
///     var my_instance = new Linode.Instance("my-instance", new()
///     {
///         Label = "my-instance",
///         Type = "g6-standard-1",
///         Region = "us-mia",
///     });
///
///     // Create a boot disk
///     var boot = new Linode.InstanceDisk("boot", new()
///     {
///         Label = "boot",
///         LinodeId = my_instance.Id,
///         Size = my_instance.Specs.Apply(specs => specs[0].Disk - 512),
///         Image = "linode/ubuntu22.04",
///         RootPass = "myc00lpass!ciuw23asxbviwuc",
///     });
///
///     // Create a swap disk
///     var swap = new Linode.InstanceDisk("swap", new()
///     {
///         Label = "swap",
///         LinodeId = my_instance.Id,
///         Size = 512,
///         Filesystem = "swap",
///     });
///
///     var my_config = new Linode.InstanceConfig("my-config", new()
///     {
///         LinodeId = my_instance.Id,
///         Label = "my-config",
///         Devices = new[]
///         {
///
///             {
///                 { "deviceName", "sda" },
///                 { "diskId", boot.Id },
///             },
///
///             {
///                 { "deviceName", "sdb" },
///                 { "diskId", swap.Id },
///             },
///         },
///         Helpers = new[]
///         {
///             new Linode.Inputs.InstanceConfigHelperArgs
///             {
///                 UpdatedbDisabled = false,
///             },
///         },
///         Interfaces = new[]
///         {
///             new Linode.Inputs.InstanceConfigInterfaceArgs
///             {
///                 Purpose = "public",
///             },
///             new Linode.Inputs.InstanceConfigInterfaceArgs
///             {
///                 Purpose = "vlan",
///                 Label = "my-vlan",
///                 IpamAddress = "10.0.0.2/24",
///             },
///             new Linode.Inputs.InstanceConfigInterfaceArgs
///             {
///                 Purpose = "vpc",
///                 SubnetId = foobarVpcSubnet.Id,
///                 Ipv4 = new Linode.Inputs.InstanceConfigInterfaceIpv4Args
///                 {
///                     Vpc = "10.0.4.250",
///                 },
///             },
///         },
///         Booted = true,
///     });
///
///     // Unsupported provisioner type remote-exec
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
/// 		// Create a VPC and a subnet
/// 		foobar, err := linode.NewVpc(ctx, "foobar", &linode.VpcArgs{
/// 			Label:       pulumi.String("my-vpc"),
/// 			Region:      pulumi.String("us-mia"),
/// 			Description: pulumi.String("test description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foobarVpcSubnet, err := linode.NewVpcSubnet(ctx, "foobar", &linode.VpcSubnetArgs{
/// 			VpcId: foobar.ID(),
/// 			Label: pulumi.String("my-subnet"),
/// 			Ipv4:  pulumi.String("10.0.4.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_instance, err := linode.NewInstance(ctx, "my-instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my-instance"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 			Region: pulumi.String("us-mia"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a boot disk
/// 		boot, err := linode.NewInstanceDisk(ctx, "boot", &linode.InstanceDiskArgs{
/// 			Label:    pulumi.String("boot"),
/// 			LinodeId: my_instance.ID(),
/// 			Size: pulumi.Int(my_instance.Specs.ApplyT(func(specs []linode.InstanceSpec) (float64, error) {
/// 				return float64(specs[0].Disk.ApplyT(func(__convert float64) (float64, error) {
/// 					return __convert - 512, nil
/// 				}).(pulumi.Float64Output)), nil
/// 			}).(pulumi.Float64Output)),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			RootPass: pulumi.String("myc00lpass!ciuw23asxbviwuc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a swap disk
/// 		swap, err := linode.NewInstanceDisk(ctx, "swap", &linode.InstanceDiskArgs{
/// 			Label:      pulumi.String("swap"),
/// 			LinodeId:   my_instance.ID(),
/// 			Size:       pulumi.Int(512),
/// 			Filesystem: pulumi.String("swap"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewInstanceConfig(ctx, "my-config", &linode.InstanceConfigArgs{
/// 			LinodeId: my_instance.ID(),
/// 			Label:    pulumi.String("my-config"),
/// 			Devices: linode.InstanceConfigDevicesArgs{
/// 				map[string]interface{}{
/// 					"deviceName": "sda",
/// 					"diskId":     boot.ID(),
/// 				},
/// 				map[string]interface{}{
/// 					"deviceName": "sdb",
/// 					"diskId":     swap.ID(),
/// 				},
/// 			},
/// 			Helpers: linode.InstanceConfigHelperArray{
/// 				&linode.InstanceConfigHelperArgs{
/// 					UpdatedbDisabled: pulumi.Bool(false),
/// 				},
/// 			},
/// 			Interfaces: linode.InstanceConfigInterfaceArray{
/// 				&linode.InstanceConfigInterfaceArgs{
/// 					Purpose: pulumi.String("public"),
/// 				},
/// 				&linode.InstanceConfigInterfaceArgs{
/// 					Purpose:     pulumi.String("vlan"),
/// 					Label:       pulumi.String("my-vlan"),
/// 					IpamAddress: pulumi.String("10.0.0.2/24"),
/// 				},
/// 				&linode.InstanceConfigInterfaceArgs{
/// 					Purpose:  pulumi.String("vpc"),
/// 					SubnetId: foobarVpcSubnet.ID(),
/// 					Ipv4: &linode.InstanceConfigInterfaceIpv4Args{
/// 						Vpc: pulumi.String("10.0.4.250"),
/// 					},
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
/// import com.pulumi.linode.Vpc;
/// import com.pulumi.linode.VpcArgs;
/// import com.pulumi.linode.VpcSubnet;
/// import com.pulumi.linode.VpcSubnetArgs;
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.InstanceDisk;
/// import com.pulumi.linode.InstanceDiskArgs;
/// import com.pulumi.linode.InstanceConfig;
/// import com.pulumi.linode.InstanceConfigArgs;
/// import com.pulumi.linode.inputs.InstanceConfigHelperArgs;
/// import com.pulumi.linode.inputs.InstanceConfigInterfaceArgs;
/// import com.pulumi.linode.inputs.InstanceConfigInterfaceIpv4Args;
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
///         // Create a VPC and a subnet
///         var foobar = new Vpc("foobar", VpcArgs.builder()
///             .label("my-vpc")
///             .region("us-mia")
///             .description("test description")
///             .build());
///
///         var foobarVpcSubnet = new VpcSubnet("foobarVpcSubnet", VpcSubnetArgs.builder()
///             .vpcId(foobar.id())
///             .label("my-subnet")
///             .ipv4("10.0.4.0/24")
///             .build());
///
///         var my_instance = new Instance("my-instance", InstanceArgs.builder()
///             .label("my-instance")
///             .type("g6-standard-1")
///             .region("us-mia")
///             .build());
///
///         // Create a boot disk
///         var boot = new InstanceDisk("boot", InstanceDiskArgs.builder()
///             .label("boot")
///             .linodeId(my_instance.id())
///             .size(my_instance.specs().applyValue(_specs -> _specs[0].disk() - 512))
///             .image("linode/ubuntu22.04")
///             .rootPass("myc00lpass!ciuw23asxbviwuc")
///             .build());
///
///         // Create a swap disk
///         var swap = new InstanceDisk("swap", InstanceDiskArgs.builder()
///             .label("swap")
///             .linodeId(my_instance.id())
///             .size(512)
///             .filesystem("swap")
///             .build());
///
///         var my_config = new InstanceConfig("my-config", InstanceConfigArgs.builder()
///             .linodeId(my_instance.id())
///             .label("my-config")
///             .devices(
///                 InstanceConfigDevicesArgs.builder()
///                     .deviceName("sda")
///                     .diskId(boot.id())
///                     .build(),
///                 InstanceConfigDevicesArgs.builder()
///                     .deviceName("sdb")
///                     .diskId(swap.id())
///                     .build())
///             .helpers(InstanceConfigHelperArgs.builder()
///                 .updatedbDisabled(false)
///                 .build())
///             .interfaces(
///                 InstanceConfigInterfaceArgs.builder()
///                     .purpose("public")
///                     .build(),
///                 InstanceConfigInterfaceArgs.builder()
///                     .purpose("vlan")
///                     .label("my-vlan")
///                     .ipamAddress("10.0.0.2/24")
///                     .build(),
///                 InstanceConfigInterfaceArgs.builder()
///                     .purpose("vpc")
///                     .subnetId(foobarVpcSubnet.id())
///                     .ipv4(InstanceConfigInterfaceIpv4Args.builder()
///                         .vpc("10.0.4.250")
///                         .build())
///                     .build())
///             .booted(true)
///             .build());
///
///         // Unsupported provisioner type remote-exec
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Instance Configs can be imported using the `linode_id` followed by the Instance Config `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/instanceConfig:InstanceConfig my-config 1234567,7654321
/// ```
class InstanceConfigResource extends pulumi.CustomResource {
  /// If true, the Linode will be booted into this config. If another config is booted, the Linode will be rebooted into this config. If false, the Linode will be shutdown only if it is currently booted into this config. If undefined, the config will alter the boot status of the Linode.
  late final pulumi.Output<bool> booted;

  /// Optional field for arbitrary User comments on this Config.
  ///
  /// * `devices` - (Optional) A dictionary of device disks to use as a device map in a Linode’s configuration profile.
  ///
  /// * `helpers` - (Optional) Helpers enabled when booting to this Linode Config.
  ///
  /// * `interface` - (Optional) An array of Network Interfaces to use for this Configuration Profile.
  late final pulumi.Output<String?> comments;

  /// Blocks for device disks in a Linode's configuration profile.
  late final pulumi.Output<List<Map<String, dynamic>>> device;

  /// A dictionary of device disks to use as a device map in a Linode's configuration profile.
  late final pulumi.Output<InstanceConfigDevices> devices;

  /// Helpers enabled when booting to this Linode Config.
  late final pulumi.Output<List<Map<String, dynamic>>> helpers;

  /// An array of Network Interfaces to add to this Linode's Configuration Profile.
  late final pulumi.Output<List<Map<String, dynamic>>?> interfaces;

  /// A Kernel ID to boot a Linode with. Default is `linode/latest-64bit`. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  late final pulumi.Output<String?> kernel;

  /// The Config’s label for display purposes only.
  ///
  /// - - -
  late final pulumi.Output<String> label;

  /// The ID of the Linode to create this configuration profile under.
  late final pulumi.Output<int> linodeId;

  /// The memory limit of the Config. Defaults to the total ram of the Linode.
  late final pulumi.Output<int> memoryLimit;

  /// The root device to boot. (default `/dev/sda`)
  late final pulumi.Output<String?> rootDevice;

  /// Defines the state of your Linode after booting. (`default`, `single`, `binbash`)
  late final pulumi.Output<String?> runLevel;

  /// Controls the virtualization mode. (`paravirt`, `fullvirt`)
  late final pulumi.Output<String?> virtMode;

  /// Creates a new [InstanceConfigResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceConfigResource]. {@macro pulumi_index_instance_config_instance_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceConfigResource(
    String name, {
    InstanceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/instanceConfig:InstanceConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    booted = registerOutput<bool>('booted');
    comments = registerOutput<String?>('comments');
    device = registerOutput<List<Map<String, dynamic>>>('device');
    devices = registerOutput<InstanceConfigDevices>('devices');
    helpers = registerOutput<List<Map<String, dynamic>>>('helpers');
    interfaces = registerOutput<List<Map<String, dynamic>>?>('interfaces');
    kernel = registerOutput<String?>('kernel');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int>('linodeId');
    memoryLimit = registerOutput<int>('memoryLimit');
    rootDevice = registerOutput<String?>('rootDevice');
    runLevel = registerOutput<String?>('runLevel');
    virtMode = registerOutput<String?>('virtMode');
  }

  /// Gets an existing [InstanceConfigResource] resource's state with the given [name] and [id].
  static InstanceConfigResource get(
    String name,
    pulumi.Input<String> id, {
    InstanceConfigState? state,
  }) {
    return InstanceConfigResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceConfigResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/instanceConfig:InstanceConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    booted = registerOutput<bool>('booted');
    comments = registerOutput<String?>('comments');
    device = registerOutput<List<Map<String, dynamic>>>('device');
    devices = registerOutput<InstanceConfigDevices>('devices');
    helpers = registerOutput<List<Map<String, dynamic>>>('helpers');
    interfaces = registerOutput<List<Map<String, dynamic>>?>('interfaces');
    kernel = registerOutput<String?>('kernel');
    label = registerOutput<String>('label');
    linodeId = registerOutput<int>('linodeId');
    memoryLimit = registerOutput<int>('memoryLimit');
    rootDevice = registerOutput<String?>('rootDevice');
    runLevel = registerOutput<String?>('runLevel');
    virtMode = registerOutput<String?>('virtMode');
  }
}
