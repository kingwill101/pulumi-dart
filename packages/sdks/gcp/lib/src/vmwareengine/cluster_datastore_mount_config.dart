// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_datastore_mount_config_datastore_network.dart';

class ClusterDatastoreMountConfig {
  /// Optional. NFS is accessed by hosts in either read or readWrite mode
  /// Default value used will be READ_WRITE
  /// Possible values:
  /// READ_ONLY
  /// READ_WRITE
  final pulumi.Input<String?>? accessMode;
  /// The resource name of the datastore to unmount.
  /// The datastore requested to be mounted should be in same region/zone as the
  /// cluster.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1/datastores/my-datastore`
  final pulumi.Input<String> datastore;
  /// The network configuration for the datastore.
  /// Structure is documented below.
  final pulumi.Input<ClusterDatastoreMountConfigDatastoreNetwork> datastoreNetwork;
  /// (Output)
  /// File share name.
  final pulumi.Input<String?>? fileShare;
  /// Optional. If set to true, the colocation requirement will be ignored.
  /// If set to false, the colocation requirement will be enforced.
  /// Colocation requirement is the requirement that the cluster must be in the
  /// same region/zone of datastore.
  final pulumi.Input<bool?>? ignoreColocation;
  /// Optional. The NFS protocol supported by the NFS volume.
  /// Default value used will be NFS_V3
  /// Possible values:
  /// NFS_V3
  final pulumi.Input<String?>? nfsVersion;
  /// (Output)
  /// Server IP addresses of the NFS volume.
  /// For NFS 3, you can only provide a single
  /// server IP address or DNS names.
  final pulumi.Input<List<String>?>? servers;

  /// Creates a new [ClusterDatastoreMountConfig].
  /// [accessMode] Optional. NFS is accessed by hosts in either read or readWrite mode
  /// [datastore] The resource name of the datastore to unmount.
  /// [datastoreNetwork] The network configuration for the datastore.
  /// [fileShare] (Output)
  /// [ignoreColocation] Optional. If set to true, the colocation requirement will be ignored.
  /// [nfsVersion] Optional. The NFS protocol supported by the NFS volume.
  /// [servers] (Output)
  const ClusterDatastoreMountConfig({
    this.accessMode,
    required this.datastore,
    required this.datastoreNetwork,
    this.fileShare,
    this.ignoreColocation,
    this.nfsVersion,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'datastore': datastore,
      'datastoreNetwork': pulumi.Input.mapInputValue<ClusterDatastoreMountConfigDatastoreNetwork, Map<String, dynamic>>(datastoreNetwork, (value) => value.toMap()),
      'fileShare': ?fileShare,
      'ignoreColocation': ?ignoreColocation,
      'nfsVersion': ?nfsVersion,
      'servers': ?servers,
    };
  }

  factory ClusterDatastoreMountConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDatastoreMountConfig(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datastore: pulumi.Input.fromValue(map['datastore'] as String),
      datastoreNetwork: pulumi.Input.fromValue(ClusterDatastoreMountConfigDatastoreNetwork.fromMap((map['datastoreNetwork']! as Map).cast<String, dynamic>())),
      fileShare: (() { final guardedValue = map['fileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreColocation: (() { final guardedValue = map['ignoreColocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsVersion: (() { final guardedValue = map['nfsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
