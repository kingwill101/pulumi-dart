// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrivateCloudManagementCluster {
  /// The list of the hosts in the management cluster.
  final pulumi.Input<List<String>> hosts;

  /// The ID of the management cluster.
  final pulumi.Input<int> id;

  /// The size of the management cluster.
  final pulumi.Input<int> size;

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
    return <String, dynamic>{'hosts': hosts, 'id': id, 'size': size};
  }

  factory GetPrivateCloudManagementCluster.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudManagementCluster(
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as int),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}
