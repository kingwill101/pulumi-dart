import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_attach_args.dart';
import 'volume_attach_state.dart';

/// &gt; **Note:** This resource usually requires admin privileges.
///
/// &gt; **Note:** This resource does not actually attach a volume to an instance.
/// Please use the `openstack.compute.VolumeAttach` resource for that.
///
/// &gt; **Note:** All arguments including the `data` computed attribute will be
/// stored in the raw state as plain-text. Read more about sensitive data in
/// state.
///
/// Creates a general purpose attachment connection to a Block
/// Storage volume using the OpenStack Block Storage (Cinder) v3 API.
///
/// Depending on your Block Storage service configuration, this
/// resource can assist in attaching a volume to a non-OpenStack resource
/// such as a bare-metal server or a remote virtual machine in a
/// different cloud provider.
///
/// ## Example Usage
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
/// const va1 = new openstack.blockstorage.VolumeAttach("va_1", {
///     volumeId: volume1.id,
///     device: "auto",
///     hostName: "devstack",
///     ipAddress: "192.168.255.10",
///     initiator: "iqn.1993-08.org.debian:01:e9861fb1859",
///     osType: "linux2",
///     platform: "x86_64",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// volume1 = openstack.blockstorage.Volume("volume_1",
///     name="volume_1",
///     size=1)
/// va1 = openstack.blockstorage.VolumeAttach("va_1",
///     volume_id=volume1.id,
///     device="auto",
///     host_name="devstack",
///     ip_address="192.168.255.10",
///     initiator="iqn.1993-08.org.debian:01:e9861fb1859",
///     os_type="linux2",
///     platform="x86_64")
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
///     var va1 = new OpenStack.BlockStorage.VolumeAttach("va_1", new()
///     {
///         VolumeId = volume1.Id,
///         Device = "auto",
///         HostName = "devstack",
///         IpAddress = "192.168.255.10",
///         Initiator = "iqn.1993-08.org.debian:01:e9861fb1859",
///         OsType = "linux2",
///         Platform = "x86_64",
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
/// 		volume1, err := blockstorage.NewVolume(ctx, "volume_1", &blockstorage.VolumeArgs{
/// 			Name: pulumi.String("volume_1"),
/// 			Size: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = blockstorage.NewVolumeAttach(ctx, "va_1", &blockstorage.VolumeAttachArgs{
/// 			VolumeId:  volume1.ID(),
/// 			Device:    pulumi.String("auto"),
/// 			HostName:  pulumi.String("devstack"),
/// 			IpAddress: pulumi.String("192.168.255.10"),
/// 			Initiator: pulumi.String("iqn.1993-08.org.debian:01:e9861fb1859"),
/// 			OsType:    pulumi.String("linux2"),
/// 			Platform:  pulumi.String("x86_64"),
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
/// import com.pulumi.openstack.blockstorage.VolumeAttach;
/// import com.pulumi.openstack.blockstorage.VolumeAttachArgs;
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
///         var va1 = new VolumeAttach("va1", VolumeAttachArgs.builder()
///             .volumeId(volume1.id())
///             .device("auto")
///             .hostName("devstack")
///             .ipAddress("192.168.255.10")
///             .initiator("iqn.1993-08.org.debian:01:e9861fb1859")
///             .osType("linux2")
///             .platform("x86_64")
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
///   va1:
///     type: openstack:blockstorage:VolumeAttach
///     name: va_1
///     properties:
///       volumeId: ${volume1.id}
///       device: auto
///       hostName: devstack
///       ipAddress: 192.168.255.10
///       initiator: iqn.1993-08.org.debian:01:e9861fb1859
///       osType: linux2
///       platform: x86_64
/// ```
///
///
/// ## Volume Connection Data
///
/// Upon creation of this resource, a `data` exported attribute will be available.
/// This attribute is a set of key/value pairs that contains the information
/// required to complete the block storage connection.
///
/// As an example, creating an iSCSI-based volume will return the following:
///
/// ```
/// data.access_mode = rw
/// data.auth_method = CHAP
/// data.auth_password = xUhbGKQ8QCwKmHQ2
/// data.auth_username = Sphn5X4EoyFUUMYVYSA4
/// data.target_iqn = iqn.2010-10.org.openstack:volume-2d87ed25-c312-4f42-be1d-3b36b014561d
/// data.target_portal = 192.168.255.10:3260
/// data.volume_id = 2d87ed25-c312-4f42-be1d-3b36b014561d
/// ```
///
/// This information can then be fed into a provisioner or a template shell script,
/// where the final result would look something like:
///
/// ```
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --interface default --op new
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --op update -n node.session.auth.authmethod -v ${self.data.auth_method}
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --op update -n node.session.auth.username -v ${self.data.auth_username}
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --op update -n node.session.auth.password -v ${self.data.auth_password}
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --login
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --op update -n node.startup -v automatic
/// iscsiadm -m node -T ${self.data.target_iqn} -p ${self.data.target_portal} --rescan
/// ```
///
/// The contents of `data` will vary from each Block Storage service. You must have
/// a good understanding of how the service is configured and how to make the
/// appropriate final connection. However, if used correctly, this has the
/// flexibility to be able to attach OpenStack Block Storage volumes to
/// non-OpenStack resources.
///
/// ## Import
///
/// It is not possible to import this resource.
class VolumeAttach extends pulumi.CustomResource {
  /// Specify whether to attach the volume as Read-Only
  /// (`ro`) or Read-Write (`rw`). Only values of `ro` and `rw` are accepted.
  /// If left unspecified, the Block Storage API will apply a default of `rw`.
  late final pulumi.Output<String?> attachMode;

  /// This is a map of key/value pairs that contain the connection
  /// information. You will want to pass this information to a provisioner
  /// script to finalize the connection. See below for more information.
  late final pulumi.Output<Map<String, String>> data;

  /// The device to tell the Block Storage service this
  /// volume will be attached as. This is purely for informational purposes.
  /// You can specify `auto` or a device such as `/dev/vdc`.
  late final pulumi.Output<String?> device;

  /// The storage driver that the volume is based on.
  late final pulumi.Output<String> driverVolumeType;

  /// The host to attach the volume to.
  late final pulumi.Output<String> hostName;

  /// The iSCSI initiator string to make the connection.
  late final pulumi.Output<String?> initiator;

  /// The IP address of the `host_name` above.
  late final pulumi.Output<String?> ipAddress;

  /// A mount point base name for shared storage.
  late final pulumi.Output<String> mountPointBase;

  /// Whether to connect to this volume via multipath.
  late final pulumi.Output<bool?> multipath;

  /// The iSCSI initiator OS type.
  late final pulumi.Output<String?> osType;

  /// The iSCSI initiator platform.
  late final pulumi.Output<String?> platform;

  /// The region in which to obtain the V3 Block Storage
  /// client. A Block Storage client is needed to create a volume attachment.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new volume attachment.
  late final pulumi.Output<String> region;

  /// The ID of the Volume to attach to an Instance.
  late final pulumi.Output<String> volumeId;

  /// A wwnn name. Used for Fibre Channel connections.
  late final pulumi.Output<String?> wwnn;

  /// An array of wwpn strings. Used for Fibre Channel
  /// connections.
  late final pulumi.Output<List<String>?> wwpns;

  /// Creates a new [VolumeAttach].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeAttach]. {@macro pulumi_blockstorage_volume_attach_volume_attach_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeAttach(
    String name, {
    VolumeAttachArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:blockstorage/volumeAttach:VolumeAttach',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachMode = registerOutput<String?>('attachMode');
    data = registerOutput<Map<String, String>>('data');
    device = registerOutput<String?>('device');
    driverVolumeType = registerOutput<String>('driverVolumeType');
    hostName = registerOutput<String>('hostName');
    initiator = registerOutput<String?>('initiator');
    ipAddress = registerOutput<String?>('ipAddress');
    mountPointBase = registerOutput<String>('mountPointBase');
    multipath = registerOutput<bool?>('multipath');
    osType = registerOutput<String?>('osType');
    platform = registerOutput<String?>('platform');
    region = registerOutput<String>('region');
    volumeId = registerOutput<String>('volumeId');
    wwnn = registerOutput<String?>('wwnn');
    wwpns = registerOutput<List<String>?>('wwpns');
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
         'openstack:blockstorage/volumeAttach:VolumeAttach',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attachMode = registerOutput<String?>('attachMode');
    data = registerOutput<Map<String, String>>('data');
    device = registerOutput<String?>('device');
    driverVolumeType = registerOutput<String>('driverVolumeType');
    hostName = registerOutput<String>('hostName');
    initiator = registerOutput<String?>('initiator');
    ipAddress = registerOutput<String?>('ipAddress');
    mountPointBase = registerOutput<String>('mountPointBase');
    multipath = registerOutput<bool?>('multipath');
    osType = registerOutput<String?>('osType');
    platform = registerOutput<String?>('platform');
    region = registerOutput<String>('region');
    volumeId = registerOutput<String>('volumeId');
    wwnn = registerOutput<String?>('wwnn');
    wwpns = registerOutput<List<String>?>('wwpns');
  }
}
