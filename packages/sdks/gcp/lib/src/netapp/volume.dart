import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_backup_config.dart';
import 'volume_cache_parameters.dart';
import 'volume_export_policy.dart';
import 'volume_hybrid_replication_parameters.dart';
import 'volume_restore_parameters.dart';
import 'volume_snapshot_policy.dart';
import 'volume_state.dart';
import 'volume_tiering_policy.dart';

/// A volume is a file system container in a storage pool that stores application, database, and user data.
///
/// You can create a volume's capacity using the available capacity in the storage pool and you can define and resize the capacity without disruption to any processes.
///
/// Storage pool settings apply to the volumes contained within them automatically.
///
///
/// To get more information about Volume, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volumes/overview)
/// * [Quickstart](https://cloud.google.com/netapp/volumes/docs/get-started/quickstarts/create-volume)
///
/// ## Example Usage
///
/// ### Netapp Volume Basic
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
/// const testVolume = new gcp.netapp.Volume("test_volume", {
///     location: "us-west2",
///     name: "test-volume",
///     capacityGib: "100",
///     shareName: "test-volume",
///     storagePool: defaultStoragePool.name,
///     protocols: ["NFSV3"],
///     deletionPolicy: "DEFAULT",
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
/// test_volume = gcp.netapp.Volume("test_volume",
///     location="us-west2",
///     name="test-volume",
///     capacity_gib="100",
///     share_name="test-volume",
///     storage_pool=default_storage_pool.name,
///     protocols=["NFSV3"],
///     deletion_policy="DEFAULT")
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
///     var testVolume = new Gcp.Netapp.Volume("test_volume", new()
///     {
///         Location = "us-west2",
///         Name = "test-volume",
///         CapacityGib = "100",
///         ShareName = "test-volume",
///         StoragePool = defaultStoragePool.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///         DeletionPolicy = "DEFAULT",
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
/// 		_, err = netapp.NewVolume(ctx, "test_volume", &netapp.VolumeArgs{
/// 			Location:    pulumi.String("us-west2"),
/// 			Name:        pulumi.String("test-volume"),
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("test-volume"),
/// 			StoragePool: defaultStoragePool.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 			DeletionPolicy: pulumi.String("DEFAULT"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
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
///         var testVolume = new Volume("testVolume", VolumeArgs.builder()
///             .location("us-west2")
///             .name("test-volume")
///             .capacityGib("100")
///             .shareName("test-volume")
///             .storagePool(defaultStoragePool.name())
///             .protocols("NFSV3")
///             .deletionPolicy("DEFAULT")
///             .build());
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
///       capacityGib: '2048'
///       network: ${default.id}
///   testVolume:
///     type: gcp:netapp:Volume
///     name: test_volume
///     properties:
///       location: us-west2
///       name: test-volume
///       capacityGib: '100'
///       shareName: test-volume
///       storagePool: ${defaultStoragePool.name}
///       protocols:
///         - NFSV3
///       deletionPolicy: DEFAULT
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
/// Volume can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Volume can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default projects/{{project}}/locations/{{location}}/volumes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default {{location}}/{{name}}
/// ```
class Volume extends pulumi.CustomResource {
  /// Reports the resource name of the Active Directory policy being used. Inherited from storage pool.
  late final pulumi.Output<String> activeDirectory;

  /// Backup configuration for the volume.
  /// Structure is documented below.
  late final pulumi.Output<VolumeBackupConfig?> backupConfig;

  /// Block device represents the device(s) which are stored in the block volume.
  /// Currently, only one block device is permitted per Volume.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> blockDevices;

  /// Cache parameters for the volume.
  /// Structure is documented below.
  late final pulumi.Output<VolumeCacheParameters?> cacheParameters;

  /// Capacity of the volume (in GiB).
  late final pulumi.Output<String> capacityGib;

  /// Output only. Size of the volume cold tier data in GiB.
  late final pulumi.Output<String> coldTierSizeGib;

  /// Create time of the volume. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final pulumi.Output<String> createTime;

  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  late final pulumi.Output<String?> deletionPolicy;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Reports the data-at-rest encryption type of the volume. Inherited from storage pool.
  late final pulumi.Output<String> encryptionType;

  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  late final pulumi.Output<VolumeExportPolicy?> exportPolicy;

  /// Indicates whether the volume is part of a volume replication relationship.
  late final pulumi.Output<bool> hasReplication;

  /// Total hot tier data rounded down to the nearest GiB used by the volume. This field is only used for flex Service Level
  late final pulumi.Output<String> hotTierSizeUsedGib;

  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  late final pulumi.Output<VolumeHybridReplicationParameters?>
  hybridReplicationParameters;

  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  late final pulumi.Output<bool?> kerberosEnabled;

  /// Reports the CMEK policy resurce name being used for volume encryption. Inherited from storage pool.
  late final pulumi.Output<String> kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  late final pulumi.Output<bool?> largeCapacity;

  /// Flag indicating if the volume is NFS LDAP enabled or not. Inherited from storage pool.
  late final pulumi.Output<bool> ldapEnabled;

  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  late final pulumi.Output<String> location;

  /// Reports mount instructions for this volume.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> mountOptions;

  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  late final pulumi.Output<bool?> multipleEndpoints;

  /// The name of the volume. Needs to be unique per location.
  late final pulumi.Output<String> name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`. Inherited from storage pool.
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  late final pulumi.Output<List<String>> protocols;

  /// Name of the Private Service Access allocated range. Inherited from storage pool.
  late final pulumi.Output<String> psaRange;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Specifies the replica zone for regional volume.
  late final pulumi.Output<String> replicaZone;

  /// Used to create this volume from a snapshot (= cloning) or an backup.
  /// Structure is documented below.
  late final pulumi.Output<VolumeRestoreParameters?> restoreParameters;

  /// List of actions that are restricted on this volume.
  /// Each value may be one of: `DELETE`.
  late final pulumi.Output<List<String>?> restrictedActions;

  /// Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol.
  /// Possible values are: `NTFS`, `UNIX`.
  late final pulumi.Output<String> securityStyle;

  /// Service level of the volume. Inherited from storage pool. Supported values are : PREMIUM, EXTREME, STANDARD, FLEX.
  late final pulumi.Output<String> serviceLevel;

  /// Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  late final pulumi.Output<String?> shareName;

  /// Settings for volumes with SMB access.
  /// Each value may be one of: `ENCRYPT_DATA`, `BROWSABLE`, `CHANGE_NOTIFY`, `NON_BROWSABLE`, `OPLOCKS`, `SHOW_SNAPSHOT`, `SHOW_PREVIOUS_VERSIONS`, `ACCESS_BASED_ENUMERATION`, `CONTINUOUSLY_AVAILABLE`.
  late final pulumi.Output<List<String>> smbSettings;

  /// If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  late final pulumi.Output<bool?> snapshotDirectory;

  /// Snapshot policy defines the schedule for automatic snapshot creation.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  /// Structure is documented below.
  late final pulumi.Output<VolumeSnapshotPolicy?> snapshotPolicy;

  /// State of the volume.
  late final pulumi.Output<String> state;

  /// State details of the volume.
  late final pulumi.Output<String> stateDetails;

  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  late final pulumi.Output<String> storagePool;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  late final pulumi.Output<double> throughputMibps;

  /// Tiering policy for the volume.
  /// Structure is documented below.
  late final pulumi.Output<VolumeTieringPolicy?> tieringPolicy;

  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  late final pulumi.Output<String> unixPermissions;

  /// Used capacity of the volume (in GiB). This is computed periodically and it does not represent the realtime usage.
  late final pulumi.Output<String> usedGib;

  /// Specifies the active zone for regional volume.
  late final pulumi.Output<String> zone;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_netapp_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(String name, {VolumeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:netapp/volume:Volume',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    activeDirectory = registerOutput<String>('activeDirectory');
    backupConfig = registerOutput<VolumeBackupConfig?>('backupConfig');
    blockDevices = registerOutput<List<Map<String, dynamic>>?>('blockDevices');
    cacheParameters = registerOutput<VolumeCacheParameters?>('cacheParameters');
    capacityGib = registerOutput<String>('capacityGib');
    coldTierSizeGib = registerOutput<String>('coldTierSizeGib');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionType = registerOutput<String>('encryptionType');
    exportPolicy = registerOutput<VolumeExportPolicy?>('exportPolicy');
    hasReplication = registerOutput<bool>('hasReplication');
    hotTierSizeUsedGib = registerOutput<String>('hotTierSizeUsedGib');
    hybridReplicationParameters =
        registerOutput<VolumeHybridReplicationParameters?>(
          'hybridReplicationParameters',
        );
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    kmsConfig = registerOutput<String>('kmsConfig');
    labels = registerOutput<Map<String, String>?>('labels');
    largeCapacity = registerOutput<bool?>('largeCapacity');
    ldapEnabled = registerOutput<bool>('ldapEnabled');
    location = registerOutput<String>('location');
    mountOptions = registerOutput<List<Map<String, dynamic>>>('mountOptions');
    multipleEndpoints = registerOutput<bool?>('multipleEndpoints');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    protocols = registerOutput<List<String>>('protocols');
    psaRange = registerOutput<String>('psaRange');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaZone = registerOutput<String>('replicaZone');
    restoreParameters = registerOutput<VolumeRestoreParameters?>(
      'restoreParameters',
    );
    restrictedActions = registerOutput<List<String>?>('restrictedActions');
    securityStyle = registerOutput<String>('securityStyle');
    serviceLevel = registerOutput<String>('serviceLevel');
    shareName = registerOutput<String?>('shareName');
    smbSettings = registerOutput<List<String>>('smbSettings');
    snapshotDirectory = registerOutput<bool?>('snapshotDirectory');
    snapshotPolicy = registerOutput<VolumeSnapshotPolicy?>('snapshotPolicy');
    state = registerOutput<String>('state');
    stateDetails = registerOutput<String>('stateDetails');
    storagePool = registerOutput<String>('storagePool');
    throughputMibps = registerOutput<double>('throughputMibps');
    tieringPolicy = registerOutput<VolumeTieringPolicy?>('tieringPolicy');
    unixPermissions = registerOutput<String>('unixPermissions');
    usedGib = registerOutput<String>('usedGib');
    zone = registerOutput<String>('zone');
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
         'gcp:netapp/volume:Volume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activeDirectory = registerOutput<String>('activeDirectory');
    backupConfig = registerOutput<VolumeBackupConfig?>('backupConfig');
    blockDevices = registerOutput<List<Map<String, dynamic>>?>('blockDevices');
    cacheParameters = registerOutput<VolumeCacheParameters?>('cacheParameters');
    capacityGib = registerOutput<String>('capacityGib');
    coldTierSizeGib = registerOutput<String>('coldTierSizeGib');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    encryptionType = registerOutput<String>('encryptionType');
    exportPolicy = registerOutput<VolumeExportPolicy?>('exportPolicy');
    hasReplication = registerOutput<bool>('hasReplication');
    hotTierSizeUsedGib = registerOutput<String>('hotTierSizeUsedGib');
    hybridReplicationParameters =
        registerOutput<VolumeHybridReplicationParameters?>(
          'hybridReplicationParameters',
        );
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    kmsConfig = registerOutput<String>('kmsConfig');
    labels = registerOutput<Map<String, String>?>('labels');
    largeCapacity = registerOutput<bool?>('largeCapacity');
    ldapEnabled = registerOutput<bool>('ldapEnabled');
    location = registerOutput<String>('location');
    mountOptions = registerOutput<List<Map<String, dynamic>>>('mountOptions');
    multipleEndpoints = registerOutput<bool?>('multipleEndpoints');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    project = registerOutput<String>('project');
    protocols = registerOutput<List<String>>('protocols');
    psaRange = registerOutput<String>('psaRange');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    replicaZone = registerOutput<String>('replicaZone');
    restoreParameters = registerOutput<VolumeRestoreParameters?>(
      'restoreParameters',
    );
    restrictedActions = registerOutput<List<String>?>('restrictedActions');
    securityStyle = registerOutput<String>('securityStyle');
    serviceLevel = registerOutput<String>('serviceLevel');
    shareName = registerOutput<String?>('shareName');
    smbSettings = registerOutput<List<String>>('smbSettings');
    snapshotDirectory = registerOutput<bool?>('snapshotDirectory');
    snapshotPolicy = registerOutput<VolumeSnapshotPolicy?>('snapshotPolicy');
    this.state = registerOutput<String>('state');
    stateDetails = registerOutput<String>('stateDetails');
    storagePool = registerOutput<String>('storagePool');
    throughputMibps = registerOutput<double>('throughputMibps');
    tieringPolicy = registerOutput<VolumeTieringPolicy?>('tieringPolicy');
    unixPermissions = registerOutput<String>('unixPermissions');
    usedGib = registerOutput<String>('usedGib');
    zone = registerOutput<String>('zone');
  }
}
