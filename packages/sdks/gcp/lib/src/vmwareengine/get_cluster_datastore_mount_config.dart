// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_datastore_mount_config_datastore_network.dart';

class GetClusterDatastoreMountConfig {
  /// Optional. NFS is accessed by hosts in either read or readWrite mode
  /// Default value used will be READ_WRITE
  /// Possible values:
  /// READ_ONLY
  /// READ_WRITE
  final pulumi.Input<String> accessMode;
  /// The resource name of the datastore to unmount.
  /// The datastore requested to be mounted should be in same region/zone as the
  /// cluster.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// 'projects/my-project/locations/us-central1/datastores/my-datastore'
  final pulumi.Input<String> datastore;
  /// The network configuration for the datastore.
  final pulumi.Input<List<GetClusterDatastoreMountConfigDatastoreNetwork>> datastoreNetworks;
  /// File share name.
  final pulumi.Input<String> fileShare;
  /// Optional. If set to true, the colocation requirement will be ignored.
  /// If set to false, the colocation requirement will be enforced.
  /// Colocation requirement is the requirement that the cluster must be in the
  /// same region/zone of datastore.
  final pulumi.Input<bool> ignoreColocation;
  /// Optional. The NFS protocol supported by the NFS volume.
  /// Default value used will be NFS_V3
  /// Possible values:
  /// NFS_V3
  final pulumi.Input<String> nfsVersion;
  /// Server IP addresses of the NFS volume.
  /// For NFS 3, you can only provide a single
  /// server IP address or DNS names.
  final pulumi.Input<List<String>> servers;

  /// Creates a new [GetClusterDatastoreMountConfig].
  /// [accessMode] Optional. NFS is accessed by hosts in either read or readWrite mode
  /// [datastore] The resource name of the datastore to unmount.
  /// [datastoreNetworks] The network configuration for the datastore.
  /// [fileShare] File share name.
  /// [ignoreColocation] Optional. If set to true, the colocation requirement will be ignored.
  /// [nfsVersion] Optional. The NFS protocol supported by the NFS volume.
  /// [servers] Server IP addresses of the NFS volume.
  const GetClusterDatastoreMountConfig({
    required this.accessMode,
    required this.datastore,
    required this.datastoreNetworks,
    required this.fileShare,
    required this.ignoreColocation,
    required this.nfsVersion,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'datastore': datastore,
      'datastoreNetworks': pulumi.Input.mapInputValue<List<GetClusterDatastoreMountConfigDatastoreNetwork>, List<Map<String, dynamic>>>(datastoreNetworks, (value) => pulumi.Input.encodeList<GetClusterDatastoreMountConfigDatastoreNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileShare': fileShare,
      'ignoreColocation': ignoreColocation,
      'nfsVersion': nfsVersion,
      'servers': servers,
    };
  }

  factory GetClusterDatastoreMountConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterDatastoreMountConfig(
      accessMode: pulumi.Input.fromValue(map['accessMode'] as String),
      datastore: pulumi.Input.fromValue(map['datastore'] as String),
      datastoreNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterDatastoreMountConfigDatastoreNetwork>(map['datastoreNetworks']!, (value) => GetClusterDatastoreMountConfigDatastoreNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      fileShare: pulumi.Input.fromValue(map['fileShare'] as String),
      ignoreColocation: pulumi.Input.fromValue(map['ignoreColocation'] as bool),
      nfsVersion: pulumi.Input.fromValue(map['nfsVersion'] as String),
      servers: pulumi.Input.fromValue((map['servers'] as List).cast<String>()),
    );
  }
}
