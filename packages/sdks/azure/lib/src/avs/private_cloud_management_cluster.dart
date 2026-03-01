// ignore_for_file: unused_element, unnecessary_cast


class PrivateCloudManagementCluster {
  /// A list of hosts in the management cluster.
  final List<String>? hosts;
  /// The ID of the management cluster.
  final int? id;
  /// The size of the management cluster. This field can not updated with `internet_connection_enabled` together.
  final int size;

  /// Creates a new [PrivateCloudManagementCluster].
  /// [hosts] A list of hosts in the management cluster.
  /// [id] The ID of the management cluster.
  /// [size] The size of the management cluster. This field can not updated with `internet_connection_enabled` together.
  PrivateCloudManagementCluster({
    this.hosts,
    this.id,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
      'id': ?id,
      'size': size,
    };
  }

  factory PrivateCloudManagementCluster.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementCluster(
      hosts: map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as int,
      size: map['size'] as int,
    );
  }
}

