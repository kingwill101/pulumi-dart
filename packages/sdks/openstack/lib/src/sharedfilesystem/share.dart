import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_args.dart';
import 'share_state.dart';

/// Use this resource to configure a share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     name: "subnet_1",
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
///     networkId: network1.id,
/// });
/// const sharenetwork1 = new openstack.sharedfilesystem.ShareNetwork("sharenetwork_1", {
///     name: "test_sharenetwork",
///     description: "test share network with security services",
///     neutronNetId: network1.id,
///     neutronSubnetId: subnet1.id,
/// });
/// const share1 = new openstack.sharedfilesystem.Share("share_1", {
///     name: "nfs_share",
///     description: "test share description",
///     shareProto: "NFS",
///     size: 1,
///     shareNetworkId: sharenetwork1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     name="subnet_1",
///     cidr="192.168.199.0/24",
///     ip_version=4,
///     network_id=network1.id)
/// sharenetwork1 = openstack.sharedfilesystem.ShareNetwork("sharenetwork_1",
///     name="test_sharenetwork",
///     description="test share network with security services",
///     neutron_net_id=network1.id,
///     neutron_subnet_id=subnet1.id)
/// share1 = openstack.sharedfilesystem.Share("share_1",
///     name="nfs_share",
///     description="test share description",
///     share_proto="NFS",
///     size=1,
///     share_network_id=sharenetwork1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         Name = "subnet_1",
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///         NetworkId = network1.Id,
///     });
///
///     var sharenetwork1 = new OpenStack.SharedFileSystem.ShareNetwork("sharenetwork_1", new()
///     {
///         Name = "test_sharenetwork",
///         Description = "test share network with security services",
///         NeutronNetId = network1.Id,
///         NeutronSubnetId = subnet1.Id,
///     });
///
///     var share1 = new OpenStack.SharedFileSystem.Share("share_1", new()
///     {
///         Name = "nfs_share",
///         Description = "test share description",
///         ShareProto = "NFS",
///         Size = 1,
///         ShareNetworkId = sharenetwork1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/sharedfilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			Name:      pulumi.String("subnet_1"),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 			NetworkId: network1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sharenetwork1, err := sharedfilesystem.NewShareNetwork(ctx, "sharenetwork_1", &sharedfilesystem.ShareNetworkArgs{
/// 			Name:            pulumi.String("test_sharenetwork"),
/// 			Description:     pulumi.String("test share network with security services"),
/// 			NeutronNetId:    network1.ID(),
/// 			NeutronSubnetId: subnet1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sharedfilesystem.NewShare(ctx, "share_1", &sharedfilesystem.ShareArgs{
/// 			Name:           pulumi.String("nfs_share"),
/// 			Description:    pulumi.String("test share description"),
/// 			ShareProto:     pulumi.String("NFS"),
/// 			Size:           pulumi.Int(1),
/// 			ShareNetworkId: sharenetwork1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import com.pulumi.openstack.sharedfilesystem.ShareNetwork;
/// import com.pulumi.openstack.sharedfilesystem.ShareNetworkArgs;
/// import com.pulumi.openstack.sharedfilesystem.Share;
/// import com.pulumi.openstack.sharedfilesystem.ShareArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .name("subnet_1")
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .networkId(network1.id())
///             .build());
///
///         var sharenetwork1 = new ShareNetwork("sharenetwork1", ShareNetworkArgs.builder()
///             .name("test_sharenetwork")
///             .description("test share network with security services")
///             .neutronNetId(network1.id())
///             .neutronSubnetId(subnet1.id())
///             .build());
///
///         var share1 = new Share("share1", ShareArgs.builder()
///             .name("nfs_share")
///             .description("test share description")
///             .shareProto("NFS")
///             .size(1)
///             .shareNetworkId(sharenetwork1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       name: subnet_1
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///       networkId: ${network1.id}
///   sharenetwork1:
///     type: openstack:sharedfilesystem:ShareNetwork
///     name: sharenetwork_1
///     properties:
///       name: test_sharenetwork
///       description: test share network with security services
///       neutronNetId: ${network1.id}
///       neutronSubnetId: ${subnet1.id}
///   share1:
///     type: openstack:sharedfilesystem:Share
///     name: share_1
///     properties:
///       name: nfs_share
///       description: test share description
///       shareProto: NFS
///       size: 1
///       shareNetworkId: ${sharenetwork1.id}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the ID of the share:
///
/// ```sh
/// $ pulumi import openstack:sharedfilesystem/share:Share share_1 id
/// ```
class Share extends pulumi.CustomResource {
  /// The map of metadata, assigned on the share, which has been
  /// explicitly and implicitly added.
  late final pulumi.Output<Map<String, String>> allMetadata;
  /// The share availability zone. Changing this creates a
  /// new share.
  late final pulumi.Output<String> availabilityZone;
  /// The human-readable description for the share.
  /// Changing this updates the description of the existing share.
  late final pulumi.Output<String?> description;
  /// A list of export locations. For example, when a share server
  /// has more than one network interface, it can have multiple export locations.
  late final pulumi.Output<List<Map<String, dynamic>>> exportLocations;
  /// Indicates whether a share has replicas or not.
  late final pulumi.Output<bool> hasReplicas;
  /// The share host name.
  late final pulumi.Output<String> host;
  /// The level of visibility for the share. Set to true to make
  /// share public. Set to false to make it private. Default value is false. Changing this
  /// updates the existing share.
  late final pulumi.Output<bool?> isPublic;
  /// One or more metadata key and value pairs as a dictionary of
  /// strings.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the share. Changing this updates the name
  /// of the existing share.
  late final pulumi.Output<String> name;
  /// The owner of the Share.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Shared File System
  /// client. A Shared File System client is needed to create a share. Changing
  /// this creates a new share.
  late final pulumi.Output<String> region;
  /// The share replication type.
  late final pulumi.Output<String> replicationType;
  /// The UUID of a share network where the share server exists
  /// or will be created. If `share_network_id` is not set and you provide a `snapshot_id`,
  /// the share_network_id value from the snapshot is used. Changing this creates a new share.
  late final pulumi.Output<String> shareNetworkId;
  /// The share protocol - can either be NFS, CIFS,
  /// CEPHFS, GLUSTERFS, HDFS or MAPRFS. Changing this creates a new share.
  late final pulumi.Output<String> shareProto;
  /// The UUID of the share server.
  late final pulumi.Output<String> shareServerId;
  /// The share type name. If you omit this parameter, the default
  /// share type is used.
  late final pulumi.Output<String> shareType;
  /// The share size, in GBs. The requested share size cannot be greater
  /// than the allowed GB quota. Changing this resizes the existing share.
  late final pulumi.Output<int> size;
  /// The UUID of the share's base snapshot. Changing this creates
  /// a new share.
  late final pulumi.Output<String?> snapshotId;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_sharedfilesystem_share_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(
    String name, {
    ShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/share:Share',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    availabilityZone = registerOutput<String>('availabilityZone');
    description = registerOutput<String?>('description');
    exportLocations = registerOutput<List<Map<String, dynamic>>>('exportLocations');
    hasReplicas = registerOutput<bool>('hasReplicas');
    host = registerOutput<String>('host');
    isPublic = registerOutput<bool?>('isPublic');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    replicationType = registerOutput<String>('replicationType');
    shareNetworkId = registerOutput<String>('shareNetworkId');
    shareProto = registerOutput<String>('shareProto');
    shareServerId = registerOutput<String>('shareServerId');
    shareType = registerOutput<String>('shareType');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
  }

  /// Gets an existing [Share] resource's state with the given [name] and [id].
  static Share get(
    String name,
    pulumi.Input<String> id, {
    ShareState? state,
  }) {
    return Share._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Share._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:sharedfilesystem/share:Share',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    availabilityZone = registerOutput<String>('availabilityZone');
    description = registerOutput<String?>('description');
    exportLocations = registerOutput<List<Map<String, dynamic>>>('exportLocations');
    hasReplicas = registerOutput<bool>('hasReplicas');
    host = registerOutput<String>('host');
    isPublic = registerOutput<bool?>('isPublic');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    replicationType = registerOutput<String>('replicationType');
    shareNetworkId = registerOutput<String>('shareNetworkId');
    shareProto = registerOutput<String>('shareProto');
    shareServerId = registerOutput<String>('shareServerId');
    shareType = registerOutput<String>('shareType');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
  }
}
