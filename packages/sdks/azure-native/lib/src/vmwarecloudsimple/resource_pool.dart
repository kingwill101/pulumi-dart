// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource pool model
class ResourcePool {
  /// resource pool id (privateCloudId:vsphereId)
  final pulumi.Input<String> id;

  /// Creates a new [ResourcePool].
  /// [id] resource pool id (privateCloudId:vsphereId)
  ResourcePool({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourcePool.fromMap(Map<String, dynamic> map) {
    return ResourcePool(
      id: (map['id'] as String).input(),
    );
  }
}

