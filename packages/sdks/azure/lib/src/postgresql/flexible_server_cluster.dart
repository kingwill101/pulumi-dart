// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerCluster {
  /// The default database name to be created. Changing this forces a new PostgreSQL Flexible Server to be created.
  final pulumi.Input<String>? defaultDatabaseName;
  /// The number of nodes in the cluster. Must be at least `1` and no greater than `32`.
  ///
  /// &gt; **Note:** The maximum supported cluster size is currently 20 nodes. Support for up to 32 nodes will be available in the near future.
  ///
  /// &gt; **Note:** Cluster support is only available for PostgreSQL version 17 and above, and is not supported when `create_mode` is set to anything other than `Default`.
  ///
  /// &gt; **Note:** The cluster `size` can only be increased, not decreased. Attempting to reduce the cluster size will result in an error.
  final pulumi.Input<int> size;

  /// Creates a new [FlexibleServerCluster].
  /// [defaultDatabaseName] The default database name to be created. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [size] The number of nodes in the cluster. Must be at least `1` and no greater than `32`.
  FlexibleServerCluster({
    this.defaultDatabaseName,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDatabaseName': ?defaultDatabaseName,
      'size': size,
    };
  }

  factory FlexibleServerCluster.fromMap(Map<String, dynamic> map) {
    return FlexibleServerCluster(
      defaultDatabaseName: (() { final guardedValue = map['defaultDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: pulumi.Input.fromValue(map['size'] as int),
    );
  }
}

