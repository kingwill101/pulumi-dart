// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeClusterPoolDisk {
  /// The size of this custom disk partition in MB.
  final pulumi.Input<int> size;
  /// The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final pulumi.Input<String> type;

  /// Creates a new [GetLkeClusterPoolDisk].
  /// [size] The size of this custom disk partition in MB.
  /// [type] The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  const GetLkeClusterPoolDisk({
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'type': type,
    };
  }

  factory GetLkeClusterPoolDisk.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPoolDisk(
      size: pulumi.Input.fromValue(map['size'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

