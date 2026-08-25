// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterDatastoreMountConfigDatastoreNetwork {
  /// Optional. The number of connections of the NFS volume.
  /// Supported from vsphere 8.0u1. Possible values are 1-4.
  /// Default value is 4.
  final pulumi.Input<int> connectionCount;
  /// Optional. The Maximal Transmission Unit (MTU) of the datastore.
  /// MTU value can range from 1330-9000. If not set, system sets
  /// default MTU size to 1500.
  final pulumi.Input<int> mtu;
  /// The resource name of the network peering, used to access the
  /// file share by clients on private cloud. Resource names are schemeless
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// e.g.
  /// projects/my-project/locations/us-central1/networkPeerings/my-network-peering
  final pulumi.Input<String> networkPeering;
  /// The resource name of the subnet
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// e.g. projects/my-project/locations/us-central1/subnets/my-subnet
  final pulumi.Input<String> subnet;

  /// Creates a new [GetClusterDatastoreMountConfigDatastoreNetwork].
  /// [connectionCount] Optional. The number of connections of the NFS volume.
  /// [mtu] Optional. The Maximal Transmission Unit (MTU) of the datastore.
  /// [networkPeering] The resource name of the network peering, used to access the
  /// [subnet] The resource name of the subnet
  const GetClusterDatastoreMountConfigDatastoreNetwork({
    required this.connectionCount,
    required this.mtu,
    required this.networkPeering,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionCount': connectionCount,
      'mtu': mtu,
      'networkPeering': networkPeering,
      'subnet': subnet,
    };
  }

  factory GetClusterDatastoreMountConfigDatastoreNetwork.fromMap(Map<String, dynamic> map) {
    return GetClusterDatastoreMountConfigDatastoreNetwork(
      connectionCount: pulumi.Input.fromValue((map['connectionCount'] as num).toInt()),
      mtu: pulumi.Input.fromValue((map['mtu'] as num).toInt()),
      networkPeering: pulumi.Input.fromValue(map['networkPeering'] as String),
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
    );
  }
}
