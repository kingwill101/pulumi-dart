// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDatastoreMountConfigDatastoreNetwork {
  /// Optional. The number of connections of the NFS volume.
  /// Supported from vsphere 8.0u1. Possible values are 1-4.
  /// Default value is 4.
  final pulumi.Input<int?>? connectionCount;
  /// Optional. The Maximal Transmission Unit (MTU) of the datastore.
  /// MTU value can range from 1330-9000. If not set, system sets
  /// default MTU size to 1500.
  final pulumi.Input<int?>? mtu;
  /// (Output)
  /// The resource name of the network peering, used to access the
  /// file share by clients on private cloud. Resource names are schemeless
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// e.g.
  /// projects/my-project/locations/us-central1/networkPeerings/my-network-peering
  final pulumi.Input<String?>? networkPeering;
  /// The resource name of the subnet
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names.
  /// e.g. projects/my-project/locations/us-central1/subnets/my-subnet
  final pulumi.Input<String> subnet;

  /// Creates a new [ClusterDatastoreMountConfigDatastoreNetwork].
  /// [connectionCount] Optional. The number of connections of the NFS volume.
  /// [mtu] Optional. The Maximal Transmission Unit (MTU) of the datastore.
  /// [networkPeering] (Output)
  /// [subnet] The resource name of the subnet
  const ClusterDatastoreMountConfigDatastoreNetwork({
    this.connectionCount,
    this.mtu,
    this.networkPeering,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionCount': ?connectionCount,
      'mtu': ?mtu,
      'networkPeering': ?networkPeering,
      'subnet': subnet,
    };
  }

  factory ClusterDatastoreMountConfigDatastoreNetwork.fromMap(Map<String, dynamic> map) {
    return ClusterDatastoreMountConfigDatastoreNetwork(
      connectionCount: (() { final guardedValue = map['connectionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      networkPeering: (() { final guardedValue = map['networkPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: pulumi.Input.fromValue(map['subnet'] as String),
    );
  }
}
