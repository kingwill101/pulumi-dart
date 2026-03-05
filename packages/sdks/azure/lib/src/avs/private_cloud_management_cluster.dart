// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudManagementCluster {
  /// A list of hosts in the management cluster.
  final pulumi.Input<List<String>>? hosts;
  /// The ID of the management cluster.
  final pulumi.Input<int>? id;
  /// The size of the management cluster. This field can not updated with `internet_connection_enabled` together.
  final pulumi.Input<int> size;

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
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

