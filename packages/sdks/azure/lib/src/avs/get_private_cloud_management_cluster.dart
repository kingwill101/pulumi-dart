// ignore_for_file: unused_element, unnecessary_cast


class GetPrivateCloudManagementCluster {
  /// The list of the hosts in the management cluster.
  final List<String> hosts;
  /// The ID of the management cluster.
  final int id;
  /// The size of the management cluster.
  final int size;

  /// Creates a new [GetPrivateCloudManagementCluster].
  /// [hosts] The list of the hosts in the management cluster.
  /// [id] The ID of the management cluster.
  /// [size] The size of the management cluster.
  GetPrivateCloudManagementCluster({
    required this.hosts,
    required this.id,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'id': id,
      'size': size,
    };
  }

  factory GetPrivateCloudManagementCluster.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudManagementCluster(
      hosts: (map['hosts'] as List).cast<String>(),
      id: map['id'] as int,
      size: map['size'] as int,
    );
  }
}

